# -*- coding: utf-8 -*-
# phaseB_dump.py —— 把 docpack 里的逐字方法体导出到 r6s5/phaseB_verbatim/（只读素材导出，不改树）
import os, re, json
SRC = '/tmp/docpack'
OUT = '/sdcard/GLG/历史23/r6s5/phaseB_verbatim'
os.makedirs(OUT, exist_ok=True)

# 关注的方法名（Phase B 全套）
WANT = ['strikeScore','bomberIntelOk','bomberIntelOkLegacy','hasMilitaryBuilding','hasWatchBuilding','milRaw',
        'provinceHasAirport','noteProvinceBuildings','noteAirportProvince','registerAirport',
        'roveTick','rovePickTarget','roveDispatchOnce','roveReset','roveWarmScan','updateOffensives',
        'loadStrikeConfig','cfgReadText','cfgParseIntSet','cfgExtractInt','cfgExtractIntSet','cfgReadAsset',
        'dbgCand','dbgSel','pickStrikeTarget','tryStrikeForAirport','ikLog','ikLog3','ikState','trackGroundTarget']

rows = []
for f in sorted(os.listdir(SRC)):
    if not f.endswith('.py'): continue
    s = open(os.path.join(SRC, f), encoding='utf-8', errors='replace').read()
    for m in re.finditer(r'\.method[^\n]*', s):
        head = m.group(0)
        nm = None
        mm = re.search(r'->([A-Za-z0-9_$]+)\(', head) or re.search(r'\s([A-Za-z0-9_$]+)\(', head)
        if mm: nm = mm.group(1)
        if not nm or nm not in WANT: continue
        end = s.find('.end method', m.end())
        if end < 0: continue
        body = s[m.start():end + len('.end method')]
        # 过滤掉“只有行号/被截断”的片段：要求含 return 或 invoke
        if ('return' not in body) or len(body) < 80: continue
        fn = '%s__%s.txt' % (nm, f.replace('.py',''))
        open(os.path.join(OUT, fn), 'w', encoding='utf-8').write(body)
        rows.append((nm, f, len(body), fn))

rows.sort()
byM = {}
for nm, f, ln, fn in rows: byM.setdefault(nm, []).append((f, ln, fn))
print('%-26s %s' % ('方法', '可用来源（脚本:字节）'))
for nm in sorted(byM):
    print('%-26s %s' % (nm, ', '.join('%s:%d' % (f.replace('.py',''), ln) for f, ln, _ in byM[nm])))
print()
print('导出文件数 =', len(rows), '→', OUT)
print('缺件（WANT 里没有任何来源的）:', [w for w in WANT if w not in byM])
