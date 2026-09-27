# -*- coding: utf-8 -*-
# R5b002：第③步 A ——「建筑永久记忆 + 可见即刷新」自动挑
#  数据源（全部游戏自带）：
#    · 军事建筑 = BuildingsManager.buildings.get(typeID).GroupID == 1
#    · 可见     = Province.getFogDrawArmy()（true=可见）
#    · 射程     = getProvincesInRange(airport, BOMBER)；归属 = Province.getCivID()
#  机制：每回合对射程内可见省刷新记录 → 取"记录有军事建筑 ∧ 省主≠我方"→ 派发
#  限流：同目标在飞 ≤2；同目标每回合最多新增 1 架；**无全局总闸**
#  记录：内存表（a1Known/a1LastDisp），永久不过期，读档清零
#
#  类型纪律：对象槽 v0-v7 / int 槽 v8-v14，一寄存器一类型
import io, os, shutil, re, collections

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
BAK = P + '.bak_r5b002'
src = io.open(P, encoding='utf-8').read()
if not os.path.exists(BAK):
    shutil.copy2(P, BAK)
    print('BACKUP ->', BAK)
assert 'a1Scan' not in src, 'a1Scan 已存在'

# ---------- ① 新增两个静态字段（插在第一个 .method 之前）----------
FIELDS = u'''\
.field public static a1Known:[B

.field public static a1LastDisp:[I

'''
i = src.index('.method ')
src = src[:i] + FIELDS + src[i:]
print('已插入静态字段 a1Known:[B / a1LastDisp:[I')

# ---------- ② a1HasMil / a1Inflight / a1Scan 三个新方法 ----------
NEW_METHODS = u'''\
.method private static a1HasMil(I)Z
    .registers 10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :mh_false

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v1, :mh_false

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    if-eqz v3, :mh_false

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v5, 0x0

    :mh_loop
    if-ge v5, v6, :mh_false

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-eqz v2, :mh_next

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v7

    if-ltz v7, :mh_next

    if-ge v7, v8, :mh_next

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    if-eqz v4, :mh_next

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    const/4 v7, 0x1

    if-ne v4, v7, :mh_next

    const/4 v4, 0x1

    return v4

    :mh_next
    add-int/lit8 v5, v5, 0x1

    goto :mh_loop

    :mh_false
    const/4 v4, 0x0

    return v4
.end method

.method private static a1Inflight(I)I
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :if_done

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :if_done

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :if_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :if_done

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :if_loop

    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ne v4, p0, :if_loop

    add-int/lit8 v3, v3, 0x1

    goto :if_loop

    :if_done
    return v3
.end method

.method private static a1Scan(I)V
    .registers 16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v1, :sc_ret

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    if-eqz v7, :sc_mk

    array-length v13, v7

    if-ne v13, v12, :sc_mk

    goto :sc_have

    :sc_mk
    new-array v7, v12, [B

    sput-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    new-array v7, v12, [I

    sput-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1LastDisp:[I

    :sc_have
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :sc_ret

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :sc_ret

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :sc_ap
    if-ge v9, v10, :sc_ret

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :sc_ap_next

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :sc_ap_next

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :sc_in
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :sc_ap_next

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :sc_in_next

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ltz v11, :sc_in_next

    if-ge v11, v12, :sc_in_next

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :sc_in_next

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v13

    if-eqz v13, :sc_sel

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1HasMil(I)Z

    move-result v13

    if-eqz v13, :sc_nomil

    const/4 v13, 0x6

    goto :sc_store

    :sc_nomil
    const/4 v13, 0x4

    :sc_store
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    aput-byte v13, v7, v11

    :sc_sel
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    aget-byte v13, v7, v11

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :sc_in_next

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v13

    if-ltz v13, :sc_in_next

    if-eq v13, p0, :sc_in_next

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1LastDisp:[I

    aget v13, v7, v11

    if-eq v13, v8, :sc_in_next

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Inflight(I)I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :sc_cap

    invoke-static {v11, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Dispatch(II)Z

    move-result v13

    if-eqz v13, :sc_in_next

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1LastDisp:[I

    aput v8, v7, v11

    goto :sc_in_next

    :sc_cap
    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const/4 v14, 0x4

    const/4 v5, 0x0

    invoke-static {v13, v11, v14, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    :sc_in_next
    goto :sc_in

    :sc_ap_next
    add-int/lit8 v9, v9, 0x1

    goto :sc_ap

    :sc_ret
    return-void
.end method

'''
anchor = '.method private static strikeTick_A1(I)V'
assert src.count(anchor) == 1
src = src.replace(anchor, NEW_METHODS + anchor, 1)

# ---------- ③ strikeTick_A1 变薄 ----------
HDR = '.method private static strikeTick_A1(I)V'
i0 = src.index(HDR)
i1 = src.index('.end method', i0) + len('.end method\n')
THIN = u'''.method private static strikeTick_A1(I)V
    .registers 2

    const/4 v0, -0x1

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Snap(II)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Scan(I)V

    return-void
.end method
'''
src = src[:i0] + THIN + src[i1:]

# ---------- ④ a1Dispatch 改为返回 Z ----------
s2 = src.index('.method private static a1Dispatch(II)V')
e2 = src.index('.end method', s2) + len('.end method\n')
DISP = u'''.method private static a1Dispatch(II)Z
    .registers 14

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :a1d_no

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :a1d_no

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :a1d_loop
    if-ge v9, v10, :a1d_no

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

    const/4 v8, 0x1

    return v8

    :a1d_next
    add-int/lit8 v9, v9, 0x1

    goto :a1d_loop

    :a1d_no
    const/4 v8, 0x0

    return v8
.end method
'''
src = src[:s2] + DISP + src[e2:]

# ---------- ⑤ a1Snap 加负值守卫（p1<0 时不查省）----------
s3 = src.index('.method private static a1Snap(II)V')
e3 = src.index('.end method', s3)
seg = src[s3:e3]
OLD = '    const/16 v6, -0x9\n\n    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;'
assert OLD in seg, 'a1Snap 定位失败'
NEWSEG = ('    const/16 v6, -0x9\n\n'
          '    if-ltz p1, :a1s_have_tciv\n\n'
          '    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;')
seg = seg.replace(OLD, NEWSEG, 1)
src = src[:s3] + seg + src[e3:]

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE lines=%d' % (src.count('\n') + 1))

# ---------------- 自检 1：真值表断言 ----------------
def body(name):
    a = src.index('.method private static ' + name)
    b = src.index('.end method', a)
    return src[a:b]

sc = body('a1Scan(I)V')
checks = [
    ('if-ltz p1, :a1s_have_tciv',   'a1Snap: p1>=0 才查省'),
    ('if-ge v9, v10, :sc_ret',      '外层：机场遍历完 → 返回'),
    ('if-ge v11, v12, :sc_in_next', '省号 >= 省份数 → 跳过'),
    ('if-ltz v11, :sc_in_next',     '省号 <0 → 跳过'),
    ('if-eqz v13, :sc_sel',         '不可见 → 不刷新（直接用旧记录）'),
    ('if-eqz v13, :sc_nomil',       '有军事建筑? → 写 6 / 4'),
    ('if-eqz v13, :sc_in_next',     '记录无军事建筑 → 跳过'),
    ('if-ltz v13, :sc_in_next',     '省主<0（无主）→ 跳过'),
    ('if-eq v13, p0, :sc_in_next',  '省主==我方 → 跳过'),
    ('if-eq v13, v8, :sc_in_next',  '本轮已派过 → 跳过'),
    ('if-ge v13, v14, :sc_cap',     '在飞>=2 → 限流日志'),
    ('if-eqz v13, :sc_in_next',     '派发失败 → 跳过'),
]
mh = body('a1HasMil(I)Z')
mh_checks = [
    ('if-ne v4, v7, :mh_next',      'GroupID != 1 → 继续找'),
    ('if-ltz v7, :mh_next',         '建筑类型<0 → 跳过'),
    ('if-ge v7, v8, :mh_next',      '建筑类型越界 → 跳过'),
]
bad = 0
for s_, why in checks + mh_checks:
    ok = s_ in src
    print(('  ✅ ' if ok else '  ❌ ') + s_ + ' —— ' + why)
    bad += 0 if ok else 1
for s_ in ['filled-new-array', 'a1LogT', 'arraycopy']:
    if s_ in sc:
        print('  ❌ 不应出现: ' + s_); bad += 1
print('真值表自检: %s' % ('通过' if bad == 0 else '不合格 %d' % bad))
assert bad == 0

# ---------------- 自检 2：静态门禁 ----------------
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
print('方法定义数=%d 调用签名数=%d' % (len(defs), len(calls)))
if missing:
    for k, v in missing.items():
        print('  ❌ 调用未定义: %s (×%d)' % (k, v))
    raise SystemExit('静态门禁未通过')
print('  ✅ 静态门禁通过')
print('OK: r5b002 补丁完成')