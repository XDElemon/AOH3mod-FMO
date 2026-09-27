# -*- coding: utf-8 -*-
# r5c025_p1a_audit3.py —— P1a 调研第三批：视野数据源 + 结算链玩家假设审计（只读）
import io, re
B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
def L(p): return io.open(p, encoding='utf-8').read().split('\n')
def mrange(L0, name):
    for i, ln in enumerate(L0):
        if ln.startswith('.method') and (name + '(') in ln:
            for j in range(i, len(L0)):
                if L0[j].startswith('.end method'):
                    return i + 1, j + 1
    return None, None
def show(tag, path, a, b, cut=112):
    X = L(path)
    print('====== %s (%s %d-%d) ======' % (tag, path.split('/')[-1], a, b))
    for i in range(a - 1, min(b, len(X))):
        s = X[i].rstrip()
        if s.strip():
            print('  %5d| %s' % (i + 1, s[:cut]))
    print('')

AFM = B + 'AirForceManager.smali'
X = L(AFM)

# 1) syncRadar：radarProvinces 的填充口径（玩家 or 每 civ）
a, b = mrange(X, 'syncRadar')
if a:
    show('C1. syncRadar 全貌', AFM, a, min(b, a + 60))
# 2) radarProvinces 字段声明 + 全树写入点
print('====== C2. radarProvinces 声明与写入点 ======')
for p in (AFM,):
    for i, ln in enumerate(L(p)):
        if 'radarProvinces' in ln and ('.field' in ln):
            print('  %s:%d| %s' % (p.split('/')[-1], i + 1, ln.strip()[:110]))
import os
for dp, dn, fn in os.walk('/tmp/w3a/smali'):
    for f in fn:
        if not f.endswith('.smali'):
            continue
        p = os.path.join(dp, f)
        for i, ln in enumerate(L(p)):
            if 'radarProvinces' in ln and ('iput' in ln or 'sput' in ln or '->add' in ln or 'addAll' in ln):
                print('  %s:%d| %s' % (p.replace('/tmp/w3a/smali/', ''), i + 1, ln.strip()[:110]))
print('')
# 3) updateAIAutoIntercept：AI 侧怎么拿视野/国别
a, b = mrange(X, 'updateAIAutoIntercept')
if a:
    show('C3. updateAIAutoIntercept 头 30 行', AFM, a, a + 30)
# 4) 结算链内的 Game->player 审计
print('====== C4. 结算链各方法里的 Game->player 出现情况 ======')
for nm in ('a1Snap', 'a1Scan', 'a1bScan', 'a1bPick', 'a1bDispatch', 'a1Dispatch', 'a1bClock', 'a1bDiag'):
    a, b = mrange(X, nm)
    if not a:
        print('  %-12s 未找到' % nm); continue
    hits = []
    for i in range(a - 1, b):
        if 'Game;->player' in X[i]:
            hits.append(i + 1)
    print('  %-12s 区间 %d-%d   Game->player 出现行: %s' % (nm, a, b, hits if hits else '无'))
print('')
# 5) a1bScan 尾部 player 引用上下文
a, b = mrange(X, 'a1bScan')
if a:
    for i in range(a - 1, b):
        if 'Game;->player' in X[i]:
            show('C5. a1bScan 内 player 引用上下文', AFM, max(a, i - 6), min(b, i + 8))