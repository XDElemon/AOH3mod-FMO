# -*- coding: utf-8 -*-
# phaseB_dep.py —— 第一轮：逐字件依赖抽取 + 现有树 API 存在性核对
import os, re
VB = '/sdcard/GLG/历史23/r6s5/phaseB_verbatim'
TREE = '/tmp/revx'

# 逐字件清单（取每件的最新来源）
PIECES = {
 'hasMilitaryBuilding': 'hasMilitaryBuilding__r4c185_event.txt',
 'milRaw': 'milRaw__r4c183_sticky.txt',
 'provinceHasAirport': 'provinceHasAirport__r4c188_airreg.txt',
 'noteProvinceBuildings': 'noteProvinceBuildings__r4c185_event.txt',
 'strikeScore': 'strikeScore__r4c186_tier.txt',
 'bomberIntelOk': 'bomberIntelOk__r4c193_cfg.txt',
 'roveTick': 'roveTick__r4c197_rove.txt',
 'rovePickTarget': 'rovePickTarget__r4c197_rove.txt',
 'roveDispatchOnce': 'roveDispatchOnce__r4c197_rove.txt',
 'roveReset': 'roveReset__r4c197_rove.txt',
 'roveWarmScan': 'roveWarmScan__r4c197_rove.txt',
 'loadStrikeConfig': 'loadStrikeConfig__r4c193_cfg.txt',
 'cfgReadAsset': 'cfgReadAsset__r4c204_loader.txt',
 'cfgReadText': 'cfgReadText__r4c193_cfg.txt',
 'cfgExtractInt': 'cfgExtractInt__r4c197_rove.txt',
 'cfgExtractIntSet': 'cfgExtractIntSet__r4c197_rove.txt',
 'dbgCand': 'dbgCand__r4c187_cand.txt',
 'dbgSel': 'dbgSel__r4c191_minsel.txt',
 'hasWatchBuilding': 'hasWatchBuilding__r4c193_cfg.txt',
}

# 现有树索引：类→方法名/字段
idx = {}
for dp, dn, fn in os.walk(TREE):
    for f in fn:
        if not f.endswith('.smali'): continue
        p = os.path.join(dp, f)
        cls = '/' + os.path.relpath(p, TREE)[:-6]
        s = open(p, encoding='utf-8', errors='replace').read()
        idx[cls] = (set(re.findall(r'\.method[^\n]*?->([A-Za-z0-9_$<>]+)\(', s)) | set(re.findall(r'\.method[^(]*?\s([A-Za-z0-9_$<>]+)\(', s)),
                   set(re.findall(r'\.field[^\n]*?->([A-Za-z0-9_$]+):', s)))

def have(cls, name):
    cls = cls.replace('.', '/')
    if not cls.startswith('/'): cls = '/' + cls
    if cls not in idx: return None      # 类不存在
    m, fl = idx[cls]
    return name in m or name in fl

print('%-24s %-6s %s' % ('逐字件', '寄存器', '依赖（现有树存在性）'))
req_all = set()
for tag, fn in PIECES.items():
    p = os.path.join(VB, fn)
    if not os.path.exists(p):
        print('%-24s   ??   文件缺：%s' % (tag, fn)); continue
    body = open(p, encoding='utf-8').read()
    regs = re.search(r'\.registers (\d+)', body)
    calls = set(re.findall(r'->([A-Za-z0-9_$<>\-]+)\(', body))
    fields = set(re.findall(r'->([A-Za-z0-9_$]+):[A-Za-z]', body))
    deps = []
    # 只查跨类依赖里我们可能缺的：Province / BuildingsManager / Game / FileManager / Airport
    for kw in ('getEconomy', 'getBuilding', 'AIRPORT_BUILDING_ID', 'getBuildings', 'getProvinces', 'loadFile',
               'getString', 'getCivID', 'getOccupiedByCivID', 'getArmySize', 'getFogDrawArmy', 'getCenterX_Real',
               'getProvince', 'getAirportByProvinceID', 'getInstance', 'getAirportsForCiv', 'isAtWar', 'getRandom'):
        if kw in body:
            deps.append(kw)
    print('%-24s %-6s %s' % (tag, regs.group(1) if regs else '?', ', '.join(deps)))
    req_all.update(deps)

print()
print('=== 逐条核对关键 API（类::方法 → 是否存在）===')
CHECKS = [
 ('aoc/kingdoms/lukasz/map/province/Province', 'getEconomy'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'addNewBuilding'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'addNewBuilding_LoadScenario'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'destroyBuilding'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'destroyBuilding_ScenarioEditor'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'getCivID'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'getArmySize'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'getFogDrawArmy'),
 ('aoc/kingdoms/lukasz/map/province/Province', 'getBuildings'),
 ('aoc/kingdoms/lukasz/menusInGame/Buildings/BuildingsManager', 'AIRPORT_BUILDING_ID'),
 ('aoc/kingdoms/lukasz/jakowski/Game', 'oR'),
 ('aoc/kingdoms/lukasz/jakowski/Game', 'getProvince'),
 ('aoc/kingdoms/lukasz/jakowski/file/FileManager', 'loadFile'),
 ('aoc/kingdoms/lukasz/map/battles/AirForceManager', 'provinceDistance'),
 ('aoc/kingdoms/lukasz/map/battles/AirForceManager', 'registerAirport'),
]
for cls, nm in CHECKS:
    r = have(cls, nm)
    print('%-62s %-28s %s' % (cls, nm, 'OK' if r else ('**类不存在**' if r is None else '**缺失**')))
print()
print('=== 撞名（现树已有同名方法/字段的 Phase B 名）===')
for nm in PIECES:
    hits = [c for c, (m, fl) in idx.items() if nm in m or nm in fl]
    if hits: print('   %-24s 命中 %d 个类: %s' % (nm, len(hits), ', '.join(sorted(hits)[:3])))