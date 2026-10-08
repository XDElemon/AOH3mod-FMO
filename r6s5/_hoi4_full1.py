#!/usr/bin/env python3
# 钢四科技系统：机制字段全集扫描
import os, re, glob, collections

H = '/sdcard/GLG/历史23/Hearts of Iron IV'
TECH = os.path.join(H, 'common/technologies')

def keys_in_blocks(path, block_re, key_indent):
    """收集块内 key_indent 级字段名"""
    c = collections.Counter()
    depth = 0
    for raw in open(path, encoding='utf-8', errors='replace'):
        line = raw.replace('\r', '')
        if not line.strip() or line.strip().startswith('#'):
            continue
        tabs = len(line) - len(line.lstrip('\t'))
        if tabs == key_indent:
            m = re.match(r'^\t+([A-Za-z_0-9]+)\s*=', line)
            if m:
                c[m.group(1)] += 1
    return c

print('########## 1) 技术定义里用到的字段全集（13 个文件汇总）##########')
total = collections.Counter()
for p in sorted(glob.glob(os.path.join(TECH, '*.txt'))):
    total += keys_in_blocks(p, None, 2)
for k, v in total.most_common(200):
    print('   %-34s 出现 %d 次' % (k, v))

print()
print('########## 2) defines 里与"研究/科技/经验/突破"相关的参数 ##########')
dpat = re.compile(r'research|tech|xp_|breakthrough|doctrine|scientist|special_project', re.I)
for p in sorted(glob.glob(os.path.join(H, 'common/defines/*.lua'))):
    for raw in open(p, encoding='utf-8', errors='replace'):
        line = raw.rstrip()
        if dpat.search(line) and '=' in line and not line.strip().startswith('--'):
            print('   ' + line.strip()[:150])