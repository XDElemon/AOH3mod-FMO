#!/usr/bin/env python3
# 列出 HOI4 各科技文件的顶层技术名 + start_year 范围
import os, re, glob

D = '/sdcard/GLG/历史23/Hearts of Iron IV/common/technologies'

def parse(path):
    out = []
    cur = None
    depth_tab = None
    for raw in open(path, encoding='utf-8', errors='replace'):
        line = raw.replace('\r', '')
        if not line.strip():
            continue
        tabs = len(line) - len(line.lstrip('\t'))
        m = re.match(r'^\t([a-z_0-9]+)\s*=\s*\{', line)
        if tabs == 1 and m:
            cur = {'name': m.group(1), 'year': None, 'cost': None, 'leads': [], 'equip': []}
            out.append(cur)
            continue
        if cur is not None:
            mm = re.match(r'^\t\t(start_year|research_cost)\s*=\s*([-\w.]+)', line)
            if mm:
                key, val = mm.group(1), mm.group(2)
                if key == 'start_year':
                    cur['year'] = val
                else:
                    cur['cost'] = val
            mm = re.match(r'^\t\t\tleads_to_tech\s*=\s*([\w]+)', line)
            if mm:
                cur['leads'].append(mm.group(1))
    return out

for p in sorted(glob.glob(os.path.join(D, '*.txt'))):
    techs = parse(p)
    years = [int(t['year']) for t in techs if t['year'] and re.match(r'^-?\d+$', t['year'])]
    span = '%s..%s' % (min(years), max(years)) if years else '-'
    print('### %s  (%d 项, 年份 %s)' % (os.path.basename(p), len(techs), span))
    print('   ' + ' '.join(t['name'] for t in techs))
    print()