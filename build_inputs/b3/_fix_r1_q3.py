# -*- coding: utf-8 -*-
# B3 R1 文档：Q3 行回填"小国树=乙"
import glob

p = '/sdcard/GLG/历史23/r6s5/调研_B3_r1_机型表与合并候选.md'
s = open(p, encoding='utf-8').read()

old = '研究树挂靠方式（甲/乙）待定，见 r1b。'
new = '研究树挂靠方式：**乙**（小国挂靠路由主国分支；2026-10-10 定，暂仅飞机科技）。'

print('count =', s.count(old))
if s.count(old) == 1:
    s = s.replace(old, new)
    open(p, 'w', encoding='utf-8').write(s)
    print('OK')
else:
    print('NO MATCH; 附近原文 =', repr(s[s.find('研究树挂靠')-20: s.find('研究树挂靠')+60]))