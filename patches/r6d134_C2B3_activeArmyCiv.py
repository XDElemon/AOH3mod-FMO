#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d134：把国家读取抽成独立方法 activeArmyCiv()I（照抄探针里"已被证明能读到"的读法），
armyCardImgFor 只留一行调用，彻底避免大方法里的分支语义问题。"""
import io, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = io.open(P, encoding='utf-8').read()
shutil.copyfile(P, P + '.pre_r6d134')

OLD = '''    const/4 v5, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v0, :noact

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :noact

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :noact

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

'''
NEW = '''    const/4 v5, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeArmyCiv()I

    move-result v5

'''
assert s.count(OLD) == 1, ('anchor miss', s.count(OLD))
s = s.replace(OLD, NEW, 1)

AUX = '''

.method public static activeArmyCiv()I
    .registers 4

    const/4 v0, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v1, :done

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :done

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :done

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

:done

    return v0
.end method
'''
s = s + AUX
io.open(P, 'w', encoding='utf-8').write(s)
print('r6d134: activeArmyCiv() 已加入，armyCardImgFor 改为调用它')