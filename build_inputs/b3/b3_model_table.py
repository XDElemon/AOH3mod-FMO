# -*- coding: utf-8 -*-
# B3 R1: parse 64 aircraft texture names -> per-country model table + merge candidates
from pathlib import Path
from collections import defaultdict
import csv

root = Path('/sdcard/GLG/贴图补充/空军贴图')
gens = ['3代', '4代', '5代', '6代']
gcn = {'3代': '三代', '4代': '四代', '5代': '五代', '6代': '六代'}
cmap = {'中': 'CN', '美': 'US', '欧': 'EU', '俄': 'RU'}
pre = {'中': '中国', '美': '美国', '欧': '欧洲', '俄': '俄罗斯'}
types = ['战斗机', '截击机', '攻击机', '轰炸机']
type_alias = [('战斗机', '战斗机'), ('截击机', '截击机'), ('攻击机', '攻击机'), ('轰炸机', '轰炸机'), ('战机', '战斗机')]

rows = []
for g in gens:
    for c in cmap:
        d = root / g / c
        if not d.is_dir():
            print('MISS', d)
            continue
        for f in sorted(d.glob('*.png')):
            stem = f.stem
            got = False
            for spell, t in type_alias:
                p = pre[c] + gcn[g] + spell
                if stem.startswith(p):
                    model = stem[len(p):].strip()
                    rows.append((g, cmap[c], t, model, f.name))
                    got = True
                    break
            if not got:
                print('UNPARSED', f.name)

outdir = Path('/sdcard/GLG/历史23/build_inputs/b3')
outdir.mkdir(parents=True, exist_ok=True)
with open(outdir / 'model_table.tsv', 'w', encoding='utf-8', newline='') as fh:
    w = csv.writer(fh, delimiter='\t')
    w.writerow(['gen', 'country', 'type', 'model', 'file'])
    w.writerows(rows)

norm = lambda m: m.replace('\u2011', '-').replace(' ', '')
print('rows:', len(rows))
for c in ['CN', 'US', 'EU', 'RU']:
    print()
    print('==== ' + c + ' ====')
    bymodel = defaultdict(list)
    for g, cc2, t, m, fn in rows:
        if cc2 == c:
            bymodel[norm(m)].append((g, t))
    for m, slots in sorted(bymodel.items()):
        mark = '  <== 合并候选' if len(slots) > 1 else ''
        print('%-24s %s%s' % (m, ' / '.join('%s-%s' % (g, t) for g, t in slots), mark))
    print('unique models:', len(bymodel))