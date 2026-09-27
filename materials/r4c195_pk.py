# -*- coding: utf-8 -*-
# R4c195：候选池探针 nPK —— 打印“本次挑选”的机场省、候选数、以及 pin 里命中几个
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'dbgPK' not in src, 'already patched'

HELP = '''.method public static dbgPK(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/List;)V
    .registers 10
    # R4c195：nPK ap=<机场省> n=<候选数> pin=<pin命中数>
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz p0, :pk_n1

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    :pk_n1
    if-nez p1, :pk_go

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    if-eqz v0, :pk_go

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :pk_loop
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :pk_go

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :pk_loop

    add-int/lit8 v5, v5, 0x1

    goto :pk_loop

    :pk_go
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nPK ap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    return-void
.end method
'''
anchor = '.method private static hasMilitaryBuilding(I)Z\n'
assert src.count(anchor) == 1
src = src.replace(anchor, HELP + anchor, 1)

old = '''    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getHostileProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v0
'''
assert src.count(old) == 1, 'anchor=%d' % src.count(old)
src = src.replace(old, old + '''
    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgPK(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/List;)V
''', 1)

assert src.count('dbgPK') == 2
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))