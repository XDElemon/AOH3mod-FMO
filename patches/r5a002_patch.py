# -*- coding: utf-8 -*-
# R5a002 第①步「最小可飞」：
#  1) AirForceManager 新增 a1Log(IIILjava/lang/String;)V  —— 统一日志 nA1
#  2) AirForceManager 新增 strikeTick_A1(I)V              —— 每回合对我方机场派轰炸机到常量靶 5693
#  3) update(I) 尾部挂钩
#  4) 修 isAtWar(I) 的循环守卫（if-ne → if-eq）
#  约束：.registers ≤ 16；private static 用 invoke-static；常量用 const/16；标签统一 :a1_*
import io, os, shutil, re

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = P + '.bak_r5a002'
src = io.open(P, encoding='utf-8').read()
if not os.path.exists(BAK):
    shutil.copy2(P, BAK)
    print('BACKUP ->', BAK)

# ---------- 0) 幂等检查 ----------
assert 'strikeTick_A1' not in src, 'strikeTick_A1 已存在，先回滚再跑'
assert 'a1Log' not in src, 'a1Log 已存在，先回滚再跑'

NEW_METHODS = u'''\
.method private static a1Log(IIILjava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nA1 ap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " div="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :a1l_nd

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :a1l_dn

    :a1l_nd
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :a1l_dn
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static strikeTick_A1(I)V
    .registers 13

    const/16 v0, 0x163d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :a1_ret

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :a1_ret

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ltz v1, :a1_own

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-static {v9, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1_own
    if-eq v1, p0, :a1_go

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-static {v9, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1_go
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :a1_ret

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :a1_cnt_done

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :a1_cnt_loop
    if-ge v5, v4, :a1_cnt_done

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v6, :a1_cnt_next

    iget v7, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-eq v7, v0, :a1_cnt_next

    add-int/lit8 v3, v3, 0x1

    :a1_cnt_next
    add-int/lit8 v5, v5, 0x1

    goto :a1_cnt_loop

    :a1_cnt_done
    const/4 v4, 0x2

    if-ge v3, v4, :a1_room

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static {v9, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1_room
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :a1_ret

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :a1_ap_loop
    if-ge v4, v3, :a1_ret

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v5, :a1_ap_next

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :a1_div_ok

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v6, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_ap_next

    :a1_div_ok
    invoke-virtual {v1, v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :a1_ap_next

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :a1_rng_ok

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v6, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_ap_next

    :a1_rng_ok
    invoke-static {v5, v0, v8}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v9

    if-eqz v9, :a1_ap_next

    iget-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v10, :a1_ap_next

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :a1_add

    const/4 v10, 0x3

    invoke-static {v6, v0, v10, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_ap_next

    :a1_add
    iget-object v10, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v10, :a1_ap_next

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    invoke-static {v6, v0, v10, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    :a1_ap_next
    add-int/lit8 v4, v4, 0x1

    goto :a1_ap_loop

    :a1_ret
    return-void
.end method

'''

# ---------- 1) 插入两个新方法（放在 update(I) 之前）----------
UPD = '.method public update(I)V'
assert src.count(UPD) == 1, 'update(I) 定位失败'
src = src.replace(UPD, NEW_METHODS + UPD, 1)

# ---------- 2) update(I) 尾部挂钩 ----------
start = src.index(UPD)
end = src.index('.end method', start)
seg = src[start:end]
ri = seg.rindex('    return-void')
CALL = '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->strikeTick_A1(I)V\n\n'
seg2 = seg[:ri] + CALL + seg[ri:]
src = src[:start] + seg2 + src[end:]
assert src.count('strikeTick_A1(I)V') == 2, '挂钩或调用点数量异常'

# ---------- 3) 修 isAtWar 守卫 ----------
i0 = src.index('.method private isAtWar(I)Z')
i1 = src.index('.end method', i0)
segw = src[i0:i1]
OLD = '    if-ne v0, p1, :cond_13'
NEW = '    if-eq v0, p1, :cond_13'
assert segw.count(OLD) == 1, 'isAtWar 目标行定位失败'
segw2 = segw.replace(OLD, NEW, 1)
src = src[:i0] + segw2 + src[i1:]
print('isAtWar 守卫已修正: if-ne → if-eq')

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok lines=%d' % (src.count('\n') + 1))
print('methods total=%d' % src.count('.method '))
assert 'strikeTick_A1' in src and 'a1Log' in src
print('OK: strikeTick_A1 + a1Log + hook + isAtWar fix')