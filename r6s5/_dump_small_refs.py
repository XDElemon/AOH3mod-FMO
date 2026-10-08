#!/usr/bin/env python3
# 逐个 dump 小文件的"科技引用"上下文
import zipfile, re

A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d137.apk'
z = zipfile.ZipFile(A)
kre = re.compile(r'(RequiredTechID|RequiredTech|TechnologyID|UnlockedTechnologies|CivDefault_Technology|TechLevel|Technolog)', re.I)

targets = [
    'assets/game/AirUnit/Aircraft.json',
    'assets/game/AirUnit/AircraftTypes.json',
    'assets/game/laws/', 'assets/game/resources/', 'assets/game/advantages/',
    'assets/game/gameValues/', 'assets/game/Governments.json',
]
names = z.namelist()
picked = []
for t in targets:
    if t.endswith('/'):
        picked += [n for n in names if n.startswith(t) and (n.endswith('.json') or n.endswith('.txt'))]
    else:
        picked += [n for n in names if n == t]

for n in picked:
    txt = z.read(n).decode('utf-8', errors='replace').replace('\r', '')
    lines = txt.splitlines()
    hits = [(i, l.strip()) for i, l in enumerate(lines) if kre.search(l)]
    if not hits:
        continue
    print('### %s  (%d 行, 命中 %d)' % (n.split('assets/', 1)[-1], len(lines), len(hits)))
    for i, l in hits[:12]:
        # 往上看 3 行找 Name
        name = ''
        for j in range(i, max(-1, i - 6), -1):
            m = re.search(r'Name:\s*(?:\[)?"?([^"\],]*)', lines[j])
            if m:
                name = m.group(1).strip(); break
        print('    %-30s %s' % (name, l[:110]))
    print()