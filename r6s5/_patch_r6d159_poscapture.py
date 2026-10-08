#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d159 —— 位置"自动取证"（不再错过）

P1  ProvinceDrawArmy 里插 posD 调用（在 drawProvinceArmyWithFlag 内、刚取完
    nPosX/nPosY 且拿到 ArmyDivision 处；同方法的 hit4 已证明会执行）
P2  AirPosProbe 新增 posD(IIIILjava/lang/Object;)V：
    ① 重复绘制自检：与"上一次调用"同省同 key ⇒ 无条件写 nPOSDUP（=叠两层现场）
    ② 常规采样 1/30 或 mapScale<0.75 时无条件写 nPOS（省/序号/XY/缩放/偏移/key）
"""
import os, shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d159'
REVX = '/tmp/revx/'
PD = ROOT + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
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


ANCHOR = '''    .local v8, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget-object v1, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;'''
NEW = '''    .local v8, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-static {p1, p2, v0, v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->posD(IIIILjava/lang/Object;)V

    iget-object v1, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;'''

FIELDS = '''.field private static pk:Ljava/lang/String;

.field private static pp:I

'''

PROBE = '''

.method public static posD(IIIILjava/lang/Object;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p4, :end

    move-object v0, p4

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v1, :end

    # ① 重复绘制自检（同省同 key 连续出现 = 同一支师被画两次）
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pp:I

    if-eq p0, v2, :no_dup

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pk:Ljava/lang/String;

    if-nez v2, :no_dup

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :no_dup

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nPOSDUP p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :no_dup
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pp:I

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pk:Ljava/lang/String;

    # ② 常规采样：1/30；mapScale<0.75 时无条件
    const/4 v2, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v3, :sampled

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v6, v4, v5

    if-gez v6, :do_log

    :sampled
    const/16 v2, 0x1e

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v2

    if-eqz v2, :end

    :do_log
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nPOS p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v3, :nosc

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :nosc
    const-string v3, " sy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method
'''


def main():
    ch = []
    s = rd(PD)
    if 'AirPosProbe;->posD(' in s:
        print('  [P1] 已应用')
    else:
        backup(PD)
        n = s.count(ANCHOR)
        assert n == 1, 'P1 锚点命中 %d != 1' % n
        s = s.replace(ANCHOR, NEW)
        wr(PD, s)
        ch.append('P1 ' + PD)
    q = rd(PP)
    if '.method public static posD(' in q:
        print('  [P2] 已应用')
    else:
        backup(PP)
        i = q.find('\n.method ')
        assert i > 0, 'P2 找不到类级方法起始点'
        q = q[:i + 1] + FIELDS + q[i + 1:]
        q = q.rstrip('\n') + '\n' + PROBE
        wr(PP, q)
        ch.append('P2 ' + PP)
    print()
    print('✅ r6d159 补丁落地：')
    for c in ch:
        print('   ', c)


if __name__ == '__main__':
    main()