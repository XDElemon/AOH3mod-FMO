# -*- coding: utf-8 -*-
# B3 raw 字节核验（不经文本模式，防止自动换行转换）
OUT = '/sdcard/GLG/历史23/build_inputs/b3/out'
for f in ['assets/game/technologies/Technologies.json',
          'assets/game/units/AirFighter.json',
          'assets/game/units/AirBomber.json',
          'assets/game/languages/Bundle.properties',
          'assets/game/languages/Bundle_cn_sp.properties',
          'assets/game/languages/Bundle_cn_tr.properties',
          'assets/map/Earth3/scenarios/qianxi/Data.json',
          'assets/map/Earth3/scenarios/WW2/Data.json']:
    d = open(OUT + '/' + f, 'rb').read()
    print('%-52s %7d B  CRLF=%-6d LF=%-6d 尾=%r' % (f.split('/')[-1], len(d), d.count(b'\r\n'), d.count(b'\n'), d[-48:]))

print()
import re
for s in ['qianxi', 'ModernWorld', 'WW2', 'USA_States', 'brazil', 'SouthAmerica']:
    d = open(OUT + '/assets/map/Earth3/scenarios/%s/Data.json' % s, encoding='utf-8').read()
    miss = len(re.findall(r'[^\s,{]\n\tTechnologyID', d))
    dbl = d.count(',,\n')
    print('%-14s 缺逗号=%d 双逗号=%d TechID=%d' % (s, miss, dbl, d.count('TechnologyID')))