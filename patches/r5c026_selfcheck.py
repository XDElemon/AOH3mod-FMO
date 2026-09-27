# -*- coding: utf-8 -*-
# r5c026_selfcheck.py —— (a) invoke↔move-result 插队真错（本批标记）(b) incr_audit 参数
import io
B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
FILES = [B + 'AirForceManager.smali', B + 'AirDbgLog.smali']
MARK = ['"nA4e"', '"nA4v', '"nA5b"', 'AirDbgLog;->p0K', 'AirDbgLog;->p0V', ':p0_blk', ':p0_disp', ':p0_nopl', 'aiPickVisibleTarget']

def is_probe(s):
    return any(m in s for m in MARK)

def nonvoid(sig):
    k = sig.rfind(')')
    return k != -1 and len(sig) > k + 1 and sig[k + 1] != 'V'

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
        if s.startswith('.method') or s.startswith(':'):
            continue
        if (s.startswith('const-string') or s.startswith('invoke-static') or s.startswith('invoke-direct')
                or s.startswith('move-result') or s.startswith('if-')) and is_probe(s):
            j = i - 1
            while j >= 0 and L[j].strip() == '':
                j -= 1
            if j >= 0:
                prev = L[j].strip()
                if prev.startswith('invoke-') and '(' in prev and nonvoid(prev[prev.rfind('('):]):
                    # 上一行是非 void invoke ⇒ 检查它是否为“本批新增”的（新 invoke 紧跟 move-result 才行）
                    if not (s.startswith('invoke-static') and 'AirDbgLog' in s):
                        bad.append('%s:%d prev=%s | cur=%s' % (p.split('/')[-1], i + 1, prev[:52], s[:44]))
print('===== (a) 可疑插队 = %d =====' % len(bad))
for x in bad:
    print('  !! ' + x)

print('')
print('===== (b) 本批新增块行号（供 incr_audit）=====')
args = []
L = io.open(FILES[0], encoding='utf-8').read().split('\n')
for i, ln in enumerate(L):
    if ln.startswith('.method') and 'aiPickVisibleTarget' in ln:
        for j in range(i, len(L)):
            if L[j].startswith('.end method'):
                args += [FILES[0], str(i + 1), str(j + 1)]
                print('  aiPickVisibleTarget : %d-%d' % (i + 1, j + 1)); break
    if ln.strip().startswith(':p0_blk1') or ln.strip().startswith(':p0_blk3') or ln.strip().startswith(':p0_blk4'):
        args += [FILES[0], str(i + 1), str(i + 4)]
        print('  %s : %d-%d' % (ln.strip(), i + 1, i + 4))
# C1 判据块 / C2 概率门 / C3 / C4 / C5 用标签定位
for tag, key in (('C1p', ':p0_disp'), ('C2p', ':p0_blk1'), ('C5p', 'nA5b')):
    for i, ln in enumerate(L):
        if key in ln:
            args += [FILES[0], str(max(1, i - 6)), str(i + 6)]
            print('  %s @ %d' % (tag, i + 1)); break
L2 = io.open(FILES[1], encoding='utf-8').read().split('\n')
for i, ln in enumerate(L2):
    if ln.startswith('.method') and ('p0K' in ln or 'p0V' in ln):
        for j in range(i, len(L2)):
            if L2[j].startswith('.end method'):
                args += [FILES[1], str(i + 1), str(j + 1)]
                print('  AirDbgLog %s : %d-%d' % (ln.split('(')[0].split()[-1], i + 1, j + 1)); break
io.open('/tmp/r5c026_incr_args.txt', 'w').write(' '.join(args))
print('  （已写 /tmp/r5c026_incr_args.txt）')