#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ㊶ check_btn_null_polarity.py —— 按钮"取机场结果"空判断极性门禁
# 判据（Dalvik：if-eqz＝等于0才跳；if-nez＝非0才跳）：
#   BtnMission.actionElement 里，pickAirport 的结果寄存器上必须是 `if-nez`（非空→去"干活"分支），
#   且不得残留 `if-eqz`（那会让"成功"被吞掉、null 反而被解引用）。
import sys, re

def main():
    if len(sys.argv) < 2:
        print('usage: check_btn_null_polarity.py <InGame_AirForceOptions$BtnMission.smali>'); return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    bad = []
    if src.count('if-eqz v0, :cond_2c') != 0:
        bad.append(('①残留错极性', '仍存在 if-eqz v0, :cond_2c（成功会被吞、null 会 NPE）'))
    if not re.search(r'move-result-object v0\s*\n\s*if-nez v0, :cond_2c', src):
        bad.append(('②缺正确极性', 'pickAirport 结果后应为 move-result-object v0 → if-nez v0, :cond_2c'))
    # 显示侧（getTextToDraw）应保持 if-eqz（null→super 文本），这里只做存在性提示
    if 'if-eqz v2, :cond_1c' not in src:
        bad.append(('③显示侧形态变化', '未找到 if-eqz v2, :cond_1c（显示侧应为 if-eqz）'))
    for t, w in bad: print('FAIL %-14s %s' % (t, w))
    print('㊶ btn-null-polarity: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())