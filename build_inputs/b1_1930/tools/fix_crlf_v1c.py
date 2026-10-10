# -*- coding: utf-8 -*-
# v1c post-fix: restore CRLF line endings in candidate files (byte-preserving),
# then recompute manifest_sha256.tsv and audit_report.json from real bytes.
from pathlib import Path
import hashlib, csv, json

BASE = Path('/root/b1work/AOH3mod-FMO/assets_r6t007')
OUT = Path('/root/b1work/out/B1_generated_review_v1')

def sha_b(b):
    return hashlib.sha256(b).hexdigest()

def nl_style(b):
    crlf = b.count(b'\r\n')
    lf = b.count(b'\n')
    return (crlf > 0 and crlf == lf)

man = OUT / 'manifest_sha256.tsv'
rows = []
for line in man.read_text(encoding='utf-8').splitlines()[1:]:
    if not line.strip():
        continue
    parts = line.split('\t')
    rel = parts[0]
    sb = (BASE / rel).read_bytes()
    cp = OUT / 'candidate' / rel
    cb = cp.read_bytes()
    if nl_style(sb) and cb.count(b'\r\n') == 0:
        cb = cb.replace(b'\n', b'\r\n')
        cp.write_bytes(cb)
    csha = sha_b(cb)
    status = 'changed' if sb != cb else 'same-bytes'
    rows.append([rel, sha_b(sb), csha, status])

with open(man, 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['relative_path', 'old_sha256', 'candidate_sha256', 'status'])
    w.writerows(rows)

rep = json.loads((OUT / 'audit_report.json').read_text(encoding='utf-8'))
sb = (BASE / 'game/technologies/Technologies.json').read_bytes()
cb = (OUT / 'candidate/game/technologies/Technologies.json').read_bytes()
rep['source_sha256'] = sha_b(sb)
rep['candidate_sha256'] = sha_b(cb)
(OUT / 'audit_report.json').write_text(json.dumps(rep, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')

same_bad = [r[0] for r in rows if r[3] == 'same-bytes' and (OUT / 'candidate' / r[0]).read_bytes() != (BASE / r[0]).read_bytes()]
print('rows:', len(rows), '| changed:', sum(1 for r in rows if r[3] == 'changed'), '| same-bytes:', sum(1 for r in rows if r[3] == 'same-bytes'))
print('same-bytes byte-mismatch:', same_bad)
print('tech source sha   :', sha_b(sb)[:32])
print('tech candidate sha:', sha_b(cb)[:32])