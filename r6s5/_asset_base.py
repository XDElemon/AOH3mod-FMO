#!/usr/bin/env python3
# 资产底座：建筑全名单 + 各系统目录文件数
import zipfile, re, collections

A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d137.apk'
z = zipfile.ZipFile(A)

def names_of(member, key='Name'):
    txt = z.read(member).decode('utf-8', errors='replace').replace('\r', '')
    out = []
    for m in re.finditer(r'\{(.*?)\n\s*\},', txt, re.S):
        b = m.group(1)
        mm = re.search(r'Name:\s*(?:\[)?"?([^"\],]*)', b)
        tt = re.search(r'RequiredTechID:\s*\[?(-?\d+)', b)
        if mm:
            out.append((mm.group(1).strip(), tt.group(1) if tt else '-'))
    return out

print('=== 建筑（Buildings.json）===')
b1 = names_of('assets/game/buildings/Buildings.json')
for i, (n, t) in enumerate(b1):
    print('   %-3d %-30s tech=%s' % (i + 1, n, t))
print('   小计 %d' % len(b1))

print()
print('=== 资源建筑（BuildingsResources.json）===')
b2 = names_of('assets/game/buildings/BuildingsResources.json')
print('   ' + ' / '.join(n for n, _ in b2))
print('   小计 %d' % len(b2))

print()
print('=== 可作"领域底座"的系统目录 ===')
alls = z.namelist()
for d in ['assets/game/nuclear/', 'assets/game/missions/', 'assets/game/laws/', 'assets/game/advantages/',
          'assets/game/legacies/', 'assets/game/advisors/', 'assets/game/diseases/', 'assets/game/events/',
          'assets/game/generals/', 'assets/game/wonders/', 'assets/map/Earth3/wonders/']:
    fs = [n for n in alls if n.startswith(d) and not n.endswith('/')]
    print('   %-32s %d 个文件' % (d, len(fs)))
    for n in fs[:6]:
        print('        ', n.split('assets/', 1)[-1])