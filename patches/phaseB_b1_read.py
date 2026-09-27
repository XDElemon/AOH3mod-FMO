# -*- coding: utf-8 -*-
# phaseB_b1_read.py —— 打印 B1 需要的逐字件正文 + 现树关键事实
import os, re
V = '/sdcard/GLG/历史23/r6s5/phaseB_verbatim/'
for f in ['hasMilitaryBuilding__r4c185_event.txt', 'milRaw__r4c183_sticky.txt',
          'provinceHasAirport__r4c188_airreg.txt', 'noteProvinceBuildings__r4c185_event.txt']:
    p = V + f
    print('#' * 12, f, '#' * 12)
    print(open(p, encoding='utf-8').read() if os.path.exists(p) else '(缺)')
    print()

AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = open(AFM, encoding='utf-8').read()
print('#' * 12, 'AFM <clinit> 与字段', '#' * 12)
m = re.search(r'\.method static constructor <clinit>\(\)V[\s\S]{0,900}?\.end method', s)
print(m.group(0)[:900] if m else '(无 <clinit> ⇒ 需要新增一个)')
print()
print('现有静态字段前缀统计：')
for f2 in sorted(set(re.findall(r'\.field public static ([A-Za-z0-9_$]+):', s))):
    print('   ', f2)
print()

print('#' * 12, 'r4c190 距离钳位（补丁原文）', '#' * 12)
c = open('/tmp/docpack/r4c190_clamp.py', encoding='utf-8').read()
print(c[:1500])

print()
print('#' * 12, 'r4c185 的 Province 钩子插入（补丁原文节选）', '#' * 12)
e = open('/tmp/docpack/r4c185_event.py', encoding='utf-8').read()
i = e.find('Province 4 个方法挂')
print(e[max(0, i - 200):i + 1800] if i > 0 else e[-1800:])