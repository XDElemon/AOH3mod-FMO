#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
AD-1′ 行为级模拟器 · tickTurn 守卫（解释执行真实 smali 控制流）
==============================================================
断言：
  A1 (TURN_ID=5, lastTurn=4) ⇒ FIRE   （新回合 ⇒ 开火）
  A2 (TURN_ID=5, lastTurn=5) ⇒ SKIP   （同回合第二次调用 ⇒ 不开火；这是本批核心）
  A3 (TURN_ID=1, lastTurn=0) ⇒ FIRE   （首帧）
  A4 (TURN_ID=7, lastTurn=9) ⇒ FIRE   （读档后 TURN_ID 回退也要开火一次）
自检：把 if-eq 改成 if-ne 后，至少一个用例必须失败。
"""
import re
import sys

AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
SIG = '.method public static tickTurn()V'

RE_SGET = re.compile(r'^\s*sget\s+(v\d+),\s*L[^;]+;->(\w+):I\s*$')
RE_SPUT = re.compile(r'^\s*sput\s+(v\d+),\s*L[^;]+;->(\w+):I\s*$')
RE_IFEQ = re.compile(r'^\s*if-eq\s+(v\d+),\s*(v\d+),\s*(:\w+)\s*$')
RE_IFNE = re.compile(r'^\s*if-ne\s+(v\d+),\s*(v\d+),\s*(:\w+)\s*$')
RE_LABEL = re.compile(r'^\s*(:\w+)\s*$')


def parse(text=None, sig=SIG):
    s = text if text is not None else open(AD, encoding='utf-8').read()
    i = s.index(sig)
    j = s.index('.end method', i)
    ins = []
    for ln in s[i:j].splitlines():
        t = ln.strip()
        if t.startswith(('.method', '.registers', '.catch', '.param', '.line')):
            continue
        m = RE_LABEL.match(ln)
        if m:
            ins.append(('label', m.group(1)))
            continue
        for rx, op in ((RE_IFEQ, 'if-eq'), (RE_IFNE, 'if-ne')):
            m = rx.match(ln)
            if m:
                ins.append((op, m.group(1), m.group(2), m.group(3)))
                break
        else:
            m = RE_SGET.match(ln)
            if m:
                ins.append(('sget', m.group(1), m.group(2)))
                continue
            m = RE_SPUT.match(ln)
            if m:
                ins.append(('sput', m.group(1), m.group(2)))
                continue
            if 'tickAll()V' in ln and 'invoke-static' in ln:
                ins.append(('call',))
            elif t.startswith('return-void'):
                ins.append(('ret',))
            else:
                ins.append(('nop',))
    labels = {op[1]: k for k, op in enumerate(ins) if op[0] == 'label'}
    return ins, labels


def run(ins, labels, turn, last, max_step=2000):
    """返回 'FIRE' / 'SKIP' / 'OTHER'"""
    reg = {}
    mem = {'TURN_ID': turn, 'lastTurn': last}
    touched_last = False
    pc, steps = 0, 0
    while 0 <= pc < len(ins):
        steps += 1
        if steps > max_step:
            return 'OTHER'
        op = ins[pc]
        k = op[0]
        if k in ('nop', 'label'):
            pc += 1
        elif k == 'sget':
            reg[op[1]] = mem.get(op[2], 0)
            pc += 1
        elif k == 'sput':
            mem[op[2]] = reg.get(op[1], 0)
            if op[2] == 'lastTurn':
                touched_last = True
            pc += 1
        elif k == 'if-eq':
            pc = labels[op[3]] if reg.get(op[1]) == reg.get(op[2]) else pc + 1
        elif k == 'if-ne':
            pc = labels[op[3]] if reg.get(op[1]) != reg.get(op[2]) else pc + 1
        elif k == 'call':
            return 'FIRE'
        elif k == 'ret':
            return 'SKIP' if not touched_last else 'SKIP'
        else:
            pc += 1
    return 'OTHER'


def main():
    text = open(AD, encoding='utf-8').read()
    ins, labels = parse(text=text)
    print('=== 解释执行 tickTurn（指令 %d，标签 %d）===' % (len(ins), len(labels)))
    cases = [(5, 4, 'FIRE'), (5, 5, 'SKIP'), (1, 0, 'FIRE'), (7, 9, 'FIRE')]
    ok = True
    for turn, last, exp in cases:
        got = run(ins, labels, turn, last)
        good = (got == exp)
        ok &= good
        print('  %s TURN_ID=%-3d lastTurn=%-3d ⇒ %-5s（期望 %s）' % ('✅' if good else '❌', turn, last, got, exp))

    print()
    print('=== 反转敏感性自检（if-eq → if-ne，必须失败）===')
    if 'if-eq v0, v1, :same' not in text:
        print('  ⚠️ 找不到守卫分支，跳过（需人工核对）')
        ok = False
    else:
        ins2, labels2 = parse(text=text.replace('if-eq v0, v1, :same', 'if-ne v0, v1, :same', 1))
        detected = False
        for turn, last, exp in cases:
            got = run(ins2, labels2, turn, last)
            if got != exp:
                detected = True
                print('  ✅ 突变后 TURN_ID=%d lastTurn=%d ⇒ %s（≠ %s）⇒ 被抓' % (turn, last, got, exp))
                break
        if not detected:
            print('  ❌ 突变后全部通过 ⇒ 漏抓')
            ok = False

    print()
    print('=== 模拟器结果：%s ===' % ('全过 ✅' if ok else '不通过 ❌'))
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())