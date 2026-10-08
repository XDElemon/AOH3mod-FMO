#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d144 探针补丁：把"部队/空军图标位置"的**所有可疑点**都打上探针
1) 给 AirPosProbe 追加 up(I)V / uaw2(ArmyDivision)V / ap(III)V
2) Province.updateArmyPosY()    开头加 1 次 up(provID)（排布前快照：air/sys/mx/h/sc）
3) Province.upyPr(...)          原来的 dKey 日志改走 dWrite（免闸免节流）
4) ArmyDivision.updateArmyWidth_Just(Z)  在写 defaultShift 后加 1 次 uaw2(div)
5) ProvinceDrawArmy.getArmyPosX/Y(II)    末尾采样打点 ap(0/1, prov, 坐标)
6) ProvinceDrawArmy.getAirDrawPosX/Y(IF) 末尾采样打点 ap(2/3, prov, 坐标)（停靠飞机坐标）
"""
import re, sys

BASE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/'
POS = BASE + 'map/battles/AirPosProbe.smali'
PROV = BASE + 'map/province/Province.smali'
ARMY = BASE + 'map/army/ArmyDivision.smali'
PDA = BASE + 'map/province/ProvinceDrawArmy.smali'

report = []


def must(n, want, what):
    assert n == want, '%s：期望命中 %d 次，实际 %d 次' % (what, want, n)
    report.append('%-46s ok(%d)' % (what, n))


def load(p):
    return open(p, encoding='utf-8').read()


def save(p, t):
    open(p, 'w', encoding='utf-8').write(t)


# ---------- 1) AirPosProbe 追加三个方法 ----------
ADD = '''

# 排布前快照：prov -> nUPY p= n= air= sys= mx= h= sc=
.method public static up(I)V
    .registers 14

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-nez v0, :end

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :loop

    if-ge v5, v1, :end

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    if-nez v6, :next

    iget v7, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    move v9, v7

    if-ltz v9, :pos

    neg-int v9, v9

    :pos

    if-lt v4, v9, :nmax

    move v4, v9

    :nmax

    iget-object v9, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v9, :next

    const-string v10, "airhq_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :next

    iget v2, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    iget v3, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    :next

    add-int/lit8 v5, v5, 0x1

    goto :loop

    :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "nUPY p="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " n="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " air="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method


# 排布重置点：nUAW k= sx= sy= sxs= sys=
.method public static uaw2(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .registers 5

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nUAW k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sxs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method


# 位置采样：kind(0=部队X 1=部队Y 2=停靠飞机X 3=停靠飞机Y) prov value
.method public static ap(III)V
    .registers 6

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nAP k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method
'''

t = load(POS)
assert 'up(I)V' not in t
save(POS, t + ADD)
report.append('%-46s ok(追加 up/uaw2/ap)' % 'AirPosProbe')

# ---------- 2) Province.updateArmyPosY：开头快照 ----------
t = load(PROV)
anchor = '''.method public final updateArmyPosY()V
    .registers 6

    .line 519
    const/4 v0, 0x0
'''
assert t.count(anchor) == 1, 'updateArmyPosY 锚点命中 %d 次' % t.count(anchor)
ins = anchor + '''
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->up(I)V

    const/4 v0, 0x0
'''
t = t.replace(anchor, ins, 1)
report.append('%-46s ok' % 'Province.updateArmyPosY 快照')

# ---------- 3) Province.upyPr：dKey -> dWrite ----------
m = re.search(r'\.method public static upyPr\(.*?\.end method', t, re.S)
assert m, '找不到 upyPr'
body = m.group(0)
new_body = body.replace(
    'invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I',
    'invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V')
assert new_body != body, 'upyPr 内没找到 dKey 调用'
t = t.replace(body, new_body, 1)
report.append('%-46s ok' % 'Province.upyPr dKey->dWrite')
save(PROV, t)

# ---------- 4) ArmyDivision.updateArmyWidth_Just：重置点探针 ----------
t = load(ARMY)
m = re.search(r'\.method public final updateArmyWidth_Just\(Z\)V.*?\.end method', t, re.S)
assert m, '找不到 updateArmyWidth_Just'
body = m.group(0)
target = '''    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I'''
assert body.count(target) == 1, 'ArmyDivision 锚点命中 %d 次' % body.count(target)
new_body = body.replace(target, target + '''

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->uaw2(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
''', 1)
t = t.replace(body, new_body, 1)
report.append('%-46s ok' % 'ArmyDivision.updateArmyWidth_Just 探针')
save(ARMY, t)

# ---------- 5/6) 四个坐标函数末尾采样 ----------
t = load(PDA)
SPEC = [
    ('getArmyPosX(II)I', 0, 4, 6),
    ('getArmyPosY(II)I', 1, 4, 6),
    ('getAirDrawPosX(IF)I', 2, 5, 7),
    ('getAirDrawPosY(IF)I', 3, 5, 7),
]
for sig, kind, old_regs, new_regs in SPEC:
    m = re.search(r'\.method public static final ' + re.escape(sig) + r'.*?\.end method', t, re.S)
    assert m, '找不到 %s' % sig
    body = m.group(0)
    assert ('.registers %d' % old_regs) in body, '%s 寄存器表不符（期望 %d）' % (sig, old_regs)
    body2 = body.replace('.registers %d' % old_regs, '.registers %d' % new_regs, 1)
    tail = '''    const/16 v2, 0x12c

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v2

    if-eqz v2, :nolog

    const/4 v2, %d

    invoke-static {v2, p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ap(III)V

    :nolog

    return v0
.end method''' % kind
    assert body2.count('    return v0\n.end method') == 1, '%s 尾部锚点异常' % sig
    body2 = body2.replace('    return v0\n.end method', tail, 1)
    t = t.replace(body, body2, 1)
    report.append('%-46s ok' % ('ProvinceDrawArmy.' + sig))
save(PDA, t)

print('✅ 探针补丁完成：')
for r in report:
    print('   ' + r)