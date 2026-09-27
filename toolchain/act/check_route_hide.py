#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ㉝ check_route_hide.py —— "敌方航线不可见"门禁
# 判据：`Image.drawLinePts` 之前必须紧邻
#        isMyMission(AirMission)Z → move-result v2 → if-eqz v2, :p3_noline
#        （if-eqz＝等于0才跳 ⇒ isMyMission==0＝不是我的 ⇒ 跳过画线）
#        且 drawLinePts 之后存在标签 :p3_noline
import sys, re

def main():
    if len(sys.argv) < 2:
        print('usage: check_route_hide.py <ProvinceDrawArmy.smali>'); return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    bad = []
    idx = src.find('Image;->drawLinePts(')
    if idx < 0:
        bad.append(('①找不到 drawLinePts', '航线绘制点缺失'))
    else:
        pre = src[max(0, idx - 700):idx]
        if 'isMyMission(' not in pre:
            bad.append(('②守卫缺失', 'drawLinePts 之前没有 isMyMission 调用'))
        if not re.search(r'move-result v2\s*\n\s*(#.*\n\s*)*if-eqz v2, :p3_noline', pre):
            bad.append(('③极性/目标', '应为 move-result v2 → if-eqz v2, :p3_noline'))
        post = src[idx:idx + 600]
        if ':p3_noline' not in post:
            bad.append(('④标签缺失', 'drawLinePts 之后没有 :p3_noline 标签'))
    for tag, why in bad:
        print('FAIL %-16s %s' % (tag, why))
    print('㉝ route-hide: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())