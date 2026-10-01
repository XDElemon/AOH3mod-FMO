#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d098 回退：ProvinceDrawArmy 的 airUnit(v7) 一处改回原样
（r6d097 把它换成 airImgForUnit() 后，省份上机场建筑旁多出一个飞机贴图 ⇒ 该点不是“军队栏图标”位）
其余（第二条路 4 处机型路由）保留。
"""
import io, shutil, os

PD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
if not os.path.exists(PD + '.pre_r6d098'):
    shutil.copyfile(PD, PD + '.pre_r6d098')

s = io.open(PD, encoding='utf-8').read()
a = ('    invoke-static {}, %s->airImgForUnit()I\n'
     '    move-result v7') % AFM_CLS
assert s.count(a) == 1, ('anchor', s.count(a))
b = '    sget v7, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I'
s = s.replace(a, b, 1)
io.open(PD, 'w', encoding='utf-8').write(s)

t = io.open(PD, encoding='utf-8').read()
print('OK 已回退；airUnit(v7)=%d，airImgForUnit 调用残留=%d，airImgForType 调用=%d'
      % (t.count('sget v7, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I'),
         t.count('->airImgForUnit()I'),
         t.count('->airImgForType(I)I')))