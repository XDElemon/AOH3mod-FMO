import io, shutil, sys
P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BK = P + '.pre_r6d078'
shutil.copyfile(P, BK)
src = io.open(P, encoding='utf-8').read()

METHOD = '''.method private patrolEngage()V
    .registers 13
    # r6d078: 巡逻机"视敌升格"——发现视野内敌机 ⇒ 就地改为截击并追击
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    if-ne v0, v1, :pe_ret

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;
    if-eqz v0, :pe_ret

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    if-eqz v0, :pe_ret

    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2
    if-eqz v2, :pe_ret

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v2, :pe_ret

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3
    const/4 v4, 0x0

:pe_loop
    if-ge v4, v3, :pe_ret

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5
    if-eqz v5, :pe_next

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v5, :pe_next

    iget v10, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    if-eq v10, v9, :pe_next

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v8
    if-eqz v8, :pe_next

    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z

    move-result v8
    if-eqz v8, :pe_next

    iget-wide v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    move v8, v9
    invoke-static/range {v6 .. v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z

    move-result v8
    if-nez v8, :pe_next

    # ==== 升格为截击并追向目标所在省 ====
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    # ==== 探针（dWrite 免节流） ====
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "r6d078 up civ="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " p="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void

:pe_next
    add-int/lit8 v4, v4, 0x1
    goto :pe_loop

:pe_ret
    return-void
.end method

'''

# A2：插入新方法（锚点：update 方法头）
A2 = '.method public update()V\n'
assert src.count(A2) == 1, ('A2', src.count(A2))
src = src.replace(A2, METHOD + A2, 1)

# A1：挂点（trackTarget 调用之前）
A1 = '    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->trackTarget()V\n'
assert src.count(A1) == 1, ('A1', src.count(A1))
src = src.replace(A1, '    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->patrolEngage()V\n' + A1, 1)

# A3：取消目标类型过滤（白名单 5 行）
A3 = ('    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;\n'
      '    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;\n'
      '    if-eq v1, v5, :cond_9b\n'
      '    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;\n'
      '    if-eq v1, v5, :cond_9b\n'
      '    goto :goto_9d\n')
n3 = src.count(A3)
print('A3 命中 =', n3)
if n3 == 1:
    src = src.replace(A3, '', 1)

io.open(P, 'w', encoding='utf-8').write(src)
print('ok: method=%d hook=%d' % (src.count('.method private patrolEngage'),
                                 src.count('->patrolEngage()V')))