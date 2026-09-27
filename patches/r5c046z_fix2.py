# -*- coding: utf-8 -*-
# r5c046z_fix2.py —— 修正电脑端 Phase A（干净版）：整方法替换 + 空行容错正则锚点
import sys, re, hashlib
AFM='/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
B='Laoc/kingdoms/lukasz/map/battles/'
G='Laoc/kingdoms/lukasz/jakowski/Game;'
PL='Laoc/kingdoms/lukasz/jakowski/Player/Player;'
PR='Laoc/kingdoms/lukasz/map/province/Province;'
DP='Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;'

NEW_PICK = ('.method public pickStrikeTargetP(' + B + 'Airport;' + B + 'AirUnit$AirType;)I\n'
'    .registers 14\n'
'    .param p1, "airport"\n'
'    .param p2, "type"\n'
'    # r5c046z: int v0(bestPid) v2(ownCiv) v7(pid) v8(temp) | float v3(bestDist) v9(dist)\n'
'    #          obj v4(List/Iterator) v5(Integer) v6(Province)\n'
'    sget-object v4, ' + G + '->player:' + PL + '\n'
'    if-eqz v4, :pst_none\n'
'    iget v8, v4, ' + PL + '->iCivID:I\n'
'    iget v7, p1, ' + B + 'Airport;->civID:I\n'
'    if-ne v8, v7, :pst_none\n'
'    const/4 v0, -0x1\n'
'    iget v2, p1, ' + B + 'Airport;->civID:I\n'
'    # v3 必须由 float 渠道产生（const 的 int 常量不可当 float 用）\n'
'    sget-object v3, Ljava/lang/Float;->POSITIVE_INFINITY:Ljava/lang/Float;\n'
'    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F\n'
'    move-result v3\n'
'    invoke-direct {p0, p1, p2}, ' + B + 'AirForceManager;->getEnemyProvincesInRange(' + B + 'Airport;' + B + 'AirUnit$AirType;)Ljava/util/List;\n'
'    move-result-object v4\n'
'    if-eqz v4, :pst_none\n'
'    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;\n'
'    move-result-object v4\n'
'    :pst_loop\n'
'    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z\n'
'    move-result v8\n'
'    if-eqz v8, :pst_done\n'
'    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;\n'
'    move-result-object v5\n'
'    check-cast v5, Ljava/lang/Integer;\n'
'    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I\n'
'    move-result v7\n'
'    invoke-static {v7}, ' + G + '->getProvince(I)' + PR + '\n'
'    move-result-object v6\n'
'    if-eqz v6, :pst_loop\n'
'    invoke-virtual {v6}, ' + PR + '->getCivID()I\n'
'    move-result v8\n'
'    invoke-static {v2, v8}, ' + DP + '->isAtWar(II)Z\n'
'    move-result v8\n'
'    if-eqz v8, :pst_loop\n'
'    # 仅攻机走下列两道门（O4：轰炸机不加视野门）\n'
'    sget-object v8, ' + B + 'AirUnit$AirType;->ATTACKER:' + B + 'AirUnit$AirType;\n'
'    if-ne p2, v8, :pst_noatt\n'
'    invoke-virtual {v6}, ' + PR + '->getArmySize()I\n'
'    move-result v8\n'
'    if-lez v8, :pst_loop\n'
'    # 视野门：getFogDrawArmy()==true 即“可见”（绘制侧铁证）⇒ 仅 0(false) 跳过\n'
'    invoke-virtual {v6}, ' + PR + '->getFogDrawArmy()Z\n'
'    move-result v8\n'
'    if-eqz v8, :pst_loop\n'
'    :pst_noatt\n'
'    invoke-virtual {p0, v7, p2}, ' + B + 'AirForceManager;->hasStrikeInFlightP(I' + B + 'AirUnit$AirType;)Z\n'
'    move-result v8\n'
'    if-eqz v8, :pst_loop\n'
'    invoke-direct {p0, v2, v7}, ' + B + 'AirForceManager;->provinceDistance(II)F\n'
'    move-result v9\n'
'    cmpg-float v8, v9, v3\n'
'    if-ltz v8, :pst_loop\n'
'    move v3, v9\n'
'    move v0, v7\n'
'    goto :pst_loop\n'
'    :pst_done\n'
'    if-ltz v0, :pst_none\n'
'    return v0\n'
'    :pst_none\n'
'    const/4 v0, -0x1\n'
'    return v0\n'
'.end method')

NEW_UPDATE = ('.method public updateOffensivesP(I)V\n'
'    .registers 10\n'
'    .param p1, "civID"\n'
'    # r5c046z: obj v0/v1/v2/v3/v6 | long v4v5 | int v7\n'
'    sget-object v0, ' + G + '->player:' + PL + '\n'
'    if-eqz v0, :os_ret\n'
'    iget v7, v0, ' + PL + '->iCivID:I\n'
'    if-ne v7, p1, :os_ret\n'
'    invoke-virtual {p0, p1}, ' + B + 'AirForceManager;->getAirportsForCiv(I)Ljava/util/List;\n'
'    move-result-object v0\n'
'    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;\n'
'    move-result-object v1\n'
'    new-instance v3, Ljava/util/Random;\n'
'    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n'
'    move-result-wide v4\n'
'    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V\n'
'    :os_loop\n'
'    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z\n'
'    move-result v7\n'
'    if-eqz v7, :os_end\n'
'    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;\n'
'    move-result-object v2\n'
'    check-cast v2, ' + B + 'Airport;\n'
'    # 真值表：!=0（关）-> :os_loop；==0（开）-> 落穿\n'
'    iget-boolean v7, v2, ' + B + 'Airport;->autoStrikeOff:Z\n'
'    if-nez v7, :os_loop\n'
'    sget-object v6, ' + B + 'AirUnit$AirType;->ATTACKER:' + B + 'AirUnit$AirType;\n'
'    invoke-virtual {p0, v2, v3, v6}, ' + B + 'AirForceManager;->tryStrikeForAirportP(' + B + 'Airport;Ljava/util/Random;' + B + 'AirUnit$AirType;)V\n'
'    sget-object v6, ' + B + 'AirUnit$AirType;->BOMBER:' + B + 'AirUnit$AirType;\n'
'    invoke-virtual {p0, v2, v3, v6}, ' + B + 'AirForceManager;->tryStrikeForAirportP(' + B + 'Airport;Ljava/util/Random;' + B + 'AirUnit$AirType;)V\n'
'    goto :os_loop\n'
'    :os_end\n'
'    return-void\n'
'    :os_ret\n'
'    return-void\n'
'.end method')

NEW_HSF = ('.method public hasStrikeInFlightP(I' + B + 'AirUnit$AirType;)Z\n'
'    .registers 12\n'
'    .param p1, "provinceID"\n'
'    .param p2, "type"\n'
'    # r5c046z: int v0(索引) v2(长度) v4(pid) v7(返回) | obj v1(List) v3(Mission) v5/v6(MissionType)\n'
'    const/4 v0, 0x0\n'
'    iget-object v1, p0, ' + B + 'AirForceManager;->activeMissions:Ljava/util/List;\n'
'    invoke-interface {v1}, Ljava/util/List;->size()I\n'
'    move-result v2\n'
'    :hsf_loop\n'
'    if-ge v0, v2, :hsf_none\n'
'    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
'    move-result-object v3\n'
'    check-cast v3, ' + B + 'AirMission;\n'
'    iget v4, v3, ' + B + 'AirMission;->targetProvinceID:I\n'
'    if-ne v4, p1, :hsf_next\n'
'    sget-object v5, ' + B + 'AirUnit$AirType;->ATTACKER:' + B + 'AirUnit$AirType;\n'
'    if-ne p2, v5, :hsf_bomb\n'
'    sget-object v5, ' + B + 'AirMission$MissionType;->ATTACK_ARMY:' + B + 'AirMission$MissionType;\n'
'    goto :hsf_cmp\n'
'    :hsf_bomb\n'
'    sget-object v5, ' + B + 'AirMission$MissionType;->STRATEGIC_BOMBING:' + B + 'AirMission$MissionType;\n'
'    :hsf_cmp\n'
'    iget-object v6, v3, ' + B + 'AirMission;->type:' + B + 'AirMission$MissionType;\n'
'    if-eq v6, v5, :hsf_next\n'
'    const/4 v7, 0x1\n'
'    return v7\n'
'    :hsf_next\n'
'    add-int/lit8 v0, v0, 0x1\n'
'    goto :hsf_loop\n'
'    :hsf_none\n'
'    const/4 v7, 0x0\n'
'    return v7\n'
'.end method')

def rep_method(src, header, body):
    i = src.find(header)
    if i < 0: return None, 'header missing'
    j = src.find('.end method', i)
    if j < 0: return None, 'end missing'
    return src[:i] + body + src[j+len('.end method'):], None

def main():
    src = open(AFM, encoding='utf-8').read()
    before = hashlib.md5(src.encode()).hexdigest()[:12]
    ops = []
    for header, body, tag in (( '.method public pickStrikeTargetP(', NEW_PICK, 'rewrite pickStrikeTargetP'),
                               ('.method public updateOffensivesP(', NEW_UPDATE, 'rewrite updateOffensivesP'),
                               ('.method public hasStrikeInFlightP(', NEW_HSF, 'rewrite hasStrikeInFlightP')):
        src, err = rep_method(src, header, body)
        if err: print('[FAIL] %s: %s' % (tag, err)); return 1
        ops.append(tag)
    # 关2：autoStrikeOff 门反向修正
    r2 = re.compile('(iget-boolean v3, p1, ' + re.escape(B + 'Airport;->autoStrikeOff:Z') + r')\s*\n\s*(if-eqz v3, :cond_51)')
    if len(r2.findall(src)) != 1: print('[FAIL] 关2 命中 %d' % len(r2.findall(src))); return 1
    src = r2.sub(lambda m: m.group(1) + '\n    if-nez v3, :cond_51', src, 1); ops.append('gate2 if-eqz->if-nez')
    # 关3：概率门改为 20%（>=0.2 跳过）
    r3 = re.compile(r'(cmpg-float v4, v4, v5)\s*\n\s*(if-ltz v4, :cond_51)')
    if len(r3.findall(src)) != 1: print('[FAIL] 关3 命中 %d' % len(r3.findall(src))); return 1
    src = r3.sub(lambda m: m.group(1) + '\n    if-gez v4, :cond_51', src, 1); ops.append('gate3 if-ltz->if-gez (20%)')
    # E2：安全短路（自定义标签，避免类型汇合与猜标签）
    rE = re.compile('sget-object v5, ' + re.escape(G + '->player:' + PL) + r'\s*\n\s*if-eqz v5, :cond_40'
                    r'\s*\n\s*iget v6, p1, ' + re.escape(B + 'Airport;->civID:I') +
                    r'\s*\n\s*iget v5, v5, ' + re.escape(PL + '->iCivID:I') + r'\s*\n\s*if-eq v6, v5, :cond_ad\s*\n\s*:cond_40')
    if len(rE.findall(src)) != 1: print('[FAIL] E2 命中 %d' % len(rE.findall(src))); return 1
    newE = ('# r5c046z: 玩家机场的战时轰炸交给 P 线，防双发\n'
            '    sget-object v5, ' + G + '->player:' + PL + '\n'
            '    if-eqz v5, :z_war_go\n'
            '    iget v6, v5, ' + PL + '->iCivID:I\n'
            '    iget v4, p1, ' + B + 'Airport;->civID:I\n'
            '    if-eq v6, v4, :z_war_go\n'
            '    return-void\n'
            '    :z_war_go')
    src = rE.sub(lambda m: newE, src, 1); ops.append('E2 safe short-circuit (:z_war_go)')
    open(AFM + '.pre_r5c046z', 'w', encoding='utf-8').write(open(AFM, encoding='utf-8').read())
    open(AFM, 'w', encoding='utf-8').write(src)
    print('AFM md5 %s -> %s' % (before, hashlib.md5(src.encode()).hexdigest()[:12]))
    for o in ops: print('  [OK]', o)
    return 0

if __name__ == '__main__':
    sys.exit(main())