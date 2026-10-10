# -*- coding: utf-8 -*-
# B2 v1 local apply (read-only on sources):
# - map/Earth3/Scenarios.txt -> keep 6 (qianxi;ModernWorld;WW2;USA_States;brazil;SouthAmerica;)
# - kept 6 Details.json: CivDefault_Technology remap via B1 MAP (fallback 0)
# - WW2 Data.json: TechnologyID 66 -> 0 (x48, kept-scenario civ level)
# - deletions list (18 dirs) + apply_deletions.sh + ledgers + manifest
from pathlib import Path
import re, hashlib, csv

BASE = Path('/root/b1work/AOH3mod-FMO/assets_r6t007')
OUT = Path('/root/b1work/out/B2_generated_review_v1')

def sha_b(b):
    return hashlib.sha256(b).hexdigest()

def cand(rel):
    p = OUT / 'candidate' / rel
    p.parent.mkdir(parents=True, exist_ok=True)
    return p

KEEP = ['qianxi', 'ModernWorld', 'WW2', 'USA_States', 'brazil', 'SouthAmerica']
MAP = {old: i + 1 for i, old in enumerate(list(range(67, 96)) + [97, 98])}
DETAILS_EXPECT = {'qianxi': 81, 'ModernWorld': 81, 'WW2': 72, 'USA_States': 85, 'brazil': 82, 'SouthAmerica': 85}
log = []

# 1) Scenarios.txt
list_p = BASE / 'map/Earth3/Scenarios.txt'
orig = list_p.read_bytes()
orig_text = orig.decode('utf-8')
assert orig_text.endswith(';')
entries = [x for x in orig_text.split(';') if x]
assert len(entries) == 24, len(entries)
new_entries = [e for e in entries if e in KEEP]
assert new_entries == KEEP, new_entries
new_text = ';'.join(new_entries) + ';'
cand('map/Earth3/Scenarios.txt').write_bytes(new_text.encode('utf-8'))
deleted = [e for e in entries if e not in KEEP]
assert len(deleted) == 18
log.append('scenarios: 24 -> 6 entries; deleted=18')

# 2) Details CivDefault
det_rows = []
for name in KEEP:
    p = BASE / 'map/Earth3/scenarios' / name / 'Details.json'
    t = p.read_bytes().decode('utf-8')
    pat = re.compile(r'(CivDefault_Technology\s*:\s*)(\d+)(,)')
    ms = pat.findall(t)
    assert len(ms) == 1, (name, len(ms))
    old = int(ms[0][1])
    new = MAP.get(old, 0)
    assert old == DETAILS_EXPECT[name], (name, old)
    t2, n = pat.subn(lambda m: m.group(1) + str(new) + m.group(3), t)
    assert n == 1
    cand('map/Earth3/scenarios/' + name + '/Details.json').write_bytes(t2.encode('utf-8'))
    det_rows.append([name, old, new])
log.append('details: 6 remapped')

# 3) WW2 Data.json
dp = BASE / 'map/Earth3/scenarios/WW2/Data.json'
dt = dp.read_bytes().decode('utf-8')
pat2 = re.compile(r'(TechnologyID\s*:\s*)66(,?)')
cnt = len(pat2.findall(dt))
assert cnt == 48, cnt
dt2, n2 = pat2.subn(lambda m: m.group(1) + '0' + m.group(2), dt)
assert n2 == 48
cand('map/Earth3/scenarios/WW2/Data.json').write_bytes(dt2.encode('utf-8'))
log.append('WW2 data: TechnologyID 66->0 x48')

# 4) ledgers + deletions
with open(OUT / 'details_ledger.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['scenario', 'old_index', 'new_index'])
    w.writerows(det_rows)
with open(OUT / 'scenarios_ledger.txt', 'w', encoding='utf-8') as f:
    f.write('OLD:\n' + orig_text + '\n\nNEW:\n' + new_text + '\n')
with open(OUT / 'deletions.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['deleted_scenario_dir'])
    for e in deleted:
        w.writerow([e])
sh = ['#!/bin/sh', '# B2 deletions: apply inside assets_r6t007/ (from map/Earth3/scenarios)', 'set -e', 'cd "$(dirname "$0")/.."']
for e in deleted:
    sh.append('rm -rf "map/Earth3/scenarios/%s"' % e)
(OUT / 'apply_deletions.sh').write_text('\n'.join(sh) + '\n', encoding='utf-8')

# 5) manifest
rows = []
for cp in sorted((OUT / 'candidate').rglob('*')):
    if not cp.is_file():
        continue
    rel = str(cp.relative_to(OUT / 'candidate'))
    sb = (BASE / rel).read_bytes()
    cb = cp.read_bytes()
    rows.append([rel, sha_b(sb), sha_b(cb), 'changed' if sb != cb else 'same-bytes'])
with open(OUT / 'manifest_sha256.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['relative_path', 'old_sha256', 'candidate_sha256', 'status'])
    w.writerows(rows)
log.append('manifest: %d files, changed=%d' % (len(rows), sum(1 for r in rows if r[3] == 'changed')))

(OUT / 'b2_apply_log.txt').write_text('\n'.join(log) + '\n', encoding='utf-8')
print('\n'.join(log))