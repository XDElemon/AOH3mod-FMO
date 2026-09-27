#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ㉜ check_airport_bind.py —— P2b"发射机场绑定 + 机场预筛"门禁
# 判据（Dalvik：if-eqz=等于0才跳；if-ne=不等才跳）：
#  ①两个绑定字段已声明
#  ②a1Scan 机场头：写 a1PkApPid + 调 a1AirOk + `if-eqz v8, :sc_ap_next`（无闲置师⇒跳过）
#  ③a1Dispatch 循环头：`sget …a1PkApPid` + `if-ne v7, v11, :a1d_next`（非指定机场⇒跳过）
#  ④a1bScan 机场头：写 a1bApPid + 调 a1AirOk + `if-eqz v8, :bs_ap_next`
#  ⑤a1bDispatch 循环头：`sget …a1bApPid` + `if-ne v7, v8, :abd_next`
#  ⑥探针 nP2ap 存在
import sys, re

def main():
    if len(sys.argv) < 2:
        print('usage: check_airport_bind.py <AirForceManager.smali>'); return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    bad = []
    def need(cond, tag, why):
        if not cond:
            bad.append((tag, why))

    need('.field public static a1PkApPid:I' in src, '①字段', '缺 a1PkApPid')
    need('.field public static a1bApPid:I' in src, '①字段', '缺 a1bApPid')

    s = src.find('if-eqz v2, :sc_ap_next')
    seg = src[s:s + 900] if s >= 0 else ''
    need('sput v8, ' in seg and 'a1PkApPid:I' in seg, '②a1Scan写字段', '未在机场头写 a1PkApPid')
    need('a1AirOk(' in seg, '②a1Scan预筛', '未调用 a1AirOk')
    need(re.search(r'move-result v8\s*\n\s*if-eqz v8, :sc_ap_next', seg) is not None,
         '②a1Scan预筛极性', '应为 if-eqz v8, :sc_ap_next')

    d1 = src.find('sget v11, ', src.find('.method private static a1Dispatch'))
    seg1 = src[d1:d1 + 400] if d1 >= 0 else ''
    need('a1PkApPid' in seg1, '③a1Dispatch绑定', '未读取 a1PkApPid')
    need(re.search(r'if-ne v7, v11, :a1d_next', seg1) is not None,
         '③a1Dispatch绑定极性', '应为 if-ne v7, v11, :a1d_next')

    s2 = src.find('if-eqz v2, :bs_ap_next')
    seg2 = src[s2:s2 + 900] if s2 >= 0 else ''
    need('a1bApPid:I' in seg2, '④a1bScan写字段', '未在机场头写 a1bApPid')
    need('a1AirOk(' in seg2, '④a1bScan预筛', '未调用 a1AirOk')
    need(re.search(r'move-result v8\s*\n\s*if-eqz v8, :bs_ap_next', seg2) is not None,
         '④a1bScan预筛极性', '应为 if-eqz v8, :bs_ap_next')

    d2 = src.find('sget v8, ', src.find('.method private static a1bDispatch'))
    seg3 = src[d2:d2 + 400] if d2 >= 0 else ''
    need('a1bApPid' in seg3, '⑤a1bDispatch绑定', '未读取 a1bApPid')
    need(re.search(r'if-ne v7, v8, :abd_next', seg3) is not None,
         '⑤a1bDispatch绑定极性', '应为 if-ne v7, v8, :abd_next')

    need('"nP2ap"' in src, '⑥探针', '缺 nP2ap 探针')

    for tag, why in bad:
        print('FAIL %-18s %s' % (tag, why))
    print('㉜ airport-bind: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())