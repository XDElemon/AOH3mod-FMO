#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# B1 hotfix v3: regate building "MilitaryBase" RequiredTechID [0] -> [10]
# so the previously-empty tech node #10 "MilitaryBase" gets real content.
# Verified smali chain:
#  - TechnologyTree::<init>: RequiredTechID>=0 -> lTechUnlocksBuildings[req].add(Building(i,level))
#  - Civilization.addTechnology(i): researched -> copies lTechUnlocksBuildings[i] into unlockedBuildings
#  - ButtonTechnology hover: lists lTechUnlocksBuildings[iTechID]
import shutil, hashlib, json, csv
from pathlib import Path

V2 = Path('/root/b1work/out/B1_generated_review_v2')
V3 = Path('/root/b1work/out/B1_generated_review_v3')
SRC = Path('/root/b1work/AOH3mod-FMO/assets_r6t007')
assert V2.is_dir(), 'v2 missing'
assert not V3.exists(), 'v3 exists'

shutil.copytree(V2, V3)

def sha_b(b): return hashlib.sha256(b).hexdigest()

bf = V3/'candidate/game/buildings/Buildings.json'
t = bf.read_bytes().decode('utf-8')
idx = t.find('Name: ["MilitaryBase"]')
assert idx > 0, 'MilitaryBase not found'
b0 = t.rfind('{', 0, idx); b1 = t.find('},', idx)
assert b0 > 0 and b1 > b0, 'block bounds'
block = t[b0:b1+2]
cnt = block.count('RequiredTechID: [0],')
assert cnt == 1, ('in-block count %d' % cnt)
block2 = block.replace('RequiredTechID: [0],', 'RequiredTechID: [10],')
assert block2.count('[10]') == 1
t2 = t[:b0] + block2 + t[b1+2:]
assert t2.count('RequiredTechID: [10],') == 1
bf.write_bytes(t2.encode('utf-8'))

rows = []
for cp in sorted((V3/'candidate').rglob('*')):
    if not cp.is_file():
        continue
    rel = str(cp.relative_to(V3/'candidate'))
    sb = (SRC/rel).read_bytes(); cb = cp.read_bytes()
    rows.append([rel, sha_b(sb), sha_b(cb), 'changed' if sb != cb else 'same-bytes'])
with open(V3/'manifest_sha256.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['relative_path', 'old_sha256', 'candidate_sha256', 'status'])
    w.writerows(rows)

ap = V3/'audit_report.json'
rep = json.loads(ap.read_text(encoding='utf-8'))
rep['hotfix_v3'] = {
    'militarybase_regate': 'buildings.json MilitaryBase RequiredTechID [0]->[10]',
    'reason': 'tech node#10 MilitaryBase was the only empty kept node; building now gated by it and listed as its unlock'
}
ap.write_text(json.dumps(rep, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')

log = ['hotfix v3 applied:',
       ' - buildings.json MilitaryBase RequiredTechID: [0] -> [10]',
       ' - manifest recomputed: %d files, changed=%d' % (len(rows), sum(1 for r in rows if r[3] == 'changed')),
       ' - audit updated']
(V3/'v3_apply_log.txt').write_text('\n'.join(log) + '\n', encoding='utf-8')
print('\n'.join(log))