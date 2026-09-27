#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ㉞ check_airshoot.py —— F1"轰炸机不打空"门禁
# 判据：
#  ① helper `a1ShootAir(AirUnit)Z` 存在且含 `BOMBER` 比较（`if-eq`）
#  ② 我方火力循环：`a1ShootAir` 调用 + `move-result v12` + `if-eqz v12, :act_m1x`
#  ③ 敌方火力循环：同上，标签 `:act_e1x`
#  ④ G1：不得再出现 `cmpl-float v1, v11, v0`（v11 门已删）
#  ⑤ v10 门保留：`if-lez v1, :act_ret` 恰好 1 处
import sys, re

def main():
    if len(sys.argv) < 2:
        print('usage: check_airshoot.py <AirMission.smali>'); return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    bad = []
    def need(c, tag, why):
        if not c: bad.append((tag, why))

    m = re.search(r'\.method private static a1ShootAir\(.*?AirUnit;\)Z(.*?)\.end method', src, re.S)
    need(m is not None, '①helper', '缺 a1ShootAir')
    if m:
        body = m.group(1)
        need('BOMBER' in body, '①helper判据', 'helper 未判 BOMBER')
        need('if-eq ' in body, '①helper极性', 'helper 应为 if-eq 判 BOMBER')

    for tag, lbl in (('②我方循环', ':act_m1x'), ('③敌方循环', ':act_e1x')):
        pat = r'a1ShootAir\([^)]*\)Z\s*\n\s*move-result v12\s*\n\s*if-eqz v12, ' + lbl
        need(re.search(pat, src) is not None, tag,
             '缺 a1ShootAir → move-result v12 → if-eqz v12, %s 序列' % lbl)

    need(src.count('cmpl-float v1, v11, v0') == 0, '④v11门', 'v11 门未删除（纯轰炸任务会免疫攻击）')
    need(src.count('if-lez v1, :act_ret') == 1, '⑤v10门', 'v10 门应保留且唯一')

    for t, w in bad: print('FAIL %-12s %s' % (t, w))
    print('㉞ airshoot: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())