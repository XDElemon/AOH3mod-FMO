#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d142 补丁：给 AirDefense 加"汇总诊断探针"（只加诊断，不改判定逻辑）
1) fireProvince(II)V  ->  fireProvince(III)I   （nad 由 tick 传入；返回"射程内合格目标数"）
2) tick(I)V           ->  加 pa/ad/tg 累计 + 末尾写 nADA 汇总行
3) 新增 missionCount()I 与 logADA(IIIII)V
"""
import re, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
src = open(P, encoding='utf-8').read()
orig = src

NEW_FIRE = '''.method public static fireProvince(III)I
    .registers 15

    if-lez p2, :zero

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :zero

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->countTargets(ILaoc/kingdoms/lukasz/map/province/Province;)I

    move-result v1

    if-lez v1, :zero

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :sloop

    if-ge v2, p2, :done

    rem-int v6, v2, v1

    invoke-static {p0, v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->pickTarget(ILaoc/kingdoms/lukasz/map/province/Province;I)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    if-eqz v5, :snext

    const/4 v9, 0x0

    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adHitChance(II)F

    move-result v8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rng()Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v7

    cmpl-float v9, v7, v8

    if-gez v9, :snext

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDamagePerHit(II)F

    move-result v10

    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I

    move-result v9

    add-int/2addr v4, v9

    :snext

    add-int/lit8 v2, v2, 0x1

    goto :sloop

    :done

    invoke-static {p1, p2, v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logAD(IIIII)V

    return v1

    :zero

    const/4 v9, 0x0

    return v9
.end method'''

NEW_TICK = '''.method public static tick(I)V
    .registers 12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :ret

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v4, :ret

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :loop

    if-ge v3, v1, :done

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    if-ltz v5, :next

    if-ge v5, v2, :next

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I

    move-result v6

    if-lez v6, :next

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v6

    invoke-static {p0, v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(III)I

    move-result v7

    if-lez v7, :next

    add-int/2addr v10, v7

    :next

    add-int/lit8 v3, v3, 0x1

    goto :loop

    :done

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->missionCount()I

    move-result v6

    invoke-static {p0, v8, v9, v10, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logADA(IIIII)V

    :ret

    return-void
.end method'''

NEW_HELPERS = '''.method public static missionCount()I
    .registers 8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :ret

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :ret

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :loop

    if-ge v4, v3, :ret

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v5, :next

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v6, :next

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :next

    add-int/lit8 v1, v1, 0x1

    :next

    add-int/lit8 v4, v4, 0x1

    goto :loop

    :ret

    return v1
.end method


# 探针：nADA c=<civ> pa=<有阵地的省数> ad=<阵地总数> tg=<射程内目标数合计> ms=<有活飞机的任务数> aid=<AAA 建筑 id>
.method private static logADA(IIIII)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nADA c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


'''


def replace_method(text, header, new):
    pat = re.compile(re.escape(header) + r'.*?\.end method', re.S)
    n = len(pat.findall(text))
    assert n == 1, '期望命中 1 次，实际 %d 次: %s' % (n, header)
    return pat.sub(lambda m: new, text, count=1)


src = replace_method(src, '.method public static fireProvince(II)V', NEW_FIRE)
src = replace_method(src, '.method public static tick(I)V', NEW_TICK)
assert '\n.method public static tickSafe(I)V' in src
src = src.replace('\n.method public static tickSafe(I)V', '\n' + NEW_HELPERS + '.method public static tickSafe(I)V', 1)

open(P, 'w', encoding='utf-8').write(src)
print('✅ 补丁完成：%d -> %d 字节' % (len(orig), len(src)))
print('   fireProvince(III)I =', src.count('fireProvince(III)I'))
print('   logADA 定义 =', src.count('.method private static logADA('))
print('   missionCount 定义 =', src.count('.method public static missionCount()I'))
print('   nADA 字样 =', src.count('nADA'))
