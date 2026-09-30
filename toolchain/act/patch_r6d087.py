#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d087 · 方案A：AI 也会起飞拦截（独立方法 + 顶部单行挂点，绝不内联改热点方法）

设计（详见对话）：
1) 新增静态字段 dgAixMs:J 做 500ms 节流；
2) 新增独立方法 aiPatrolInterceptTick()V：找"敌机在谁家天上"⇒ 让那个文明
   把正在飞的 PATROL 制空编队**改派成截击**（type/targetMissionID/targetProvinceID 三写）；
3) 只在 AirForceManager.update(I)V 的**最顶端**插一行 invoke-static；
4) AirDbgLog.axiP(...) 探针（免节流 dWrite），供验收。

运行：python3 patch_r6d087.py && bash ../act/assemble.sh r6d087 /tmp/r6d087_classes.dex
落盘前请先用 grep 核验下面 3 个 anchor 的命中次数（脚本内含 assert）。
"""
import io, shutil, sys

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DBG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'

# ---------- 1) 探针 helper（免节流） ----------
DBG_HELP = '''.method public static axiP(Ljava/lang/String;IIII)V
    .registers 7
    # r6d087: AI 拦截链探针（免节流 dWrite）
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

'''

# ---------- 2) 节流字段 ----------
FIELD = '    .field public static dgAixMs:J\n'
FIELD_ANCHOR = '.field public static dgAiCap:I\n'

# ---------- 3) 独立方法 ----------
# 寄存器：v0..v13（静态方法，无参数）
METHOD = '''.method public static aiPatrolInterceptTick()V
    .registers 14
    # r6d087 方案A：让"被入侵文明"把自己在飞的巡逻制空机改派去拦截
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAixMs:J
    sub-long v0, v0, v2
    const-wide/16 v2, 0x1f4
    cmp-long v4, v0, v2
    if-gez v4, :axi_ret

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAixMs:J

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0
    if-eqz v0, :axi_ret

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v1, :axi_ret

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    const/4 v3, 0x0

:axi_loop
    if-ge v3, v2, :axi_ret

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5
    if-nez v5, :axi_next

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v5, :axi_next

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I
    if-lez v7, :axi_next

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8
    if-nez v8, :axi_next

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8
    if-lez v8, :axi_next

    if-ne v8, v6, :axi_next

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v0, :axi_2

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    if-eq v8, v0, :axi_next

:axi_2
    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v9
    if-eqz v9, :axi_next

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z

    move-result v9
    if-eqz v9, :axi_next

    iget-wide v10, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v10, v11, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z

    move-result v9
    if-nez v9, :axi_next

    # 找到"我方被入侵"⇒ 让防御者把在飞巡逻机改派去拦
    const/4 v9, 0x0

    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->retaskPatrolFor(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v9
    if-eqz v9, :axi_next

    const-string v12, "hit"

    invoke-static {v12, v8, v6, v7, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->axiP(Ljava/lang/String;IIII)V

:axi_next
    add-int/lit8 v3, v3, 0x1
    goto :axi_loop

:axi_ret
    return-void
.end method

'''

# ---------- 4) 改派 helper ----------
RETASK = '''.method public static retaskPatrolFor(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 10
    # r6d087: 找 civ=p1 的一条"在飞的巡逻任务"，改成截击去拦 p0
    # 返回被改派的任务（无则 null）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0
    if-eqz v0, :rp_ret0

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v1, :rp_ret0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    const/4 v3, 0x0

:rp_loop
    if-ge v3, v2, :rp_ret0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4
    if-eqz v4, :rp_next

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v4, :rp_next

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    if-eq v5, p1, :rp_next

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v5, v6, :rp_next

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;
    if-eqz v5, :rp_next

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6
    if-eqz v6, :rp_next

    # 三写：改派为截击
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iput-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v6, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    return-object v4

:rp_next
    add-int/lit8 v3, v3, 0x1
    goto :rp_loop

:rp_ret0
    const/4 v0, 0x0

    return-object v0
.end method

'''


def patch():
    a = io.open(AFM, encoding='utf-8').read()
    d = io.open(DBG, encoding='utf-8').read()

    # 探针 helper
    A0 = '.method public static dWrite(Ljava/lang/String;)V\n'
    assert d.count(A0) == 1, ('dWrite anchor', d.count(A0))
    if 'aibP(Ljava/lang/String;III)V' not in d:
        d = d.replace(A0, DBG_HELP + A0, 1)
    io.open(DBG, 'w', encoding='utf-8').write(d)

    # 字段
    if 'dgAixMs:J' not in a:
        assert a.count(FIELD_ANCHOR) == 1, ('field anchor', a.count(FIELD_ANCHOR))
        a = a.replace(FIELD_ANCHOR, FIELD_ANCHOR + FIELD, 1)

    # 两个新方法（插在 update(I) 之前）
    A1 = '.method public update(I)V\n'
    assert a.count(A1) >= 1, ('update(I)', a.count(A1))
    if 'aiPatrolInterceptTick()V' not in a:
        a = a.replace(A1, METHOD + RETASK + A1, 1)

    # 挂点：update(I) 方法最顶端一行
    if 'invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiPatrolInterceptTick()V' not in a:
        ins = a.index(A1) + len(A1)
        hook = '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiPatrolInterceptTick()V\n\n'
        a = a[:ins] + hook + a[ins:]

    io.open(AFM, 'w', encoding='utf-8').write(a)
    print('r6d087 patched: method=%d retask=%d hook=%d field=%d' % (
        a.count('.method public static aiPatrolInterceptTick'),
        a.count('.method public static retaskPatrolFor'),
        a.count('->aiPatrolInterceptTick()V'),
        a.count('dgAixMs:J')))


if __name__ == '__main__':
    for p in (AFM, DBG):
        shutil.copyfile(p, p + '.pre_r6d087')
    patch()
