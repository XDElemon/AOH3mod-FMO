# -*- coding: utf-8 -*-
# r5c046z_fix.py —— 修正电脑端 Phase A 构建（消除 VerifyError + 修反向门）
# 工作树：/tmp/revx（＝设备现装版反汇编）
# 手法：整方法替换（按方法头定位到 .end method，不依赖空行/标签名）+ 两处精确锚点
import sys, re, hashlib
AFM='/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
B='Laoc/kingdoms/lukasz/map/battles/'


TOK = [('LAirForceManager;','Laoc/kingdoms/lukasz/map/battles/AirForceManager;'),
       ('LAirMission$MissionType;','Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;'),
       ('LAirMission;','Laoc/kingdoms/lukasz/map/battles/AirMission;'),
       ('LAirUnit$AirType;','Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'),
       ('LAirport;','Laoc/kingdoms/lukasz/map/battles/Airport;')]
def sub_tok(t):
    for a,b in TOK: t=t.replace(a,b)
    return t

def replace_method(src, header, new_body):
    i = src.find(header)
    if i < 0: return None, 'header not found: ' + header[:60]
    j = src.find('.end method', i)
    if j < 0: return None, 'end method not found'
    j += len('.end method')
    return src[:i] + new_body + src[j:], None

NEW_PICK = '''.method public pickStrikeTargetP(LAirport;LAirUnit$AirType;)I
    .registers 14
    .param p1, "airport"
    .param p2, "type"
    # r5c046z 修正版：寄存器严格按类型分区
    # int: v0(bestPid) v2(ownCiv) v7(pid) v8(temp) | float: v3(bestDist) v9(dist)
    # obj: v4(List/Iterator) v5(Integer) v6(Province)
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v4, :pst_none
    iget v8, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    iget v7, p1, LAirport;->civID:I
    if-ne v8, v7, :pst_none
    const/4 v0, -0x1
    iget v2, p1, LAirport;->civID:I
    # v3 必须由 float 渠道产生（const 的 int 常量不可当 float 用）
    sget-object v3, Ljava/lang/Float;->POSITIVE_INFINITY:Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    move-result v3
    invoke-direct {p0, p1, p2}, LAirForceManager;->getEnemyProvincesInRange(LAirport;LAirUnit$AirType;)Ljava/util/List;
    move-result-object v4
    if-eqz v4, :pst_none
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v4
    :pst_loop
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    move-result v8
    if-eqz v8, :pst_done
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v7
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v6
    if-eqz v6, :pst_loop
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I
    move-result v8
    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z
    move-result v8
    if-eqz v8, :pst_loop
    # 仅攻机走下列两道门（O4：轰炸机不加视野门）
    sget-object v8, LAirUnit$AirType;->ATTACKER:LAirUnit$AirType;
    if-ne p2, v8, :pst_noatt
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I
    move-result v8
    if-lez v8, :pst_loop
    # 视野门：getFogDrawArmy()==true 即“可见”（绘制侧铁证）⇒ 仅 0(false) 跳过
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v8
    if-eqz v8, :pst_loop
    :pst_noatt
    invoke-virtual {p0, v7, p2}, LAirForceManager;->hasStrikeInFlightP(ILAirUnit$AirType;)Z
    move-result v8
    if-eqz v8, :pst_loop
    invoke-direct {p0, v2, v7}, LAirForceManager;->provinceDistance(II)F
    move-result v9
    # 真值表：cmpg<0（dist<best）-> 采纳；>=0 -> 跳回（不更近）
    cmpg-float v8, v9, v3
    if-ltz v8, :pst_loop
    move v3, v9
    move v0, v7
    goto :pst_loop
    :pst_done
    # 真值表：v0<0（无目标）-> :pst_none；>=0 -> 返回 v0
    if-ltz v0, :pst_none
    return v0
    :pst_none
    const/4 v0, -0x1
    return v0
.end method'''

NEW_UPDATE = '''.method public updateOffensivesP(I)V
    .registers 10
    .param p1, "civID"
    # r5c046z：obj v0/v1/v2/v3/v6 | long v4v5 | int v7 —— 全程不跨类型
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v0, :os_ret
    iget v7, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    if-ne v7, p1, :os_ret
    invoke-virtual {p0, p1}, LAirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    new-instance v3, Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V
    :os_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :os_end
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, LAirport;
    # 总闸：autoStrikeOff==0 为“开”（与老线门同语义）
    # 真值表：!=0（关）-> :os_loop；==0（开）-> 落穿
    iget-boolean v7, v2, LAirport;->autoStrikeOff:Z
    if-nez v7, :os_loop
    sget-object v6, LAirUnit$AirType;->ATTACKER:LAirUnit$AirType;
    invoke-virtual {p0, v2, v3, v6}, LAirForceManager;->tryStrikeForAirportP(LAirport;Ljava/util/Random;LAirUnit$AirType;)V
    sget-object v6, LAirUnit$AirType;->BOMBER:LAirUnit$AirType;
    invoke-virtual {p0, v2, v3, v6}, LAirForceManager;->tryStrikeForAirportP(LAirport;Ljava/util/Random;LAirUnit$AirType;)V
    goto :os_loop
    :os_end
    return-void
    :os_ret
    return-void
.end method'''

NEW_HSF = '''.method public hasStrikeInFlightP(ILAirUnit$AirType;)Z
    .registers 12
    .param p1, "provinceID"
    .param p2, "type"
    # r5c046z：int v0(索引) v2(长度) v4(pid) v7(返回) | obj v1(List) v3(Mission) v5/v6(MissionType)
    const/4 v0, 0x0
    iget-object v1, p0, LAirForceManager;->activeMissions:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    :hsf_loop
    if-ge v0, v2, :hsf_none
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, LAirMission;
    iget v4, v3, LAirMission;->targetProvinceID:I
    if-ne v4, p1, :hsf_next
    sget-object v5, LAirUnit$AirType;->ATTACKER:LAirUnit$AirType;
    if-ne p2, v5, :hsf_bomb
    sget-object v5, LAirMission$MissionType;->ATTACK_ARMY:LAirMission$MissionType;
    goto :hsf_cmp
    :hsf_bomb
    sget-object v5, LAirMission$MissionType;->STRATEGIC_BOMBING:LAirMission$MissionType;
    :hsf_cmp
    iget-object v6, v3, LAirMission;->type:LAirMission$MissionType;
    if-eq v6, v5, :hsf_next
    const/4 v7, 0x1
    return v7
    :hsf_next
    add-int/lit8 v0, v0, 0x1
    goto :hsf_loop
    :hsf_none
    const/4 v7, 0x0
    return v7
.end method'''

def main():
    src = open(AFM, encoding='utf-8').read()
    before = hashlib.md5(src.encode()).hexdigest()[:12]
    ops = []
    for header, body, tag in (( '.method public pickStrikeTargetP(', NEW_PICK, 'pickStrikeTargetP 重写'),
                               ('.method public updateOffensivesP(', NEW_UPDATE, 'updateOffensivesP 重写'),
                               ('.method public hasStrikeInFlightP(', NEW_HSF, 'hasStrikeInFlightP 重写')):
        src, err = replace_method(src, header, sub_tok(body))
        if err: print('[FAIL] %s: %s' % (tag, err)); return 1
        ops.append(tag)
    a2 = re.compile(r'(iget-boolean v3, p1, ' + re.escape(B + 'Airport;->autoStrikeOff:Z') + r')\s*\n\s*(if-eqz v3, :cond_51)')
    if len(a2.findall(src)) != 1: print('[FAIL] 关2 锚点命中 %d' % len(a2.findall(src))); return 1
    src = a2.sub(lambda m: m.group(1) + '\n    ' + 'if-nez v3, :cond_51', src, 1); ops.append('关2 (if-eqz -> if-nez)')
    a3 = re.compile(r'(cmpg-float v4, v4, v5)\s*\n\s*(if-ltz v4, :cond_51)')
    if len(a3.findall(src)) != 1: print('[FAIL] 关3 锚点命中 %d' % len(a3.findall(src))); return 1
    src = a3.sub(lambda m: m.group(1) + '\n    ' + 'if-gez v4, :cond_51', src, 1); ops.append('关3 (if-ltz -> if-gez)')
    aE = re.compile(
        r"sget-object v5, " + re.escape('Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;') + r"\s*\n\s*"
        r"if-eqz v5, :cond_40\s*\n\s*"
        r"iget v6, p1, " + re.escape(B + 'Airport;->civID:I') + r"\s*\n\s*"
        r"iget v5, v5, " + re.escape('Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I') + r"\s*\n\s*"
        r"if-eq v6, v5, :cond_ad\s*\n\s*:cond_40")
    if len(aE.findall(src)) != 1: print('[FAIL] E2 锚点命中 %d' % len(aE.findall(src))); return 1
    src = aE.sub(lambda m: sub_tok(nE), src, 1); ops.append('E2 -> :z_war_go')
    open(AFM + '.pre_r5c046z', 'w', encoding='utf-8').write(open(AFM, encoding='utf-8').read())
    open(AFM, 'w', encoding='utf-8').write(src)
    print('AFM md5 %s -> %s' % (before, hashlib.md5(src.encode()).hexdigest()[:12]))
    for o in ops: print('  [OK]', o)
    return 0

if __name__ == '__main__':
    sys.exit(main())