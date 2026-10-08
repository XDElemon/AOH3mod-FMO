#!/usr/bin/env python3
# 钢四科技系统：附属子系统的机制字段
import os, re, glob, collections

H = '/sdcard/GLG/历史23/Hearts of Iron IV'

def key_counter(paths, indent):
    c = collections.Counter()
    for p in paths:
        for raw in open(p, encoding='utf-8', errors='replace'):
            line = raw.replace('\r', '')
            if not line.strip() or line.strip().startswith('#'):
                continue
            tabs = len(line) - len(line.lstrip('\t'))
            if tabs == indent:
                m = re.match(r'^\t+([A-Za-z_0-9]+)\s*=', line)
                if m:
                    c[m.group(1)] += 1
    return c

def show(title, paths, indent, top=40):
    print('##### %s #####' % title)
    c = key_counter(paths, indent)
    for k, v in c.most_common(top):
        print('   %-40s %d' % (k, v))
    print()

show('特殊项目 projects（顶层键）', glob.glob(os.path.join(H, 'common/special_projects/projects/*.txt')), 1)
show('特殊项目 projects（项目内字段）', glob.glob(os.path.join(H, 'common/special_projects/projects/*.txt')), 2)
show('特殊项目 prototype_rewards', glob.glob(os.path.join(H, 'common/special_projects/prototype_rewards/*.txt')), 1)
show('特殊项目 specialization', glob.glob(os.path.join(H, 'common/special_projects/specialization/*.txt')), 1)
show('MIO organizations（机构内字段）', glob.glob(os.path.join(H, 'common/military_industrial_organization/organizations/*.txt')), 2, 30)
show('MIO policies', glob.glob(os.path.join(H, 'common/military_industrial_organization/policies/*.txt')), 1, 20)
show('科技共享 groups', glob.glob(os.path.join(H, 'common/technology_sharing/*.txt')), 1, 20)
show('科学家 traits', glob.glob(os.path.join(H, 'common/scientist_traits/*.txt')), 1, 20)
show('大学说 grand_doctrines 字段', glob.glob(os.path.join(H, 'common/doctrines/grand_doctrines/*.txt')), 1, 25)
show('子学说 subdoctrines 字段', glob.glob(os.path.join(H, 'common/doctrines/subdoctrines/*/*.txt')), 2, 25)

print('##### 偷科技 / 蓝图（operations & raids 关键词）#####')
for d in ('common/operations', 'common/raids', 'common/intelligence_agencies'):
    for p in glob.glob(os.path.join(H, d, '**/*.txt'), recursive=True):
        txt = open(p, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'^.*(steal|blueprint|tech).*$', txt, re.I | re.M):
            l = m.group(0).strip()
            if l and not l.startswith('#'):
                print('   %-52s | %s' % (os.path.basename(p), l[:90]))
                break

print()
print('##### 研究类 modifier 名称（modifier_definitions）#####')
p = os.path.join(H, 'common/modifier_definitions')
if os.path.isdir(p):
    c = collections.Counter()
    for f in glob.glob(os.path.join(p, '*.txt')):
        txt = open(f, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'^([a-z_0-9]*research[a-z_0-9]*)\s*=', txt, re.M | re.I):
            c[m.group(1)] += 1
    for k, v in c.most_common(30):
        print('   %-50s %d' % (k, v))