# -*- coding: utf-8 -*-
# R5c015b：改用"按行定位＋插入"（该 smali 指令间有空行，字符串锚不稳）
import io, re, shutil

BASE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
AFM = BASE + 'AirForceManager.smali'
AM  = BASE + 'AirMission.smali'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
AMN = 'Laoc/kingdoms/lukasz/map/battles/AirMission'
AFMC = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
PROV = 'Laoc/kingdoms/lukasz/map/province/Province;'
GAME = 'Laoc/kingdoms/lukasz/jakowski/Game;'

# 从 .bak_r5c015 恢复（该备份是补丁前状态）
for p in (AFM, AM):
    shutil.copyfile(p + '.bak_r5c015', p)

def load(p): return io.open(p, encoding='utf-8').read().split('\n')
def save(p, L): io.open(p, 'w', encoding='utf-8').write('\n'.join(L))
def find(L, sub, start=0, end=None, must=True):
    end = len(L) if end is None else end
    for i in range(start, end):
        if sub in L[i]: return i
    assert not must, 'XX 找不到行: %r' % sub
    return -1
def mrange(L, name):
    i = find(L, '.method ' + name)
    j = find(L, '.end method', i)
    return i, j

# ---------------- ① 字段 ----------------
L = load(AM)
assert not any('.field public a1bAuto:Z' == l for l in L), 'XX a1bAuto 已存在'
i = find(L, '.field public a1bBlind:Z')
assert L[i] == '.field public a1bBlind:Z'
L[i+1:i+1] = ['.field public a1bAuto:Z', '.field public a1bHops:I']
save(AM, L)
print('OK ① 字段 a1bAuto / a1bHops')

# ---------------- ② executeAttack：不开火门 ----------------
L = load(AM)
mi, mj = mrange(L, 'private executeAttack()V')
# registers 7 -> 10
ri = next(k for k in range(mi, mi+4) if L[k].strip().startswith('.registers'))
assert L[ri].strip() == '.registers 7', 'XX registers=%r' % L[ri]
L[ri] = '    .registers 10'
# 找 targetProvinceID 检查块
ti = find(L, '->targetProvinceID:I', mi, mj)
assert 'iget v0' in L[ti]
li = find(L, 'if-ltz v0, :cond_5a', ti, mj)
gate = [
    '    # B2c: 自动派发的攻击机 —— 目标省没有"与我交战"的陆军 ⇒ 不开火（不炸省/人口/部队，不耗挂载）',
    '    iget-object v6, p0, ' + AMC + '->type:' + AMN + '$MissionType;',
    '',
    '    sget-object v7, ' + AMN + '$MissionType;->ATTACK_ARMY:' + AMN + '$MissionType;',
    '',
    '    if-ne v6, v7, :b2c_skip',
    '',
    '    iget-boolean v6, p0, ' + AMC + '->a1bAuto:Z',
    '',
    '    if-eqz v6, :b2c_skip',
    '',
    '    invoke-static {v0}, ' + GAME + '->getProvince(I)' + PROV,
    '',
    '    move-result-object v6',
    '',
    '    if-eqz v6, :b2c_skip',
    '',
    '    iget v7, p0, ' + AMC + '->civID:I',
    '',
    '    invoke-virtual {v6, v7}, ' + PROV + '->isEnemyArmyInProvince(I)Z',
    '',
    '    move-result v6',
    '',
    '    if-nez v6, :b2c_skip',
    '',
    '    # B2c probe: 无交战陆军 ⇒ 不开火',
    '    const-string v6, "AIRDBG"',
    '',
    '    new-instance v7, Ljava/lang/StringBuilder;',
    '',
    '    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V',
    '',
    '    const-string v8, "nB2c nofire tgt="',
    '',
    '    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    '',
    '    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    '',
    '    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    '',
    '    move-result-object v8',
    '',
    '    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I',
    '',
    '    goto :cond_5a',
    '',
    ':b2c_skip',
]
L[li+1:li+1] = gate
save(AM, L)
print('OK ② executeAttack 不开火门 + registers 10')

# ---------------- ③ a1bReHunt：上限 N=1 ----------------
L = load(AM)
mi, mj = mrange(L, 'private a1bReHunt()Z')
gi = find(L, '# B2b probe: 提示门输入（无分支）', mi, mj)
cap = [
    '    # B2c: 扑空重瞄次数上限（N=1，贴引擎游猎先例）—— 到上限：不提示、只清记录、返航',
    '    iget v4, p0, ' + AMC + '->a1bHops:I',
    '',
    '    const/4 v5, 0x1',
    '',
    '    if-lt v4, v5, :rh_cap_done',
    '',
    '    iget v6, p0, ' + AMC + '->airDivisionAtProvinceID:I',
    '',
    '    if-ltz v6, :rh_cap_probe',
    '',
    '    iget v7, p0, ' + AMC + '->civID:I',
    '',
    '    invoke-static {v6, v7}, ' + AFMC + '->a1bRetarget(II)I',
    '',
    '    move-result v7',
    '',
    ':rh_cap_probe',
    '    const-string v6, "AIRDBG"',
    '',
    '    new-instance v7, Ljava/lang/StringBuilder;',
    '',
    '    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V',
    '',
    '    const-string v8, "nB2 cap hops=1"',
    '',
    '    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    '',
    '    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    '',
    '    move-result-object v8',
    '',
    '    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I',
    '',
    '    goto :rh_done',
    '',
    ':rh_cap_done',
]
L[gi:gi] = cap
# 自增：blind 刷新 iput 之后
mi, mj = mrange(L, 'private a1bReHunt()Z')
bi = -1
for k in range(mi, mj):
    if '->a1bBlind:Z' in L[k] and 'iput-boolean' in L[k]:
        bi = k
        break
assert bi > 0, 'XX 找不到 blind 刷新 iput'
inc = [
    '',
    '    # B2c: 记一次"扑空重瞄"（上限 N=1）',
    '    iget v10, p0, ' + AMC + '->a1bHops:I',
    '',
    '    add-int/lit8 v10, v10, 0x1',
    '',
    '    iput v10, p0, ' + AMC + '->a1bHops:I',
]
L[bi+1:bi+1] = inc
save(AM, L)
print('OK ③ a1bReHunt 上限判定 + 自增')

# ---------------- ④ AFM：a1bAuto=1 + 半程 ----------------
F = load(AFM)
# a1bAuto
di = find(F, 'iput-boolean v13, v5, ' + AMC + '->a1bBlind:Z')
auto = [
    '    # B2c: 标记"自动派发"（手动任务恒 0 ⇒ 不设不开火门）',
    '    const/4 v12, 0x1',
    '',
    '    iput-boolean v12, v5, ' + AMC + '->a1bAuto:Z',
]
F[di+1:di+1] = auto
# 半程
ai = find(F, '.method public static a1bRetarget(II)I')
aj = find(F, '.end method', ai)
gi2 = find(F, 'getAircraftRange(', ai, aj)
mi2 = find(F, 'move-result v6', gi2, aj)
half = [
    '    # B2d: 重瞄只允许"半程"（½作战半径，照抄引擎 huntCombatHalf）',
    '    const v12, 0x3f000000',
    '',
    '    mul-float v6, v6, v12',
]
F[mi2+1:mi2+1] = half
save(AFM, F)
print('OK ④ AFM a1bAuto=1 + 半程规则')

# ---------------- 极性真值表自检 ----------------
A = load(AM); F = load(AFM)
def body(L, name):
    i, j = mrange(L, name); return L[i:j]
ea = body(A, 'private executeAttack()V')
rb = body(A, 'private a1bReHunt()Z')
s_ea = '\n'.join(ea); s_rb = '\n'.join(rb); s_a = '\n'.join(A); s_f = '\n'.join(F)
ck = [
    ('executeAttack .registers=10', any(l.strip() == '.registers 10' for l in ea)),
    ('门：非攻击机 ⇒ 跳过（if-ne）', 'if-ne v6, v7, :b2c_skip' in s_ea),
    ('门：手动(a1bAuto==0) ⇒ 跳过（if-eqz）', '->a1bAuto:Z\n\n    if-eqz v6, :b2c_skip' in s_ea),
    ('门：省对象空 ⇒ 跳过（if-eqz 引用）', 'if-eqz v6, :b2c_skip' in s_ea),
    ('门：有交战陆军(≠0) ⇒ 跳过不开火块（if-nez）', 'if-nez v6, :b2c_skip' in s_ea),
    ('门：命中后 goto :cond_5a', 'goto :cond_5a' in s_ea and ':b2c_skip' in s_ea),
    ('门在"算伤害 const/4 v4,0x0"之前',
     s_ea.index(':b2c_skip') < re.search(r'const/4 v4,\s*0x0', s_ea).start()),
    ('上限：hops<N ⇒ 跳过 cap 块（if-lt）', 'if-lt v4, v5, :rh_cap_done' in s_rb),
    ('上限块：仍清记录（a1bRetarget 丢结果）', '->a1bRetarget(II)I\n\n    move-result v7' in s_rb),
    ('上限块：直接走 :rh_done（不置 v2=1 ⇒ 返回 false）', 'goto :rh_done\n\n:rh_cap_done' in s_rb),
    ('上限块在提示门之前（D2①不弹）',
     s_rb.index('if-lt v4, v5, :rh_cap_done') < s_rb.index('->a1bBlind:Z\n\n    if-eqz v0, :rh_pick')),
    ('自增存在', '->a1bHops:I\n\n    add-int/lit8 v10, v10, 0x1' in s_rb),
    ('AFM: a1bAuto=1 用 v12（未复用 v13）', 'const/4 v12, 0x1\n\n    iput-boolean v12, v5, ' + AMC + '->a1bAuto:Z' in s_f),
    ('AFM: 半程 0.5f', 'const v12, 0x3f000000\n\n    mul-float v6, v6, v12' in s_f),
    ('字段齐全', any(l == '.field public a1bAuto:Z' for l in A) and any(l == '.field public a1bHops:I' for l in A)),
]
bad = 0
for n, ok in ck:
    print(('  ✔ ' if ok else '  ✘ ') + n)
    bad += 0 if ok else 1
assert bad == 0, 'XX 极性自检未过 %d 项' % bad
for p in (AFM, AM):
    t = io.open(p, encoding='utf-8').read()
    bc = [hex(ord(c)) for c in t if ord(c) < 32 and c not in '\n\r\t']
    assert not bc, 'XX %s 控制字符 %s' % (p, bc[:6])
    assert ';$' not in t
print('OK 控制字符/描述符体检')
print('OK: r5c015b 完成')