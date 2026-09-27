# -*- coding: utf-8 -*-
# r5c035_probe.py —— 诊断批：给 AI 机场每回合打一条"决策前状态"（钱/在建/队列/机队/成本）
#   新增：Airport.p1bStat(Airport, String)V（静态；内部可分支，调用点无分支）
#        在 AFM.updateAIBuildUp 的"AI 判定之后"插一行调用
import io, os, shutil, sys

B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles'
AP = B + '/Airport.smali'
AF = B + '/AirForceManager.smali'
MARK = 'r5c035 probe'

STAT = u'''
.method public static p1bStat(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V
    .registers 8

    # r5c035 probe: 决策前状态（无文明则不打）
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :p1b_st_ret

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    float-to-int v1, v1

    const-string v2, "G"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v3, 0x0

    if-nez v2, :p1b_st_b0

    const/4 v3, 0x1

    :p1b_st_b0
    const-string v2, "B"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-string v2, "Q"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    const-string v2, "T"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v3, "M"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v3, "A"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v4

    const-string v3, "CB"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v4

    const-string v3, "CA"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :p1b_st_ret
    return-void
.end method
'''


def body_range(text, hdr):
    s = text.index(hdr)
    e = text.index('\n.end method', s) + len('\n.end method')
    return s, e


def main():
    ap = io.open(AP, encoding='utf-8').read()
    af = io.open(AF, encoding='utf-8').read()
    if MARK in ap:
        print('r5c035 已应用（幂等退出）')
        return 0
    for f in (AP, AF):
        if not os.path.exists(f + '.pre_r5c035'):
            shutil.copy2(f, f + '.pre_r5c035')
            print('backup ->', f.split('/')[-1] + '.pre_r5c035')

    # 1) Airport.p1bStat 追加
    assert '.method public static p1bStat(' not in ap
    ap = ap.rstrip('\n') + '\n' + STAT
    print('  [Airport] p1bStat 追加  OK')

    # 2) AFM.updateAIBuildUp：AI 判定之后插一行调用
    hdr = '.method private updateAIBuildUp(Laoc/kingdoms/lukasz/map/battles/Airport;)V\n'
    s, e = body_range(af, hdr)
    m = af[s:e]
    old = ('    if-eq v1, v2, :p1b_u_skip\n')
    assert m.count(old) == 1, 'AI 判定锚点不唯一'
    new = (old +
           '\n    # r5c035 probe: 决策前状态（每 AI 机场每回合一条）\n'
           '    const-string v8, "p1b"\n\n'
           '    invoke-static {p1, v8}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bStat('
           'Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V\n')
    m = m.replace(old, new, 1)
    af = af[:s] + m + af[e:]
    print('  [AFM] p1bStat 调用插入  OK')

    io.open(AP, 'w', encoding='utf-8').write(ap)
    io.open(AF, 'w', encoding='utf-8').write(af)
    print('r5c035 诊断探针完成')
    return 0


if __name__ == '__main__':
    sys.exit(main())