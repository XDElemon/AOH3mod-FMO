# -*- coding: utf-8 -*-
# R3 预备：科技引用面全扫描（B1B2 候选资源）
# 目的：1) 找哪些科技ID被引用；2) 特查 0/1/4/24/30 是否被引用；3) 有无 ≥32 的引用（新节点ID段）
import re, os, glob, collections

BASE = '/sdcard/GLG/历史23/build_inputs/b1b2_joint/out_v3/candidate/game'
FILES = glob.glob(BASE + '/units/*.json') + [
    BASE + '/buildings/Buildings.json',
    BASE + '/buildings/BuildingsResources.json',
    BASE + '/laws/Laws.json',
    BASE + '/resources/Resources.json',
    BASE + '/advantages/Advantages.json',
]

pat = re.compile(r'RequiredTechID\s*:\s*(\[[^\]]*\]|-?\d+)')
refs = collections.Counter()
detail = {}

for p in FILES:
    s = open(p, encoding='utf-8', errors='replace').read()
    for m in pat.finditer(s):
        v = m.group(1)
        nums = [int(x) for x in re.findall(r'-?\d+', v)]
        for n in nums:
            refs[n] += 1
            detail.setdefault(n, []).append(os.path.relpath(p, BASE))

print('== 被引用的科技ID分布（计数） ==')
for k in sorted(refs):
    print('ID %-4s x%-4s %s' % (k, refs[k], ','.join(sorted(set(detail[k]))[:4])))

print()
print('== 特查 0/1/4/24/30 ==')
for k in [0, 1, 4, 24, 30]:
    print('ID %-3s -> %s 次  %s' % (k, refs[k], ','.join(sorted(set(detail.get(k, []))))))

print()
print('== 是否有 >=32 的引用（新节点段） ==')
big = [k for k in refs if k >= 32]
print('>=32 的引用:', big if big else '无')
print()
print('== 是否有 < -1 的引用 ==')
small = [k for k in refs if k < -1]
print('< -1 的引用:', small if small else '无')

print()
print('== 四型空军单位当前 req ==')
for f in ['AirInterceptor', 'AirFighter', 'AirBomber', 'AirAttacker']:
    p = BASE + '/units/%s.json' % f
    s = open(p, encoding='utf-8', errors='replace').read()
    vals = [m.group(1) for m in re.finditer(r'RequiredTechID\s*:\s*([-\d]+)', s)]
    print(f, '->', vals)