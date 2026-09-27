#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r5c046x_phaseA.py — Phase A：把玩家侧攻机/轰机拉回 B3-A1 最终版

三处改动：
  E1  在 update(I)V 内 updatePatrols 调用之后，插入 updateOffensivesP(p1)
  E2  在 executeAIAssignmentForAirport 的战时轰炸分支入口，对「玩家文明」短路（防双发）
  E3  追加 5 个新方法：updateOffensivesP / tryStrikeForAirportP / pickStrikeTargetP
                      hasStrikeInFlightP / dbgStrikeP

设计：smali 模板用占位符（%AFM %AIR %ATY ... %Q），最后统一 replace
      —— 避免 Python 三引号与 smali 描述符里的引号相互歧义。

纪律（AGENTS.md §九）：
  * 所有锚点必须唯一（count==1），否则拒写
  * 每处条件跳转附「真值表」注释
  * 内置真值表断言 + 反向断言
  * 不动既有方法 .registers；零新字段

实测签名（本轮已核实，勿凭记忆）：
  provinceDistance(II)F   <-- 收 (省A, 省B) 两个 int，不是 Province 对象
  pickIdleDivKey(Airport;AirType;)String   <-- private static，调用不含 this
  hasActivePatrol(Airport;String;)Z        <-- private 实例
  getFogDrawArmy()Z == true 即「可见」
"""
import sys, re, hashlib

SRC = r'E:\WorkGroup\glg\work\revs\aoc\kingdoms\lukasz\map\battles\AirForceManager.smali'

TOK = {
    '%AFM': 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;',
    '%AIR': 'Laoc/kingdoms/lukasz/map/battles/Airport;',
    '%ATY': 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;',
    '%DBG': 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;',
    '%DIP': 'Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;',
    '%MIS': 'Laoc/kingdoms/lukasz/map/battles/AirMission;',
    '%MTY': 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;',
    '%PRV': 'Laoc/kingdoms/lukasz/map/province/Province;',
    '%GAM': 'Laoc/kingdoms/lukasz/jakowski/Game;',
    '%PLY': 'Laoc/kingdoms/lukasz/jakowski/Player/Player;',
    '%Q':   "'",
}


def sub(t):
    for k, v in TOK.items():
        t = t.replace(k, v)
    return t


fails = []
def chk(c, m):
    if not c:
        fails.append(m)
    return c


# ── E1 ────────────────────────────────────────────────────────
E1_ANCHOR = sub('    invoke-virtual {p0, p1}, %AFM->updatePatrols(I)V\n')
E1_INSERT = sub('\n    invoke-virtual {p0, p1}, %AFM->updateOffensivesP(I)V\n')

# ── E2 ────────────────────────────────────────────────────────
E2_ANCHOR = sub(
    '    const-string v3, "nA4d"\n'
    '\n'
    '    invoke-static {p1, v0, v3}, %DBG->p0War(%AIRILjava/lang/String;)V\n'
)
E2_INSERT = sub(
    '\n'
    '    invoke-static {p1, v0, v3}, %DBG->p0War(%AIRILjava/lang/String;)V\n'
    '\n'
    '# r5c046x Phase A 短路 —— 玩家文明的战时轰炸改由 updateOffensivesP 接管，防双发\n'
    '    sget-object v3, %GAM->player:%PLY\n'
    '\n'
    '    if-eqz v3, :phaseA_notplayer\n'
    '\n'
    '    iget v3, v3, %PLY->iCivID:I\n'
    '\n'
    '    iget v2, p1, %AIR->civID:I\n'
    '\n'
    '    if-eq v3, v2, :cond_a3\n'
    '\n'
    '    :phaseA_notplayer\n'
)

# ── E3 ────────────────────────────────────────────────────────
NEW_METHODS = sub('''
# ===============================================================
# r5c046x Phase A —— 玩家侧自动打击（攻机 + 轰机）
# 全部为新增方法；不改任何既有方法 .registers；零新字段
# ===============================================================

# 派发层：仅服务玩家文明，遍历其所有机场
.method public updateOffensivesP(I)V
    .registers 8
    .param p1, "civID"    # I

# 关0 非玩家文明早退（update(I)V 对每个文明都会调本入口；纯性能，不改语义）
# 真值表：Game.player==null -> 跳 :p_ret
#         player.iCivID != civID -> 跳 :p_ret
#         相等 -> 落穿
    sget-object v0, %GAM->player:%PLY

    if-eqz v0, :p_ret

    iget v0, v0, %PLY->iCivID:I

    if-ne v0, p1, :p_ret

    invoke-virtual {p0, p1}, %AFM->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    :goto_p_loop
# 真值表：hasNext()==0(假) -> 跳 :cond_p_end；!=0 -> 落穿继续
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_p_end

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, %AIR

# 总闸。既有权威写法(AFM 8321)：autoStrikeOff 非零 == 开
# 真值表：autoStrikeOff != 0 -> 跳 :goto_p_loop（闸关，跳过本机场）
#         == 0 -> 落穿（闸开，继续）
    iget-boolean v6, v2, %AIR->autoStrikeOff:Z

    if-nez v6, :goto_p_loop

    sget-object v6, %ATY->ATTACKER:%ATY

    invoke-virtual {p0, v2, v3, v6}, %AFM->tryStrikeForAirportP(%AIRLjava/util/Random;%ATY)V

    sget-object v6, %ATY->BOMBER:%ATY

    invoke-virtual {p0, v2, v3, v6}, %AFM->tryStrikeForAirportP(%AIRLjava/util/Random;%ATY)V

    goto :goto_p_loop

    :cond_p_end
    return-void

    :p_ret
    return-void
.end method

# 单机场单机型：七道关
.method public tryStrikeForAirportP(%AIRLjava/util/Random;%ATY)V
    .registers 14
    .param p1, "airport"    # %AIR
    .param p2, "rnd"    # Ljava/util/Random;
    .param p3, "type"    # %ATY

# 关1 文明门：只服务玩家文明（update(I)V 对每个文明都调本入口，必须在此隔离 AI）
# 真值表：player==null -> 跳 :tst_skip
#         player.iCivID != airport.civID -> 跳 :tst_skip
#         相等 -> 落穿
    sget-object v0, %GAM->player:%PLY

    if-eqz v0, :tst_skip

    iget v1, v0, %PLY->iCivID:I

    iget v2, p1, %AIR->civID:I

    if-ne v1, v2, :tst_skip

# 关2 总闸（与老线既有写法一致）
# 真值表：autoStrikeOff != 0 -> 落穿；== 0 -> 跳 :tst_skip
    iget-boolean v3, p1, %AIR->autoStrikeOff:Z

    if-eqz v3, :tst_skip

# 关3 概率门 0.2f
#   cmpg-float v4, v4, v5 : v4<v5 -> -1 ; == -> 0 ; > -> 1
# 真值表：v4 < 0 (rnd < 0.2) -> 落穿；v4 >= 0 -> 跳 :tst_skip
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v4, v4, v5

    if-ltz v4, :tst_skip

# 关4 空闲师 key（静态方法，调用不含 this）
# 真值表：== null -> 跳 :tst_skip
    invoke-static {p1, p3}, %AFM->pickIdleDivKey(%AIR%ATY)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :tst_skip

# 关5 该师不得已在巡逻
# 真值表：hasActivePatrol==true -> 跳 :tst_skip
    invoke-direct {p0, p1, v6}, %AFM->hasActivePatrol(%AIRLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :tst_skip

# 关6 选靶。< 0 表示无目标
# 真值表：target < 0 -> 跳 :tst_skip
    invoke-direct {p0, p1, p3}, %AFM->pickStrikeTargetP(%AIR%ATY)I

    move-result v8

    if-ltz v8, :tst_skip

# 关7 建任务。createAttackArmy 第2参是 targetArmyID，整省打击传 -1
    sget-object v9, %ATY->ATTACKER:%ATY

    if-ne p3, v9, :tst_bomber

    const/4 v10, -0x1

    invoke-static {p1, v10, v8, v6}, %MIS->createAttackArmy(%AIRIILjava/lang/String;)%MIS

    move-result-object v9

    goto :tst_have

    :tst_bomber
    invoke-static {p1, v8, v6}, %MIS->createStrategicBombing(%AIRILjava/lang/String;)%MIS

    move-result-object v9

    :tst_have
    if-eqz v9, :tst_skip

# 任务建成后须有实分配到飞机
# 真值表：assignedAircraft.isEmpty()==true -> 跳 :tst_skip
    iget-object v11, v9, %MIS->assignedAircraft:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :tst_skip

    iget-object v11, p0, %AFM->activeMissions:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

# 探针 nAS：值 = 机型 ordinal
# 实测枚举序数：INTERCEPTOR=0 / FIGHTER=1 / BOMBER=2 / ATTACKER=3
    const-string v11, "nAS"

    invoke-virtual {p3}, %ATY->ordinal()I

    move-result v12

    invoke-static {v11, v12}, %DBG->e5ii(Ljava/lang/String;II)V

    :tst_skip
    return-void
.end method

# 选靶：射程内敌省，逐门过滤，最近优先
# ★寄存器纪律：v3 只作 Iterator（对象），v8 只作 provinceID（数值），v7 只作 Province（对象）
#   —— 严禁同一寄存器既当对象又当数值（历史血案 a1Scan v3/v7 致 ART VerifyError 闪退）
.method public pickStrikeTargetP(%AIR%ATY)I
    .registers 12
    .param p1, "airport"    # %AIR
    .param p2, "type"    # %ATY

# 关1 文明门（public，必须自守，防被 AI 侧调用）
# 真值表：player==null -> 跳 :pst_none；player.iCivID != airport.civID -> 跳 :pst_none
    sget-object v0, %GAM->player:%PLY

    if-eqz v0, :pst_none

    iget v1, v0, %PLY->iCivID:I

    iget v2, p1, %AIR->civID:I

    if-ne v1, v2, :pst_none

# v0=bestId(-1) ; v1=bestDist(+Inf) ; v5=己方(机场)文明号，循环内不变
    const/4 v0, -0x1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iget v5, p1, %AIR->civID:I

    invoke-direct {p0, p1, p2}, %AFM->getEnemyProvincesInRange(%AIR%ATY)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :pst_none

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_pst_loop
# 真值表：hasNext()==0 -> 跳 :pst_done
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :pst_done

# v4 只作"取出的 Integer 对象"使用（与 v8 分工，避免对象/数值混用）
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

# 真值表：prov==null -> 跳 :goto_pst_loop
    invoke-static {v8}, %GAM->getProvince(I)%PRV

    move-result-object v7

    if-eqz v7, :goto_pst_loop

# 关2 战争门：必须用 DiplomacyManager.isAtWar(II)（精确二元）
#      禁用 AFM.isAtWar(I)：语义是"与任意文明交战"（存在量化），会污染候选集
# 真值表：isAtWar==0 -> 跳 :goto_pst_loop
    invoke-virtual {v7}, %PRV->getCivID()I

    move-result v4

    invoke-static {v5, v4}, %DIP->isAtWar(II)Z

    move-result v4

    if-eqz v4, :goto_pst_loop

# 关3 驻军门（仅攻击机）
# 真值表：type != ATTACKER -> 跳 :pst_after_army
#         getArmySize() <= 0 -> 跳 :goto_pst_loop
    sget-object v4, %ATY->ATTACKER:%ATY

    if-ne p2, v4, :pst_after_army

    invoke-virtual {v7}, %PRV->getArmySize()I

    move-result v4

    if-lez v4, :goto_pst_loop

    :pst_after_army
# 关4 视野门（仅攻击机）：只打玩家看得见的省
#   Province.getFogDrawArmy()==true == 可见。铁证 ProvinceDrawArmy.updateDrawArmy:
#     if-eqz v0,:cond_10 -> $1(真绘制 drawProvinceArmyWithFlag) ; false -> $2(drawArmy 纯 return-void)
# 真值表：type != ATTACKER -> 跳 :pst_after_fog（轰炸机不加此门，按原档 O4）
#         getFogDrawArmy()==0 (false 不可见) -> 跳 :goto_pst_loop
    sget-object v4, %ATY->ATTACKER:%ATY

    if-ne p2, v4, :pst_after_fog

    invoke-virtual {v7}, %PRV->getFogDrawArmy()Z

    move-result v4

    if-eqz v4, :goto_pst_loop

    :pst_after_fog
# 关5 去重（同省同型已在飞则跳过）。第一参是 provinceID(v8, int) 不是 airport(对象)
# 真值表：hasStrikeInFlightP(...)==true -> 跳 :goto_pst_loop
    invoke-direct {p0, v8, p2}, %AFM->hasStrikeInFlightP(I%ATY)Z

    move-result v4

    if-eqz v4, :goto_pst_loop

# 关6 最近优先
#   实测签名 provinceDistance(II)F —— 收 (省A, 省B) 两个 int
#   cmpg-float v4, 新距离, 当前最优 : 新<优 -> -1 ; == -> 0 ; > -> 1 ; NaN -> 1
# 真值表：v4 < 0 -> 落穿（更新）；v4 >= 0 -> 跳 :goto_pst_loop
    invoke-direct {p0, v5, v8}, %AFM->provinceDistance(II)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :goto_pst_loop

    move v1, v4

    move v0, v8

    goto :goto_pst_loop

    :pst_done
    if-gez v0, :pst_none

    return v0

    :pst_none
    const/4 v0, -0x1

    return v0
.end method

# 去重：同省同型是否已有在飞任务
.method public hasStrikeInFlightP(I%ATY)Z
    .registers 8
    .param p1, "provinceID"    # I
    .param p2, "type"    # %ATY

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, %AFM->activeMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_hs_loop
# 真值表：v1 >= v3 -> 跳 :hs_false
    if-ge v1, v3, :hs_false

    iget-object v2, p0, %AFM->activeMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, %MIS

# 真值表：targetProvinceID != provinceID -> 跳 :hs_next
    iget v4, v2, %MIS->targetProvinceID:I

    if-ne v4, p1, :hs_next

# 机型->任务型：ATTACKER => ATTACK_ARMY ; 其余 => STRATEGIC_BOMBING
    sget-object v4, %ATY->ATTACKER:%ATY

    if-ne p2, v4, :hs_bomb

    sget-object v4, %MTY->ATTACK_ARMY:%MTY

    goto :hs_cmp

    :hs_bomb
    sget-object v4, %MTY->STRATEGIC_BOMBING:%MTY

    :hs_cmp
# 真值表：mission.type != 期望任务型 -> 跳 :hs_next
    iget-object v5, v2, %MIS->type:%MTY

    if-eq v5, v4, :hs_next

    const/4 v0, 0x1

    return v0

    :hs_next
    add-int/lit8 v1, v1, 0x1

    goto :goto_hs_loop

    :hs_false
    const/4 v0, 0x0

    return v0
.end method

# 探针辅助（静态，供后续批次复用）
.method public static dbgStrikeP(IILjava/lang/String;)V
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {p2, p0, p1}, %DBG->e5ii(Ljava/lang/String;II)V

    return-void
.end method
''')


def reg_map(s):
    out = {}
    for m in re.finditer(r'^\.method[^\n]*\n(?:(?!^\.method)[\s\S])*?^\s*\.registers\s+(\d+)', s, re.M):
        out[m.group(0).split('\n', 1)[0]] = int(m.group(1))
    return out


def main():
    src = open(SRC, encoding='utf-8', newline='').read()
    # 行尾规范化：baksmali 规范输出为 LF；本树实测含 CRLF（10615 个），
    # 锚点若按 LF 写会 0 命中。统一转 LF 后再打补丁（RunSmali 对 LF/CRLF 均可）。
    n_crlf = src.count('\r\n')
    src = src.replace('\r\n', '\n')
    orig = src
    before = hashlib.md5(src.encode('utf-8')).hexdigest()

    chk(src.count('provinceDistance(') > 0, '前置: 树里应有 provinceDistance(II)F')
    chk('provinceDistanceOf' not in src, '前置: 不应存在 provinceDistanceOf')

    n1, n2 = src.count(E1_ANCHOR), src.count(E2_ANCHOR)
    chk(n1 == 1, 'E1 锚点命中 %d 次（要求 1）-> 拒写' % n1)
    chk(n2 == 1, 'E2 锚点命中 %d 次（要求 1）-> 拒写' % n2)
    if fails:
        print('\n'.join('X ' + f for f in fails))
        sys.exit(1)

    print('   行尾规范化: CRLF %d 处 -> LF' % n_crlf)

    src = src.replace(E1_ANCHOR, E1_ANCHOR + E1_INSERT, 1)
    src = src.replace(E2_ANCHOR, E2_INSERT, 1)
    src = src.rstrip('\n') + '\n' + NEW_METHODS

    # ── 正向断言 ────────────────────────────────────────────
    chk(src.count('->updateOffensivesP(I)V') == 1, 'E1: updateOffensivesP 调用缺失/重复')
    chk(src.index('->updatePatrols(I)V') < src.index('->updateOffensivesP(I)V') < src.index('->strikeTick_A1(I)V'),
        'E1: 插入位置必须 在 updatePatrols 之后 且 在 strikeTick_A1 之前')
    chk(':phaseA_notplayer' in src and 'if-eq v3, v2, :cond_a3' in src, 'E2: 玩家短路缺失或极性不对')
    for m in ('updateOffensivesP(I)V', 'tryStrikeForAirportP', 'pickStrikeTargetP',
              'hasStrikeInFlightP', 'dbgStrikeP'):
        chk(('.method public %s' % m) in src or ('.method public static %s' % m) in src,
            'E3: 新方法缺失 %s' % m)

    # 极性正向
    chk('cmpg-float v4, v4, v5\n\n    if-ltz v4, :tst_skip' in src, '极性: 概率门应为 if-ltz')
    chk('cmpg-float v4, v4, v1\n\n    if-gez v4, :goto_pst_loop' in src, '极性: 最近优先应为 if-gez')
    chk(sub('invoke-virtual {v7}, %PRV->getFogDrawArmy()Z\n\n    move-result v4\n\n    if-eqz v4, :goto_pst_loop') in src,
        '极性: 视野门应为 if-eqz（false=不可见 => 跳过）')
    chk('if-nez v6, :goto_p_loop' in src, '极性: 总闸应为 if-nez')
    chk('invoke-direct {p0, v8, p2}, ' + TOK['%AFM'] + '->hasStrikeInFlightP(I' in src,
        '寄存器: hasStrikeInFlightP 第一参必须是 provinceID(v8, int)')
    chk('invoke-static {v5, v4}, ' + TOK['%DIP'] + '->isAtWar(II)Z' in src, '战争门: 必须调 isAtWar(II)')
    chk('invoke-direct {p0, v5, v8}, ' + TOK['%AFM'] + '->provinceDistance(II)F' in src,
        '签名: provinceDistance 必须是 (II)F')
    # ★寄存器类型纪律：pickStrikeTargetP 内 v3 只能作 Iterator，不得被 int 写
    body = NEW_METHODS.split('.method public pickStrikeTargetP')[1].split('.end method')[0]
    chk('move-result v3' not in body, 'regtype: pickStrikeTargetP 不得把 v3 写成数值（对象/数值混用）')
    chk('move-result-object v3' in body, 'regtype: pickStrikeTargetP 的 v3 应只作 Iterator')

    # 反向断言
    chk('->isAtWar(I)Z' not in NEW_METHODS, '反向: 新方法不得调用坏方法 isAtWar(I)')
    chk(NEW_METHODS.count('if-nez v4, :goto_pst_loop') == 0, '反向: 视野门不得写成 if-nez')

    # 寄存器未动
    ro, rn = reg_map(orig), reg_map(src)
    changed = [k for k in ro if k in rn and ro[k] != rn[k]]
    chk(not changed, '禁止改既有方法 .registers，被改: %s' % changed)
    added = [k for k in rn if k not in ro]
    chk(len(added) == 5, '应恰好新增 5 个方法，实际 %d: %s' % (len(added), added))

    if fails:
        print('X 断言未通过:')
        print('\n'.join('   - ' + f for f in fails))
        sys.exit(1)

    open(SRC, 'w', encoding='utf-8', newline='').write(src)
    after = hashlib.md5(src.encode('utf-8')).hexdigest()

    print('OK r5c046x Phase A 补丁应用成功')
    print('   md5   : %s -> %s' % (before, after))
    print('   行数  : %d -> %d' % (orig.count('\n'), src.count('\n')))
    print('   新方法 (%d):' % len(added))
    for a in added:
        print('     + ' + a.strip())
    print('   E1: updateOffensivesP 位于 updatePatrols 之后、strikeTick_A1 之前')
    print('   E2: 玩家文明战时轰炸短路到 :cond_a3')
    print('   既有 .registers 未改；零新字段')


if __name__ == '__main__':
    main()
