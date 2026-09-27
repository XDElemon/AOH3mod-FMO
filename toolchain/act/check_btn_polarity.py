#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ㊶ check_btn_polarity.py —— F1 门禁：BtnMission 的"取机场结果"判断极性
# 判据（Dalvik：if-eqz=等于0才跳；if-nez=非0才跳）
#   ①`pickAirport` 结果寄存器 v0 之后必须紧跟 `if-nez v0, :<lbl>`（非空 ⇒ 跳"干活"分支）
#   ②不得出现 `if-eqz v0, :<lbl>` 的旧形态（非空反而落进"没拿到机场"+return）
import sys, re

def main():
    if len(sys.argv) < 2:
        print('usage: check_btn_polarity.py <InGame_AirForceOptions$BtnMission.smali>'); return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    bad = []
    m = re.search(r'pickAirport\(I\)Laoc/kingdoms/lukasz/map/battles/Airport;\s*\n\s*move-result-object v0\s*\n\s*(if-[a-z]+ v0, :[A-Za-z0-9_$]+)', src)
    if not m:
        bad.append(('①序列缺失', '找不到 pickAirport → move-result-object v0 → if-* v0, :lbl'))
    else:
        mn = m.group(1)
        if not mn.startswith('if-nez v0'):
            bad.append(('①极性', '应为 if-nez v0, :lbl（实为 %s）' % mn))
    if re.search(r'move-result-object v0\s*\n\s*if-eqz v0, :', src):
        bad.append(('②旧形态仍在', '仍存在 move-result-object v0 → if-eqz v0, :lbl'))
    for t, w in bad:
        print('FAIL %-14s %s' % (t, w))
    print('㊶ btn-polarity: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())