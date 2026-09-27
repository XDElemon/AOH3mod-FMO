# -*- coding: utf-8 -*-
# r5c025_p1a_audit.py —— P1a 调研：把"改判据"要碰的面全 dump 出来（只读）
import io, os, re, collections
R = '/tmp/w3a/smali/'
B = R + 'aoc/kingdoms/lukasz/map/battles/'
def rd(p): return io.open(p, encoding='utf-8').read().split('\n')

def show(tag, path, start, end, cut=112):
    L = rd(path)
    print('=' * 6, tag, '(%s %d-%d)' % (path.split('/')[-1], start, end), '=' * 6)
    for i in range(start - 1, min(end, len(L))):
        s = L[i].rstrip()
        if s.strip():
            print('  %5d| %s' % (i + 1, s[:cut]))
    print('')

def grep(tag, pat, root=R, cut=125, limit=60):
    print('=' * 6, tag, '=' * 6)
    n = 0
    for dp, dn, fn in os.walk(root):
        for f in fn:
            if not f.endswith('.smali'):
                continue
            p = os.path.join(dp, f)
            for i, ln in enumerate(rd(p)):
                if re.search(pat, ln):
                    print('  %s:%d| %s' % (p.replace(root, ''), i + 1, ln.strip()[:cut]))
                    n += 1
                    if n >= limit:
                        print('  ...(截断)'); return
    if n == 0:
        print('  (无匹配)')
    print('')

# 1) Airport.mode 的读/写点（含 iget/iput/sget-object 各种形式）
grep('A1. Airport;->mode 读写点', r'Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;')
# 2) 所有 Airport$Mode 枚举常量引用
grep('A2. Airport$Mode;-> 引用', r'Airport\$Mode;->')
# 3) 玩家侧巡逻切换 + 机场 UI 里 mode 相关
show('A3. toggleAirportPatrol(5590)', B + 'AirForceManager.smali', 5590, 5628)
# 4) updatePatrols 与 tryPatrolForAirport 的门
show('A4. updatePatrols(7474)', B + 'AirForceManager.smali', 7474, 7512)
show('A5. tryPatrolForAirport(2524)', B + 'AirForceManager.smali', 2524, 2596)
# 5) 选靶件
show('A6. getEnemyProvincesInRange(1362)', B + 'AirForceManager.smali', 1362, 1436)
show('A7. isInRange(1636)', B + 'AirForceManager.smali', 1636, 1682)
# 6) 视野件签名
grep('A8. 雷达视野相关方法签名', r'\.method .*(aiRadarVision|aiVisRadarPass|aiVisAirportPass)\(')
# 7) 复用件是否存在
grep('A9. 去重/空闲师 helper 签名', r'\.method .*(hasActivePatrol|pickIdleDivKey|hasSameTargetInFlight|sameTargetInFlight)\(')
# 8) strikeTick_A1 调用点上下文（门 + 体）
show('A10. strikeTick_A1(6894)', B + 'AirForceManager.smali', 6894, 6909)