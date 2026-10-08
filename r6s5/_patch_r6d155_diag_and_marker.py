#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d155 补丁：构建标记 + 取图诊断（不改绘制规则）

E1  boot()               → 追加一行 dWrite("AIRBUILD r6d155")（每次启动自证"跑的是哪版"）
E2  airImgForKey          → 重写：记录 (key, civRaw, civUsed, type, imgId)
E3  AirPosProbe           → 新增 artD(取图诊断) / pcg(省份主人组对照)，纯只读
E4  drawProvinceArmyWithFlag → 在写 dgAirGroup 之后插 1 行 pcg 探针
"""
import os, shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d155'
REVX = '/tmp/revx/'
PD = ROOT + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
AD = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
PP = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


def backup(p):
    b = p + '.pre_' + BATCH
    if not os.path.exists(b):
        shutil.copy2(p, b)
        print('  备份 ->', b)
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(p, REVX + os.path.basename(p) + '.pre_' + BATCH)


def rep_once(s, old, new, tag):
    n = s.count(old)
    assert n == 1, '[%s] 锚点命中 %d != 1: %r' % (tag, n, old[:140])
    return s.replace(old, new)


# ---------------- E1: boot() 构建标记 ----------------
A_E1 = '''    const-string v1, " init="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgInit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method'''
N_E1 = '''    const-string v1, " init="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgInit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    const-string v3, "AIRBUILD r6d155"

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method'''

# ---------------- E2: airImgForKey 重写（带诊断） ----------------
A_E2 = '''.method public static airImgForKey(ILjava/lang/String;)I
    .registers 3

    const/4 v0, 0x2

    if-eqz p1, :go

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :go

    const/4 v0, 0x2

    :go
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I

    move-result v0

    return v0
.end method'''
N_E2 = '''.method public static airImgForKey(ILjava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-eqz p1, :go

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :use

    goto :go

    :use
    move v1, v0

    :go
    invoke-static {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I

    move-result v2

    invoke-static {p1, v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->artD(Ljava/lang/String;IIII)V

    return v2
.end method'''

# ---------------- E3: 新增探针方法 ----------------
PROBES = '''

.method public static artD(Ljava/lang/String;IIII)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :end

    if-ltz p1, :c1

    const/4 v0, 0x1

    goto :log

    :c1
    if-ltz p2, :c2

    const/4 v0, 0x1

    goto :log

    :c2
    const/16 v0, 0x10

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    :log
    const/4 v1, -0x2

    if-ltz p2, :g

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v1

    :g
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nART k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " g="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static pcg(ILjava/lang/Object;ILjava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :end

    move-object v0, p1

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    const/16 v1, 0x10

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v1

    if-eqz v1, :end

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nPCG p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " k="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method
'''

# ---------------- E4: drawProvinceArmyWithFlag 插 pcg ----------------
A_E4 = '''    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v9
    sput v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirGroup:I
    invoke-static {p0, v0, v6, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V'''
N_E4 = '''    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v9
    sput v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirGroup:I
    invoke-static {p1, v7, v9, v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pcg(ILjava/lang/Object;ILjava/lang/String;)V
    invoke-static {p0, v0, v6, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V'''


def main():
    ch = []
    # E1
    s = rd(AD)
    if 'AIRBUILD r6d155' in s:
        print('  [E1] 已应用')
    else:
        backup(AD)
        s = rep_once(s, A_E1, N_E1, 'E1')
        wr(AD, s)
        ch.append('E1 ' + AD)
    # E2
    s = rd(PD)
    if 'AirPosProbe;->artD' in s:
        print('  [E2] 已应用')
    else:
        backup(PD)
        s = rep_once(s, A_E2, N_E2, 'E2')
        wr(PD, s)
        ch.append('E2 ' + PD)
    # E3
    s = rd(PP)
    if '.method public static artD(' in s and '.method public static pcg(' in s:
        print('  [E3] 已应用')
    else:
        backup(PP)
        s = s.rstrip('\n') + '\n' + PROBES
        wr(PP, s)
        ch.append('E3 ' + PP)
    # E4
    s = rd(PD)
    if 'AirPosProbe;->pcg(' in s:
        print('  [E4] 已应用')
    else:
        s = rep_once(s, A_E4, N_E4, 'E4')
        wr(PD, s)
        ch.append('E4 ' + PD)

    print()
    print('✅ r6d155 补丁落地：')
    for c in ch:
        print('   ', c)


if __name__ == '__main__':
    main()