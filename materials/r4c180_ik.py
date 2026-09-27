# -*- coding: utf-8 -*-
# R4c180：轰炸机情报门（方案B）
#   覆盖判定 = 雷达网(radarProvinces) ∨ 飞机航线(planeFogSeen) ∨ 玩家可见(getFogDrawArmy)
#   记忆     = afMilKnown（“已知该省有军事建筑”）；真实军事判定实时，无军事建筑即刻遗忘
#   门槛     = 命中记忆（曾侦察过 → 覆盖撤走后仍可继续打）
# 改动点：AirForceManager ① 新增静态字段 ② 新增 ikLog/bomberIntelOk ③ pickStrikeTarget 插门
import io, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

if 'bomberIntelOk' in src:
    print('ALREADY_PATCHED')
    sys.exit(0)

# ---------- ① 字段 ----------
anchor_f = '.field public radarProvinces:Ljava/util/Set;\n'
assert src.count(anchor_f) == 1, 'anchor_f count=%d' % src.count(anchor_f)
src = src.replace(anchor_f,
                  anchor_f + '\n.field public static afMilKnown:Ljava/util/HashSet;\n', 1)

# ---------- ② 新方法 ----------
IK = '''.method private static ikLog(ILjava/lang/String;)V
    .registers 6
    # R4c180 情报门探针：只在“记忆发生变更”时打印（低频，便于抓样验证）
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nIK "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " p="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    const-string v0, "AIRDBG"
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    return-void
.end method
.method private static bomberIntelOk(I)Z
    .registers 8
    # R4c180（方案B）轰炸机情报门。真值表意图：
    #   hasMilitaryBuilding==false → 无军事目标：遗忘并拒绝（炸光了就不用派）
    #   hasMilitaryBuilding==true  → 被“雷达网 ∨ 飞机航线 ∨ 玩家可见”覆盖时写入记忆
    #   门槛 = 命中记忆（侦察过就记住；覆盖撤走后仍可继续打）
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    if-nez v2, :r4c180_h
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;

    :r4c180_h
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v5
    if-eqz v5, :r4c180_my
    # ①-b 已无军事建筑 → 情报失效（无条件遗忘）
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :r4c180_no
    const-string v2, "del"
    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikLog(ILjava/lang/String;)V

    :r4c180_no
    const/4 v0, 0x0
    return v0

    :r4c180_my
    # ② 覆盖判定：雷达网 ∨ 飞机航线 ∨ 玩家可见
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
    # ③ 被覆盖 → 写入记忆
    if-eqz v0, :r4c180_gate
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :r4c180_gate
    const-string v3, "add"
    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikLog(ILjava/lang/String;)V

    :r4c180_gate
    # ④ 门槛：命中记忆则可打
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    return v4
.end method
'''

anchor_m = '.method public pickStrikeTarget(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I\n'
assert src.count(anchor_m) == 1, 'anchor_m count=%d' % src.count(anchor_m)
src = src.replace(anchor_m, IK + anchor_m, 1)

# ---------- ③ pickStrikeTarget 内插门（方法范围内定位） ----------
i = src.index(anchor_m)
j = src.index('.end method', i)
body = src[i:j]
anchor_g = '    # R4c178：候选打分（轰炸机＝军事组优先'
assert body.count(anchor_g) == 1, 'anchor_g count=%d' % body.count(anchor_g)
GATE = '''    # R4c180-intel：轰炸机情报门（未侦察过的省不派；攻机路径已有 fog 门，不变）
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-ne p2, v7, :r4c180_ik_ok
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->bomberIntelOk(I)Z
    move-result v7
    if-eqz v7, :cond_51

    :r4c180_ik_ok
'''
body = body.replace(anchor_g, GATE + anchor_g, 1)
assert body.count('r4c180_ik_ok') == 2, 'gate insert'
src = src[:i] + body + src[j:]

# ---------- 唯一性断言 ----------
assert src.count('afMilKnown:Ljava/util/HashSet;') == 6, 'field refs=%d' % src.count('afMilKnown:Ljava/util/HashSet;')  # 声明1 + 助手内5
assert src.count('.method private static bomberIntelOk(I)Z') == 1
assert src.count('.method private static ikLog(ILjava/lang/String;)V') == 1
assert src.count('bomberIntelOk(I)Z') == 2      # 定义1 + 调用1

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))
