# -*- coding: utf-8 -*-
# B3 R1 文档：CN 机型行 SU-27或J-11 -> J-11（裁定回填）
import glob, re, sys

p = glob.glob('/sdcard/GLG/历史23/r6s5/调研_B3_r1_*.md')[0]
s = open(p, encoding='utf-8').read()

old = '**SU-27或J-11（3战/4攻）**'
new = '**J-11（3战/4攻）**（贴图名“SU-27或J-11”，裁定取 J-11）'

cnt = s.count(old)
print('p =', p)
print('count(old) =', cnt)

if cnt == 1:
    s = s.replace(old, new)
    open(p, 'w', encoding='utf-8').write(s)
    print('REPLACED OK')
else:
    # 诊断：打印所有 SU-27 出现的上下文
    for m in re.finditer('SU-27', s):
        i = m.start()
        print('CTX:', repr(s[max(0, i-15):i+35]))
