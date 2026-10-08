#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d154 补丁：飞机贴图"按飞机自己的国家"取图 + 4 个只读探针

定稿：/sdcard/GLG/历史23/r6s5/调研_r6d154_r3_定稿.md
- E1  4 处 art 调用 {v3}->airImgForType  =>  {v3, p3}->airImgForKey
- E2  新增 ProvinceDrawArmy.airImgForKey(ILjava/lang/String;)I
- E3  ProvinceDrawArmy$1.drawArmy 插 adp 探针
- E4  AirDbgLog.airDrawAsPlane 摘key分支 插 fkr 探针
- E5  AirMission.placeAirDivision 插 pap 探针
- E6  AirMission.tickInvars 写回key分支 插 tkr 探针
- E7/E8 AirPosProbe 新字段 + 4 个探针方法
"""
import os, shutil, sys

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d154'
REVX = '/tmp/revx/'

PD = ROOT + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PD1 = ROOT + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1.smali'
AD = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AM = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
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


def rep_once(s, old, new, tag, expect=1):
    n = s.count(old)
    assert n == expect, '[%s] 锚点命中 %d != %d：%r' % (tag, n, expect, old[:120])
    return s.replace(old, new)


# ============================ E1 / E2 : ProvinceDrawArmy ============================
ART_OLD = '    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForType(I)I'
ART_NEW = '    invoke-static {v3, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airImgForKey(ILjava/lang/String;)I'

HELPER = '''.method public static airImgForKey(ILjava/lang/String;)I
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
.end method

'''

ANCHOR_GETKEYCIV = '.method public static getKeyCiv(Ljava/lang/String;)I'

# ============================ E3 : ProvinceDrawArmy$1 ============================
A_E3 = '''    invoke-virtual {v0, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z'''
N_E3 = '''    invoke-virtual {v0, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-static {v0, p2, p3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->adp(Ljava/lang/Object;II)V

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z'''

# ============================ E4 : AirDbgLog ============================
A_E4 = '''    :cond_28
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->stripFakeKey(Ljava/lang/Object;)V'''
N_E4 = '''    :cond_28
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->fkr(Ljava/lang/Object;)V
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->stripFakeKey(Ljava/lang/Object;)V'''

# ============================ E5 : placeAirDivision ============================
A_E5 = '''    invoke-static {v2, v1, p1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->pl0(Ljava/lang/String;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;'''
N_E5 = '''    invoke-static {v2, v1, p1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->pl0(Ljava/lang/String;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-static {p0, v2, v0, v1, p1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V'''

# ============================ E6 : tickInvars 写回 key ============================
A_E6 = '''    if-eqz v2, :cond_17

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    :cond_17'''
N_E6 = '''    if-eqz v2, :cond_17

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->tkr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17'''

# ============================ E7 : AirPosProbe 字段 ============================
A_E7 = '.field private static sb:Ljava/lang/StringBuilder;'
N_E7 = A_E7 + '''

.field private static id0:I

.field private static id1:I

.field private static id2:I

.field private static id3:I

.field private static q0:I

.field private static q1:I

.field private static q2:I

.field private static q3:I

.field private static an:I

.field private static ldup:I'''

# ============================ E8 : AirPosProbe 方法 ============================
PROBE_METHODS = '''

# ============================================================================
# r6d154 探针：飞机"叠两层"定位（纯只读；全部走 dWrite）
#   adp  = ProvinceDrawArmy$1.drawArmy（每支师被绘制）：id/绘制省/师自认省/DUP
#   pap  = AirMission.placeAirDivision（换省）：任务key vs 师实际key / 编制数
#   fkr  = AirDbgLog.airDrawAsPlane 摘假key分支
#   tkr  = AirMission.tickInvars 写回key分支（仅 old != new）
# ============================================================================

.method public static adp(Ljava/lang/Object;II)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v1, :end

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :end

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->an:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->an:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    const/4 v5, 0x0

    const/4 v8, -0x1

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i0:I

    if-eq v3, v6, :d1

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q0:I

    if-eq p1, v7, :d1

    const/4 v5, 0x1

    move v8, v7

    :d1
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i1:I

    if-eq v3, v6, :d2

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q1:I

    if-eq p1, v7, :d2

    const/4 v5, 0x1

    move v8, v7

    :d2
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i2:I

    if-eq v3, v6, :d3

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q2:I

    if-eq p1, v7, :d3

    const/4 v5, 0x1

    move v8, v7

    :d3
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i3:I

    if-eq v3, v6, :d4

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q3:I

    if-eq p1, v7, :d4

    const/4 v5, 0x1

    move v8, v7

    :d4
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i2:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i3:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q2:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q3:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i1:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i2:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q1:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q2:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i0:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i1:I

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q0:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q1:I

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->i0:I

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->q0:I

    if-nez v5, :rt

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ldup:I

    if-eq v3, v6, :rt

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ldup:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nADPD n="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pNow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pOld="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void

    :rt
    rem-int/lit8 v6, v2, 0x40

    if-nez v6, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nADP n="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static pap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez p2, :end

    move-object v0, p2

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :noeq

    if-eqz p1, :noeq

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :noeq
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v5, -0x1

    if-eqz v4, :nor

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :nor
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nPAP id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " at="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " eq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " rg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " dk="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method


.method public static fkr(Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v4, -0x1

    if-eqz v3, :nor

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :nor
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nFKR id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " k="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method

.method public static tkr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11


    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-nez p1, :log

    if-nez p2, :log

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :end

    :log
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v5, -0x1

    if-eqz v4, :nor

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :nor
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "nTKR id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " rg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method
'''


def apply(s, old, new, tag, done_frag=None):
    """幂等：若 done_frag 已在文本中，视为已应用；否则断言锚点唯一并替换"""
    if done_frag and done_frag in s:
        print('  [%s] 已应用，跳过' % tag)
        return s, False
    return rep_once(s, old, new, tag), True


def main():
    changed = []
    done = []

    # ---------- E1/E2 : ProvinceDrawArmy ----------
    s = rd(PD)
    if ART_NEW in s and s.count(ART_NEW) == 4:
        print('  [E1/E2] 已应用，跳过')
        done.append('E1/E2')
    else:
        backup(PD)
        n = s.count(ART_OLD)
        assert n == 4, 'E1 锚点命中 %d != 4' % n
        s = s.replace(ART_OLD, ART_NEW)
        assert s.count(ANCHOR_GETKEYCIV) == 1, 'E2 锚点命中 != 1'
        s = s.replace(ANCHOR_GETKEYCIV, HELPER + ANCHOR_GETKEYCIV)
        wr(PD, s)
        changed.append('E1/E2 ' + PD)

    # ---------- E3 ----------
    s = rd(PD1)
    s, did = apply(s, A_E3, N_E3, 'E3', done_frag='AirPosProbe;->adp(Ljava/lang/Object;II)V')
    if did:
        backup(PD1)
        wr(PD1, s)
        changed.append('E3 ' + PD1)

    # ---------- E4 ----------
    s = rd(AD)
    s, did = apply(s, A_E4, N_E4, 'E4', done_frag='AirPosProbe;->fkr(Ljava/lang/Object;)V')
    if did:
        backup(AD)
        wr(AD, s)
        changed.append('E4 ' + AD)

    # ---------- E5/E6 ----------
    s = rd(AM)
    s, d5 = apply(s, A_E5, N_E5, 'E5', done_frag='AirPosProbe;->pap(')
    s, d6 = apply(s, A_E6, N_E6, 'E6', done_frag='AirPosProbe;->tkr(')
    if d5 or d6:
        backup(AM)
        wr(AM, s)
        changed.append('E5/E6 ' + AM)

    # ---------- E7/E8 ----------
    s = rd(PP)
    if '.method public static adp(Ljava/lang/Object;II)V' in s:
        print('  [E7/E8] 已应用，跳过')
        done.append('E7/E8')
    else:
        backup(PP)
        s = rep_once(s, A_E7, N_E7, 'E7')
        assert s.rstrip().endswith('.end method'), 'E8 文件末尾不是 .end method'
        s = s.rstrip('\n') + '\n' + PROBE_METHODS
        wr(PP, s)
        changed.append('E7/E8 ' + PP)

    print()
    print('✅ r6d154 补丁落地：')
    for c in changed:
        print('   ', c)
    if done:
        print('   （已应用跳过：%s）' % '、'.join(done))


if __name__ == '__main__':
    main()
