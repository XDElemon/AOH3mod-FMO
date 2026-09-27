# -*- coding: utf-8 -*-
# R5c016 调研：弹药（payload）相关事实抽取
import io, os, re, glob
BASE = '/tmp/w3a/smali/'
targets = ['aoc/kingdoms/lukasz/map/battles/AirMission.smali',
           'aoc/kingdoms/lukasz/map/battles/AirUnit.smali',
           'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
           'aoc/kingdoms/lukasz/map/battles/AircraftDataManager.smali',
           'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali']
def enc(L, n):
    for i in range(n, -1, -1):
        if L[i].startswith('.method'): return L[i].strip()[:70]
    return '?'
for t in targets:
    p = BASE + t
    if not os.path.exists(p): continue
    L = io.open(p, encoding='utf-8').read().split('\n')
    hits = [(i + 1, L[i].strip(), enc(L, i)) for i in range(len(L))
            if ('currentPayload' in L[i] or 'maxPayload' in L[i]) and not L[i].startswith('.field')]
    print('=== %s（%d 处）===' % (t.split('/')[-1], len(hits)))
    for ln, code, m in hits:
        print('  %-6d %-52s | %s' % (ln, code[:52], m))
print()
print('=== 机型 JSON ===')
for j in glob.glob('/sdcard/GLG/历史23/**/AircraftTypes*.json', recursive=True) + glob.glob('/sdcard/GLG/历史23/r6s5/*.json'):
    print(' 文件:', j)
    try:
        s = io.open(j, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'\{[^{}]*\}', s):
            blk = m.group(0)
            if 'Name' in blk:
                name = re.search(r'Name"\s*:\s*"([^"]+)"', blk)
                pay = re.search(r'MaxPayload"\s*:\s*"?([0-9.]+)', blk)
                rng = re.search(r'CombatRadius"\s*:\s*"?([0-9.]+)', blk)
                ga = re.search(r'GroundAttack"\s*:\s*"?([0-9.]+)', blk)
                print('   %-12s MaxPayload=%-6s CombatRadius=%-6s GroundAttack=%s' % (
                    name.group(1) if name else '?', pay.group(1) if pay else '?',
                    rng.group(1) if rng else '?', ga.group(1) if ga else '?'))
    except Exception as e:
        print('   读取失败:', e)