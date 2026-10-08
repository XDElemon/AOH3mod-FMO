#!/usr/bin/env python3
# 宽容解析 AoH3 单位文件（伪 JSON）：正则取每条记录
import os, re, glob

D = '/tmp/techsrc/units'

def get(block, key, default='?'):
    m = re.search(key + r'\s*:\s*("([^"]*)"|[-\w.]+)', block)
    if not m:
        return default
    return m.group(2) if m.group(2) is not None else m.group(1)

for p in sorted(glob.glob(os.path.join(D, '*.json'))):
    name = os.path.basename(p)
    s = open(p, encoding='utf-8', errors='replace').read()
    # 每条记录以 { 开始、以 }, 结束
    blocks = re.findall(r'\{(.*?)\n\s*\},', s, re.S)
    print('== %s  (%d 条)' % (name, len(blocks)))
    for b in blocks:
        print('   %-26s lvl=%-3s tech=%-5s img=%-5s cost=%s' % (
            get(b, 'Name'), get(b, 'UnitLevel'), get(b, 'RequiredTechID'),
            get(b, 'ImageID'), get(b, 'Cost')))