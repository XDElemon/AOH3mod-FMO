# -*- coding: utf-8 -*-
# r5c046_fix.py —— P2a：关线 L（只关 AI）/ K=3 / 视野门 B / FRQ+P（方案 C）/ 轰炸线评分 / 攻击线主键师数 / 探针
# 基线：AirForceManager.smali（md5 872caeb56c3f6a84617e574981a6a34a）
# 每处改动都有"锚点唯一性断言"，一次写完再执行。
import os, sys, shutil, hashlib

SM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = SM + '.pre_r5c046'

def md5(p):
    return hashlib.md5(open(p,'rb').read()).hexdigest()

def rep(txt, old, new, tag, expect=1):
    n = txt.count(old)
    if n != expect:
        print('[FAIL] %s 锚点匹配数=%d（期望 %d）' % (tag, n, expect))
        sys.exit(1)
    print('[OK]   %s 锚点唯一（%d 处）' % (tag, n))
    return txt.replace(old, new, expect)

# ============ 新增静态字段 ============
FIELDS_OLD = '    .field public static a1bRtTol:F'
FIELDS_NEW = '''    .field public static a1bRtTol:F
    # r5c046 P2a 新增运行态静态（工具链 16 寄存器 ⇒ 选最优暂存一律走静态）
    .field public static a1PkTier:I
    .field public static a1PkScore:I
    .field public static a1PkN:I
    .field public static a1PkPid:I
    .field public static a1PkP:F
    .field public static a1FrqTurn:I
    .field public static a1FrqN:I
    .field public static a1bDivBest:I
    .field public static a1bDivNew:I'''

# ============ 新增 helper 方法 ============
HELPERS = '''
# ===== r5c046 P2a helpers begin =====
# K 计数：civID + 使命类型（枚举对象比较，不依赖 ordinal；排除 COMPLETED/ABORTED）
.method private static a1CivInflight(ILaoc/kingdoms/lukasz/map/battles/AirMission$MissionType;)I
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :aci_done

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v1, :aci_done

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :aci_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :aci_done

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :aci_loop

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v3, p0, :aci_loop

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v3, p1, :aci_loop

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v3, v4, :aci_loop

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v3, v4, :aci_loop

    add-int/lit8 v0, v0, 0x1

    goto :aci_loop

    :aci_done
    return v0
.end method

# 师数：内部**仅一处** getArmySize()（将来改"团/师"体制只改这一行）
.method private static a1DivCount(I)I
    .registers 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :adc_zero

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    return v1

    :adc_zero
    const/4 v1, 0x0

    return v1
.end method

# 师数比较：返回 1=候选更好 / 0=同档 / -1=更差；顺带把候选师数写入 a1bDivNew
.method private static a1bDivCmp(II)I
    .registers 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1DivCount(I)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivNew:I

    sub-int v1, v0, p1

    if-gtz v1, :dcc_le

    const/4 v0, 0x1

    return v0

    :dcc_le
    if-eqz v1, :dcc_zero

    const/4 v0, -0x1

    return v0

    :dcc_zero
    const/4 v0, 0x0

    return v0
.end method

# FRQ[difficulty] = [1,1,1,2,2,3]（含 clamp）
.method private static a1FrqFor()I
    .registers 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    if-ltz v0, :ff_lo

    const/4 v0, 0x0

    :ff_lo
    const/4 v1, 0x5

    if-le v0, v1, :ff_hi

    move v0, v1

    :ff_hi
    const/4 v1, 0x3

    if-lt v0, v1, :ff_hi2

    const/4 v1, 0x1

    return v1

    :ff_hi2
    const/4 v1, 0x5

    if-ne v0, v1, :ff_five

    const/4 v1, 0x2

    return v1

    :ff_five
    const/4 v1, 0x3

    return v1
.end method

# P = base(GV_Air.AIR_AI_BOMB_CHANCE_AT_WAR, <=0 兜底 0.33) × MULT[difficulty]
.method private static a1ProbFor()F
    .registers 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->air:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Air;

    const v1, 0x3ea8f5c3    # 0.33f（兜底）

    if-eqz v0, :pf_base

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Air;->AIR_AI_BOMB_CHANCE_AT_WAR:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-gtz v4, :pf_base

    move v1, v2

    :pf_base
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    if-ltz v2, :pf_lo

    const/4 v2, 0x0

    :pf_lo
    const/4 v3, 0x5

    if-le v2, v3, :pf_hi

    move v2, v3

    :pf_hi
    const/4 v3, 0x0

    if-ne v2, v3, :pf_m0

    const/4 v3, 0x1

    if-ne v2, v3, :pf_m1

    const/4 v3, 0x2

    if-ne v2, v3, :pf_m2

    const/4 v3, 0x3

    if-ne v2, v3, :pf_m3

    const/4 v3, 0x4

    if-ne v2, v3, :pf_m4

    const v3, 0x40000000    # 2.0f (Legendary)

    goto :pf_mul

    :pf_m0
    const v3, 0x3f000000    # 0.5f

    goto :pf_mul

    :pf_m1
    const v3, 0x3f400000    # 0.75f

    goto :pf_mul

    :pf_m2
    const/high16 v3, 0x3f800000    # 1.0f

    goto :pf_mul

    :pf_m3
    const v3, 0x3fa00000    # 1.25f

    goto :pf_mul

    :pf_m4
    const v3, 0x3fc00000    # 1.5f

    :pf_mul
    mul-float v1, v1, v3

    return v1
.end method
# ===== r5c046 P2a helpers end =====

'''

def main():
    if not os.path.exists(SM):
        print('[FAIL] 找不到', SM); sys.exit(1)
    if not os.path.exists(BAK):
        shutil.copy2(SM, BAK)
        print('[OK] 已建备份', BAK)
    print('基线 md5:', md5(SM))

    t = open(SM, encoding='utf-8').read()

    # ---- F: 字段 ----
    t = rep(t, FIELDS_OLD, FIELDS_NEW, 'F 新增静态字段')

    # ---- H: helper 方法（插在 a1Scan 之前）----
    t = rep(t, '.method private static a1Scan(I)V', HELPERS + '.method private static a1Scan(I)V', 'H 新增 helpers')

    # ---- E1: 关线 L（只关 AI 文明）----
    E1_OLD = '''    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    if-eqz v0, :cond_3c

    const-string v3, "nA4d"'''
    E1_NEW = '''    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    if-eqz v0, :cond_3c

    # r5c046 P2a E1: 关闭线 L 战时轰炸（只对 AI 文明；玩家自己的机场保留旧行为）
    # 真值表：player 为 null（观战）⇒ 关；airport.civID == player.iCivID ⇒ 保留；否则 ⇒ 关
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v2, :p2L_close

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v3, v2, :p2L_keep

    :p2L_close
    const-string v2, "nA2L"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void

    :p2L_keep
    const-string v3, "nA4d"'''
    t = rep(t, E1_OLD, E1_NEW, 'E1 关线 L')

    # ---- E2/E8: a1Scan 的 K=3 + FRQ/P 初始化（必须在数组分配块之后）----
    E2_OLD = '    :sc_have'
    E2_NEW = '''    :sc_have
    # r5c046 P2a E2: K=3 文明级上限（轰炸线；晚于 a1Known/a1Gsee 分配块，避免掐死 a1bPick）
    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-static {p0, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1CivInflight(ILaoc/kingdoms/lukasz/map/battles/AirMission$MissionType;)I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :p2K_ok

    const-string v13, "nP2cap"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto :sc_ret

    :p2K_ok
    # r5c046 P2a E8: FRQ 计数按回合重置（TURN_ID 变了才清）
    sget v13, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqTurn:I

    if-eq v13, v14, :p2F_ok

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqTurn:I

    const/4 v14, 0x0

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    :p2F_ok
    # r5c046 P2a E8: 概率 P（每次调用重算，含难度 clamp 与兜底）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1ProbFor()F

    move-result v13

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkP:F

    const-string v14, "nP2dif"

    sget v13, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V'''
    t = rep(t, E2_OLD, E2_NEW, 'E2/E8 K + FRQ/P')

    # ---- E3: a1bScan 的 K=3（攻击机线）----
    E3_OLD = '    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDiag(I)V'
    E3_NEW = '''    # r5c046 P2a E3: K=3 文明级上限（攻击机线）
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1CivInflight(ILaoc/kingdoms/lukasz/map/battles/AirMission$MissionType;)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :p2Kb_ok

    const-string v3, "nP2cap"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto :bs_ret

    :p2Kb_ok
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDiag(I)V'''
    t = rep(t, E3_OLD, E3_NEW, 'E3 K 攻击机线')

    # ---- E4: 视野门翻转（轰炸线）----
    t = rep(t, '    if-eqz v13, :sc_sel', '    if-nez v13, :sc_sel    # r5c046 E4: 可见(fog=false) ⇒ 刷新记忆；不可见 ⇒ 用旧记忆', 'E4 视野门 a1Scan')
    # ---- E5: 视野门翻转（攻击机线）----
    t = rep(t, '    if-eqz v10, :bp_invis', '    if-nez v10, :bp_invis    # r5c046 E5: 可见(fog=false) ⇒ 盖时间戳；不可见 ⇒ 用旧戳', 'E5 视野门 a1bPick')

    # ---- E7-c: 军建位 0x2 → 记录位 0x4（军建改置顶档后，无军建省也可入选）----
    t = rep(t, '    and-int/lit8 v13, v13, 0x2', '    and-int/lit8 v13, v13, 0x4    # r5c046 E7c: 只要求"已记录"；军建改为置顶档', 'E7c 记录位')

    # ---- E7-a: 每机场起点：P 摇骰 + 重置选中态 ----
    E7A_OLD = '''    if-nez v4, :sc_ap_next

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;'''
    E7A_NEW = '''    if-nez v4, :sc_ap_next

    # r5c046 P2a E7a: 重置"本机场最优"暂存
    const/4 v13, -0x1

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    const/4 v14, 0x0

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    # r5c046 P2a E8: 概率摇骰（rnd < P 才尝试该机场；P 由 a1ProbFor 给出）
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkP:F

    cmpl-float v13, v13, v14

    if-ltz v13, :sc_ap_next

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;'''
    t = rep(t, E7A_OLD, E7A_NEW, 'E7a P骰+重置')

    # ---- E7-b: 候选耗尽后改走 :sc_pick ----
    t = rep(t, '    if-eqz v13, :sc_ap_next', '    if-eqz v13, :sc_pick', 'E7b 候选耗尽转 :sc_pick')

    # ---- E7-d: 循环内：保留每目标上限，改为"记最优"（不再立即派发）----
    E7D_OLD = '''    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Inflight(I)I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :sc_cap

    invoke-static {v11, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Dispatch(II)Z

    move-result v13

    if-eqz v13, :sc_in_next
    goto :sc_in_next'''
    E7D_NEW = '''    # r5c046 P2a E7d: 每目标在飞 <2 门（保留原口径）
    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Inflight(I)I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :sc_cap

    # r5c046 P2a E7d: tier = (a1Known[pid] & 0x2) != 0 ? 0(有军建) : 1
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    aget-byte v13, v7, v11

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :p2s_nomil

    const/4 v13, 0x0

    goto :p2s_tier

    :p2s_nomil
    const/4 v13, 0x1

    :p2s_tier
    # r5c046 P2a E7d: score = (int)(economy*10) + populationTotal/100，负值归零
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v3

    const/high16 v14, 0x41200000    # 10.0f

    mul-float v3, v3, v14

    float-to-int v3, v3

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    const/16 v7, 0x64

    div-int v14, v14, v7

    add-int v3, v3, v14

    if-ltz v3, :p2s_pos

    const/4 v3, 0x0

    :p2s_pos
    # r5c046 P2a E7d: 选最优（档小优先；同档分高优先；同档同分蓄水池随机）
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    if-gez v14, :p2s_first

    if-lt v13, v14, :p2s_take

    if-eq v13, v14, :p2s_cmp

    goto :sc_in_next

    :p2s_cmp

    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    sub-int v14, v3, v14

    if-lez v14, :p2s_le

    goto :p2s_take

    :p2s_le
    if-ltz v14, :p2s_eq

    goto :sc_in_next

    :p2s_eq
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    if-nez v7, :p2s_take

    goto :sc_in_next

    :p2s_first
    const/4 v14, 0x1

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    :p2s_take
    # r5c046 P2a 探针：军建档命中
    if-nez v13, :p2s_take2

    const-string v7, "nP2mil"

    const/4 v14, 0x1

    invoke-static {v7, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :p2s_take2
    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    goto :sc_in_next'''
    t = rep(t, E7D_OLD, E7D_NEW, 'E7d 记最优')

    # ---- E7-e: 机场候选耗尽后：派最优 + FRQ 记账 + 探针 ----
    E7E_OLD = '''    :sc_ap_next
    add-int/lit8 v9, v9, 0x1'''
    E7E_NEW = '''    :sc_pick
    # r5c046 P2a E7e: 每机场每回合只派 1 次（取最优）
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    if-gez v13, :sc_ap_next

    # FRQ 天花板（每文明每回合新增轰炸上限，按难度）
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqFor()I

    move-result v14

    if-ge v13, v14, :p2p_go

    const-string v13, "nP2frq"

    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto :sc_ret

    :p2p_go
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    invoke-static {v13, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Dispatch(II)Z

    move-result v13

    if-eqz v13, :sc_ap_next

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    # r5c046 P2a 探针：选中 pid / tier / score / 本回合计数
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    const-string v14, "nP2s pid"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    const-string v14, "nP2s tier"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    const-string v14, "nP2s score"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    const-string v14, "nP2frq"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :sc_ap_next
    add-int/lit8 v9, v9, 0x1'''
    t = rep(t, E7E_OLD, E7E_NEW, 'E7e 派最优+FRQ')

    # ---- E6-a: a1bPick 初始化 a1bDivBest = -1 ----
    t = rep(t, '    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I',
            '    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I\n\n    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivBest:I    # r5c046 E6: 师数主键初始 -1',
            'E6a 师数暂存初始化')

    # ---- E6-b: a1bPick 主键改"师数 desc" ----
    E6B_OLD = '''    invoke-direct {v0, v13, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F
    move-result v11
    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I'''
    E6B_NEW = '''    invoke-direct {v0, v13, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F
    move-result v11
    # r5c046 P2a E6: 主键＝师数 desc（师数更多者更好；相等才继续比在飞/距离）
    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivBest:I
    invoke-static {v4, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivCmp(II)I
    move-result v12
    if-ltz v12, :p2d_ge
    goto :bp_loop
:p2d_ge
    if-eqz v12, :p2d_tie
    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivNew:I
    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivBest:I
    goto :bp_better
:p2d_tie
    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I'''
    t = rep(t, E6B_OLD, E6B_NEW, 'E6b 师数主键')

    open(SM, 'w', encoding='utf-8').write(t)
    print('[OK] 写入完成，新 md5:', md5(SM), ' 大小:', os.path.getsize(SM))
    print('提示：执行 bash /sdcard/GLG/历史23/r5c046_build.sh 完成汇编/门禁/装机')

if __name__ == '__main__':
    main()