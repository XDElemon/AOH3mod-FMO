# -*- coding: utf-8 -*-
# r5c044_audit4.py —— 只读复核（4）：FOW 传入 civ 是谁 + dispatchAutoIntercept 派发段全文
import io

FOW = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
FL = io.open(FOW, encoding='utf-8').read().split('\n')
AL = io.open(AF, encoding='utf-8').read().split('\n')

print('===== [1] FOW.detectEnemyMissions 开头 ~ 747（找 v1 的来源）=====')
st = 0
for i, l in enumerate(FL):
    if l.startswith('.method') and 'detectEnemyMissions' in l:
        st = i
        break
print('方法起始行 = %d' % (st + 1))
for i in range(st, min(len(FL), 760)):
    x = FL[i]
    if x.strip():
        print('%5d| %s' % (i + 1, x))

print()
print('===== [2] dispatchAutoIntercept 派发段（v6=键 → 建任务 → 入列）=====')
for i in range(3840, min(len(AL), 3945)):
    x = AL[i]
    if x.strip():
        print('%5d| %s' % (i + 1, x))

print()
print('===== [3] 取机型/可用机的那一段（3700-3840）=====')
for i in range(3700, min(len(AL), 3842)):
    x = AL[i]
    if x.strip():
        print('%5d| %s' % (i + 1, x))