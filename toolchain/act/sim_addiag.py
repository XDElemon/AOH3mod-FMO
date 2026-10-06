#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
AD-R0 行为级模拟器（针对 aline 的"上限/截断"判定）
==================================================
血案背景：r6d169 的 aline 把"上限判据"写反（`if-ge` 跳到了写分支），
          结果 93/93 回合全部走截断、nADA 零行。**纯文本断言没拦住**。
本脚本改为：**解释执行 AirDefDiag.smali 里 `aline` 的真实指令序列**（控制流层面），
          判定"在给定 cap 下它到底走 写分支 还是 截断分支"。
断言：
  A1 cap=0  ⇒ WRITE
  A2 cap=39 ⇒ WRITE
  A3 cap=40 ⇒ TRUNC
  A4 cap=41 ⇒ TRUNC
自检（反转敏感性）：把 `if-lt` 改成 `if-ge` 后，A1/A2/A3/A4 必须至少有一个失败。
"""
import re
import sys

DIAG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
SIG = '.method private static aline('

# 需要"解释执行"的指令；其余一律视为不影响控制流的空操作
RE_SGET = re.compile(r'^\s*sget\s+(v\d+),\s*L[^;]+;->(\w+):I\s*$')
RE_CONST16 = re.compile(r'^\s*const/16\s+(v\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$')
RE_CONST4 = re.compile(r'^\s*const/4\s+(v\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$')
RE_ADD = re.compile(r'^\s*add-int/lit8\s+(v\d+),\s*(v\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$')
RE_SPUT = re.compile(r'^\s*sput\s+(v\d+),\s*L[^;]+;->(\w+):I\s*$')
RE_IFLT = re.compile(r'^\s*if-lt\s+(v\d+),\s*(v\d+),\s*(:\w+)\s*$')
RE_IFGE = re.compile(r'^\s*if-ge\s+(v\d+),\s*(v\d+),\s*(:\w+)\s*$')
RE_LABEL = re.compile(r'^\s*(:\w+)\s*$')


def parse(sig=SIG, text=None):
    s = text if text is not None else open(DIAG, encoding='utf-8').read()
    i = s.index(sig)
    j = s.index('.end method', i)
    body = s[i:j].splitlines()
    ins = []
    for ln in body:
        if ln.strip().startswith('.method') or ln.strip().startswith('.registers'):
            continue
        m = RE_LABEL.match(ln)
        if m:
            ins.append(('label', m.group(1)))
            continue
        for rx, op in ((RE_IFLT, 'if-lt'), (RE_IFGE, 'if-ge')):
            m = rx.match(ln)
            if m:
                ins.append((op, m.group(1), m.group(2), m.group(3)))
                break
        else:
            if RE_SGET.match(ln):
                m = RE_SGET.match(ln)
                ins.append(('sget', m.group(1), m.group(2)))
            elif RE_CONST16.match(ln):
                m = RE_CONST16.match(ln)
                ins.append(('const', m.group(1), int(m.group(2), 0)))
            elif RE_CONST4.match(ln):
                m = RE_CONST4.match(ln)
                ins.append(('const', m.group(1), int(m.group(2), 0)))
            elif RE_ADD.match(ln):
                m = RE_ADD.match(ln)
                ins.append(('add', m.group(1), m.group(2), int(m.group(3), 0)))
            elif RE_SPUT.match(ln):
                m = RE_SPUT.match(ln)
                ins.append(('sput', m.group(1), m.group(2)))
            elif ln.strip().startswith('return-void'):
                ins.append(('return',))
            else:
                ins.append(('nop',))
    labels = {op[1]: k for k, op in enumerate(ins) if op[0] == 'label'}
    return ins, labels


def run(ins, labels, cap, skip=0, max_step=4000):
    """控制流解释执行；返回 'WRITE' / 'TRUNC' / 'RETURN'。"""
    reg = {}
    mem = {'cap': cap, 'skip': skip}
    pc = 0
    steps = 0
    while 0 <= pc < len(ins):
        steps += 1
        if steps > max_step:
            return 'LOOP'
        op = ins[pc]
        k = op[0]
        if k == 'nop' or k == 'label':
            pc += 1
        elif k == 'sget':
            reg[op[1]] = mem.get(op[2], 0)
            pc += 1
        elif k == 'const':
            reg[op[1]] = op[2]
            pc += 1
        elif k == 'add':
            reg[op[1]] = reg.get(op[2], 0) + op[3]
            pc += 1
        elif k == 'if-lt':
            a, b = reg.get(op[1], 0), reg.get(op[2], 0)
            pc = labels[op[3]] if a < b else pc + 1
        elif k == 'if-ge':
            a, b = reg.get(op[1], 0), reg.get(op[2], 0)
            pc = labels[op[3]] if a >= b else pc + 1
        elif k == 'sput':
            mem[op[2]] = reg.get(op[1], 0)
            if op[2] == 'skip':
                return 'TRUNC'
            if op[2] == 'cap':
                return 'WRITE'
            pc += 1
        elif k == 'return':
            return 'RETURN'
        else:
            pc += 1
    return 'FALL'


def main():
    text = open(DIAG, encoding='utf-8').read()
    ins, labels = parse(text=text)
    print('=== 解释执行 aline（指令数 = %d，标签数 = %d）===' % (len(ins), len(labels)))
    cases = [(0, 'WRITE'), (1, 'WRITE'), (39, 'WRITE'), (40, 'TRUNC'), (41, 'TRUNC'), (100, 'TRUNC')]
    ok = True
    for cap, exp in cases:
        got = run(ins, labels, cap)
        good = (got == exp)
        ok &= good
        print('  %s cap=%-4d ⇒ %-6s（期望 %s）' % ('✅' if good else '❌', cap, got, exp))

    print()
    print('=== 反转敏感性自检（把 if-lt 改成 if-ge，必须失败）===')
    bad = text.replace(SIG, SIG, 1)
    # 只改 aline 方法域内的那一处
    i = bad.index(SIG)
    j = bad.index('.end method', i)
    blk = bad[i:j]
    if 'if-lt v0, v1, :cond_write' not in blk:
        print('  ⚠️ 找不到目标分支，跳过（需人工核对）')
        ok = False
    else:
        mut = blk.replace('if-lt v0, v1, :cond_write', 'if-ge v0, v1, :cond_write', 1)
        ins2, labels2 = parse(text=bad[:i] + mut + bad[j:])
        detected = False
        for cap, exp in cases:
            got = run(ins2, labels2, cap)
            if got != exp:
                detected = True
                print('  ✅ 突变后 cap=%-4d ⇒ %s（≠ %s）⇒ 被抓' % (cap, got, exp))
                break
        if not detected:
            print('  ❌ 突变后所有用例仍然通过 ⇒ 漏抓')
            ok = False

    print()
    print('=== 模拟器结果：%s ===' % ('全过 ✅' if ok else '不通过 ❌'))
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())