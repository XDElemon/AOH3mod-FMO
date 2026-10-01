#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d130：重写 armyCardImgFor（三级国家来源 + 探针），并新增独立探针方法 cardDbg(III)V
探针输出（免节流）: /storage/.../files/aircfg_diag.txt  —— 形如  CARDDBG hov=NN plr=NN use=NN
"""
import io, shutil, re

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = io.open(P, encoding='utf-8').read()
shutil.copyfile(P, P + '.pre_r6d130')

i = s.find('.method public static armyCardImgFor(I)I')
assert i > 0, 'method not found'
j = s.find('.end method', i) + len('.end method')
old = s[i:j]

NEW = '''.method public static armyCardImgFor(I)I
    .registers 7

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

    const/4 v1, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v0, :nohov

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

:nohov

    const/4 v2, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :noplr

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

:noplr

    move v3, v1

    const/4 v0, 0x0

    if-ge v3, v0, :gotciv

    move v3, v2

:gotciv

    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cardDbg(III)V

    if-ge v3, v0, :retorig

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

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v3

    const/4 v0, 0x0

    if-ge v3, v0, :g0

    const/4 v3, 0x0

:g0

    const/4 v0, 0x3

    if-le v3, v0, :g1

    const/4 v3, 0x3

:g1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    const/16 v0, 0x46

    add-int/2addr v3, v0

    return v3

:retorig

    return p0
.end method

.method public static cardDbg(III)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CARDDBG hov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " plr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " use="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method'''

s = s[:i] + NEW + s[j:]
io.open(P, 'w', encoding='utf-8').write(s)
print('已重写 armyCardImgFor 并追加 cardDbg；方法数=%d' % s.count('.method'))
