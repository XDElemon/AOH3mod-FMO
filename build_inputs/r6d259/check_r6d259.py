#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d259.py — gate: army card image revert (country-based disabled via early return)
# Assertions S1-S5 + negative samples N1-N3 (reversal sensitivity).
from pathlib import Path
import re, sys, hashlib

W3 = Path('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
RP = Path('/root/history23_repo/src/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
SML = Path('/root/history23_repo/src/smali')

fails = []
def need(c, m):
    if not c:
        fails.append(m)

def first_instr(t):
    i = t.find('.method public static armyCardImgFor(I)I')
    if i < 0:
        return None
    lines = t[i:].split('\n')
    seen = False
    for ln in lines[1:60]:
        s = ln.strip()
        if not seen:
            if s.startswith('.registers'):
                seen = True
            continue
        if s == '' or s.startswith('#'):
            continue
        return s
    return 'NONE'

# S1-S3: both trees carry the early return
for p in (W3, RP):
    t = p.read_text(encoding='utf-8')
    need(t.count('.method public static armyCardImgFor(I)I') == 1, f'{p.name}: method def count != 1')
    fi = first_instr(t)
    need(fi == 'return p0', f'{p.name}: first instr after regs = {fi!r} (expect return p0)')
    need('const/16 v0, 0x42' in t, f'{p.name}: old body marker lost')

# S4: trees identical
need(hashlib.md5(W3.read_bytes()).hexdigest() == hashlib.md5(RP.read_bytes()).hexdigest(),
     'two smali trees differ')

# S5: call sites intact (9 invokes, excluding backups)
cnt = 0
for f in SML.rglob('*.smali'):
    if '.pre_' in f.name or '.before_' in f.name:
        continue
    t = f.read_text(encoding='utf-8', errors='ignore')
    cnt += len(re.findall(r'AirForceManager;->armyCardImgFor\(I\)I', t))
need(cnt == 9, f'call refs expect 9, got {cnt}')

# N1-N3 negative samples (on synthetic copies)
def neg_run(transform, expect_caught):
    t = RP.read_text(encoding='utf-8')
    t2 = transform(t)
    fi = first_instr(t2)
    caught = (fi != 'return p0')
    tag = 'OK' if caught == expect_caught else 'FAIL'
    print(f'   N: caught={caught} expect={expect_caught} -> {tag}')
    return caught == expect_caught

print('== negative samples ==')
n1 = RP.read_text(encoding='utf-8')
n1 = n1.replace('    # r6d259: country-based card image disabled -> return original\n    return p0\n', '')
ok1 = neg_run(lambda t: t.replace('    # r6d259: country-based card image disabled -> return original\n    return p0\n', ''), True)
ok2 = neg_run(lambda t: t.replace('disabled -> return original\n    return p0', 'disabled -> return original\n    return p1', 1), True)
ok3 = True
# N3: call-count logic sanity (string with no invokes -> 0 != 9)
c = len(re.findall(r'AirForceManager;->armyCardImgFor\(I\)I', 'no refs here'))
print(f'   N: call-count sample=0 expect!=9 -> {"OK" if c != 9 else "FAIL"}')
ok3 = (c != 9)
need(ok1 and ok2 and ok3, 'negative samples not all caught')

print()
if fails:
    print('❌ check_r6d259 FAIL:')
    for x in fails:
        print('  -', x)
    sys.exit(2)
print('✅ check_r6d259 PASS（早期返回已生效；旧体保留；9调用点惰性保留）')
sys.exit(0)