# -*- coding: utf-8 -*-
# R5a005：整段重写 strikeTick_A1（修 5 处条件方向错误）+ 断言自检
#
# smali -z 语义（本次务必按此核）：
#   if-eqz  v==0 →跳 ; if-nez v!=0 →跳 ; if-ltz v<0 →跳 ; if-gez v>=0 →跳 ; if-gtz v>0 →跳 ; if-lez v<=0 →跳
# 两寄存器：if-eq == →跳 ; if-ne != →跳 ; if-lt < →跳 ; if-ge >= →跳 ; if-gt > →跳 ; if-le <= →跳
#
# 本方法每个分支的意图（truth table）：
#   player==null            → k7
#   province(5693)==null    → k5
#   civID(5693) < 0（无主） → k5
#   civID(5693) == p0（自己的省） → k6
#   entity==null            → k7
#   在飞目标==5693 的任务数 >=2 → k4（限流）
#   机场 divKey==null        → k1（no-div）
#   5693 不在该机场射程内    → k2（out-of-range）
#   mission==null / 无可用机 → k3（no-aircraft）
#   否则                    → 加入 activeMissions，k0（ok）
import io, os, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = P + '.bak_r5a005'
src = io.open(P, encoding='utf-8').read()
if not os.path.exists(BAK):
    shutil.copy2(P, BAK)
    print('BACKUP ->', BAK)

HDR = '.method private static strikeTick_A1(I)V'
i0 = src.index(HDR)
i1 = src.index('.end method', i0) + len('.end method\n')
print('替换范围: %d..%d（%d 字符）' % (i0, i1, i1 - i0))

NEW = u'''\
.method private static strikeTick_A1(I)V
    .registers 13

    const/16 v0, 0x163d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v2, 0x0

    if-eqz v1, :a1s_nopl

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :a1s_nopl
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :a1s_noinst

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :a1s_noinst

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    :a1s_noinst
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    const/16 v7, -0x9

    if-eqz v5, :a1s_nopv

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    :a1s_nopv
    const/4 v8, 0x0

    if-eqz v3, :a1s_nomap

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v8, :a1s_nomap

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    goto :a1s_call

    :a1s_nomap
    const/4 v8, -0x1

    :a1s_call
    invoke-static {p0, v4, v7, v2, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1E(IIIII)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :a1_k7

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :a1_k5

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ltz v1, :a1_k5

    if-eq v1, p0, :a1_k6

    goto :a1_go

    :a1_k5
    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-static {v9, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1_k6
    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static {v9, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1_k7
    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-static {v9, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1_go
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :a1_k7

    const/4 v3, 0x0

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v4, :a1_cnt_done

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :a1_cnt_loop
    if-ge v6, v5, :a1_cnt_done

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v7, :a1_cnt_next

    iget v8, v7, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ne v8, v0, :a1_cnt_next

    add-int/lit8 v3, v3, 0x1

    :a1_cnt_next
    add-int/lit8 v6, v6, 0x1

    goto :a1_cnt_loop

    :a1_cnt_done
    const/4 v5, 0x2

    if-ge v3, v5, :a1_k4

    goto :a1_room

    :a1_k4
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static {v9, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1_room
    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :a1_ret

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :a1_ap_loop
    if-ge v6, v5, :a1_ret

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v7, :a1_ap_next

    iget v3, v7, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :a1_div_ok

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v3, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_ap_next

    :a1_div_ok
    invoke-virtual {v2, v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :a1_ap_next

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :a1_rng_ok

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v3, v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_ap_next

    :a1_rng_ok
    invoke-static {v7, v0, v8}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v9

    if-eqz v9, :a1_ap_next

    iget-object v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v10, :a1_ap_next

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :a1_has_ac

    const/4 v10, 0x3

    invoke-static {v3, v0, v10, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_ap_next

    :a1_has_ac
    iget-object v10, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v10, :a1_ap_next

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    invoke-static {v3, v0, v10, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    :a1_ap_next
    add-int/lit8 v6, v6, 0x1

    goto :a1_ap_loop

    :a1_ret
    return-void
.end method
'''

src = src[:i0] + NEW + src[i1:]
io.open(P, 'w', encoding='utf-8').write(src)
print('已重写 strikeTick_A1，文件行数=%d' % (src.count('\n') + 1))

# ---------- 断言自检（逐条核对意图方向）----------
tgt = src[src.index(HDR):src.index('.end method', src.index(HDR))]
checks = [
    ('if-nez v8, :a1_div_ok',      'divKey 非空 → 继续派发'),
    ('if-nez v9, :a1_rng_ok',      '在射程内(true) → 继续派发'),
    ('if-gtz v10, :a1_has_ac',     'assignedAircraft>0 → 派出'),
    ('if-ge v3, v5, :a1_k4',       '在飞 >=2 → 限流 k4'),
    ('if-ne v8, v0, :a1_cnt_next', '目标不同 → 跳过计数'),
    ('if-ge v6, v5, :a1_cnt_done', '计数遍历完 → 结束'),
    ('if-ge v6, v5, :a1_ret',      '机场遍历完 → 返回'),
    ('if-ltz v1, :a1_k5',          'civID<0(无主) → k5'),
    ('if-eq v1, p0, :a1_k6',       '是自己的省 → k6'),
    ('if-eqz v1, :a1_k7',          'player/province 为空 → k7'),
]
bad = 0
for s, why in checks:
    ok = s in tgt
    print(('  ✅ ' if ok else '  ❌ ') + s + '   —— ' + why)
    bad += (0 if ok else 1)
# 反向断言：不该再出现的错向指令
for s in ['if-nez v8, :a1_next', 'if-ltz v1, :a1_own', 'if-ge v3, v5, :a1_room', 'if-eq v8, v0, :a1_cnt_next']:
    if s in tgt:
        print('  ❌ 仍存在错向指令: ' + s); bad += 1
print('自检结论: %s' % ('全部通过' if bad == 0 else ('有 %d 项不合格' % bad)))
assert bad == 0