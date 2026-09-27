# -*- coding: utf-8 -*-
# r5c044_audit2.py —— 只读复核（2）：hasActiveChaser 三个调用点的上下文与语义需求
import io

AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
FOW = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
AL = io.open(AF, encoding='utf-8').read().split('\n')
FL = io.open(FOW, encoding='utf-8').read().split('\n')


def show(L, tag, ln, pre=32, post=18):
    print('===== %s  L%d（±%d/%d）=====' % (tag, ln, pre, post))
    for i in range(max(0, ln - pre - 1), min(len(L), ln + post)):
        print('%5d| %s' % (i + 1, L[i]))
    print()


def enclosing(L, ln):
    for i in range(ln - 1, -1, -1):
        if L[i].startswith('.method'):
            return i
    return -1


for f, L, calls in (('AFM', AL, [3119, 3447]),
                    ('FOW', FL, [747])):
    for c in calls:
        m = enclosing(L, c)
        print('### [%s] call@%d 所属方法: %s' % (f, c, L[m].strip()))
        print('    方法头寄存器注释:')
        k = m + 1
        while k < len(L) and L[k].strip() and not L[k].strip().startswith(('invoke', 'iget', 'sget', 'const', '.line')):
            print('      %s' % L[k].strip())
            k += 1
        print()

show(AL, 'AFM call@3119', 3119, 40, 30)
show(AL, 'AFM call@3447', 3447, 45, 25)
show(FL, 'FOW call@747', 747, 40, 40)