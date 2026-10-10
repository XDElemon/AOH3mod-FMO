# -*- coding: utf-8 -*-
# B3 施工准备：从当前基线 r6d259.apk 读原文件，核对精确格式（缩进/换行/尾字节/字段摆放）
import zipfile, re

A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d259.apk'
z = zipfile.ZipFile(A)
names = set(z.namelist())

print('== APK 关键路径存在性 ==')
for n in ['assets/game/technologies/Technologies.json',
          'assets/game/units/AirFighter.json',
          'assets/game/languages/Bundle.properties',
          'assets/game/languages/Bundle_cn_sp.properties',
          'assets/game/languages/Bundle_cn_tr.properties',
          'assets/map/Earth3/scenarios/qianxi/Data.json',
          'assets/map/Earth3/scenarios/WW2/Data.json']:
    print('%-70s %s' % (n, n in names))
print()

def show(tag, data, seg=200, tail=160):
    txt = data.decode('utf-8', 'replace')
    crlf = txt.count('\r\n')
    lf = txt.count('\n')
    print('== %s ==' % tag)
    print('  bytes=%d  lines=%d  CRLF=%d  LF=%d(总)' % (len(data), lf, crlf, lf))
    print('  HEAD:', repr(txt[:seg]))
    print('  TAIL:', repr(txt[-tail:]))
    print()

show('units/AirFighter.json', z.read('assets/game/units/AirFighter.json'), 260, 200)
show('technologies/Technologies.json(尾1200)', z.read('assets/game/technologies/Technologies.json'), 120, 1200)

b = z.read('assets/game/languages/Bundle.properties')
show('Bundle.properties(尾300)', b, 100, 300)
b2 = z.read('assets/game/languages/Bundle_cn_sp.properties')
show('Bundle_cn_sp(尾300)', b2, 80, 300)

q = z.read('assets/map/Earth3/scenarios/qianxi/Data.json').decode('utf-8', 'replace')
print('== qianxi/Data.json 前2条 ==')
i = q.find('},', 200)
print(repr(q[:i+2]))
print('  CivTAG数 =', q.count('CivTAG'), ' TechnologyID数 =', q.count('TechnologyID'))
print()

w = z.read('assets/map/Earth3/scenarios/WW2/Data.json').decode('utf-8', 'replace')
print('== WW2/Data.json 含 TechnologyID 的首条记录 ==')
m = re.search(r'\{[^{}]*?TechnologyID[^{}]*?\}', w)
print(repr(m.group(0)) if m else 'NOT FOUND')
print('  CivTAG数 =', w.count('CivTAG'), ' TechnologyID数 =', w.count('TechnologyID'))
print()

u = z.read('assets/map/Earth3/scenarios/USA_States/Data.json').decode('utf-8', 'replace')
print('== USA_States 含 TechnologyID 的首条 ==')
m = re.search(r'\{[^{}]*?TechnologyID[^{}]*?\}', u)
print(repr(m.group(0)) if m else 'NOT FOUND')
print('  CivTAG数 =', u.count('CivTAG'), ' TechnologyID数 =', u.count('TechnologyID'))
print()

print('== Technologies.json 当前节点数（粗数） ==')
t = z.read('assets/game/technologies/Technologies.json').decode('utf-8', 'replace')
print('  ID: 出现次数 =', len(re.findall(r'\bID:\s*\d+', t)))
print('  最后3个ID =', re.findall(r'\bID:\s*(\d+)', t)[-3:])