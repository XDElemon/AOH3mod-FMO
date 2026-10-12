#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d270 B5a: Technologies.json 75 条注入 Category/SubTag
# 源 = 与 r6d269 APK 一致的 build_inputs/b3/out 版
import re, os

Q = chr(34)
SRC = '/root/history23_repo/build_inputs/b3/out/assets/game/technologies/Technologies.json'
OUTS = [
    '/tmp/r6d270_assets/assets/game/technologies/Technologies.json',
    '/root/history23_repo/build_inputs/r6d270/out/assets/game/technologies/Technologies.json',
    '/sdcard/GLG/历史23/build_inputs/r6d270/out/assets/game/technologies/Technologies.json',
]

MAP = {
    0: ('foundation', 'root'), 1: ('air', 'legacy.fighter'), 2: ('army', 'tank'), 3: ('army', 'tactics'),
    4: ('air', 'legacy.fighter'), 5: ('army', 'infantry'), 6: ('army', 'tank'), 7: ('army', 'mech'),
    8: ('army', 'tank'), 9: ('nuclear', 'program'), 10: ('army', 'base'), 11: ('government', 'law'),
    12: ('army', 'infantry'), 13: ('army', 'tactics'), 14: ('industry', 'energy'), 15: ('army', 'infantry'),
    16: ('army', 'tank'), 17: ('army', 'artillery'), 18: ('army', 'mech'), 19: ('army', 'tank'),
    20: ('economy', 'currency'), 21: ('army', 'tank'), 22: ('future', 'repeatable'), 23: ('economy', 'tax'),
    24: ('air', 'legacy.fighter'), 25: ('army', 'artillery'), 26: ('army', 'infantry'), 27: ('army', 'mech'),
    28: ('army', 'tank'), 29: ('future', 'repeatable'), 30: ('air', 'legacy.bomber'), 31: ('army', 'artillery'),
    32: ('air', 'pack.cn'), 33: ('air', 'cn.fighter'), 34: ('air', 'cn.interceptor'), 35: ('air', 'cn.attacker'),
    36: ('air', 'cn.bomber'), 37: ('air', 'cn.fighter'), 38: ('air', 'cn.fighter'), 39: ('air', 'cn.bomber'),
    40: ('air', 'cn.fighter'), 41: ('air', 'cn.bomber'), 42: ('air', 'cn.fighter'), 43: ('air', 'cn.fighter'),
    44: ('air', 'cn.bomber'), 45: ('air', 'pack.us'), 46: ('air', 'us.fighter'), 47: ('air', 'us.attacker'),
    48: ('air', 'us.bomber'), 49: ('air', 'us.fighter'), 50: ('air', 'us.fighter'), 51: ('air', 'us.bomber'),
    52: ('air', 'us.fighter'), 53: ('air', 'us.fighter'), 54: ('air', 'us.interceptor'), 55: ('air', 'pack.eu'),
    56: ('air', 'eu.fighter'), 57: ('air', 'eu.fighter'), 58: ('air', 'eu.attacker'), 59: ('air', 'eu.attacker'),
    60: ('air', 'eu.fighter'), 61: ('air', 'eu.fighter'), 62: ('air', 'eu.fighter'), 63: ('air', 'eu.fighter'),
    64: ('air', 'pack.ru'), 65: ('air', 'ru.fighter'), 66: ('air', 'ru.interceptor'), 67: ('air', 'ru.attacker'),
    68: ('air', 'ru.bomber'), 69: ('air', 'ru.fighter'), 70: ('air', 'ru.attacker'), 71: ('air', 'ru.interceptor'),
    72: ('air', 'ru.bomber'), 73: ('air', 'ru.fighter'), 74: ('air', 'ru.bomber'),
}

s = open(SRC, encoding='utf-8').read()
ms = list(re.finditer(r'\{\n\t\t\tID: (\d+),', s))
assert len(ms) == 75, ('records', len(ms))

parts = []
parts.append(s[:ms[0].start()])
for i, m in enumerate(ms):
    rid = int(m.group(1))
    nxt = ms[i + 1].start() if i + 1 < len(ms) else len(s)
    region = s[m.start():nxt]
    assert rid in MAP, ('no map', rid)
    cat, sub = MAP[rid]
    m2 = re.search(r'(\n(\t+)AI: [^\n]*?,)', region)
    assert m2, ('no AI line', rid)
    indent = m2.group(2)
    ins = m2.group(0) + '\n' + indent + 'Category: ' + Q + cat + Q + ',' + '\n' + indent + 'SubTag: ' + Q + sub + Q + ','
    region = region[:m2.start()] + ins + region[m2.end():]
    parts.append(region)

out = ''.join(parts)
assert out.count('Category: ') == 75, out.count('Category: ')
assert out.count('SubTag: ') == 75, out.count('SubTag: ')
def cnt(k):
    return out.count(chr(10) + chr(9) * 3 + k)
for k in ('Name: ', 'TreeColumn: ', 'TreeRow: ', 'RequiredTech: ', 'RequiredTech2: ', 'ResearchCost: ', 'AI: '):
    print('cnt', k, cnt(k))
    assert cnt(k) == 75, (k, cnt(k))

from collections import Counter
cats = Counter(v[0] for v in MAP.values())
print('cats', dict(cats))
assert cats['air'] == 47 and cats['army'] == 20 and cats['economy'] == 2 and cats['future'] == 2

for p in OUTS:
    os.makedirs(os.path.dirname(p), exist_ok=True)
    open(p, 'w', encoding='utf-8').write(out)
    print('wrote', p)
print('DONE')
