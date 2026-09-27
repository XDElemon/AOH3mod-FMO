# -*- coding: utf-8 -*-
# R5b001：第②步「点名清单」——自己实现（修掉 PC 端那版的 3 个缺陷）
#  1) 目标数组＝ 5693(内比都) + 邻省 5690/5692/5694/5696/5715（邻接关系由游戏自带
#     assets/map/Earth3/data/ProvinceNeighboringProvinces/*.json 双向并集核实）
#  2) 每目标限流：在飞同目标 >=2 则跳过（k=4）
#  3) 每目标每回合最多新增 1 架次（派成一架就跳出机场循环）
#  4) 所有日志走**已定义**的 a1Log（不用 a1LogT，杜绝 NoSuchMethodError）
#  5) 补丁末尾内置两类自检：真值表断言 + 「调用了本类却未定义」静态门禁
#
# 寄存器/类型纪律（吸取 PC 端教训）：
#   - 每个寄存器只承担一种类型；对象与 int 严格分槽
#   - invoke 最多 5 个寄存器；数组用 .array-data 一次写全（不做两段 arraycopy 拼接）
import io, os, shutil, re, collections

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
BAK = P + '.bak_r5b001'
src = io.open(P, encoding='utf-8').read()
if not os.path.exists(BAK):
    shutil.copy2(P, BAK)
    print('BACKUP ->', BAK)
assert '.method private static a1Snap' not in src, 'a1Snap 已存在'
assert '.method private static a1Dispatch' not in src, 'a1Dispatch 已存在'

NEW = u'''\
.method private static a1Snap(II)V
    .registers 12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, -0x1

    if-eqz v0, :a1s_have_civ

    iget v4, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :a1s_have_civ
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    const/4 v5, -0x1

    if-eqz v1, :a1s_have_apts

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :a1s_have_apts

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    :a1s_have_apts
    const/16 v6, -0x9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :a1s_have_tciv

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    :a1s_have_tciv
    const/4 v7, -0x1

    if-eqz v1, :a1s_have_all

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v3, :a1s_have_all

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    :a1s_have_all
    invoke-static {p0, v5, v6, v4, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1E(IIIII)V

    return-void
.end method

.method private static a1Dispatch(II)V
    .registers 14

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :a1d_ret

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :a1d_ret

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :a1d_loop
    if-ge v9, v10, :a1d_ret

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :a1d_next

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :a1d_have_div

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1d_next

    :a1d_have_div
    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :a1d_next

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :a1d_in_range

    const/4 v8, 0x2

    const/4 v11, 0x0

    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1d_next

    :a1d_in_range
    invoke-static {v2, p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    if-eqz v5, :a1d_next

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v6, :a1d_next

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :a1d_has_ac

    const/4 v8, 0x3

    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1d_next

    :a1d_has_ac
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v6, :a1d_next

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    return-void

    :a1d_next
    add-int/lit8 v9, v9, 0x1

    goto :a1d_loop

    :a1d_ret
    return-void
.end method

.method private static strikeTick_A1(I)V
    .registers 14

    const/16 v0, 0x163d

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Snap(II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v2, -0x1

    if-eqz v0, :a1_ret

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :a1_tg

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v3

    if-eqz v3, :a1_ret

    array-length v5, v0

    const/4 v4, 0x0

    :a1_t_loop
    if-ge v4, v5, :a1_ret

    aget v6, v0, v4

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    if-eqz v7, :a1_k5

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-ltz v10, :a1_k5

    if-eq v10, v2, :a1_k6

    const/4 v11, 0x0

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v8, :a1_cnt_done

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :a1_cnt_loop
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :a1_cnt_done

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v9, :a1_cnt_loop

    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ne v10, v6, :a1_cnt_loop

    add-int/lit8 v11, v11, 0x1

    goto :a1_cnt_loop

    :a1_cnt_done
    const/4 v10, 0x2

    if-ge v11, v10, :a1_k4

    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Dispatch(II)V

    goto :a1_t_next

    :a1_k5
    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v8, 0x0

    invoke-static {v10, v6, v11, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_t_next

    :a1_k6
    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v8, 0x0

    invoke-static {v10, v6, v11, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :a1_t_next

    :a1_k4
    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v8, 0x0

    invoke-static {v10, v6, v11, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    :a1_t_next
    add-int/lit8 v4, v4, 0x1

    goto :a1_t_loop

    :a1_ret
    return-void

    :a1_tg
    .array-data 4
        0x163d
        0x163a
        0x163c
        0x163e
        0x1640
        0x1653
    .end array-data
.end method

'''

HDR = '.method private static strikeTick_A1(I)V'
i0 = src.index(HDR)
i1 = src.index('.end method', i0) + len('.end method\n')
print('替换 strikeTick_A1: %d..%d' % (i0, i1))
src = src[:i0] + NEW + src[i1:]
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE lines=%d' % (src.count('\n') + 1))

# ---------------- 自检 1：真值表断言 ----------------
body = src[src.index('.method private static strikeTick_A1(I)V'):src.index('.end method', src.index('.method private static strikeTick_A1(I)V'))]
checks = [
    ('if-ge v4, v5, :a1_ret',        '目标循环：i>=len → 结束'),
    ('if-eq v10, v2, :a1_k6',        '是自己的省 → k6'),
    ('if-ne v10, v6, :a1_cnt_loop',  '在飞计数：目标不同 → 跳过'),
    ('if-ge v11, v10, :a1_k4',       '在飞>=2 → 限流 k4'),
    ('const/4 v0, 0x6',              '数组长度 6'),
]
bad = 0
for s, why in checks:
    ok = s in body
    print(('  ✅ ' if ok else '  ❌ ') + s + '  —— ' + why)
    bad += 0 if ok else 1
for v in ['0x163d', '0x163a', '0x163c', '0x163e', '0x1640', '0x1653']:
    ok = v in body
    print(('  ✅ ' if ok else '  ❌ ') + 'array-data ' + v)
    bad += 0 if ok else 1
for v in ['a1LogT', 'filled-new-array', 'arraycopy']:
    if v in body:
        print('  ❌ 不应出现: ' + v); bad += 1
print('真值表自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0

# ---------------- 自检 2：静态门禁「调用了本类却未定义」 ----------------
DEF = re.compile(r'^\.method\s+(?:public\s+|private\s+|protected\s+|static\s+|final\s+|abstract\s+|synthetic\s+|declared-synchronized\s+|varargs\s+|bridge\s+|constructor\s+|native\s+|strictfp\s+)*(?P<name>[^\s(]+)\((?P<args>[^)]*)\)(?P<ret>\S+)')
CALL = re.compile(re.escape(CLS) + r'->(?P<name>[A-Za-z0-9_$<>]+)\((?P<args>[^)]*)\)(?P<ret>\S+)')
defs, calls = {}, collections.Counter()
for line in src.splitlines():
    m = DEF.match(line)
    if m:
        defs[m.group('name') + '(' + m.group('args') + ')' + m.group('ret')] = True
        continue
    for c in CALL.finditer(line):
        calls[c.group('name') + '(' + c.group('args') + ')' + c.group('ret')] += 1
missing = {k: v for k, v in calls.items() if k not in defs}
print('方法定义数=%d  调用签名数=%d' % (len(defs), len(calls)))
if missing:
    for k, v in missing.items():
        print('  ❌ 调用未定义: %s (×%d)' % (k, v))
    raise SystemExit('静态门禁未通过，禁止装机')
print('  ✅ 静态门禁通过：无「调用未定义」')
print('OK: r5b001 补丁完成')