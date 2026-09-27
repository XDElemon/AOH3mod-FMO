# -*- coding: utf-8 -*-
# R4c184：军事判据改用"可靠信号"——空军基地（allAirports）∨ 建筑数据可读时的原始命中
#   r4c183b 的粘滞标志会饱和（否证路径 bsz>0 恒不可达）⇒ 全部省份都被判为军事 ⇒ 退化成按距离排
#   本批：hasMilitaryBuilding = milRaw(pid) ∨ provinceHasAirport(pid)；移除粘滞集合的使用
import io, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'provinceHasAirport' not in src, 'already patched'

# ---------- ① 删除 afMilSeen 字段声明（不再使用） ----------
f_del = '\n.field public static afMilSeen:Ljava/util/HashSet;\n'
assert src.count(f_del) == 1
src = src.replace(f_del, '\n.field public static afMilSeenDropped_Unused:Ljava/util/HashSet;\n', 1)

# ---------- ② 替换 hasMilitaryBuilding 为 可靠版，并新增 provinceHasAirport ----------
start = src.index('.method private static hasMilitaryBuilding(I)Z')
end = src.index('.end method', start) + len('.end method\n')

NEW = '''.method private static provinceHasAirport(I)Z
    .registers 8
    # R4c184：该省是否驻有空军基地（AirForceManager.allAirports 里任一 Airport.provinceID == pid）
    # 真值表：命中 → return 1；map/列表空、遍历完 → return 0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :pa_none
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;
    if-eqz v0, :pa_none
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1

    :pa_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :pa_none
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    if-eqz v2, :pa_loop
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3

    :pa_loop2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :pa_loop
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;
    if-eqz v4, :pa_loop2
    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    if-ne v5, p0, :pa_loop2
    const/4 v4, 0x1
    return v4

    :pa_none
    const/4 v4, 0x0
    return v4
.end method
.method private static hasMilitaryBuilding(I)Z
    .registers 4
    # R4c184 军事判据 = 可靠信号 ∨ 可读信号：
    #   ① milRaw(pid)：省建筑数据被装载时的原始命中（不可靠，命中才算）
    #   ② provinceHasAirport(pid)：游戏自己维护的机场表（空军基地属于军事组 idx34，永远在线）
    # 真值表：milRaw!=0 → 跳 :hm_ret_true（return 1）；否则转查机场表并返回其结果
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->milRaw(I)Z
    move-result v0
    if-nez v0, :hm_check_airport
    const/4 v0, 0x1
    return v0

    :hm_check_airport
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v0
    return v0
.end method
'''
src = src[:start] + NEW + src[end:]

# ---------- ③ ikState 增加 air= 字段（验证用） ----------
anchor = '''    const-string v1, " bsz="'''
assert src.count(anchor) == 1
src = src.replace(anchor, '''    const-string v1, " air="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bsz="''', 1)

# ---------- 断言 ----------
assert src.count('.method private static provinceHasAirport(I)Z') == 1
assert src.count('.method private static hasMilitaryBuilding(I)Z') == 1
assert src.count('provinceHasAirport(I)Z') == 3        # 定义 + 判据调用 + 探针调用
assert 'afMilSeen' not in src.replace('afMilSeenDropped_Unused', '')
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))