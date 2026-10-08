#!/usr/bin/env python3
# 全量扫描 assets/game/ 与 assets/map/ 下所有文本资源里对"科技"的引用
import zipfile, re, collections

A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d137.apk'
z = zipfile.ZipFile(A)
pat = re.compile(r'(Technology|Tech|tech)', re.I)
exact = re.compile(r'(RequiredTechID|RequiredTech|TechnologyID|UnlockedTechnologies|CivDefault_Technology|Technologies|Technology)', re.I)

stat = collections.Counter()
detail = {}
for n in z.namelist():
    if n.endswith('/'):
        continue
    low = n.lower()
    if not (low.endswith('.json') or low.endswith('.txt')):
        continue
    if not (low.startswith('assets/game/') or low.startswith('assets/map/')):
        continue
    try:
        data = z.read(n)
    except Exception:
        continue
    if len(data) > 4_000_000:
        continue
    txt = data.decode('utf-8', errors='replace')
    hits = exact.findall(txt)
    if hits:
        key = re.sub(r'/[^/]*$', '', n.split('/', 2)[-1]) or '(root)'
        stat[key] += 1
        detail.setdefault(key, []).append((n, len(hits)))

print('%-52s %s' % ('资源目录', '含科技引用的文件数'))
for k, v in stat.most_common(40):
    print('  %-50s %d' % (k, v))

print()
print('--- 明细（前 30 个目录的文件示例）---')
for k, v in stat.most_common(15):
    print('### %s' % k)
    for n, c in detail[k][:8]:
        print('    %-70s 命中 %d' % (n.split('assets/', 1)[-1], c))