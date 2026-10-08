#!/usr/bin/env python3
# 列出 APK 内匹配关键词的条目（避开 /sdcard 上 unzip 大文件的坑）
import sys, zipfile, re

apk = sys.argv[1]
pat = re.compile(sys.argv[2], re.I) if len(sys.argv) > 2 else None
lim = int(sys.argv[3]) if len(sys.argv) > 3 else 40

z = zipfile.ZipFile(apk)
names = z.namelist()
print('总条目=%d' % len(names))

# 顶层目录概览
tops = {}
for n in names:
    p = n.split('/')
    if len(p) >= 2:
        tops.setdefault('/'.join(p[:2]), 0)
        tops['/'.join(p[:2])] += 1
print('--- 顶层目录 ---')
for k in sorted(tops)[:25]:
    print('   %-40s %d' % (k, tops[k]))

if pat:
    hit = [n for n in names if pat.search(n)]
    print('--- 匹配 %s 的条目 (%d) ---' % (pat.pattern, len(hit)))
    for n in hit[:lim]:
        print('   ', n)
