# -*- coding: utf-8 -*-
# B1 v2 post-apply (local, option B)
# - game/Governments.json: REQUIRED_TECHNOLOGY -> -1 (all 20; 10 changed + 10 already -1)
# - game/languages/Bundle*.properties: insert ModernTechFoundation line (byte-preserving)
# - newline fidelity for base candidates (uniform-CRLF sources only; pure-LF kept as-is)
# - rebuild manifest / review_blockers / audit; write ledgers. Sources stay READ-ONLY.
from pathlib import Path
import re, hashlib, csv, json

BASE = Path('/root/b1work/AOH3mod-FMO/assets_r6t007')
OUT = Path('/root/b1work/out/B1_generated_review_v2')

def sha_b(b):
    return hashlib.sha256(b).hexdigest()

def cand(rel):
    p = OUT / 'candidate' / rel
    p.parent.mkdir(parents=True, exist_ok=True)
    return p

log = []

# 1) Governments ---------------------------------
gp = BASE / 'game/Governments.json'
gt = gp.read_bytes().decode('utf-8')
lines = gt.split('\r\n')
out_lines = []
rows = []
pat = re.compile(r'([ \t]*REQUIRED_TECHNOLOGY[ \t]*:[ \t]*)(-?\d+)(,)')
for i, ln in enumerate(lines, 1):
    m = pat.fullmatch(ln)
    if m:
        old = int(m.group(2))
        rows.append((i, old, -1))
        out_lines.append(m.group(1) + '-1' + m.group(3))
    else:
        out_lines.append(ln)
assert len(rows) == 20, 'expected 20 required-tech rows, got %d' % len(rows)
assert len(out_lines) == len(lines)
gt2 = '\r\n'.join(out_lines)
assert gt2.count('REQUIRED_TECHNOLOGY: -1,') == 20
cand('game/Governments.json').write_bytes(gt2.encode('utf-8'))
with open(OUT / 'governments_ledger.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['line_no', 'old_value', 'new_value', 'semantics'])
    for i, o, n in rows:
        w.writerow([i, o, n, 'changed' if o != -1 else 'already-unlocked'])
log.append('governments: rows=20 changed=%d kept=%d' % (sum(1 for _, o, _ in rows if o != -1), sum(1 for _, o, _ in rows if o == -1)))

# 2) Language bundles ----------------------------
ins = [
    ('Bundle.properties', 'ModernTechFoundation = Modern Tech Foundation'),
    ('Bundle_cn_sp.properties', 'ModernTechFoundation = 现代科技基础'),
    ('Bundle_cn_tr.properties', 'ModernTechFoundation = 現代科技基礎'),
]
lang_rows = []
for name, line in ins:
    p = BASE / 'game/languages' / name
    d = p.read_bytes()
    anchor = b'\r\nEarlyFighter = '
    c = d.count(anchor)
    assert c == 1, '%s anchor count %d' % (name, c)
    nd = d.replace(anchor, b'\r\n' + line.encode('utf-8') + b'\r\nEarlyFighter = ', 1)
    assert nd.count(line.encode('utf-8')) == 1
    cand('game/languages/' + name).write_bytes(nd)
    lang_rows.append([name, line, 'before EarlyFighter'])
with open(OUT / 'language_ledger.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['file', 'inserted_line', 'position'])
    w.writerows(lang_rows)
log.append('languages: 3 files updated')

# 3) Newline fidelity ----------------------------
def uniform_crlf(b):
    crlf = b.count(b'\r\n')
    lf = b.count(b'\n')
    return crlf > 0 and crlf == lf

fixed = []
skipped_mixed = []
for cp in sorted((OUT / 'candidate').rglob('*')):
    if not cp.is_file():
        continue
    rel = cp.relative_to(OUT / 'candidate')
    sp = BASE / rel
    if not sp.is_file():
        continue
    sb = sp.read_bytes()
    cb = cp.read_bytes()
    crlf = sb.count(b'\r\n')
    lf = sb.count(b'\n')
    if crlf > 0 and crlf != lf:
        skipped_mixed.append(str(rel))
        continue
    if uniform_crlf(sb) and cb.count(b'\r\n') == 0:
        cp.write_bytes(cb.replace(b'\n', b'\r\n'))
        fixed.append(str(rel))
log.append('crlf-restored: %d | skipped-mixed: %s' % (len(fixed), skipped_mixed))

# 4) Manifest ------------------------------------
rows2 = []
for cp in sorted((OUT / 'candidate').rglob('*')):
    if not cp.is_file():
        continue
    rel = str(cp.relative_to(OUT / 'candidate'))
    sb = (BASE / rel).read_bytes()
    cb = cp.read_bytes()
    rows2.append([rel, sha_b(sb), sha_b(cb), 'changed' if sb != cb else 'same-bytes'])
with open(OUT / 'manifest_sha256.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t')
    w.writerow(['relative_path', 'old_sha256', 'candidate_sha256', 'status'])
    w.writerows(rows2)
same_bad = [r[0] for r in rows2 if r[3] == 'same-bytes' and (OUT / 'candidate' / r[0]).read_bytes() != (BASE / r[0]).read_bytes()]
log.append('manifest: rows=%d changed=%d same=%d same_bad=%s' % (len(rows2), sum(1 for r in rows2 if r[3] == 'changed'), sum(1 for r in rows2 if r[3] == 'same-bytes'), same_bad))

# 5) review_blockers -----------------------------
bp = OUT / 'review_blockers.tsv'
bl = bp.read_text(encoding='utf-8').splitlines()
bl2 = [l for l in bl if 'Governments.json' not in l]
bp.write_text('\r\n'.join(bl2) + '\r\n', encoding='utf-8')
log.append('blockers: %d -> %d data rows' % (max(len(bl) - 1, 0), max(len(bl2) - 1, 0)))

# 6) Audit ---------------------------------------
ap = OUT / 'audit_report.json'
rep = json.loads(ap.read_text(encoding='utf-8'))
rep['governments_required_tech_total'] = 20
rep['governments_changed'] = sum(1 for _, o, _ in rows if o != -1)
rep['language_files_updated'] = [r[0] for r in lang_rows]
rep['candidate_files_total'] = len(rows2)
rep['changed_files_total'] = sum(1 for r in rows2 if r[3] == 'changed')
rep['known_unresolved'] = [x for x in rep.get('known_unresolved', []) if 'REQUIRED_TECHNOLOGY semantics' not in x]
sb = (BASE / 'game/technologies/Technologies.json').read_bytes()
cb = (OUT / 'candidate/game/technologies/Technologies.json').read_bytes()
rep['source_sha256'] = sha_b(sb)
rep['candidate_sha256'] = sha_b(cb)
ap.write_text(json.dumps(rep, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')
log.append('audit updated')

(OUT / 'v2_apply_log.txt').write_text('\n'.join(log) + '\n', encoding='utf-8')
print('\n'.join(log))