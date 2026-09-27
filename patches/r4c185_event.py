# -*- coding: utf-8 -*-
# R4c185：军事判据改为"事件驱动登记表"（稳定 + 否证路径可达）
#   事实：Province.buildings 会被游戏反复清空/装载 ⇒ 瞬时读数闪烁 ⇒ 评分抖动（r4c184 现象：时而是军事省、时而不是）
#   做法：
#     ☆ 登记表 afMilReal：provinceID 集合，表示"该省当前有军事建筑"
#     ☆ 写入/否证都发生在**游戏自己改建筑的那一刻**：在 Province 的 4 个建筑增删方法末尾挂钩子
#        addNewBuilding / addNewBuilding_LoadScenario / destroyBuilding / destroyBuilding_ScenarioEditor
#     ☆ hasMilitaryBuilding = 登记表命中 ∨ milRaw命中(命中即登记，稳定化) ∨ 机场表（空军基地=军事组 idx34）
import io, re

AM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PR = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'

src = io.open(AM, encoding='utf-8').read()
assert 'afMilReal' not in src, 'already patched'

# ---------- ① 字段 ----------
f_old = '\n.field public static afMilKnown:Ljava/util/HashSet;\n'
assert src.count(f_old) == 1
src = src.replace(f_old, f_old + '\n.field public static afMilReal:Ljava/util/HashSet;\n', 1)

# ---------- ② hasMilitaryBuilding 重写（登记表优先） ----------
start = src.index('.method private static hasMilitaryBuilding(I)Z')
end = src.index('.end method', start) + len('.end method\n')
NEW_HM = '''.method private static hasMilitaryBuilding(I)Z
    .registers 6
    # R4c185 军事判据（稳定）：登记表命中 → 1；否则 milRaw 命中则“命中即登记”并返回 1；否则查机场表。
    # 真值表：
    #   登记表含 pid            → 跳 :hm_ret_true（return 1）
    #   milRaw(pid)!=0          → 落 :hm_mil_raw_hit（登记后 return 1）
    #   以上都不成立             → :hm_airport（返回 provinceHasAirport 结果）
    # 否证（从登记表移除）只发生在 Province 建筑增删的钩子里 —— 那时列表一定是装载好的。
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-eqz v0, :hm_milraw
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :hm_milraw
    const/4 v2, 0x1
    return v2

    :hm_milraw
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->milRaw(I)Z
    move-result v2
    if-eqz v2, :hm_airport
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-eqz v0, :hm_ret_true
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v2

    :hm_ret_true
    const/4 v2, 0x1
    return v2

    :hm_airport
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v2
    return v2
.end method
'''
src = src[:start] + NEW_HM + src[end:]

# ---------- ③ noteProvinceBuildings(LProvince;)V（钩子入口：此刻列表一定装载好） ----------
NB = '''.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V
    .registers 8
    # R4c185 钩子入口：重算该省的“军事建筑”登记状态（增/删/读档时由 Province 调用）
    # 真值表：列表里任一 building 命中 isMilIdx → 登记(加入)；否则 → 注销(移除)
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
anchor = '.method private static hasMilitaryBuilding(I)Z\n'
assert src.count(anchor) == 1
src = src.replace(anchor, NB + anchor, 1)

assert src.count('.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V') == 1
assert src.count('afMilReal:Ljava/util/HashSet;') == 6   # 声明1 + 判据2 + 钩子3
io.open(AM, 'w', encoding='utf-8').write(src)
print('AM ok bytes=%d' % len(src.encode('utf-8')))

# ---------- ④ Province 4 个方法挂钩子（每个 return-void 前插一行） ----------
pr = io.open(PR, encoding='utf-8').read()
lines = pr.split('\n')
METHODS = ['addNewBuilding(', 'addNewBuilding_LoadScenario(', 'destroyBuilding(', 'destroyBuilding_ScenarioEditor(']
HOOK = '    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V'
inserted = 0
for name in METHODS:
    idx = [i for i, L in enumerate(lines) if L.startswith('.method') and name in L and 'Province.smali' not in L]
    assert len(idx) == 1, (name, idx)
    s = idx[0]
    e = next(i for i in range(s + 1, len(lines)) if lines[i].startswith('.end method'))
    out = []
    cnt = 0
    for i in range(s, e + 1):
        if re.match(r'^\s*return-void\s*$', lines[i]):
            out.append(HOOK); cnt += 1
        out.append(lines[i])
    assert cnt >= 1, name
    lines[s:e + 1] = out
    inserted += cnt
    print('hook %s x%d' % (name, cnt))
pr = '\n'.join(lines)
assert pr.count('noteProvinceBuildings') == inserted
io.open(PR, 'w', encoding='utf-8').write(pr)
print('PR ok hooks=%d bytes=%d' % (inserted, len(pr.encode('utf-8'))))