# -*- coding: utf-8 -*-
# R4c182：诊断批次——同一 tick 内 hasMilitaryBuilding 读 1 又读 0 的矛盾
#   新探针 ikState(I)：nIKS p= mil= bsz= b0= mem= rps= pls= fog=
#   打点：① bomberIntelOk 写入记忆处（原 add 日志替换） ② tryStrikeForAirport 派发处（dbgPick 之后）
import io, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'ikState' not in src, 'already patched'

STATE = '''.method private static ikState(I)V
    .registers 12
    # R4c182 诊断：nIKS p=<省> mil=<0/1> bsz=<buildings.size> b0=<首个建筑索引> mem= rps= pls= fog=
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nIKS p="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mil="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v3
    const/4 v4, -0x1
    const/4 v5, -0x1
    if-eqz v3, :ikst_a
    iget-object v6, v3, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    if-eqz v6, :ikst_a
    invoke-interface {v6}, Ljava/util/List;->size()I
    move-result v4
    if-lez v4, :ikst_a
    const/4 v7, 0x0
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    if-eqz v8, :ikst_a
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I
    move-result v5

    :ikst_a
    const-string v1, " bsz="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " b0="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mem="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v2, 0x0
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    if-eqz v6, :ikst_b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :ikst_b
    const/4 v2, 0x1

    :ikst_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rps="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v2, 0x0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v6
    if-eqz v6, :ikst_c
    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;
    if-eqz v6, :ikst_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :ikst_c
    const/4 v2, 0x1

    :ikst_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pls="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/4 v2, 0x0
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;
    if-eqz v6, :ikst_d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :ikst_d
    const/4 v2, 0x1

    :ikst_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fog="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v3, :ikst_e
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v2
    goto :ikst_f

    :ikst_e
    const/4 v2, 0x0

    :ikst_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v0, "AIRDBG"
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    return-void
.end method
'''

anchor_m = '.method private static bomberIntelOk(I)Z\n'
assert src.count(anchor_m) == 1
src = src.replace(anchor_m, STATE + anchor_m, 1)

# 打点①：写入记忆处（原 “add” 日志 → ikState）
old1 = '''    const-string v3, "add"
    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikLog(ILjava/lang/String;)V
'''
assert src.count(old1) == 1, 'anchor1'
src = src.replace(old1, '''    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikState(I)V
''', 1)

# 打点②：派发处（dbgPick 之后）
old2 = '''    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgPick(II)V
'''
assert src.count(old2) == 1, 'anchor2'
src = src.replace(old2, old2 + '''    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikState(I)V
''', 1)

assert src.count('ikState(I)V') == 3          # 定义1 + 调用2
assert src.count('.method private static ikState(I)V') == 1
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))