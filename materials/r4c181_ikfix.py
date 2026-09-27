# -*- coding: utf-8 -*-
# R4c181：修正 r4c180 情报门的极性写反（mil==1 被送进"遗忘+拒绝"）
#   r4c180 错版：if-eqz v5, :r4c180_my  ⇒ mil==0 跳去覆盖块（还能写记忆）；mil==1 落下=遗忘+return false
#   r4c181 正确：if-nez v5, :r4c180_del ⇒ mil==0 跳去遗忘+return false；mil==1 落下做覆盖/记忆判定
#   并新增探针 nIKM（只在 mil==1 时打）：p=<省> cov=<0/1> ok=<0/1> ⇒ 直接看"军事省是否被看见/是否放行"
import io, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

assert 'if-nez v5, :r4c180_del' not in src, 'already patched'

# ---------- 定位旧方法并整体替换 ----------
start = src.index('.method private static bomberIntelOk(I)Z')
end = src.index('.end method', start) + len('.end method\n')

NEW = '''.method private static ikLog3(III)V
    .registers 8
    # R4c181 探针：nIKM p=<省> cov=<0/1> ok=<0/1>（仅 mil==1 时调用，低频）
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nIKM p="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " cov="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " ok="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v0, "AIRDBG"
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    return-void
.end method
.method private static bomberIntelOk(I)Z
    .registers 8
    # R4c181（修正 r4c180 极性写反）轰炸机情报门。
    # 真值表：mil = hasMilitaryBuilding(p0)；cov = 雷达网 ∨ 飞机航线 ∨ 玩家可见
    #   mil==0 → 跳 :r4c180_del → 遗忘 + return false（无军事建筑：不派）
    #   mil!=0 → 落下 → 覆盖判定；cov==1 → 写入记忆；门槛 = 命中记忆 → return true
    # 反例（r4c180 错版）：if-eqz v5, :covered ⇒ mil==1 反而去遗忘并 return false
    #   ⇒ 症状：轰炸机从不打有军事建筑的省，只打没军事建筑的省（tgt 恒 mil=0）
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    if-nez v2, :r4c180_h
    new-instance v2, Ljava/util/HashSet;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;

    :r4c180_h
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v5
    if-nez v5, :r4c180_del
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
    # ④ 门槛：命中记忆则可打（mil==1 才走到这里）
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    invoke-static {p0, v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikLog3(III)V
    return v4

    :r4c180_del
    # ① 无军事建筑 → 情报失效（无条件遗忘）
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
.end method
'''

src = src[:start] + NEW + src[end:]

# ---------- 断言 ----------
assert src.count('.method private static bomberIntelOk(I)Z') == 1
assert src.count('.method private static ikLog3(III)V') == 1
assert src.count('if-nez v5, :r4c180_del') == 1
assert 'if-eqz v5, :r4c180_my' not in src
assert src.count('ikLog3(III)V') == 2      # 定义 + 调用
assert src.count('bomberIntelOk(I)Z') == 2
assert src.count('afMilKnown:Ljava/util/HashSet;') == 6   # 声明1 + 门内5

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))