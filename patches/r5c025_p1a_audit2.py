# -*- coding: utf-8 -*-
# r5c025_p1a_audit2.py —— P1a 调研第二批（只读）
import io, os, re
R = '/tmp/w3a/smali/'
B = R + 'aoc/kingdoms/lukasz/map/battles/'
def L(p): return io.open(p, encoding='utf-8').read().split('\n')
def show(tag, path, a, b, cut=112):
    X = L(path)
    print('====== %s (%s %d-%d) ======' % (tag, path.split('/')[-1], a, b))
    for i in range(a - 1, min(b, len(X))):
        s = X[i].rstrip()
        if s.strip():
            print('  %5d| %s' % (i + 1, s[:cut]))
    print('')

# 1) updatePatrols 全体
show('B1. updatePatrols(I) 全貌', B + 'AirForceManager.smali', 7494, 7560)
# 2) getEnemyProvincesInRange 全体（AI 选靶本体）
show('B2. getEnemyProvincesInRange 全貌', B + 'AirForceManager.smali', 1362, 1436)
# 3) 视野件签名 + 本体头
for nm in ('aiRadarVision', 'aiVisRadarPass', 'aiVisAirportPass'):
    print('====== B3. %s 签名与体 ======' % nm)
    X = L(B + 'AirForceManager.smali')
    for i, ln in enumerate(X):
        if ln.startswith('.method') and nm in ln:
            for j in range(i, min(i + 26, len(X))):
                t = X[j].rstrip()
                if t.strip():
                    print('  %5d| %s' % (j + 1, t[:112]))
            break
    print('')
# 4) 复用件签名
for nm in ('pickIdleDivKey', 'hasActivePatrol', 'getProvincesInRange', 'getRandomBorderProvince', 'provinceDistance'):
    X = L(B + 'AirForceManager.smali')
    for i, ln in enumerate(X):
        if ln.startswith('.method') and (nm + '(') in ln:
            print('  %s -> %s:%d  %s' % (nm, 'AFM', i + 1, ln.strip()[:100]))
            break
print('')
# 5) createStrategicBombing：取机逻辑（看对机型/数量的要求）
show('B5. createStrategicBombing(1170)', B + 'AirMission.smali', 1170, 1230)
# 6) UI BtnMission 设 AI 模式处
show('B6. BtnMission 设 AI 模式上下文（240-262）', R + 'aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali', 240, 262)