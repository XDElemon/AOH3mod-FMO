# -*- coding: utf-8 -*-
# R5c020e：修正 r5c020c 夹取块的三处方向（对齐引擎 actionElement 的写法）
#   size<=0 ⇒ super          : if-gtz  -> if-lez
#   iActiveID>=0 ⇒ 跳过清零   : if-ltz  -> if-gez
#   idx<size    ⇒ 跳过清零    : if-ge   -> if-lt
import io, os, shutil
P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
B = P + '.pre_r5c020e'
if not os.path.exists(B):
    shutil.copy2(P, B)
t = io.open(P, encoding='utf-8').read()

def rep1(old, new, tag):
    global t
    c = t.count(old)
    assert c == 1, '%s 锚点不唯一 (%d)' % (tag, c)
    t = t.replace(old, new)
    print('  OK', tag)

rep1(u'    if-gtz v4, :gt1_super\n',
     u'    if-lez v4, :gt1_super    # R5c020e: size<=0 ⇒ 静态标签（原写反为 if-gtz）\n',
     '① 无机场回落')
rep1(u'    if-ltz v3, :gt1_c2\n',
     u'    if-gez v3, :gt1_c2    # R5c020e: iActiveID>=0 ⇒ 跳过清零（原写反为 if-ltz）\n',
     '② iActiveID 夹取')
rep1(u'    if-ge v3, v4, :gt1_ok\n',
     u'    if-lt v3, v4, :gt1_ok    # R5c020e: idx<size ⇒ 跳过清零（原写反为 if-ge）\n',
     '③ 越界夹取')
io.open(P, 'w', encoding='utf-8').write(t)
print('OK: r5c020e 完成')