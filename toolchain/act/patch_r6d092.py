#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B3c 点灯版：InGame_AirForceOptions:402 的战斗机图 → Gen6_US_FIGHTER
目的：验证“机场界面”的取图链是否就是 Images 字段（若界面图变美式六代风格 ⇒ 通）
锚点：'    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I'（全树仅此 1 处）
"""
import io, shutil, os

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions.smali'
if not os.path.exists(P + '.pre_r6d092'):
    shutil.copyfile(P, P + '.pre_r6d092')
src = io.open(P, encoding='utf-8').read()

a = '    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I'
b = '    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airG6_US_FIGHTER:I'
n = src.count(a)
assert n == 1, ('anchor', n)
src = src.replace(a, b, 1)
io.open(P, 'w', encoding='utf-8').write(src)
s = io.open(P, encoding='utf-8').read()
print('OK 已换；airG6_US_FIGHTER(sget v17)=%d，旧 airFighter(sget v17)=%d'
      % (s.count(b), s.count(a)))