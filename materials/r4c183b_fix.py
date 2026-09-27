# -*- coding: utf-8 -*-
# R4c183b：修正粘滞判据的极性（if-eqz -> if-nez），并把标签改成"结构名"（不再用 yes/no 暗示真值）
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

start = src.index('.method private static hasMilitaryBuilding(I)Z')
end = src.index('.end method', start) + len('.end method\n')

NEW = '''.method private static hasMilitaryBuilding(I)Z
    .registers 8
    # R4c183b 粘滞军事判据（标签全部用结构名，禁止 yes/no 命名）。
    # 真值表：
    #   raw = milRaw(pid)
    #   raw != 0            → 跳 :hs_add_true（记入 afMilSeen）→ return 1
    #   raw == 0            → 落下：查 afMilSeen
    #        记忆未命中    → 跳 :hs_false → return 0
    #        记忆命中      → 仅当“省非空 且 fog=1（可见） 且 buildings 列表非空（数据已装载）”
    #                        → 跳 :hs_forget_then_false（遗忘 → return 0）
    #                        否则          → 跳 :hs_keep_true → return 1
    # 反例（R4c183 写反版）：if-eqz v5, :hs_yes ⇒ raw==0 反而去 add+return1
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    if-nez v2, :hs_init_done
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;

    :hs_init_done
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->milRaw(I)Z
    move-result v5
    if-nez v5, :hs_add_true

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :hs_false

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v6
    if-eqz v6, :hs_keep_true
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v4
    if-eqz v4, :hs_keep_true
    iget-object v1, v6, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    if-eqz v1, :hs_keep_true
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :hs_keep_true

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v4
    goto :hs_false

    :hs_keep_true
    const/4 v4, 0x1
    return v4

    :hs_add_true
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v4
    const/4 v4, 0x1
    return v4

    :hs_false
    const/4 v4, 0x0
    return v4
.end method
'''
src = src[:start] + NEW + src[end:]
assert src.count('if-nez v5, :hs_add_true') == 1
assert '\n    if-eqz v5, :hs_yes' not in src
assert src.count('afMilSeen:Ljava/util/HashSet;') == 6
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))