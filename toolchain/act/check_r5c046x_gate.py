#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r5c046x_gate.py <AirForceManager.smali>
#   ㊽ Phase A 门禁（r5c046x：玩家侧攻机/轰机自动打击）
#
#   ① updateOffensivesP 存在，且被 update(I)V 调用，且插在 updatePatrols 之后 / strikeTick_A1 之前
#   ② pickStrikeTargetP 含 DiplomacyManager.isAtWar(II)，且不含坏方法 AirForceManager.isAtWar(I)
#   ③ 视野门 getFogDrawArmy 存在且极性为 if-eqz…:goto_pst_loop（false=不可见 ⇒ 跳过）
#   ④ tryStrikeForAirportP 含 autoStrikeOff:Z 读取（iget-boolean）+ 总闸极性
#   ⑤ 新方法不改任何既有 .registers（需配合 pre_ 备份比对；本脚本查"5 个新方法齐备且各自有 .registers"）
#   ⑥ 【本轮新增】文明隔离：tryStrikeForAirportP 含 Game.player 文明门（防 AI 被波及）
#   ⑦ 【本轮新增】防双发：executeAIAssignmentForAirport 战时分支含玩家短路
#   ⑧ 【本轮新增】createAttackArmy 第 2 参为 -1（整省打击语义）
#   ⑨ 【本轮新增】寄存器类型纪律：pickStrikeTargetP 内 v3 只作 Iterator（对象），不得被数值写
#   ⑩ 【本轮新增】概率门极性：cmpg-float + if-ltz（rnd >= 0.2 ⇒ 跳过）
#
# 用法: python3 check_r5c046x_gate.py <AirForceManager.smali> [pre_backup.smali]
# 退出码: 0 = 全通过；1 = 有可疑
import sys, re

AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'


def body_of(src, sig_re):
    """按 .method 头到 .end method 切出方法体（非贪婪）"""
    m = re.search(r'(\.method[^\n]*' + sig_re + r'[^\n]*\n.*?\.end method)', src, re.S)
    return m.group(1) if m else ''


def main():
    if len(sys.argv) < 2:
        print('usage: check_r5c046x_gate.py <AirForceManager.smali> [pre_backup.smali]')
        return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    bad = []

    def need(c, tag, why):
        if not c:
            bad.append((tag, why))

    upd = body_of(src, r'updateOffensivesP\(I\)V')
    tst = body_of(src, r'tryStrikeForAirportP\(')
    pst = body_of(src, r'pickStrikeTargetP\(')
    hsi = body_of(src, r'hasStrikeInFlightP\(')
    dbg = body_of(src, r'dbgStrikeP\(')
    exa = body_of(src, r'executeAIAssignmentForAirport\(')
    upd_i = body_of(src, r'update\(I\)V')

    # ① 存在性 + 插入位置
    for nm, bd in (('updateOffensivesP', upd), ('tryStrikeForAirportP', tst),
                   ('pickStrikeTargetP', pst), ('hasStrikeInFlightP', hsi), ('dbgStrikeP', dbg)):
        need(bd != '', '①存在', '缺方法 %s' % nm)
    if upd_i:
        i_pat = upd_i.find('->updatePatrols(I)V')
        i_off = upd_i.find('->updateOffensivesP(I)V')
        i_stk = upd_i.find('->strikeTick_A1(I)V')
        need(i_off >= 0, '①调用', 'update(I)V 内没有调用 updateOffensivesP')
        need(i_pat >= 0 and i_off > i_pat, '①顺序', 'updateOffensivesP 必须在 updatePatrols 之后')
        if i_stk >= 0:
            need(i_off < i_stk, '①顺序', 'updateOffensivesP 必须在 strikeTick_A1 之前')
    else:
        need(False, '①存在', '缺 update(I)V')

    # ② 战争门用精确二元版；禁用坏方法
    need('DiplomacyManager;->isAtWar(II)Z' in pst, '②战争门', 'pickStrikeTargetP 未用 DiplomacyManager.isAtWar(II)')
    need('AirForceManager;->isAtWar(I)Z' not in pst, '②坏方法', 'pickStrikeTargetP 误用了坏方法 isAtWar(I)（存在量化）')

    # ③ 视野门极性：false ⇒ 跳过
    need('Province;->getFogDrawArmy()Z' in pst, '③视野门', 'pickStrikeTargetP 无 getFogDrawArmy')
    need(re.search(r'getFogDrawArmy\(\)Z\s*\n\s*\n\s*move-result v\d+\s*\n\s*\n\s*if-eqz v\d+, :goto_pst_loop', pst) is not None,
         '③极性', '视野门应为 if-eqz vX, :goto_pst_loop（false=不可见⇒跳过）')
    need(re.search(r'getFogDrawArmy\(\)Z\s*\n\s*\n\s*move-result v\d+\s*\n\s*\n\s*if-nez', pst) is None,
         '③极性', '视野门被写成 if-nez（方向反了）')

    # ④ 总闸 autoStrikeOff（Z 类型）+ 极性
    need('Airport;->autoStrikeOff:Z' in tst, '④总闸', 'tryStrikeForAirportP 未读 autoStrikeOff')
    need('iget-boolean' in tst, '④总闸', 'autoStrikeOff 必须用 iget-boolean（字段是 Z 不是 I）')
    need(re.search(r'autoStrikeOff:Z\s*\n\s*\n\s*if-eqz', tst) is not None,
         '④极性', '总闸应为 if-eqz vX, :tst_skip（非零/开 ⇒ 跳过）')

    # ⑤ 5 个新方法各自声明 .registers 且 ≤16
    for nm, bd in (('updateOffensivesP', upd), ('tryStrikeForAirportP', tst),
                   ('pickStrikeTargetP', pst), ('hasStrikeInFlightP', hsi), ('dbgStrikeP', dbg)):
        if bd:
            mm = re.search(r'\.registers\s+(\d+)', bd)
            need(mm is not None, '⑤寄存器', '%s 缺 .registers' % nm)
            if mm:
                need(int(mm.group(1)) <= 16, '⑤寄存器', '%s .registers=%s 超 16 上限' % (nm, mm.group(1)))

    # ⑥ 文明隔离（防 AI 被波及）
    need('Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;' in tst,
         '⑥文明门', 'tryStrikeForAirportP 缺 Game.player 文明门 ⇒ AI 会被波及')
    need('Player;->iCivID:I' in tst, '⑥文明门', 'tryStrikeForAirportP 未取 player.iCivID')
    need('Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;' in upd,
         '⑥早退', 'updateOffensivesP 缺玩家文明早退')

    # ⑦ 防双发：老线战时分支对玩家短路
    need(':phaseA_notplayer' in exa, '⑦防双发', 'executeAIAssignmentForAirport 缺玩家短路标签')
    need(re.search(r'Player;->iCivID:I\s*\n\s*\n\s*iget v\d+, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I', exa) is not None,
         '⑦防双发', '玩家短路缺 civID 比较')
    need('if-eq' in exa and ':cond_a3' in exa, '⑦防双发', '玩家短路未跳到 :cond_a3')

    # ⑧ createAttackArmy 第 2 参 = -1（整省）
    need(re.search(r'const/4 v\d+, -0x1\s*\n\s*\n\s*invoke-static \{[^}]*\}, ' + re.escape(AFM).replace('AirForceManager', 'AirMission') + r'->createAttackArmy', tst) is not None
         or re.search(r'const/4 v\d+, -0x1\s*\n\s*\n\s*invoke-static \{[^}]*\}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createAttackArmy', tst) is not None,
         '⑧整省', 'createAttackArmy 第2参应为 -0x1（targetArmyID=-1 表示打整省）')

    # ⑨ 寄存器类型纪律：v3 只作 Iterator
    need('move-result-object v3' in pst, '⑨regtype', 'pickStrikeTargetP 的 v3 应作 Iterator')
    need(re.search(r'move-result v3\b', pst) is None,
         '⑨regtype', 'pickStrikeTargetP 把 v3 写成数值（对象/数值混用 ⇒ ART VerifyError 高危）')

    # ⑩ 概率门极性
    need(re.search(r'cmpg-float v\d+, v\d+, v\d+\s*\n\s*\n\s*if-ltz v\d+, :tst_skip', tst) is not None,
         '⑩概率门', '概率门应为 cmpg-float + if-ltz（rnd>=0.2⇒跳过）')
    need('0x3e4ccccd' in tst, '⑩概率门', '概率门常量 0.2f(0x3e4ccccd) 缺失')

    for t, w in bad:
        print('FAIL %-12s %s' % (t, w))
    print('㊽ r5c046x: %d 处可疑' % len(bad))
    return 1 if bad else 0


if __name__ == '__main__':
    sys.exit(main())
