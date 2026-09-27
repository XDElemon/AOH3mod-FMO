# -*- coding: utf-8 -*-
# r5c046f_fix.py —— 修 3 处"归零钳位"方向反（审核指出；同一认知错误）
#   a1FrqFor  ：difficultyID<0 才归零   ⇒ if-gez（≥0 跳过赋值）
#   a1ProbFor ：difficultyID<0 才归零   ⇒ if-gez
#   a1Scan    ：score<0 才归零          ⇒ if-gez
# 依据：if-ltz = "<0 才跳"，if-gez = ">=0 才跳"（本季已验证语义表）
import os, sys, hashlib
SM='/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
def md5(p): return hashlib.md5(open(p,'rb').read()).hexdigest()
def rep(t,old,new,tag):
    n=t.count(old)
    if n!=1:
        print('[FAIL] %s 锚点匹配=%d（期望1）'%(tag,n)); sys.exit(1)
    print('[OK]   %s'%tag); return t.replace(old,new,1)

t=open(SM,encoding='utf-8').read()
print('修前 md5:', md5(SM))

t = rep(t, '    if-ltz v0, :ff_lo', '    if-gez v0, :ff_lo    # r5c046f: difficultyID<0 才归零', 'F13 a1FrqFor 归零钳位')
t = rep(t, '    if-ltz v2, :pf_lo', '    if-gez v2, :pf_lo    # r5c046f: difficultyID<0 才归零', 'F14 a1ProbFor 归零钳位')
t = rep(t, '    if-ltz v8, :p2s_pos', '    if-gez v8, :p2s_pos    # r5c046f: score<0 才归零', 'F15 score 归零钳位')

open(SM,'w',encoding='utf-8').write(t)
print('[OK] 修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))

# 自检：这三处之后的 3 行内必须出现 const/4 vX,0x0（赋 0 侧）
import re
for tag, pat in (('ff_lo','if-gez v0, :ff_lo'), ('pf_lo','if-gez v2, :pf_lo'), ('p2s_pos','if-gez v8, :p2s_pos')):
    i = t.find(pat)
    seg = t[i:i+120]
    print('自检 %-8s 后续 120 字符内含 "const/4 v0, 0x0"=%s  %s' % (tag, 'const/4 v0, 0x0' in seg or 'const/4 v2, 0x0' in seg or 'const/4 v8, 0x0' in seg, seg.splitlines()[2:4]))