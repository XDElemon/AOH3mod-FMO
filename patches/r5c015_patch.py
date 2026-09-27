# -*- coding: utf-8 -*-
# R5c015 / B2c+B2d：①自动派发的攻击机"目标省无交战陆军 ⇒ 不开火" ②重瞄加"半程" ③扑空重瞄次数上限 N=1（到上限：不提示、仍清记录）
import io

BASE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
AFM = BASE + 'AirForceManager.smali'
AM  = BASE + 'AirMission.smali'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
AMN = 'Laoc/kingdoms/lukasz/map/battles/AirMission'
AFMC = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
PROV = 'Laoc/kingdoms/lukasz/map/province/Province;'
GAME = 'Laoc/kingdoms/lukasz/jakowski/Game;'
for p in (AFM, AM):
    io.open(p + '.bak_r5c015', 'w', encoding='utf-8').write(io.open(p, encoding='utf-8').read())

def rep(t, old, new, expect, tag):
    n = t.count(old)
    assert n == expect, 'XX [%s] 命中 %d 次（期望 %d）' % (tag, n, expect)
    return t.replace(old, new), n

# ============ ① 字段：a1bAuto / a1bHops ============
s = io.open(AM, encoding='utf-8').read()
old_f = '.field public a1bBlind:Z\n'
assert s.count(old_f) == 1
s = s.replace(old_f, old_f + '.field public a1bAuto:Z\n.field public a1bHops:I\n')
io.open(AM, 'w', encoding='utf-8').write(s)
print('OK ① 字段 a1bAuto / a1bHops 已加')

# ============ ② executeAttack：不开火门 ============
s = io.open(AM, encoding='utf-8').read()
old_h = '.method private executeAttack()V\n    .registers 7\n'
assert s.count(old_h) == 1, 'XX executeAttack 头锚点 %d' % s.count(old_h)
s = s.replace(old_h, '.method private executeAttack()V\n    .registers 10\n')

old_t = ('    iget v0, p0, ' + AMC + '->targetProvinceID:I\n'
         '    if-ltz v0, :cond_5a\n')
new_t = old_t + (
    '    # B2c: 自动派发的攻击机 —— 目标省没有"与我交战"的陆军 ⇒ 不开火（不炸省/人口/部队，不耗挂载）\n'
    '    iget-object v6, p0, ' + AMC + '->type:' + AMN + '$MissionType;\n'
    '    sget-object v7, ' + AMN + '$MissionType;->ATTACK_ARMY:' + AMN + '$MissionType;\n'
    '    if-ne v6, v7, :b2c_skip\n'
    '    iget-boolean v6, p0, ' + AMC + '->a1bAuto:Z\n'
    '    if-eqz v6, :b2c_skip\n'
    '    invoke-static {v0}, ' + GAME + '->getProvince(I)' + PROV + '\n'
    '    move-result-object v6\n'
    '    if-eqz v6, :b2c_skip\n'
    '    iget v7, p0, ' + AMC + '->civID:I\n'
    '    invoke-virtual {v6, v7}, ' + PROV + '->isEnemyArmyInProvince(I)Z\n'
    '    move-result v6\n'
    '    if-nez v6, :b2c_skip\n'
    '    # B2c probe: 无交战陆军 ⇒ 不开火\n'
    '    const-string v6, "AIRDBG"\n'
    '    new-instance v7, Ljava/lang/StringBuilder;\n'
    '    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V\n'
    '    const-string v8, "nB2c nofire tgt="\n'
    '    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
    '    move-result-object v8\n'
    '    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
    '    goto :cond_5a\n'
    ':b2c_skip\n')
s, _ = rep(s, old_t, new_t, 1, 'executeAttack 不开火门')
io.open(AM, 'w', encoding='utf-8').write(s)
print('OK ② executeAttack 不开火门已加（.registers 7→10）')

# ============ ③ a1bReHunt：上限 N=1 判定 + 自增 ============
s = io.open(AM, encoding='utf-8').read()
old_c = '    # B2b probe: 提示门输入（无分支）\n'
new_c = (
    '    # B2c: 扑空重瞄次数上限（N=1，贴引擎游猎先例）——到上限：不提示、只清记录、返航\n'
    '    iget v4, p0, ' + AMC + '->a1bHops:I\n'
    '    const/4 v5, 0x1\n'
    '    if-lt v4, v5, :rh_cap_done\n'
    '    iget v6, p0, ' + AMC + '->airDivisionAtProvinceID:I\n'
    '    if-ltz v6, :rh_cap_probe\n'
    '    iget v7, p0, ' + AMC + '->civID:I\n'
    '    invoke-static {v6, v7}, ' + AFMC + '->a1bRetarget(II)I\n'
    '    move-result v7\n'
    ':rh_cap_probe\n'
    '    const-string v6, "AIRDBG"\n'
    '    new-instance v7, Ljava/lang/StringBuilder;\n'
    '    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V\n'
    '    const-string v8, "nB2 cap hops=1"\n'
    '    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
    '    move-result-object v8\n'
    '    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
    '    goto :rh_done\n'
    ':rh_cap_done\n' + old_c)
s, _ = rep(s, old_c, new_c, 1, 'a1bReHunt 上限判定')

old_i = '    iput-boolean v10, p0, ' + AMC + '->a1bBlind:Z\n'
new_i = old_i + (
    '    # B2c: 记一次"扑空重瞄"（上限 N=1）\n'
    '    iget v10, p0, ' + AMC + '->a1bHops:I\n'
    '    add-int/lit8 v10, v10, 0x1\n'
    '    iput v10, p0, ' + AMC + '->a1bHops:I\n')
s, _ = rep(s, old_i, new_i, 1, 'a1bReHunt hops 自增')
io.open(AM, 'w', encoding='utf-8').write(s)
print('OK ③ a1bReHunt 上限判定与自增已加')

# ============ ④ AFM：a1bAuto 写入 + 半程规则 ============
f = io.open(AFM, encoding='utf-8').read()
old_a = ('    iput-boolean v13, v5, ' + AMC + '->a1bBlind:Z\n'
         '    # B2b probe: k=42 该省是否不可见(0/1)\n')
new_a = ('    iput-boolean v13, v5, ' + AMC + '->a1bBlind:Z\n'
         '    # B2c: 标记"自动派发"（手动任务恒 0 ⇒ 不设不开火门）\n'
         '    const/4 v12, 0x1\n'
         '    iput-boolean v12, v5, ' + AMC + '->a1bAuto:Z\n'
         '    # B2b probe: k=42 该省是否不可见(0/1)\n')
f, _ = rep(f, old_a, new_a, 1, 'a1bDispatch a1bAuto')

old_r = ('    invoke-static {v11}, ' + AFMC + '->getAircraftRange('
         'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
         '    move-result v6\n'
         '    const v12, 0x7f7fffff\n')
new_r = ('    invoke-static {v11}, ' + AFMC + '->getAircraftRange('
         'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
         '    move-result v6\n'
         '    # B2d: 重瞄只允许"半程"（½作战半径，照抄引擎 huntCombatHalf）\n'
         '    const v12, 0x3f000000\n'
         '    mul-float v6, v6, v12\n'
         '    const v12, 0x7f7fffff\n')
f, _ = rep(f, old_r, new_r, 1, 'a1bRetarget 半程规则')
io.open(AFM, 'w', encoding='utf-8').write(f)
print('OK ④ AFM a1bAuto 与半程规则已加')

# ============ 极性真值表自检 ============
a = io.open(AM, encoding='utf-8').read()
f = io.open(AFM, encoding='utf-8').read()
ea = a[a.index('.method private executeAttack()V'):a.index('.end method', a.index('.method private executeAttack()V'))]
ck = [
    ('executeAttack .registers=10', '.method private executeAttack()V\n    .registers 10\n' in a),
    ('门：非攻击机档 ⇒ 跳过（if-ne）', 'if-ne v6, v7, :b2c_skip' in ea),
    ('门：手动(a1bAuto==0) ⇒ 跳过（if-eqz）', '->a1bAuto:Z\n    if-eqz v6, :b2c_skip' in ea),
    ('门：省对象空 ⇒ 跳过（if-eqz 引用）', 'if-eqz v6, :b2c_skip' in ea),
    ('门：有交战陆军(≠0) ⇒ 跳过不开火块（if-nez）', 'if-nez v6, :b2c_skip' in ea),
    ('门：命中后 goto :cond_5a（共用返回）', 'goto :cond_5a\n:b2c_skip' in ea),
    ('门在"算伤害( const/4 v4, 0x0 )"之前',
     ea.index(':b2c_skip') < ea.index('const/4 v4, 0x0')),
    ('上限判定：hops < N ⇒ 跳过 cap 块（if-lt）', 'if-lt v4, v5, :rh_cap_done' in a),
    ('上限块：仍清记录（调 a1bRetarget 丢结果）', '->a1bRetarget(II)I\n    move-result v7\n:rh_cap_probe' in a),
    ('上限块：返回 false（goto :rh_done，未置 v2=1）', 'goto :rh_done\n:rh_cap_done' in a),
    ('上限块在"提示门"之前（D2①不弹）', a.index('if-lt v4, v5, :rh_cap_done') < a.index('->a1bBlind:Z\n    if-eqz v0, :rh_pick')),
    ('自增存在', '->a1bHops:I\n    add-int/lit8 v10, v10, 0x1\n    iput v10, p0, ' + AMC + '->a1bHops:I' in a),
    ('AFM: a1bAuto=1 用 v12（未复用 v13）',
     'const/4 v12, 0x1\n    iput-boolean v12, v5, ' + AMC + '->a1bAuto:Z' in f),
    ('AFM: 半程 0.5f 乘法存在', 'const v12, 0x3f000000\n    mul-float v6, v6, v12' in f),
    ('字段齐全', '.field public a1bAuto:Z' in a and '.field public a1bHops:I' in a),
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
    assert ';$' not in t, 'XX %s 非法 ";$"' % p
print('OK 控制字符/描述符体检')
print('OK: r5c015 补丁完成（备份 .bak_r5c015）')