#!/usr/bin/env python3
# 汇总 Earth3 全部剧本的 Details.json 字段
import sys, zipfile, json, re

A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d137.apk'
z = zipfile.ZipFile(A)
tags = z.read('assets/map/Earth3/Scenarios.txt').decode('utf-8', 'replace').strip().strip(';').split(';')

def field(txt, key, default='?'):
    m = re.search(r'\b' + key + r'\s*:\s*("([^"]*)"|[-\w.]+)', txt)
    if not m:
        return default
    return m.group(2) if m.group(2) is not None else m.group(1)

print('%-18s %-14s %-6s %-5s %-5s %-6s %-6s %s' % ('tag', 'Name', 'Year', 'Age', 'Civs', 'CivDefT', 'Camp', '目录文件数'))
rows = []
for t in tags:
    try:
        txt = z.read('assets/map/Earth3/scenarios/%s/Details.json' % t).decode('utf-8', 'replace')
    except KeyError:
        print('%-18s [缺失 Details.json]' % t); continue
    n = len([x for x in z.namelist() if x.startswith('assets/map/Earth3/scenarios/%s/' % t)])
    row = (t, field(txt, 'Name'), field(txt, 'Year'), field(txt, 'Age'),
           field(txt, 'Civs'), field(txt, 'CivDefault_Technology'), field(txt, 'Campaign'), n)
    rows.append(row)
    print('%-18s %-14s %-6s %-5s %-5s %-6s %-6s %s' % row)

# 按年份排序输出
print()
print('--- 按开局年份排序 ---')
def y(r):
    try:
        return int(r[2])
    except Exception:
        return 9999
for r in sorted(rows, key=y):
    print('   %-6s  %s' % (r[2], r[0]))