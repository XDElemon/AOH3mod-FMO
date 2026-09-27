# -*- coding: utf-8 -*-
# R5c002 / B1：第③步B「攻击机追部队」第一批
#   1) 自建回合时钟（a1bDay/a1bHour/a1bTurn）—— 因为 TURN_ID 是"游戏日"
#   2) 玩家门（Game.player==null 或 p0!=player.iCivID -> return）  [L3]
#   3) 删掉 A 的"每回合已派发"人工闸（a1LastDisp，施工期自加、非拍板）  [L2 选项a]
#      并把原数组位改名为 a1Gsee（攻击机的"最后看见敌军的回合号"记忆表，整表填 -1）
#   4) a1Inflight 加 STRATEGIC_BOMBING 过滤（与攻击机独立计数）        [L4]
#   5) 新增 a1bLog / a1bClock / a1bInflight / a1bPick / a1bDispatch / a1bScan
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = P + '.bak_r5c002'
shutil.copyfile(P, BAK)
s = io.open(P, encoding='utf-8').read()
bad = 0
LOG = []


def sub1(pat, rep, desc, expect=1):
    global s, bad
    n = len(re.findall(pat, s, re.S))
    if n != expect:
        LOG.append(' XX ' + desc + '（命中 ' + str(n) + ' 次，期望 ' + str(expect) + '）')
        bad += 1
        return
    s = re.sub(pat, rep, s, count=1, flags=re.S)
    LOG.append(' OK ' + desc)


AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
GM = 'Laoc/kingdoms/lukasz/jakowski/Game;'
GC = 'Laoc/kingdoms/lukasz/jakowski/Game_Calendar;'
PLS = 'Laoc/kingdoms/lukasz/jakowski/Player/Player;'
PR = 'Laoc/kingdoms/lukasz/map/province/Province;'

# ---------------- 1) 字段区 ----------------
sub1(r'\.field public static a1LastDisp:\[I',
     '.field public static a1Gsee:[I\n'
     '.field public static a1bDay:I\n'
     '.field public static a1bHour:I\n'
     '.field public static a1bTurn:I',
     '① 字段：a1LastDisp -> a1Gsee + a1bDay/a1bHour/a1bTurn')

# ---------------- 2) 分配块（改名 + 整表填 -1） ----------------
sub1(r'(new-array v7, v12, \[I\s*\n\s*sput-object v7, )' + re.escape(AFM) + r'->a1LastDisp:\[I\s*\n',
     r'\1' + AFM + '->a1Gsee:[I\n'
     '    const/4 v13, 0x0\n'
     ':bsg_fill\n'
     '    if-ge v13, v12, :bsg_fill_done\n'
     '    const/4 v14, -0x1\n'
     '    aput v14, v7, v13\n'
     '    add-int/lit8 v13, v13, 0x1\n'
     '    goto :bsg_fill\n'
     ':bsg_fill_done\n',
     '② a1Scan 分配块：a1Gsee 整表填 -1（哨兵）')

# ---------------- 3) 删掉两处"本回合已派发"用法（L2 选项a） ----------------
sub1(r'\s*sget-object v7, ' + re.escape(AFM) + r'->a1LastDisp:\[I\s*\n\s*aget v13, v7, v11\s*\n\s*if-eq v13, v8, :sc_in_next\s*\n',
     '\n', '③ 删除 a1Scan 里"本回合已派发"判断')
sub1(r'\s*sget-object v7, ' + re.escape(AFM) + r'->a1LastDisp:\[I\s*\n\s*aput v8, v7, v11\s*\n',
     '\n', '③ 删除 a1Scan 里"记录已派发"写回')

# ---------------- 4) a1Inflight 加任务类型过滤（L4） ----------------
sub1(r'(iget v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I\s*\n\s*if-ne v4, p0, :if_loop\s*\n)',
     r'\1'
     '    iget-object v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;\n'
     '    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;\n'
     '    if-ne v4, v5, :if_loop\n',
     '④ a1Inflight 只数 STRATEGIC_BOMBING')

NEW = u'''.method private static a1bLog(IIILjava/lang/String;)V
    .registers 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nA1b ap="
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
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "AIRDBG"
    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method
.method private static a1bClock()V
    .registers 4
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDay:I
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bHour:I
    if-ne v0, v2, :abc_h2
    goto :abc_bump
:abc_h2
    if-eq v1, v3, :abc_ret
:abc_bump
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDay:I
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bHour:I
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bTurn:I
    add-int/lit8 v2, v2, 0x1
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bTurn:I
:abc_ret
    return-void
.end method
.method private static a1bInflight(I)I
    .registers 7
    const/4 v2, 0x0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :abi_done
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v0, :abi_done
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
:abi_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :abi_done
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v3, :abi_loop
    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I
    if-ne v4, p0, :abi_loop
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    if-ne v4, v5, :abi_loop
    add-int/lit8 v2, v2, 0x1
    goto :abi_loop
:abi_done
    return v2
.end method
.method private static a1bPick(Laoc/kingdoms/lukasz/map/battles/Airport;I)I
    .registers 16
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;
    if-eqz v10, :bp_none
    invoke-interface {v10}, Ljava/util/List;->size()I
    move-result v9
    if-gtz v9, :bp_none
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Gsee:[I
    if-eqz v7, :bp_none
    array-length v10, v7
    if-ne v10, v9, :bp_none
    sget v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bTurn:I
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :bp_none
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-virtual {v0, p0, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;
    move-result-object v1
    if-eqz v1, :bp_none
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
    const/4 v5, -0x1
    const v6, 0x7f7fffff    # Float.MAX_VALUE
:bp_loop
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v10
    if-eqz v10, :bp_done
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Ljava/lang/Integer;
    if-eqz v10, :bp_loop
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    move-result v4
    if-ltz v4, :bp_loop
    if-ge v4, v9, :bp_loop
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v3
    if-eqz v3, :bp_loop
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v10
    if-eqz v10, :bp_nostamp
    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z
    move-result v10
    if-eqz v10, :bp_nostamp
    aput v8, v7, v4
:bp_nostamp
    aget v10, v7, v4
    if-ltz v10, :bp_loop
    if-le v10, v8, :bp_loop
    sub-int v11, v8, v10
    const/4 v10, 0x6
    if-le v11, v10, :bp_loop
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I
    move-result v10
    const/4 v11, 0x2
    if-ge v10, v11, :bp_loop
    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F
    move-result v12
    cmpl-float v10, v12, v6
    if-ltz v10, :bp_tw
    goto :bp_take
:bp_tw
    if-nez v10, :bp_loop
    if-lt v4, v5, :bp_loop
:bp_take
    move v6, v12
    move v5, v4
    goto :bp_loop
:bp_done
    return v5
:bp_none
    const/4 v5, -0x1
    return v5
.end method
.method private static a1bDispatch(II)Z
    .registers 14
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :abd_no
    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v1
    if-eqz v1, :abd_no
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v10
    const/4 v9, 0x0
:abd_loop
    if-ge v9, v10, :abd_no
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;
    if-eqz v2, :abd_next
    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;
    move-result-object v4
    if-nez v4, :abd_have_div
    const/4 v8, 0x1
    const/4 v11, 0x0
    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V
    goto :abd_next
:abd_have_div
    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;
    move-result-object v5
    if-eqz v5, :abd_next
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :abd_in_range
    const/4 v8, 0x2
    const/4 v11, 0x0
    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V
    goto :abd_next
:abd_in_range
    const/4 v6, -0x1
    invoke-static {v2, v6, p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createAttackArmy(Laoc/kingdoms/lukasz/map/battles/Airport;IILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    move-result-object v5
    if-eqz v5, :abd_next
    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;
    if-eqz v6, :abd_next
    invoke-interface {v6}, Ljava/util/List;->size()I
    move-result v8
    if-gtz v8, :abd_has_ac
    const/4 v8, 0x3
    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V
    goto :abd_next
:abd_has_ac
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v6, :abd_next
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const/4 v8, 0x0
    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V
    const/4 v8, 0x1
    return v8
:abd_next
    add-int/lit8 v9, v9, 0x1
    goto :abd_loop
:abd_no
    const/4 v8, 0x0
    return v8
.end method
.method private static a1bScan(I)V
    .registers 16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;
    if-eqz v1, :bs_ret
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v12
    if-gtz v12, :bs_ret
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Gsee:[I
    if-eqz v7, :bs_ret
    array-length v13, v7
    if-ne v13, v12, :bs_ret
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :bs_ret
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v1
    if-eqz v1, :bs_ret
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v10
    const/4 v9, 0x0
:bs_ap
    if-ge v9, v10, :bs_ret
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;
    if-eqz v2, :bs_ap_next
    invoke-static {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPick(Laoc/kingdoms/lukasz/map/battles/Airport;I)I
    move-result v11
    if-ltz v11, :bs_ap_next
    invoke-static {v11, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDispatch(II)Z
    move-result v13
:bs_ap_next
    add-int/lit8 v9, v9, 0x1
    goto :bs_ap
:bs_ret
    return-void
.end method
'''

sub1(r'\.method private static strikeTick_A1\(I\)V.*?\n\.end method\n',
     NEW +
     '.method private static strikeTick_A1(I)V\n'
     '    .registers 4\n'
     '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n'
     '    if-eqz v0, :st_ret\n'
     '    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I\n'
     '    if-ne p0, v1, :st_ret\n'
     '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bClock()V\n'
     '    const/4 v2, -0x1\n'
     '    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Snap(II)V\n'
     '    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Scan(I)V\n'
     '    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bScan(I)V\n'
     ':st_ret\n'
     '    return-void\n'
     '.end method\n',
     '⑤ 新增 6 个方法 + 重写 strikeTick_A1（玩家门/时钟/攻击机扫描）')

# ---------------- 6) 静态自检 ----------------
checks = [
    ('a1LastDisp 已彻底消失', 'a1LastDisp' not in s),
    ('a1Gsee 字段已建', '.field public static a1Gsee:[I' in s),
    ('a1bTurn 字段已建', '.field public static a1bTurn:I' in s),
    ('a1Gsee 分配已改名', '->a1Gsee:[I' in s),
    ('填 -1 哨兵循环存在', ':bsg_fill_done' in s),
    ('a1bLog 已定义', '.method private static a1bLog(IIILjava/lang/String;)V' in s),
    ('a1bClock 已定义', '.method private static a1bClock()V' in s),
    ('a1bInflight 已定义', '.method private static a1bInflight(I)I' in s),
    ('a1bPick 已定义', '.method private static a1bPick(' in s),
    ('a1bDispatch 已定义', '.method private static a1bDispatch(II)Z' in s),
    ('a1bScan 已定义', '.method private static a1bScan(I)V' in s),
    ('strikeTick 已带玩家门', 'if-ne p0, v1, :st_ret' in s),
    ('strikeTick 已调 a1bScan', '->a1bScan(I)V' in s),
    ('a1Inflight 已加 ATTACK 过滤? (a1Inflight 只数轰炸)', 'STRATEGIC_BOMBING' in s),
    # 反例断言：绝不能出现判空方向反了的写法
    ('反例：a1bPick 不得有 if-nez 用于"有敌军"', 'if-nez v10, :bp_nostamp' not in s),
    ('反例：a1bPick 盖章块不得用 if-nez（那是"?非空才跳"，反的）', 'if-nez v10, :bp_nostamp' not in s),
    ('反例：玩家门不得写成 if-eq', 'if-eq p0, v1, :st_ret' not in s),
    ('反例：a1bScan 不得出现 if-nez v7 判数组', 'if-nez v7, :bs_ret' not in s),
    # 标签唯一性（定义各 1 次）
    ('标签定义唯一 :bp_loop', len(re.findall(r'\n:bp_loop\n', s)) == 1),
    ('标签定义唯一 :bp_take', len(re.findall(r'\n:bp_take\n', s)) == 1),
    ('标签定义唯一 :bp_tw', len(re.findall(r'\n:bp_tw\n', s)) == 1),
    ('标签定义唯一 :abi_loop', len(re.findall(r'\n:abi_loop\n', s)) == 1),
    ('标签定义唯一 :abd_loop', len(re.findall(r'\n:abd_loop\n', s)) == 1),
    ('标签定义唯一 :bs_ap', len(re.findall(r'\n:bs_ap\n', s)) == 1),
    ('标签定义唯一 :abc_bump', len(re.findall(r'\n:abc_bump\n', s)) == 1),
    ('标签定义唯一 :bsg_fill', len(re.findall(r'\n:bsg_fill\n', s)) == 1),
]
for why, ok in checks:
    LOG.append((' OK ' if ok else ' XX ') + why)
    bad += 0 if ok else 1

io.open(P, 'w', encoding='utf-8').write(s)

for line in LOG:
    print(line)
print()
print('真值表（新代码跳转语义）：')
print('  strikeTick : if-eqz player -> 玩家为空才返回；if-ne p0,playerCiv -> 不是玩家才返回')
print('  a1bClock   : if-ne 天 -> 天不同才去比小时；if-eq 小时 -> 同小时则视为同回合并返回')
print('  a1bInflight: if-eq hasNext -> 没有下一条则结束；if-ne 省/类型 -> 不匹配则跳过')
print('  a1bPick    : 无敌军/不可见 -> 不盖章；记录<0 或 记录>当前 或 差>6 -> 过期跳过；在飞>=2 -> 跳过')
print('  a1bPick    : 距离>=最优 -> 进平局/更差分支；更差跳过；并列时省号更小者才替换')
print('  a1bDispatch: if-nez divKey -> 无空闲攻击机师(k=1)；不在射程(k=2)；无飞机(k=3)；成功(k=0)')
print('  a1bScan    : if-eqz/if-gtz/if-ne -> 前置条件不满足就整段返回（不干活、不崩）')
assert bad == 0
print('OK: r5c002 / B1 补丁完成（备份 ' + BAK + '）')
