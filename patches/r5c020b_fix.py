# -*- coding: utf-8 -*-
# R5c020b：修 getTextToDraw 入口门（if-ne -> if-eq），单行
import io, os, shutil
P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
B = P + '.pre_r5c020b'
if not os.path.exists(B):
    shutil.copy2(P, B)
t = io.open(P, encoding='utf-8').read()
old = u'    if-ne v0, v5, :gt1\n'
c = t.count(old)
assert c == 1, 'to-be-fixed 行不唯一 (%d)' % c
t = t.replace(old, u'    if-eq v0, v5, :gt1    # R5c020b: 修正入口门（原先写成 if-ne ⇒ type1 拿不到动态文案、type3/4 误显）\n')
io.open(P, 'w', encoding='utf-8').write(t)
print('OK: getTextToDraw 入口门已修（if-ne -> if-eq）')