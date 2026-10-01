#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d131：armyCardImgFor 的国家来源改为
   ① Game.activeArmy.get(InGame_ProvinceArmyUnits.iActiveID).iCivID   ← 面板真正用的
   ② Game.hoveredArmy.iCivID（兜底）
   ③ Game.player.iCivID（兜底）
   ④ 都拿不到 → 原样返回
探针保留（cardDbg 写 aircfg_diag.txt）：CARDDBG act=<activeArmy国家> plr=<玩家> use=<采用>
"""
import io, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = io.open(P, encoding='utf-8').read()
shutil.copyfile(P, P + '.pre_r6d131')

i = s.find('.method public static armyCardImgFor(I)I')
j = s.find('.end method', i) + len('.end method')

NEW = '''.method public static armyCardImgFor(I)I
    .registers 8

    const/16 v0, 0x42

    if-eq p0, v0, :isair

    const/16 v0, 0x43

    if-eq p0, v0, :isair

    const/16 v0, 0x44

    if-eq p0, v0, :isair

    const/16 v0, 0x45

    if-eq p0, v0, :isair

    return p0

:isair

    const/4 v5, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v0, :noact

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    const/4 v4, 0x0

    if-ge v3, v4, :noact

    if-ge v3, v2, :cont1

    goto :noact

:cont1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

:noact

    const/4 v1, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :noplr

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

:noplr

    move v6, v5

    const/4 v0, 0x0

    if-ge v6, v0, :gotciv

    move v6, v1

:gotciv

    invoke-static {v5, v1, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cardDbg(III)V

    if-ge v6, v0, :retorig

    const/16 v0, 0x42

    if-eq p0, v0, :t_inter

    const/16 v0, 0x43

    if-eq p0, v0, :t_fighter

    const/16 v0, 0x44

    if-eq p0, v0, :t_bomber

    const/4 v4, 0x2

    goto :mk

:t_inter

    const/4 v4, 0x1

    goto :mk

:t_fighter

    const/4 v4, 0x0

    goto :mk

:t_bomber

    const/4 v4, 0x3

    goto :mk

:mk

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v6

    const/4 v0, 0x0

    if-ge v6, v0, :g0

    const/4 v6, 0x0

:g0

    const/4 v0, 0x3

    if-le v6, v0, :g1

    const/4 v6, 0x3

:g1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    const/16 v0, 0x46

    add-int/2addr v6, v0

    return v6

:retorig

    return p0
.end method'''

s = s[:i] + NEW + s[j:]
io.open(P, 'w', encoding='utf-8').write(s)
print('r6d131 方法已替换；act/plr/use 探针保留')