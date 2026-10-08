#!/usr/bin/env python3
# 在 APK 内若干成员里搜关键词：_grep_apk.py <apk> <成员正则> <关键词> [显示条数]
import sys, zipfile, re

apk, mpat, kw = sys.argv[1], sys.argv[2], sys.argv[3]
show = int(sys.argv[4]) if len(sys.argv) > 4 else 5

z = zipfile.ZipFile(apk)
mre = re.compile(mpat, re.I)
kre = re.compile(kw, re.I)
targets = [n for n in z.namelist() if mre.search(n)]
print('匹配成员数=%d' % len(targets))
for n in targets[:20]:
    try:
        data = z.read(n)
    except Exception as e:
        print('  [%s] 读取失败 %s' % (n, e)); continue
    txt = data.decode('utf-8', errors='replace')
    hits = [l for l in txt.splitlines() if kre.search(l)]
    print('  [%s] %d 字节, 命中 %d 行' % (n, len(data), len(hits)))
    for l in hits[:show]:
        print('        ', l.strip()[:160])