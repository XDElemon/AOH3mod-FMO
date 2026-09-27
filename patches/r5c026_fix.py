# -*- coding: utf-8 -*-
# r5c026_fix.py —— 修 incr_audit 抓到的 3 处真错（if-nez/if-eqz 方向）
# 真值表（写死后复核）：
#  F1 v2 = 候选表 size()：if-eqz v2 → :apv_none   （候选为空 ⇒ 返回 -1）   [原写 if-nez ⇒ 反了]
#  F2 v10 = aiVisRadarPass 结果：if-eqz v10 → :apv_apt（雷达没看见 ⇒ 去试机场雷达）[原写 if-nez ⇒ 反了]
#  F3 v4 = 可视表 size()：if-eqz v4 → :apv_none   （无可视目标 ⇒ 返回 -1）  [原写 if-nez ⇒ 反了]
import io, sys
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
t = io.open(AFM, encoding='utf-8').read()
FIX = [
    (u'    if-nez v2, :apv_none', u'    if-eqz v2, :apv_none', 'F1 候选为空⇒-1'),
    (u'    if-nez v10, :apv_apt', u'    if-eqz v10, :apv_apt', 'F2 雷达未看见⇒试机场雷达'),
    (u'    if-nez v4, :apv_none', u'    if-eqz v4, :apv_none', 'F3 无可视⇒-1'),
]
for old, new, tag in FIX:
    c = t.count(old)
    if c != 1:
        print('!! 锚点不唯一 [%s] count=%d' % (tag, c)); sys.exit(1)
    t = t.replace(old, new, 1)
    print('[修] %s OK' % tag)
io.open(AFM, 'w', encoding='utf-8').write(t)
print('r5c026 修正完成')