# -*- coding: utf-8 -*-
# R4c188：机场判据改为"事件驱动登记表 afAirportProv"（+ 实时扫描兜底）
#   根因：allAirports 会被重建（瞬时），打分时读到空 ⇒ 机场省落到 tier2 ⇒ 被更近的军事省压掉
#   做法：
#     ① 新字段 afAirportProv:HashSet
#     ② noteProvinceBuildings（r4c185 已挂在 Province 建筑增删的 8 处）里"顺带"判定机场：
#        遍历同一份 buildings，命中 BuildingsManager.AIRPORT_BUILDING_ID → air 登记，否则注销
#     ③ provinceHasAirport = 登记表命中 ∨ 实时扫描（实时命中时回写登记表，自愈）
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'afAirportProv' not in src, 'already patched'

# ---------- ① 字段 ----------
f_old = '\n.field public static afMilReal:Ljava/util/HashSet;\n'
assert src.count(f_old) == 1
src = src.replace(f_old, f_old + '\n.field public static afAirportProv:Ljava/util/HashSet;\n', 1)

# ---------- ② 替换 provinceHasAirport ----------
start = src.index('.method private static provinceHasAirport(I)Z')
end = src.index('.end method', start) + len('.end method\n')
NEW_AP = '''.method private static provinceHasAirport(I)Z
    .registers 8
    # R4c188 机场判据（稳定）：登记表命中 → 1；否则实时扫描 allAirports；实时命中 → 回写登记表（自愈）
    # 真值表：
    #   登记表含 pid                        → return 1
    #   实时扫描命中                        → 记入登记表后 return 1
    #   map/列表空、遍历完、实例为空         → return 0
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-eqz v0, :ap_live
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :ap_live
    const/4 v2, 0x1
    return v2

    :ap_live
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :ap_none
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;
    if-eqz v0, :ap_none
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1

    :ap_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :ap_none
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    if-eqz v2, :ap_loop
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3

    :ap_loop2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :ap_loop
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;
    if-eqz v4, :ap_loop2
    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    if-ne v5, p0, :ap_loop2
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-eqz v0, :ap_hit
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v2

    :ap_hit
    const/4 v2, 0x1
    return v2

    :ap_none
    const/4 v2, 0x0
    return v2
.end method
'''
src = src[:start] + NEW_AP + src[end:]

# ---------- ③ 替换 noteProvinceBuildings（同时维护 mil / airport 两个登记表） ----------
start = src.index('.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V')
end = src.index('.end method', start) + len('.end method\n')
NEW_NB = '''.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V
    .registers 9
    # R4c188 钩子入口（Province 建筑增删的 8 处）：重算该省的军事/机场登记状态
    # 真值表：列表里任一 building 命中 isMilIdx → 军事登记；任一 building == AIRPORT_BUILDING_ID → 机场登记；
    #         否则对应登记表注销。（此刻列表一定装载好）
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-nez v0, :nb_i1
    new-instance v0, Ljava/util/HashSet;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;

    :nb_i1
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-nez v0, :nb_i2
    new-instance v0, Ljava/util/HashSet;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;

    :nb_i2
    if-eqz p0, :nb_ret
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I
    move-result v1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    const/4 v3, 0x0
    const/4 v7, 0x0
    if-eqz v2, :nb_apply
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v5
    const/4 v4, 0x0

    :nb_loop
    if-ge v4, v5, :nb_apply
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    if-eqz v6, :nb_next
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I
    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isMilIdx(I)Z
    move-result v0
    if-eqz v0, :nb_next2
    const/4 v3, 0x1

    :nb_next2
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I
    if-ne v6, v0, :nb_next
    const/4 v7, 0x1

    :nb_next
    add-int/lit8 v4, v4, 0x1
    goto :nb_loop

    :nb_apply
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    if-eqz v3, :nb_un_mil
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v0
    goto :nb_ap

    :nb_un_mil
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v0

    :nb_ap
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-eqz v0, :nb_ret
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    if-eqz v7, :nb_un_ap
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v0
    goto :nb_ret

    :nb_un_ap
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v0

    :nb_ret
    return-void
.end method
'''
src = src[:start] + NEW_NB + src[end:]

assert src.count('afAirportProv:Ljava/util/HashSet;') == 6, src.count('afAirportProv:Ljava/util/HashSet;')
assert src.count('.method private static provinceHasAirport(I)Z') == 1
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))