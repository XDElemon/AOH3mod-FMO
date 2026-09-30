#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 124 · r6d086：AI 补机"和平期也补；仅跳过玩家机场"
用法: python3 check_r6d086_aibuild.py [smali树根]
"""
import io, os, sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
P = os.path.join(ROOT, 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
M = '.method private updateAIBuildUp(Laoc/kingdoms/lukasz/map/battles/Airport;)V'


def body(s):
    i = s.find(M)
    return s[i:s.find('.end method', i)] if i >= 0 else ''


def checks(s):
    ok, bad = [], []
    b = body(s)
    if b.count('if-ne v9, v8, :rb_ok') == 1 and ':rb_ok' in b:
        ok.append('A1 玩家机场守卫（if-ne v9,v8,:rb_ok）在位')
    else:
        bad.append('A1 玩家守卫缺失/极性错')
    if b.count('goto :cond_16') == 1:
        ok.append('A2 战时门用无条件 goto 关闭')
    else:
        bad.append('A2 战时门未用 goto（可能退回仅战时补机）')
    if 'dgAiWar:I' not in b:
        ok.append('A3 已不再读 ai_wartime')
    else:
        bad.append('A3 仍在读 dgAiWar')
    if 'dgAiCap:I' in b and 'if-ge v8, v9, :cond_ef' in b:
        ok.append('A4 上限判定保留')
    else:
        bad.append('A4 上限判定缺失')
    return ok, bad


def mut_in_method(s, old, new):
    i = s.find(M)
    j = s.find('.end method', i)
    return s[:i] + s[i:j].replace(old, new, 1) + s[j:]


def main():
    s = io.open(P, encoding='utf-8').read()
    ok, bad = checks(s)
    for x in ok:
        print('  PASS', x)
    for x in bad:
        print('  FAIL', x)
    negs = [
        ('N1 玩家守卫极性反转', lambda t: mut_in_method(t, 'if-ne v9, v8, :rb_ok', 'if-eq v9, v8, :rb_ok')),
        ('N2 战时门退回 if-eqz', lambda t: mut_in_method(t, 'goto :cond_16', 'if-eqz v8, :cond_16')),
        ('N3 删掉上限判定', lambda t: mut_in_method(t, 'if-ge v8, v9, :cond_ef', 'nop')),
    ]
    caught = 0
    for n, f in negs:
        _, b2 = checks(f(s))
        hit = len(b2) > 0
        caught += 1 if hit else 0
        print('  %s %s' % ('CAUGHT' if hit else 'MISSED', n))
    print('断言 %d/4 ；负样本 %d/3' % (len(ok), caught))
    rc = 0 if len(ok) == 4 and caught == 3 else 1
    print('门禁 124 %s' % ('PASS' if rc == 0 else 'FAIL'))
    return rc


sys.exit(main())