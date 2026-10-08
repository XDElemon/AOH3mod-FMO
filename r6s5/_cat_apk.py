#!/usr/bin/env python3
# 读取 APK 内某个文本成员 / 列出 Earth3 顶层条目
import sys, zipfile

apk = sys.argv[1]
mode = sys.argv[2]          # list | cat
arg = sys.argv[3] if len(sys.argv) > 3 else ''
lim = int(sys.argv[4]) if len(sys.argv) > 4 else 100

z = zipfile.ZipFile(apk)
if mode == 'list':
    pref = arg or 'assets/map/Earth3/'
    hits = sorted({n for n in z.namelist() if n.startswith(pref)})
    depth = pref.count('/')
    tops = sorted({'/'.join(n.split('/')[:depth + 1]) for n in hits})
    print('--- %s 下第 %d 层条目 (%d) ---' % (pref, depth, len(tops)))
    for t in tops[:lim]:
        print('   ', t)
else:
    data = z.read(arg)
    txt = data.decode('utf-8', errors='replace')
    lines = txt.splitlines()
    print('--- %s (%d 行 / %d 字节) ---' % (arg, len(lines), len(data)))
    for l in lines[:lim]:
        print(l)