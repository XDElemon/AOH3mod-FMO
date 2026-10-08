#!/usr/bin/env python3
# 调研：防空类建筑的完整定义 + RadarConfig
import zipfile, re

A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d137.apk'
z = zipfile.ZipFile(A)

txt = z.read('assets/game/buildings/Buildings.json').decode('utf-8', errors='replace').replace('\r', '')
blocks = re.findall(r'\{(.*?)\n\s*\},', txt, re.S)
KEYS = ['雷达', '反导', '空军基地', 'BombShelter', 'Hospital']

print('=== 防空/相关建筑完整定义 ===')
for b in blocks:
    m = re.search(r'Name:\s*(?:\[)?"?([^"\],]*)', b)
    if not m:
        continue
    nm = m.group(1).strip()
    if any(k in nm for k in KEYS):
        print('--- %s' % nm)
        for line in b.splitlines():
            s = line.strip()
            if s and s not in ('{', '}'):
                print('    ' + s)

print()
print('=== assets/game/RadarConfig.json ===')
try:
    print(z.read('assets/game/RadarConfig.json').decode('utf-8', errors='replace'))
except KeyError:
    print('[不存在]')

print()
print('=== 建筑文件里出现过的所有字段名 ===')
import collections
c = collections.Counter()
for b in blocks:
    for line in b.splitlines():
        mm = re.match(r'^\s*([A-Za-z_0-9]+)\s*:', line)
        if mm:
            c[mm.group(1)] += 1
for k, v in c.most_common(60):
    print('   %-32s %d' % (k, v))