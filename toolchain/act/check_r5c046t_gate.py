#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r5c046t_gate.py <AirForceManager.smali>
#   ㊷ 巡逻门：老线 executeAIAssignmentForAirport 必须有 mode 门
#        （iget-object v*(mode) + sget-object v*(Airport$Mode;->PATROL) + if-ne ⇒ 非PATROL分支 + if-eqz/if-nez 与 return-void）
#   ㊸ 视野门：①新 helper a1VisOk 存在且同时含 aiVisRadarPass 与 aiVisAirportPass
#              ②a1Scan 内 a1VisOk 调用存在且原 `and-int/lit8 v13, v13, 0x4` 门已消失
#              ③a1bPick 内 a1VisOk 调用存在
import sys, re

def main():
    if len(sys.argv) < 2:
        print('usage: check_r5c046t_gate.py <AirForceManager.smali>'); return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    bad = []
    def need(c, tag, why):
        if not c: bad.append((tag, why))

    # ㊷ 巡逻门
    m = re.search(r'executeAIAssignmentForAirport.*?\.end method', src, re.S)
    body = m.group(0) if m else ''
    need(re.search(r'iget-object v\d+, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:', body) is not None,
         '㊷巡逻门', 'executeAIAssignmentForAirport 内没有读 airport.mode')
    need(re.search(r'sget-object v\d+, Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;->PATROL:', body) is not None,
         '㊷巡逻门', '没有 Airport$Mode;->PATROL 比较')
    need(body.count('return-void') >= 2, '㊷巡逻门', '缺少 mode 门的两条 return-void')

    # ㊸ 视野门
    m = re.search(r'\.method private static a1VisOk\(.*?\.end method', src, re.S)
    need(m is not None, '㊸helper', '缺 a1VisOk')
    if m:
        hb = m.group(0)
        need('aiVisRadarPass' in hb, '㊸helper', 'a1VisOk 未用 aiVisRadarPass')
        need('aiVisAirportPass' in hb, '㊸helper', 'a1VisOk 未用 aiVisAirportPass')
    m = re.search(r'\.method private static a1Scan\(I\)V.*?\.end method', src, re.S)
    sc = m.group(0) if m else ''
    need('a1VisOk(' in sc, '㊸a1Scan', 'a1Scan 内没有 a1VisOk 调用')
    need('and-int/lit8 v13, v13, 0x4' not in sc, '㊸a1Scan', 'a1Scan 仍保留恒真的 0x4 门')
    m = re.search(r'\.method private static a1bPick\(.*?\.end method', src, re.S)
    pk = m.group(0) if m else ''
    need('a1VisOk(' in pk, '㊸a1bPick', 'a1bPick 内没有 a1VisOk 调用')

    for t, w in bad: print('FAIL %-12s %s' % (t, w))
    print('㊷㊸ r5c046t: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())