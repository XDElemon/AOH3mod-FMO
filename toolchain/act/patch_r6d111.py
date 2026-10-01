#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d111：左侧机型字段左移 75px —— 改“传参”而不是碰字段
依据（调研）：
  Button.<init>(Ljava/lang/String;IIIIIZ)V 的参数 p1=sText, p2/x, **p3=iTextPositionX**(见 .param 注释)
  子类构造里传给超级类的序列： move p0,p3; move p1,p4; move p2,p5; move p3,p6; move p4,p7
  ⇒ 子类的 p4 就是 Button 的 p3 = iTextPositionX
做法：在 `move p1, p4` 之前把 p4 减 75（纯参数运算，无字段访问、无寄存器新增）
"""
import io, shutil, os

BTN = ['/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild.smali',
       '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect.smali']

for p in BTN:
    if not os.path.exists(p + '.pre_r6d111'):
        shutil.copyfile(p, p + '.pre_r6d111')
    s = io.open(p, encoding='utf-8').read()
    a = '    move p1, p4\n'
    assert s.count(a) == 1, (p, s.count(a))
    b = '    add-int/lit8 p4, p4, -0x4B\n    move p1, p4\n'
    s = s.replace(a, b, 1)
    io.open(p, 'w', encoding='utf-8').write(s)
    print('%s -> OK' % os.path.basename(p))