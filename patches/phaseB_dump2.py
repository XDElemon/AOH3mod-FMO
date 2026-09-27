# -*- coding: utf-8 -*-
# phaseB_dump2.py —— 精确抽取：从补丁脚本的“三引号字符串块”里取方法正文（干净版）
import os, re
SRC = '/tmp/docpack'
OUT = '/sdcard/GLG/历史23/r6s5/phaseB_verbatim2'
os.makedirs(OUT, exist_ok=True)
rows = []
for f in sorted(os.listdir(SRC)):
    if not f.endswith('.py'): continue
    s = open(os.path.join(SRC, f), encoding='utf-8', errors='replace').read()
    for m in re.finditer(r"('''|\"\"\")([\s\S]*?)\1", s):
        block = m.group(2)
        if '.method' not in block or '.end method' not in block: continue
        for mm in re.finditer(r'\.method[^\n]*\n[\s\S]*?\.end method', block):
            body = mm.group(0)
            head = body.split('\n', 1)[0]
            nm = None
            g = re.search(r'->([A-Za-z0-9_$]+)\(', head) or re.search(r'\s([A-Za-z0-9_$]+)\(', head)
            if g: nm = g.group(1)
            if not nm: continue
            fn = '%s__%s.txt' % (nm, f.replace('.py', ''))
            open(os.path.join(OUT, fn), 'w', encoding='utf-8').write(body)
            rows.append((nm, f, len(body)))
rows.sort()
for nm, f, ln in rows:
    print('%-26s %-22s %5d B' % (nm, f, ln))
print()
print('干净件数 =', len(rows), '→', OUT)