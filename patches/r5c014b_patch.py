# -*- coding: utf-8 -*-
# R5c014b / B2b：提示只在"本航段靠记忆(blind)"且迷雾开启时弹
#  ①AirMission 新字段 a1bBlind:Z
#  ②AFM.a1bDispatch：抬 .registers 14→17；createAttackArmy 后按目标省可见性写 a1bBlind ＋ 探针 k=42
#  ③AirMission.a1bReHunt：加两道提示门（blind / FOG_OF_WAR）＋ 探针；重瞄成功后按新目标刷新 a1bBlind
#  ④把 nB2* 探针由 AirDbgLog.d() 改 dKey()（d 只写 logcat，抓样文件只收 dKey）
import io

BASE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
AFM = BASE + 'AirForceManager.smali'
AM  = BASE + 'AirMission.smali'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
for p in (AFM, AM):
    io.open(p + '.bak_r5c014', 'w', encoding='utf-8').write(io.open(p, encoding='utf-8').read())

def rep(text, old, new, expect, tag):
    n = text.count(old)
    assert n == expect, 'XX [%s] 命中 %d 次（期望 %d）' % (tag, n, expect)
    return text.replace(old, new), n

def scope(text, start, end):
    i = text.index(start)
    j = text.index(end, i)
    return i, j, text[i:j]

# ================= ① AirMission 字段 =================
s = io.open(AM, encoding='utf-8').read()
old_f = '.field public a1bTold:Z\n'
assert s.count(old_f) == 1, 'XX a1bTold 字段锚点异常'
s = s.replace(old_f, old_f + '.field public a1bBlind:Z\n')
io.open(AM, 'w', encoding='utf-8').write(s)
print('OK ① 字段 a1bBlind 已加')

# ================= ② AFM.a1bDispatch =================
f = io.open(AFM, encoding='utf-8').read()
old_h = '.method private static a1bDispatch(II)Z\n    .registers 14\n'
assert f.count(old_h) == 1, 'XX a1bDispatch 头锚点异常'
f = f.replace(old_h, '.method private static a1bDispatch(II)Z\n    .registers 17\n')

old_call = ('    invoke-static {v2, v6, p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createAttackArmy('
            'Laoc/kingdoms/lukasz/map/battles/Airport;IILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;\n'
            '    move-result-object v5\n'
            '    if-eqz v5, :abd_next\n')
new_call = old_call + (
    '    # B2b: 记录"本趟是否靠记忆"（选靶那一刻该省不可见 ⇒ 1）\n'
    '    const/4 v14, 0x0\n'
    '    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;\n'
    '    move-result-object v12\n'
    '    if-eqz v12, :abd_blind_done\n'
    '    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
    '    move-result v13\n'
    '    if-nez v13, :abd_blind_done\n'
    '    const/4 v14, 0x1\n'
    ':abd_blind_done\n'
    '    iput-boolean v14, v5, ' + AMC + '->a1bBlind:Z\n'
    '    # B2b probe: k=42 该省是否不可见(0/1)\n'
    '    const/16 v13, 0x2a\n'
    '    invoke-static {p0, v14, v13, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n')
f, _ = rep(f, old_call, new_call, 1, 'AFM.a1bDispatch 快照+探针')
io.open(AFM, 'w', encoding='utf-8').write(f)
print('OK ② a1bDispatch 快照与 k=42 已加')

# ================= ③④ AirMission.a1bReHunt（方法作用域内定向改） =================
s = io.open(AM, encoding='utf-8').read()
i, j, body = scope(s, '.method private a1bReHunt()Z\n', '.end method\n')

# ③a 在"请提示"之前插入两道门 + 门输入探针
old_told = ('    iget-boolean v0, p0, ' + AMC + '->a1bTold:Z\n'
            '    if-nez v0, :rh_pick\n')
new_gate = (
    '    # B2b probe: 提示门输入（无分支）\n'
    '    const-string v0, "AIRDBG"\n'
    '    new-instance v1, Ljava/lang/StringBuilder;\n'
    '    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V\n'
    '    const-string v5, "nB2 gate blind="\n'
    '    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-boolean v10, p0, ' + AMC + '->a1bBlind:Z\n'
    '    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v5, " fog="\n'
    '    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    sget-boolean v10, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z\n'
    '    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
    '    move-result-object v5\n'
    '    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
    '    # B2b: 只有"本航段靠记忆(blind=1)"且迷雾开启时才提示（必须在置 a1bTold 之前）\n'
    '    iget-boolean v0, p0, ' + AMC + '->a1bBlind:Z\n'
    '    if-eqz v0, :rh_pick\n'
    '    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z\n'
    '    if-eqz v0, :rh_pick\n' + old_told)
body, _ = rep(body, old_told, new_gate, 1, 'AM 提示门')

# ③b 重瞄成功后按新目标刷新 blind
old_t = '    iput v4, p0, ' + AMC + '->targetProvinceID:I\n'
new_t = old_t + (
    '    # B2b: 刷新本航段"是否靠记忆"（按新目标当时的可见性）\n'
    '    const/4 v10, 0x0\n'
    '    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;\n'
    '    move-result-object v9\n'
    '    if-eqz v9, :rh_blind_done\n'
    '    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
    '    move-result v0\n'
    '    if-nez v0, :rh_blind_done\n'
    '    const/4 v10, 0x1\n'
    ':rh_blind_done\n'
    '    iput-boolean v10, p0, ' + AMC + '->a1bBlind:Z\n')
body, _ = rep(body, old_t, new_t, 1, 'AM 重瞄刷新 blind')

# ④ d -> dKey（本方法内 5 处）
old_d = ', Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I'
body, nc = rep(body, old_d, ', Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I', 5, 'AM d→dKey')

s = s[:i] + body + s[j:]
io.open(AM, 'w', encoding='utf-8').write(s)
print('OK ③④ a1bReHunt 门/刷新/探针通道已改（d→dKey %d 处）' % nc)

# ================= 极性真值表自检 =================
a = io.open(AM, encoding='utf-8').read()
f = io.open(AFM, encoding='utf-8').read()
_,_,rb = scope(a, '.method private a1bReHunt()Z\n', '.end method\n')
ck = [
    ('AFM 省对象为空 ⇒ 保持 0（if-eqz 引用）', 'if-eqz v12, :abd_blind_done' in f),
    ('AFM 可见(≠0) ⇒ 跳走保持 0（if-nez）', 'if-nez v13, :abd_blind_done' in f),
    ('AFM 不可见 ⇒ 置 1', 'const/4 v14, 0x1\n:abd_blind_done\n    iput-boolean v14, v5,' in f),
    ('AFM .registers 抬到 17', '.method private static a1bDispatch(II)Z\n    .registers 17\n' in f),
    ('AFM k=42 探针', 'const/16 v13, 0x2a' in f),
    ('AM 提示门① blind==0 ⇒ 跳过（if-eqz）',
     'iget-boolean v0, p0, ' + AMC + '->a1bBlind:Z\n    if-eqz v0, :rh_pick' in rb),
    ('AM 提示门② FOG_OF_WAR==0 ⇒ 跳过（if-eqz）',
     'sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z\n    if-eqz v0, :rh_pick' in rb),
    ('AM 提示门③ told≠0 ⇒ 跳过（if-nez）', 'iget-boolean v0, p0, ' + AMC + '->a1bTold:Z\n    if-nez v0, :rh_pick' in rb),
    ('AM 门在"置 a1bTold"之前', rb.index('if-eqz v0, :rh_pick') < rb.index('iput-boolean v0, p0, ' + AMC + '->a1bTold:Z')),
    ('AM 刷新：省空 ⇒ 保持（if-eqz 引用）', 'if-eqz v9, :rh_blind_done' in rb),
    ('AM 刷新：可见(≠0) ⇒ 保持 0（if-nez）', 'if-nez v0, :rh_blind_done' in rb),
    ('AM 刷新：不可见 ⇒ 置 1', 'const/4 v10, 0x1\n:rh_blind_done\n    iput-boolean v10, p0,' in rb),
    ('AM 扑空判定未被改动（有敌军⇒跳走）', rb.count('if-nez v0, :rh_done') == 1),
    ('AM 重瞄失败 ⇒ 不改向', 'if-ltz v4, :rh_done' in rb),
    ('AM nB2 已全部走 dKey', ', Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I' not in rb),
    ('字段 a1bBlind 存在', '.field public a1bBlind:Z' in a),
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
    assert ';$' not in t, 'XX %s 出现非法 ";$"' % p
print('OK 控制字符/描述符体检')
print('OK: r5c014b / B2b 补丁完成（备份 .bak_r5c014）')