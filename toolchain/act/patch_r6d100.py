#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d100 修崩溃：Game.player 的字段类型是 Laoc/kingdoms/lukasz/jakowski/Player/Player;
（我写成了 jakowski/Player; ⇒ NoSuchFieldError: No field player ... in class Game）
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
if not os.path.exists(AFM + '.pre_r6d100'):
    shutil.copyfile(AFM, AFM + '.pre_r6d100')

s = io.open(AFM, encoding='utf-8').read()
a = ('    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player;\n'
     '    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player;->iCivID:I')
b = ('    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n'
     '    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I')
n = s.count(a)
assert n == 1, ('anchor', n)
s = s.replace(a, b, 1)
io.open(AFM, 'w', encoding='utf-8').write(s)

t = io.open(AFM, encoding='utf-8').read()
i = t.find('airImgForTypeP(I)I')
print(t[i:i + 330])