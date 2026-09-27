# -*- coding: utf-8 -*-
# r5c044_audit1.py —— 只读复核（1）：hasActiveChaser 语义 + 三个调用点
import io, re
AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
FOW = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
L = io.open(AF, encoding='utf-8').read().split('\n')
S = io.open(FOW, encoding='utf-8').read().split('\n')


def method(L, name):
    out, on = [], False
    for i, l in enumerate(L):
        if l.startswith('.method') and name in l:
            on = True
        if on:
            out.append((i + 1, l))
            if l.strip() == '.end method':
                break
    return out


print('===== [1] hasActiveChaser 全文 =====')
for n, l in method(L, 'hasActiveChaser'):
    print('%5d| %s' % (n, l))

print()
print('===== [2] hasActiveChaser 的所有调用点（全树）=====')
import subprocess
r = subprocess.Popen(['grep', '-rn', '-B6', 'hasActiveChaser', '/tmp/w3a/smali'],
                     stdout=subprocess.PIPE, stderr=subprocess.PIPE)
o, e = r.communicate()
for l in o.decode('utf-8', 'replace').split('\n'):
    if 'invoke' in l or 'method' in l:
        print(l.replace('/tmp/w3a/smali/', ''))
