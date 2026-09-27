# -*- coding: utf-8 -*-
# r5c025_patch.py v2 —— P0「AI 空军广撒网诊断」只读探针批（可重入）
# 1) 全部走 e5i(String,int)；不用 e5s（其判空极性写反）
# 2) 探针逻辑在 AirDbgLog 的 5 个 helper（无 if、单一 return；唯一分支为 pl 的 null 守卫）
# 3) 每处插桩只加 1~2 条指令；绝不落在 invoke-* 与其 move-result* 之间
# 4) 8 组：nA1e / nA2m / nA3b / nA4d / nA4f / nA6c / nA5t / nA9r
import io, os, shutil, sys

TREE = '/tmp/w3a/smali/'
B = TREE + 'aoc/kingdoms/lukasz/map/battles/'
LOG, AFM, APT, MIS = B + 'AirDbgLog.smali', B + 'AirForceManager.smali', B + 'Airport.smali', B + 'AirMission.smali'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, t): io.open(p, 'w', encoding='utf-8').write(t)

for p in (LOG, AFM, APT, MIS):
    bak = p + '.pre_r5c025'
    if not os.path.exists(bak):
        shutil.copy2(p, bak)
print('[备份] .pre_r5c025 x4 就绪')

HELPERS = u'''
# ===== r5c025 P0 probe helpers (read-only, single return) =====
.method private static p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
.method public static p0Civ(ILjava/lang/String;)V
    .registers 10
    const-string v1, " civ="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " apts="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v2
    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v2
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v3
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " ms="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v2
    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v3
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " diff="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " pl="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v2, :p0c_pl
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    :p0c_pl
    return-void
.end method
.method public static p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V
    .registers 10
    const-string v1, " civ="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " ap="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " mode="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->ordinal()I
    move-result v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " q="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " tot="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " rem="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;
    const-string v1, " it="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " ft="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " bm="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " at="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    return-void
.end method
.method public static p0War(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)V
    .registers 8
    const-string v1, " civ="
    invoke-static {p2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " war="
    invoke-static {p2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " ms="
    invoke-static {p2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v2
    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v3
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    return-void
.end method
.method public static p0Empty(I)V
    .registers 3
    const-string v0, "nA4f empty="
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    return-void
.end method
.method public static p0Mis(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/lang/String;)V
    .registers 6
    const-string v1, " civ="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " tgt="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " type="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ordinal()I
    move-result v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v1, " ms="
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v2
    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v3
    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    return-void
.end method
'''

lt = rd(LOG)
if u'p0Air' in lt:
    print('[helper] 已存在，跳过')
else:
    if not lt.endswith(u'\n'):
        lt += u'\n'
    wr(LOG, lt + HELPERS)
    print('[helper] AirDbgLog +5 helper OK')

A1_OLD = u'''    .param p1, "civID"    # I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;'''
A1_NEW = u'''    .param p1, "civID"    # I

    const-string v0, "nA1e"

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;'''

A2_OLD = u'''    if-ne v3, v4, :cond_20

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V'''
A2_NEW = u'''    if-ne v3, v4, :cond_20

    const-string v3, "nA2m"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V'''

A3_OLD = u'''.method public updateBuild()V
    .registers 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'''
A3_NEW = u'''.method public updateBuild()V
    .registers 5

    const-string v0, "nA3b"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'''

A4_OLD = u'''    if-eqz v0, :cond_3c

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'''
A4_NEW = u'''    if-eqz v0, :cond_3c

    const-string v3, "nA4d"

    invoke-static {p1, v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0War(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'''

A5_OLD = u'''    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b'''
A5_NEW = u'''    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Empty(I)V

    if-nez v5, :cond_3b'''

A6_OLD = u'''.method private static strikeTick_A1(I)V
    .registers 4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;'''
A6_NEW = u'''.method private static strikeTick_A1(I)V
    .registers 4
    const-string v0, "nA5t"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;'''

A7_OLD = u'''.method private airCombatTick()V
    .registers 16
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;'''
A7_NEW = u'''.method private airCombatTick()V
    .registers 16
    const-string v0, "nA6c"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Mis(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/lang/String;)V
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;'''

A8_OLD = u'''    :cond_62
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->load()V'''
A8_NEW = u'''    :cond_62
    const-string v3, "nA9r"

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->load()V'''

INS = [(AFM, A1_OLD, A1_NEW, 'I1 update(I) nA1e'),
       (AFM, A2_OLD, A2_NEW, 'I2 executeAIAssignment nA2m'),
       (APT, A3_OLD, A3_NEW, 'I3 updateBuild nA3b'),
       (AFM, A4_OLD, A4_NEW, 'I4 AIA-p nA4d'),
       (AFM, A5_OLD, A5_NEW, 'I5 AIA-p nA4f'),
       (AFM, A6_OLD, A6_NEW, 'I6 strikeTick_A1 nA5t'),
       (MIS, A7_OLD, A7_NEW, 'I7 airCombatTick nA6c'),
       (AFM, A8_OLD, A8_NEW, 'I8 registerAirport nA9r')]

for path, old, new, tag in INS:
    t = rd(path)
    if new in t:
        print('[插桩] %s 已存在，跳过' % tag); continue
    c = t.count(old)
    if c != 1:
        print('!! 锚点不唯一 [%s] count=%d' % (tag, c)); sys.exit(1)
    wr(path, t.replace(old, new, 1))
    print('[插桩] %s OK' % tag)

bad = []
for path, name in ((AFM, 'AFM'), (APT, 'Airport'), (MIS, 'AirMission'), (LOG, 'AirDbgLog')):
    lines = rd(path).split(u'\n')
    for k in range(1, len(lines)):
        s = lines[k].strip()
        if (s.startswith(u'const-string v0, "nA') or s.startswith(u'const-string v3, "nA')
                or u'AirDbgLog;->p0' in s):
            prev = lines[k - 1].strip()
            if prev.startswith(u'invoke-') and u'move-result' not in prev:
                bad.append('%s:%d %s' % (name, k + 1, prev[:60]))
print('[复核] 探针紧跟 invoke（无 move-result）处 = %d' % len(bad))
for x in bad:
    print('   !! ' + x)
print('r5c025 探针补丁完成')