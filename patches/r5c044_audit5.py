# -*- coding: utf-8 -*-
# r5c044_audit5.py —— 只读复核（5）：dispatchAutoIntercept 全程（含选机/射程门/取键）
import io, re

AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
L = io.open(AF, encoding='utf-8').read().split('\n')

# 找方法范围
st = en = None
for i, l in enumerate(L):
    if l.startswith('.method') and 'dispatchAutoIntercept' in l:
        st = i
    elif st is not None and l.strip() == '.end method':
        en = i
        break
print('dispatchAutoIntercept: 行 %d ~ %d（共 %d 行）' % (st + 1, en + 1, en - st + 1))
print()
KEY = ('getProvincesInRange', 'getAvailableAircraft', 'pickIdleDivKey', 'getAircraftRange',
       'createIntercept', 'if-', ':dsp_', ':sw_', 'goto', 'return', 'contains', 'isEmpty',
       'getDistance', 'dist', 'CombatRadius')
for i in range(st, en + 1):
    x = L[i]
    if not x.strip():
        continue
    mark = ''
    if any(k in x for k in ('getProvincesInRange', 'getAvailableAircraft', 'pickIdleDivKey',
                            'getAircraftRange', 'createIntercept')):
        mark = '   <<<< KEY'
    if 'if-' in x or x.strip().startswith(':'):
        mark = mark or '   <<'
    print('%5d| %s%s' % (i + 1, x.rstrip(), mark))