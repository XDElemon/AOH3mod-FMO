# -*- coding: utf-8 -*-
# R4c189：修 r4c188 的机场误判（AIRPORT_BUILDING_ID 默认 -1，漏抄 if-ltz 守卫）
#   做法：
#     ① noteProvinceBuildings 退回"只管军事登记"（去掉建筑索引猜机场）
#     ② 新增 noteAirportProvince(I)V（带 p0>=0 守卫）
#     ③ 挂在游戏自己的机场注册口 registerAirport(II)V（p1=provinceID）→ 精确、不会误判
#     ④ provinceHasAirport 保持：登记表命中 ∨ 实时扫描（实时命中回写，自愈）
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'noteAirportProvince' not in src, 'already patched'

# ---------- ① noteProvinceBuildings 退回 mil-only ----------
start = src.index('.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V')
end = src.index('.end method', start) + len('.end method\n')
NB = '''.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V
    .registers 8
    # R4c189 钩子入口（Province 建筑增删的 8 处）：重算该省的“军事建筑”登记
    # 真值表：列表里任一 building 命中 isMilIdx → 登记(加入)；否则 → 注销(移除)
    # 注意：机场登记**不在这里**做（AIRPORT_BUILDING_ID 默认 -1，按索引猜会误判）→ 见 noteAirportProvince
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-nez v0, :nb_init_done
    new-instance v0, Ljava/util/HashSet;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;

    :nb_init_done
    if-eqz p0, :nb_ret
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I
    move-result v1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    const/4 v3, 0x0
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
    move-result v6
    if-eqz v6, :nb_next
    const/4 v3, 0x1

    :nb_next
    add-int/lit8 v4, v4, 0x1
    goto :nb_loop

    :nb_apply
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    if-eqz v3, :nb_unset
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v0
    goto :nb_ret

    :nb_unset
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v0

    :nb_ret
    return-void
.end method
'''
src = src[:start] + NB + src[end:]
assert 'sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I' not in src[start:start + len(NB)], 'noteProvinceBuildings still uses airport id'

# ---------- ② noteAirportProvince(I)V ----------
NAP = '''.method public static noteAirportProvince(I)V
    .registers 4
    # R4c189 机场登记入口（由 registerAirport 调用）：p0 = provinceID
    # 真值表：p0<0 → 直接返回；否则加入 afAirportProv
    if-ltz p0, :nap_go
    return-void

    :nap_go
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-nez v0, :nap_i
    new-instance v0, Ljava/util/HashSet;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;

    :nap_i
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v2
    return-void
.end method
'''
anchor = '.method private static provinceHasAirport(I)Z\n'
assert src.count(anchor) == 1
src = src.replace(anchor, NAP + anchor, 1)

# ---------- ③ 挂到 registerAirport(II)V 的 return-void 前 ----------
lines = src.split('\n')
idx = [i for i, L in enumerate(lines) if L.startswith('.method public registerAirport(')]
assert len(idx) == 1, idx
s = idx[0]
e = next(i for i in range(s + 1, len(lines)) if lines[i].startswith('.end method'))
out, cnt = [], 0
for i in range(s, e + 1):
    if lines[i].strip() == 'return-void':
        out.append('    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteAirportProvince(I)V')
        cnt += 1
    out.append(lines[i])
assert cnt == 1, cnt
lines[s:e + 1] = out
src = '\n'.join(lines)

assert src.count('noteAirportProvince(I)V') == 2
assert src.count('afAirportProv:Ljava/util/HashSet;') == 5, src.count('afAirportProv:Ljava/util/HashSet;')
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok hooks=%d bytes=%d' % (cnt, len(src.encode('utf-8'))))