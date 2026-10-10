# -*- coding: utf-8 -*-
# R2 勘察：B1B2 候选树/单位/图库/本地化
import re, os

BASE = '/sdcard/GLG/历史23/build_inputs/b1b2_joint/out_v3/candidate/game'
ASS = '/root/history23_repo/assets_r6t007/game'

def field(b, k):
    m = re.search(re.escape(k) + r'\s*:\s*("([^"]*)"|[-\w.]+)', b)
    if not m:
        return '?'
    return m.group(2) if m.group(2) is not None else m.group(1)

print('==== Technologies.json（post-B1B2） ====')
s = open(os.path.join(BASE, 'technologies/Technologies.json'), encoding='utf-8').read()
blocks = re.findall(r'\{([^{}]*)\}', s, re.S)
print('节点数 =', len(blocks))
for b in blocks:
    extra = [k for k in ['UnlocksAccessToTheSea', 'BattleWidth', 'UnitsAttack', 'UnitsDefense', 'Repeatable'] if k in b]
    print('ID=%-3s %-26s img=%-4s col=%-3s row=%-2s req=%s/%s cost=%-6s %s' % (
        field(b, 'ID'), field(b, 'Name'), field(b, 'ImageID'), field(b, 'TreeColumn'), field(b, 'TreeRow'),
        field(b, 'RequiredTech'), field(b, 'RequiredTech2'), field(b, 'ResearchCost'), ','.join(extra)))

print()
print('==== 四型空军单位（candidate） ====')
for f in ['AirInterceptor', 'AirFighter', 'AirBomber', 'AirAttacker']:
    t = open(os.path.join(BASE, 'units/%s.json' % f), encoding='utf-8').read()
    print('##', f)
    for b in re.findall(r'\{([^{}]*)\}', t, re.S):
        print('   lvl=%s img=%s req=%s atk=%s def=%s' % (field(b, 'UnitLevel'), field(b, 'ImageID'), field(b, 'RequiredTechID'), field(b, 'Attack'), field(b, 'Defense')))

print()
print('==== 图库计数 ====')
for nm, p in [('unitsImages', ASS + '/units/unitsImages'),
              ('technologiesImages', ASS + '/technologies/technologiesImages')]:
    f = os.path.join(p, 'numOfImages.txt')
    n = open(f).read().strip() if os.path.exists(f) else 'NA'
    cnt = len(os.listdir(os.path.join(p, 'H'))) if os.path.isdir(os.path.join(p, 'H')) else 'NA'
    print('%s: numOfImages=%s  H档文件数=%s' % (nm, n, cnt))

print()
print('==== languages 抽查（candidate） ====')
lb = open(os.path.join(BASE, 'languages/Bundle.properties'), encoding='utf-8', errors='replace').read().split('\n')
for key in ['ModernTechFoundation', 'AirFighter', 'AirBomber', 'Library']:
    hits = [l for l in lb if l.startswith(key)]
    print(key, '->', hits[:2])
print('总行数 =', len(lb))