#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# B1+B2 joint apply (read-only on sources):
#  1) 复制 assets_r6t007 -> 工作副本
#  2) 应用 B1(v2)+B2(v1) 的 changed 文件（24）
#  3) 执行 18 个剧本目录删除
#  4) 构建 APK 注入用 STAGE（assets/... 前缀）
#  5) 全量校验 + 报告（apply_report.md/json）
import argparse, hashlib, json, re, shutil, subprocess, sys, csv
from pathlib import Path

def sha_b(b): return hashlib.sha256(b).hexdigest()
def sha_f(p): return sha_b(Path(p).read_bytes())
def run(cmd): return subprocess.run(cmd, shell=True, capture_output=True, text=True)

ap = argparse.ArgumentParser()
ap.add_argument('--src', default='/root/history23_repo/assets_r6t007')
ap.add_argument('--b1', default='/root/b1work/out/B1_generated_review_v2')
ap.add_argument('--b2', default='/root/b1work/out/B2_generated_review_v1')
ap.add_argument('--work', default='/root/b1work/B1B2_work/assets_r6t007')
ap.add_argument('--stage', default='/root/b1work/B1B2_stage')
ap.add_argument('--report', default='/root/b1work/B1B2_report')
a = ap.parse_args()
SRC, B1, B2 = Path(a.src), Path(a.b1), Path(a.b2)
WORK, STAGE, REP = Path(a.work), Path(a.stage), Path(a.report)
for p in (WORK.parent, STAGE, REP):
    if p.exists():
        print('REFUSE: exists', p); sys.exit(2)
WORK.parent.mkdir(parents=True, exist_ok=True)
REP.mkdir(parents=True, exist_ok=True)

fails = []
def need(cond, msg):
    if not cond:
        fails.append(msg); print('FAIL:', msg)

# ---------- collect changed lists ----------
b1_rows = [l.split('\t') for l in (B1/'manifest_sha256.tsv').read_text(encoding='utf-8').splitlines()[1:]]
b2_rows = [l.split('\t') for l in (B2/'manifest_sha256.tsv').read_text(encoding='utf-8').splitlines()[1:]]
b1_changed = [r[0] for r in b1_rows if r[3] == 'changed']
b2_changed = [r[0] for r in b2_rows if r[3] == 'changed']
rels = sorted(set(b1_changed) | set(b2_changed))
need(len(b1_changed) == 16, f'b1 changed expect16 got {len(b1_changed)}')
need(len(b2_changed) == 8, f'b2 changed expect8 got {len(b2_changed)}')
need(len(rels) == 24, f'union expect24 got {len(rels)}')
deletions = [l for l in (B2/'deletions.tsv').read_text(encoding='utf-8').splitlines()[1:] if l.strip()]
need(len(deletions) == 18, f'deletions expect18 got {len(deletions)}')

# ---------- counts ----------
def count_files(root): return sum(1 for p in Path(root).rglob('*') if p.is_file())
src_total = count_files(SRC)
del_total = sum(count_files(SRC/'map/Earth3/scenarios'/d) for d in deletions)

# ---------- copy work ----------
print('== copy work:', WORK)
r = run(f"cp -a '{SRC}' '{WORK}'")
need(r.returncode == 0 and WORK.is_dir(), 'copy work failed ' + r.stderr[:200])

# ---------- apply ----------
def cand_path(rel):
    p1 = B1/'candidate'/rel
    if p1.is_file(): return p1
    return B2/'candidate'/rel
for rel in rels:
    srcf = cand_path(rel)
    need(srcf.is_file(), f'candidate missing: {rel}')
    dst = WORK/rel
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(srcf, dst)

# ---------- deletions ----------
for d in deletions:
    run(f"rm -rf '{WORK}/map/Earth3/scenarios/{d}'")

# ---------- stage ----------
(STAGE/'assets').mkdir(parents=True, exist_ok=True)
stage_rows = []
for rel in rels:
    s = WORK/rel
    dst = STAGE/'assets'/rel
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(s, dst)
    stage_rows.append(['assets/' + rel, sha_f(dst), s.stat().st_size])
with open(REP/'stage_list.tsv', 'w', encoding='utf-8', newline='') as f:
    w = csv.writer(f, delimiter='\t'); w.writerow(['apk_path','sha256','bytes']); w.writerows(stage_rows)
(REP/'deletions_used.txt').write_text('\n'.join(deletions) + '\n', encoding='utf-8')

# ---------- V1: applied sha match ----------
v1_fail = [rel for rel in rels if sha_f(WORK/rel) != sha_f(cand_path(rel))]
need(not v1_fail, 'applied sha mismatch: ' + ','.join(v1_fail))

# ---------- V2: range scan ----------
FIELDS = ['RequiredTechID','REQUIRED_TECHNOLOGY','TechnologyID','CivDefault_Technology','RequiredTech','RequiredTech2']
pat = re.compile(r'(?m)^([ \t]*(?:' + '|'.join(FIELDS) + r')[ \t]*:[ \t]*)([^\r\n,]*)(,?)')
viol = []; review = []
def check_file(fp, rel):
    t = fp.read_text(encoding='utf-8')
    for m in pat.finditer(t):
        val = m.group(2).strip()
        if '[' in val or not re.fullmatch(r'-?\d+', val):
            continue
        v = int(val)
        if not (-2 <= v <= 31):
            (review if rel == 'game/AirUnit/AircraftTypes.json' else viol).append((rel, val))
    for m in re.finditer(r'(?m)^[ \t]*(RequiredTechID)[ \t]*:[ \t]*\[([^\]]*)\]', t):
        for x in re.findall(r'-?\d+', m.group(2)):
            if not (-2 <= int(x) <= 31):
                viol.append((rel, '[' + x + ']'))
for fp in sorted((WORK/'game').rglob('*.json')):
    check_file(fp, str(fp.relative_to(WORK)))
KEEP_SET = {'qianxi','ModernWorld','WW2','USA_States','brazil','SouthAmerica'}
for d in KEEP_SET:
    for fp in sorted((WORK/'map/Earth3/scenarios'/d).rglob('*.json')):
        check_file(fp, str(fp.relative_to(WORK)))
need(not viol, 'out-of-range tech refs: ' + json.dumps(viol[:10], ensure_ascii=False))

# ---------- V3: structural ----------
tech = (WORK/'game/technologies/Technologies.json').read_text(encoding='utf-8')
ids = re.findall(r'(?m)^\t\t\tID: (\d+),$', tech)
need(len(ids) == 32 and [int(x) for x in ids] == list(range(32)), 'tech nodes !=32/0..31')
gov = (WORK/'game/Governments.json').read_text(encoding='utf-8')
need(gov.count('REQUIRED_TECHNOLOGY: -1,') == 20, 'governments -1 count !=20')
for b in ['Bundle.properties','Bundle_cn_sp.properties','Bundle_cn_tr.properties']:
    c = (WORK/'game/languages'/b).read_text(encoding='utf-8')
    need(c.count('ModernTechFoundation') == 1, f'{b} missing ModernTechFoundation')
scn_dirs = sorted([p.name for p in (WORK/'map/Earth3/scenarios').iterdir() if p.is_dir()])
need(scn_dirs == sorted(KEEP_SET), f'scenario dirs mismatch: {scn_dirs}')
for d in deletions:
    need(not (WORK/'map/Earth3/scenarios'/d).exists(), f'deleted dir still exists: {d}')
st = (WORK/'map/Earth3/Scenarios.txt').read_bytes().decode('utf-8')
need(st == 'qianxi;ModernWorld;WW2;USA_States;brazil;SouthAmerica;', 'Scenarios.txt content mismatch')
ww2 = (WORK/'map/Earth3/scenarios/WW2/Data.json').read_text(encoding='utf-8')
_c0 = len(re.findall(r'TechnologyID\s*:\s*0(?![0-9])', ww2))
_c66 = len(re.findall(r'TechnologyID\s*:\s*66(?![0-9])', ww2))
need(_c0 == 48 and _c66 == 0, f'WW2 data counts wrong (0:{_c0}, 66:{_c66})')
exp = {'qianxi':15,'ModernWorld':15,'WW2':6,'USA_States':19,'brazil':16,'SouthAmerica':19}
for k, v in exp.items():
    t = (WORK/'map/Earth3/scenarios'/k/'Details.json').read_text(encoding='utf-8')
    m = re.search(r'CivDefault_Technology\s*:\s*(\d+),', t)
    need(m is not None and int(m.group(1)) == v, f'{k} CivDefault != {v}')

# ---------- V4: counts ----------
work_total = count_files(WORK)
need(src_total - work_total == del_total, f'count diff {src_total-work_total} != deleted {del_total}')

# ---------- report ----------
info = {'result': 'PASS' if not fails else 'FAIL',
        'applied': len(rels), 'deletions': len(deletions), 'deleted_files': del_total,
        'src_files': src_total, 'work_files': work_total, 'stage_files': len(stage_rows),
        'viol': viol, 'review': review, 'fails': fails}
(REP/'apply_report.json').write_text(json.dumps(info, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
lines = ['# B1+B2 联合应用报告', '', '## 结果: ' + ('✅ PASS' if not fails else '❌ FAIL'), '',
         f"- 应用文件: {len(rels)}", f"- 删除目录: {len(deletions)}（文件 {del_total}）",
         f"- 源文件数: {src_total} → 工作副本 {work_total}", f"- STAGE: {len(stage_rows)} 文件", '',
         '## 未决/复核', '- out-of-range: ' + (json.dumps(viol, ensure_ascii=False) or '无'),
         '- review: ' + (json.dumps(review, ensure_ascii=False) or '无')]
if fails:
    lines += ['', '## 失败项'] + ['- ' + x for x in fails]
(REP/'apply_report.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
print('REPORT:', REP)
print('RESULT:', 'PASS' if not fails else 'FAIL')
sys.exit(0 if not fails else 2)