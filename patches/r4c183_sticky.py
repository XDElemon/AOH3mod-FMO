# -*- coding: utf-8 -*-
# R4c183：把"军事判据"改成粘滞式 + 情报门改为纯情报（intel-only）
#   根因（r4c182 实据）：Province.buildings 在敌方省上 bsz=0/时有时无 ⇒ mil 读数不可信
#   设计：
#     ① 原扫描体改名 milRaw(I)Z（原始读数，有时能读到）
#     ② 新 hasMilitaryBuilding(I)Z = 粘滞：raw=1 → 记入 afMilSeen 并返回1；
#        raw=0 且记忆命中 → 只有"该省可见(fog=1) 且 列表非空(已装载)"才敢否定并遗忘，否则沿用记忆(=1)
#        ⇒ 炸光后：你亲眼看着它且数据装载 → 才会忘；读不到数据时不会误判
#     ③ 情报门 bomberIntelOk = 纯情报（雷达网 ∨ 飞机航线 ∨ 玩家可见），不再要求 mil 读数
import io, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'afMilSeen' not in src and 'milRaw' not in src, 'already patched'

# ---------- ① 字段 ----------
f_old = '.field public static afMilKnown:Ljava/util/HashSet;\n'
assert src.count(f_old) == 1
src = src.replace(f_old, f_old + '\n.field public static afMilSeen:Ljava/util/HashSet;\n', 1)

# ---------- ② 改名 hasMilitaryBuilding -> milRaw ----------
m_old = '.method private static hasMilitaryBuilding(I)Z\n'
assert src.count(m_old) == 1
src = src.replace(m_old, '.method private static milRaw(I)Z\n', 1)

# ---------- ③ 插入粘滞版 hasMilitaryBuilding ----------
STICKY = '''.method private static hasMilitaryBuilding(I)Z
    .registers 8
    # R4c183 粘滞军事判据。真值表：
    #   milRaw(pid)==1  → 记入 afMilSeen，返回 1（观测到就记住）
    #   milRaw(pid)==0 且 记忆命中 → 仅当“该省可见(fog=1) 且 建筑列表非空(数据已装载)”才遗忘并返回 0
    #                                否则返回 1（数据读不到的假阴性不得当证据）
    #   其余 → 返回 0
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    if-nez v2, :hs_h
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;

    :hs_h
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->milRaw(I)Z
    move-result v5
    if-eqz v5, :hs_yes

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :hs_no

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v6
    if-eqz v6, :hs_keep
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v4
    if-eqz v4, :hs_keep
    iget-object v1, v6, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    if-eqz v1, :hs_keep
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v0
    if-lez v0, :hs_keep

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v4
    goto :hs_no

    :hs_keep
    const/4 v4, 0x1
    return v4

    :hs_yes
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilSeen:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v4
    const/4 v4, 0x1
    return v4

    :hs_no
    const/4 v4, 0x0
    return v4
.end method
'''
anchor = '.method private static milRaw(I)Z\n'
assert src.count(anchor) == 1
src = src.replace(anchor, STICKY + anchor, 1)

# ---------- ④ 情报门改纯情报 ----------
start = src.index('.method private static bomberIntelOk(I)Z')
end = src.index('.end method', start) + len('.end method\n')
GATE = '''.method private static bomberIntelOk(I)Z
    .registers 8
    # R4c183 情报门 = 纯情报（不再依赖 mil 读数，因为 Province.buildings 在敌省上不可靠）
    # 真值表：cov = 雷达网 ∨ 飞机航线 ∨ 玩家可见
    #   cov==1 → 写入情报记忆 afMilKnown（“这个省我们侦察过”）
    #   返回 afMilKnown.contains(pid) → 侦察过就一直可打（覆盖撤走仍记得）
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    if-nez v2, :r4c180_h
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;

    :r4c180_h
    const/4 v0, 0x0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v1
    if-eqz v1, :r4c180_c2
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;
    if-eqz v2, :r4c180_c2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :r4c180_c2
    const/4 v0, 0x1

    :r4c180_c2
    if-eqz v0, :r4c180_c3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;
    if-eqz v2, :r4c180_c3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :r4c180_c3
    const/4 v0, 0x1

    :r4c180_c3
    if-eqz v0, :r4c180_mem
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v2
    if-eqz v2, :r4c180_mem
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v4
    if-eqz v4, :r4c180_mem
    const/4 v0, 0x1

    :r4c180_mem
    if-eqz v0, :r4c180_gate
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :r4c180_gate
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikState(I)V

    :r4c180_gate
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    invoke-static {p0, v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikLog3(III)V
    return v4
.end method
'''
src = src[:start] + GATE + src[end:]

# ---------- 断言 ----------
assert src.count('.method private static milRaw(I)Z') == 1
assert src.count('.method private static hasMilitaryBuilding(I)Z') == 1
assert src.count('milRaw(I)Z') == 2          # 定义 + 调用
assert src.count('afMilSeen:Ljava/util/HashSet;') == 6   # 声明 + 助手内5
assert src.count('ikState(I)V') == 3
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))