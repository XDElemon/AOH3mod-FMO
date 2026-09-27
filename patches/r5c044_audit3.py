# -*- coding: utf-8 -*-
# r5c044_audit3.py —— 只读复核（3）：helper 与两条链的门，在各历史备份中的形态
import io, os, glob

B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
FOWD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/'


def body(path, name):
    if not os.path.exists(path):
        return None
    L = io.open(path, encoding='utf-8', errors='replace').read().split('\n')
    out, on = [], False
    for i, l in enumerate(L):
        if l.startswith('.method') and name in l:
            on = True
        if on:
            out.append(l.strip())
            if l.strip() == '.end method':
                break
    return out


def peek(L, keys):
    if not L:
        return None
    return [x for x in L if any(k in x for k in keys)]


print('===== [A] hasActiveChaser 在各备份中的关键判据 =====')
for f in sorted(glob.glob(B + 'AirForceManager.smali.pre_r4c16*') + glob.glob(B + 'AirForceManager.smali.pre_r4c17*')):
    L = body(f, 'hasActiveChaser')
    k = peek(L, ['if-eq v5', 'if-ne v5', 'civID:I'])
    print('%-52s %s' % (os.path.basename(f), k if k else '（无此方法）'))
print('%-52s %s' % ('[现役] AirForceManager.smali', peek(body(B + 'AirForceManager.smali', 'hasActiveChaser'), ['if-eq v5', 'if-ne v5'])))

print()
print('===== [B] PlayerFogOfWar.detectEnemyMissions 中 helper 前的那一条门 =====')
import subprocess
for f in sorted(glob.glob(FOWD + 'PlayerFogOfWar.smali*')):
    if not os.path.isfile(f):
        continue
    L = io.open(f, encoding='utf-8', errors='replace').read().split('\n')
    for i, l in enumerate(L):
        if 'hasActiveChaser' in l and 'invoke' in l:
            seg = [x.strip() for x in L[max(0, i - 6):i + 4]]
            print('%-58s' % os.path.basename(f))
            for x in seg:
                print('        %s' % x)
            break

print()
print('===== [C] 现役 AI 链（updateAIAutoIntercept）两条门 =====')
L = io.open(B + 'AirForceManager.smali', encoding='utf-8').read().split('\n')
for i, l in enumerate(L):
    if 3100 <= i + 1 <= 3125:
        print('%5d| %s' % (i + 1, l))