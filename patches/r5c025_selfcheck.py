# -*- coding: utf-8 -*-
# r5c025_selfcheck.py —— 本批专用真错检测（收窄判据）
#  真错定义：非 void 的 invoke ⇒ 紧接（跳过空行）的下一行是「本批探针行」⇒ 再下一行才是 move-result
#           （即：我们的探针插进了 invoke 与它的 move-result 之间）
#  说明：引擎里大量「append(...) 后接 toString()」是正常链式写法，不在判据内。
import io
B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
FILES = [B + 'AirDbgLog.smali', B + 'AirForceManager.smali', B + 'Airport.smali', B + 'AirMission.smali']
TAGS = ['nA1e', 'nA2m', 'nA3b', 'nA4d', 'nA4f', 'nA6c', 'nA5t', 'nA9r']

def nonvoid(sig):
    k = sig.rfind(')')
    return k != -1 and len(sig) > k + 1 and sig[k + 1] != 'V'

def is_probe(s):
    if 'AirDbgLog;->p0' in s:
        return True
    for t in TAGS:
        if ('"%s"' % t) in s and 'const-string' in s:
            return True
    return False

def nb(L, i):
    j = i + 1
    while j < len(L) and L[j].strip() == '':
        j += 1
    return j if j < len(L) else None

bad = []
for p in FILES:
    L = io.open(p, encoding='utf-8').read().split('\n')
    for i, ln in enumerate(L):
        s = ln.strip()
        if not s.startswith('invoke-') or '(' not in s:
            continue
        if not nonvoid(s[s.rfind('('):]):
            continue
        j = nb(L, i)
        if j is None:
            continue
        if not is_probe(L[j].strip()):
            continue
        k2 = nb(L, j)
        if k2 is not None and L[k2].strip().startswith('move-result'):
            bad.append('%s:%d  invoke=%s | 中间=%s' % (p.split('/')[-1], j + 1, s[:52], L[j].strip()[:40]))
print('===== (a) 真错（探针插在 invoke↔move-result 之间）= %d =====' % len(bad))
for x in bad:
    print('  !! ' + x)

print('')
print('===== (b) helper 行号区间 =====')
L0 = io.open(FILES[0], encoding='utf-8').read().split('\n')
for i, ln in enumerate(L0):
    if ln.startswith('.method') and 'p0' in ln:
        for j in range(i, len(L0)):
            if L0[j].startswith('.end method'):
                print('  helper %s : %d-%d' % (ln.split('(')[0].split()[-1], i + 1, j + 1))
                break
print('===== (b) 插桩探针行号 =====')
for p in FILES:
    L = io.open(p, encoding='utf-8').read().split('\n')
    n = p.split('/')[-1]
    for i, ln in enumerate(L):
        for t in TAGS:
            if ('"%s"' % t) in ln and 'const-string' in ln and 'p0' not in ln.split('"')[0][-9:]:
                if 'const-string v0, "%s"' % t == ln.strip() or 'const-string v3, "%s"' % t == ln.strip():
                    print('  %s : %d  %s' % (n, i + 1, ln.strip()))
                    break