# -*- coding: utf-8 -*-
# R5c006（一轮到位诊断批）
#  A) 修 a1bClock 控制流反写（真 bug）
#  B) a1bPick 出口一次性打全：k=9/11/12/13/14（射程集合/可见/敌军/新鲜度/选中）
#  C) 新增 a1bDiag(civ)：每回合一次全图普查 —— k=15 敌军省数 / k=16 最近敌军省 / k=17 最近距离
#     / k=18 ATTACKER 射程 / k=19 BOMBER 射程 / k=20 全图可见省数
#  所有值均为"直取直打"，不用分支计算。（唯一的跳转只用于循环/跳过）
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
shutil.copyfile(P, P + '.bak_r5c006')
s = io.open(P, encoding='utf-8').read()
AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
bad = 0
L = []


def sub1(pat, rep, desc):
    global s, bad
    n = len(re.findall(pat, s, re.S))
    if n != 1:
        L.append(' XX ' + desc + '（命中 ' + str(n) + '）')
        bad += 1
        return
    s = re.sub(pat, rep, s, count=1, flags=re.S)
    L.append(' OK ' + desc)


# ---------- A) 重写 a1bClock ----------
sub1(r'\.method private static a1bClock\(\)V.*?\n\.end method\n',
     '.method private static a1bClock()V\n'
     '    .registers 4\n'
     '    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I\n'
     '    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I\n'
     '    sget v2, ' + AFM + '->a1bDay:I\n'
     '    sget v3, ' + AFM + '->a1bHour:I\n'
     '    if-eq v0, v2, :abc_bump\n'
     '    if-ne v1, v3, :abc_bump\n'
     '    goto :abc_ret\n'
     ':abc_bump\n'
     '    sput v0, ' + AFM + '->a1bDay:I\n'
     '    sput v1, ' + AFM + '->a1bHour:I\n'
     '    sget v2, ' + AFM + '->a1bTurn:I\n'
     '    add-int/lit8 v2, v2, 0x1\n'
     '    sput v2, ' + AFM + '->a1bTurn:I\n'
     ':abc_ret\n'
     '    return-void\n'
     '.end method\n',
     'A 修 a1bClock（天同→比小时；小时同→return；否则 bump）')

# ---------- B1) 三个计数静态字段 ----------
sub1(r'\.field public static a1bTurn:I',
     '.field public static a1bTurn:I\n'
     '.field public static a1bNvis:I\n'
     '.field public static a1bNen:I\n'
     '.field public static a1bNfr:I',
     'B1 字段 a1bNvis/a1bNen/a1bNfr')

# ---------- B2) a1bPick 进循环前清零 ----------
sub1(r'(iget v13, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\s*\n)',
     r'\1'
     '    const/4 v11, 0x0\n'
     '    sput v11, ' + AFM + '->a1bNvis:I\n'
     '    sput v11, ' + AFM + '->a1bNen:I\n'
     '    sput v11, ' + AFM + '->a1bNfr:I\n',
     'B2 a1bPick 计数清零')

# ---------- B3) 盖章块 -> 分段计数 + 仅可见时盖章（注意寄存器是 v10） ----------
OLD = ('    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
       '    move-result v10\n'
       '    if-eqz v10, :bp_nostamp\n'
       '    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z\n'
       '    move-result v10\n'
       '    if-eqz v10, :bp_nostamp\n'
       '    aput v8, v7, v4\n'
       ':bp_nostamp\n')
NEW = ('    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
       '    move-result v10\n'
       '    if-eqz v10, :bp_invis\n'
       '    sget v11, ' + AFM + '->a1bNvis:I\n'
       '    add-int/lit8 v11, v11, 0x1\n'
       '    sput v11, ' + AFM + '->a1bNvis:I\n'
       '    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z\n'
       '    move-result v10\n'
       '    if-eqz v10, :bp_nostamp\n'
       '    sget v11, ' + AFM + '->a1bNen:I\n'
       '    add-int/lit8 v11, v11, 0x1\n'
       '    sput v11, ' + AFM + '->a1bNen:I\n'
       '    aput v8, v7, v4\n'
       '    goto :bp_nostamp\n'
       ':bp_invis\n'
       '    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z\n'
       '    move-result v10\n'
       '    if-eqz v10, :bp_nostamp\n'
       '    sget v11, ' + AFM + '->a1bNen:I\n'
       '    add-int/lit8 v11, v11, 0x1\n'
       '    sput v11, ' + AFM + '->a1bNen:I\n'
       ':bp_nostamp\n')
sub1(re.escape(OLD), NEW, 'B3 分段计数（可见/敌军）+仅可见盖章')

# ---------- B4) 新鲜度通过计数 ----------
sub1(r'(    if-gt v11, v10, :bp_loop\s*\n)',
     r'\1'
     '    sget v11, ' + AFM + '->a1bNfr:I\n'
     '    add-int/lit8 v11, v11, 0x1\n'
     '    sput v11, ' + AFM + '->a1bNfr:I\n',
     'B4 新鲜度通过计数')

# ---------- B5) a1bPick 出口打 5 行 ----------
OLD5 = (':bp_done\n'
        '    const/4 v10, 0x0\n'
        '    const/16 v11, 0x9\n'
        '    invoke-static {v13, v5, v11, v10}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
        '    return v5\n')
NEW5 = (':bp_done\n'
        '    const/4 v12, 0x0\n'
        '    move v10, v5\n'
        '    const/16 v11, 0x9\n'
        '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
        '    invoke-interface {v1}, Ljava/util/Set;->size()I\n'
        '    move-result v10\n'
        '    const/16 v11, 0xb\n'
        '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
        '    sget v10, ' + AFM + '->a1bNvis:I\n'
        '    const/16 v11, 0xc\n'
        '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
        '    sget v10, ' + AFM + '->a1bNen:I\n'
        '    const/16 v11, 0xd\n'
        '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
        '    sget v10, ' + AFM + '->a1bNfr:I\n'
        '    const/16 v11, 0xe\n'
        '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
        '    return v5\n')
sub1(re.escape(OLD5), NEW5, 'B5 a1bPick 出口打 k=9/11/12/13/14')

# ---------- C1) 新增 a1bDiag ----------
DIAG = (
    '.method private static a1bDiag(I)V\n'
    '    .registers 16\n'
    '    invoke-static {}, ' + AFM + '->getInstance()' + AFM + '\n'
    '    move-result-object v0\n'
    '    if-eqz v0, :dg_ret\n'
    '    invoke-virtual {v0, p0}, ' + AFM + '->getAirportsForCiv(I)Ljava/util/List;\n'
    '    move-result-object v1\n'
    '    if-eqz v1, :dg_ret\n'
    '    invoke-interface {v1}, Ljava/util/List;->size()I\n'
    '    move-result v10\n'
    '    if-lez v10, :dg_ret\n'
    '    const/4 v9, 0x0\n'
    '    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
    '    move-result-object v2\n'
    '    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n'
    '    if-eqz v2, :dg_ret\n'
    '    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n'
    '    const/16 v11, 0x12\n'
    '    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
    '    invoke-static {v10}, ' + AFM + '->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
    '    move-result v4\n'
    '    float-to-int v10, v4\n'
    '    const/4 v3, 0x0\n'
    '    invoke-static {v13, v10, v11, v3}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
    '    const/16 v11, 0x13\n'
    '    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
    '    invoke-static {v10}, ' + AFM + '->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
    '    move-result v4\n'
    '    float-to-int v10, v4\n'
    '    const/4 v3, 0x0\n'
    '    invoke-static {v13, v10, v11, v3}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
    '    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;\n'
    '    if-eqz v1, :dg_ret\n'
    '    invoke-interface {v1}, Ljava/util/List;->size()I\n'
    '    move-result v12\n'
    '    if-lez v12, :dg_ret\n'
    '    const/4 v9, 0x0\n'
    '    const/4 v5, -0x1\n'
    '    const v6, 0x7f7fffff    # Float.MAX_VALUE\n'
    '    const/4 v8, 0x0\n'
    '    const/4 v7, 0x0\n'
    ':dg_loop\n'
    '    if-ge v9, v12, :dg_done\n'
    '    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;\n'
    '    move-result-object v3\n'
    '    if-eqz v3, :dg_next\n'
    '    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
    '    move-result v10\n'
    '    if-eqz v10, :dg_nv\n'
    '    add-int/lit8 v7, v7, 0x1\n'
    ':dg_nv\n'
    '    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z\n'
    '    move-result v10\n'
    '    if-eqz v10, :dg_next\n'
    '    add-int/lit8 v8, v8, 0x1\n'
    '    invoke-direct {v0, v13, v9}, ' + AFM + '->provinceDistance(II)F\n'
    '    move-result v4\n'
    '    cmpl-float v10, v4, v6\n'
    '    if-ltz v10, :dg_next\n'
    '    move v6, v4\n'
    '    move v5, v9\n'
    ':dg_next\n'
    '    add-int/lit8 v9, v9, 0x1\n'
    '    goto :dg_loop\n'
    ':dg_done\n'
    '    const/4 v3, 0x0\n'
    '    const/16 v11, 0xf\n'
    '    invoke-static {v13, v8, v11, v3}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
    '    const/16 v11, 0x10\n'
    '    invoke-static {v13, v5, v11, v3}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
    '    const/16 v11, 0x11\n'
    '    float-to-int v10, v6\n'
    '    invoke-static {v13, v10, v11, v3}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
    '    const/16 v11, 0x14\n'
    '    invoke-static {v13, v7, v11, v3}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
    ':dg_ret\n'
    '    return-void\n'
    '.end method\n')
sub1(r'\.method private static a1bScan\(I\)V', DIAG + '.method private static a1bScan(I)V',
     'C1 新增 a1bDiag')

# ---------- C2) a1bScan 里调一次 a1bDiag ----------
sub1(r'(\n:bs_skip\n)',
     '\n    invoke-static {p0}, ' + AFM + '->a1bDiag(I)V\n'
     '    goto :bs_ret\n'
     ':bs_skip\n',
     'C2 a1bScan 调 a1bDiag')

ck = [
    ('a1bClock 已重写（含 if-eq day, :abc_bump）', 'if-eq v0, v2, :abc_bump' in s),
    ('a1bClock 已无旧反写', 'if-ne v0, v2, :abc_h2' not in s),
    ('字段已加', '.field public static a1bNen:I' in s),
    ('a1bPick 清零已加', s.count('sput v11, ' + AFM + '->a1bNvis:I') == 1),
    ('bp_invis 标签唯一', len(re.findall(r'\n:bp_invis\n', s)) == 1),
    ('a1bPick 出口 5 行', s.count('const/16 v11, 0xb') == 1 and s.count('const/16 v11, 0xe') == 1),
    ('a1bDiag 已定义', '.method private static a1bDiag(I)V' in s),
    ('a1bDiag 被调用 1 次', s.count('->a1bDiag(I)V') == 1),
    ('dg_loop 标签唯一', len(re.findall(r'\n:dg_loop\n', s)) == 1),
    ('k=18/19/20 已加', ('const/16 v11, 0x12' in s) and ('const/16 v11, 0x13' in s) and ('const/16 v11, 0x14' in s)),
]
for why, ok in ck:
    L.append((' OK ' if ok else ' XX ') + why)
    bad += 0 if ok else 1

io.open(P, 'w', encoding='utf-8').write(s)
for x in L:
    print(x)
assert bad == 0
print('OK: r5c006 一轮到位诊断补丁完成')