#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B3b（点灯版）：drawAirForce 里按机型选图的 4 处 sget，从通用图换成 Gen3_CN 新素材
目的：证明 48 张新增字段“加载得出、渲染得动”（管线点亮），不改任何寄存器/分支。
锚点：'    sget v14, .../Images;->airXXX:I'（各命中 1 次）
"""
import io, shutil, os

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
if not os.path.exists(P + '.pre_r6d091'):
    shutil.copyfile(P, P + '.pre_r6d091')
src = io.open(P, encoding='utf-8').read()

M = [
    ('airAttacker',    'airG3_CN_ATTACKER'),
    ('airInterceptor', 'airG3_CN_INTERCEPTOR'),
    ('airFighter',     'airG3_CN_FIGHTER'),
    ('airBomber',      'airG3_CN_BOMBER'),
]
for old, new in M:
    a = '    sget v14, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % old
    b = '    sget v14, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % new
    n = src.count(a)
    assert n == 1, ('anchor', old, n)
    src = src.replace(a, b, 1)

io.open(P, 'w', encoding='utf-8').write(src)
s = io.open(P, encoding='utf-8').read()
print('OK 4 处已换；旧图 v14 残留=%d，新图 v14=%d'
      % (sum(s.count('    sget v14, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % o) for o, _ in M),
         sum(s.count('    sget v14, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % n) for _, n in M)))