#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d096 修 airImgForType 的寄存器覆盖 bug：
.registers 2 + 1 个参数 ⇒ p0 == v1；而方法里 `const/4 v1, 0x3` 把机型参数覆盖成 3（BOMBER）
⇒ 结果“所有机型都显示轰炸机图”。修法：.registers 3（p0 挪到 v2），v0/v1 作暂存。
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
if not os.path.exists(AFM + '.pre_r6d096'):
    shutil.copyfile(AFM, AFM + '.pre_r6d096')

s = io.open(AFM, encoding='utf-8').read()
a = 'airImgForType(I)I\n    .registers 2'
b = 'airImgForType(I)I\n    .registers 3'
n = s.count(a)
assert n == 1, ('anchor', n)
s = s.replace(a, b, 1)
io.open(AFM, 'w', encoding='utf-8').write(s)

t = io.open(AFM, encoding='utf-8').read()
i = t.find('.method public static airImgForType(I)I')
print(t[i:i + 210])