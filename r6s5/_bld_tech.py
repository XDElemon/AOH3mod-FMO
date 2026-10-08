#!/usr/bin/env python3
# 列出建筑 / 法律 的科技依赖（含被引用科技是否在保留区）
import re, os

KEEP_MIN_COL = 27   # 保留区：col>=27

# 读取科技表：id -> (name, col)
tech = {}
for line in open('/tmp/tech_table.txt', encoding='utf-8', errors='replace'):
    if '|' not in line:
        continue
    m = re.match(r'\s*(\d+)\|"([^"]*)"\s*\|col=(\d+)', line)
    if m:
        tech[int(m.group(1))] = (m.group(2), int(m.group(3)))

def scan(path, key):
    txt = open(path, encoding='utf-8', errors='replace').read()
    txt = txt.replace('\r', '')
    out = []
    for m in re.finditer(r'\{(.*?)\n\s*\},', txt, re.S):
        b = m.group(1)
        names = re.findall(r'Name:\s*(?:\[)?"?([^"\],]*)', b)
        t = re.search(key + r':\s*\[?(-?\d+)', b)
        if not names or not t:
            continue
        out.append((names[0].strip(), int(t.group(1))))
    return out

print('=== 建筑（共 %s）===' % '?')
for name, tid in scan('/tmp/techsrc/bld/Buildings.json', 'RequiredTechID'):
    nm, col = tech.get(tid, ('<不存在>', -1))
    flag = '保留' if tid in tech and col >= KEEP_MIN_COL else '❌将被删'
    print('  %-28s tech=%-4s (%s, col=%s) %s' % (name, tid, nm, col, flag))

print()
for extra in ('BuildingsResources.json',):
    p = '/tmp/techsrc/bld/' + extra
    if os.path.exists(p):
        print('=== %s ===' % extra)
        for name, tid in scan(p, 'RequiredTechID'):
            nm, col = tech.get(tid, ('<不存在>', -1))
            flag = '保留' if tid in tech and col >= KEEP_MIN_COL else '❌将被删'
            print('  %-28s tech=%-4s (%s, col=%s) %s' % (name, tid, nm, col, flag))