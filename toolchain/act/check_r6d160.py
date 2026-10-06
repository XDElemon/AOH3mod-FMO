#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 r6d160 —— 空中攻击结算闪退修复（safeUpd 受保护刷新）"""
import sys

BASE = '/tmp/w3a/smali/'
AM = BASE + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PP = BASE + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'


def rd(p):
    return open(p, encoding='utf-8').read()


def run(ov=None):
    a = (ov or {}).get('AM') or rd(AM)
    p = (ov or {}).get('PP') or rd(PP)
    msgs = []
    # a1: 调用点已替换
    c_new = a.count('AirPosProbe;->safeUpd(Ljava/lang/Object;)V')
    c_old = a.count('invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V')
    if c_new != 1:
        return False, [('a1', False, 'safeUpd 调用 %d（应 1）' % c_new)]
    if c_old != 0:
        return False, [('a1', False, '旧的裸 updateArmy 调用仍在（%d）' % c_old)]
    msgs.append(('a1', True, 'AirMission 里刷新已改为受保护调用'))
    # a2: safeUpd 实现 + try/catch
    i = p.find('.method public static safeUpd(Ljava/lang/Object;)V')
    if i < 0:
        return False, msgs + [('a2', False, 'safeUpd 未定义')]
    j = p.find('.end method', i)
    b = p[i:j]
    if '.catch Ljava/lang/Throwable;' not in b:
        return False, msgs + [('a2', False, 'safeUpd 缺 catch(Throwable)')]
    if 'updateArmy(Z)V' not in b:
        return False, msgs + [('a2', False, 'safeUpd 未调用 updateArmy')]
    if 'iput' in b:
        return False, msgs + [('a2', False, 'safeUpd 含 iput')]
    msgs.append(('a2', True, 'safeUpd 做 protected 刷新（try/catch Throwable）'))
    return True, msgs


def main():
    ok, msgs = run()
    if not ok:
        for n, o, m in msgs:
            print('  %s %s: %s' % ('✅' if o else '❌', n, m))
        print('❌ 门禁 r6d160 未过')
        return 1
    for n, o, m in msgs:
        print('  ✅ %s: %s' % (n, m))
    neg = []
    a = rd(AM)
    p = rd(PP)
    neg.append(('N1 恢复裸调用', run({'AM': a.replace('invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->safeUpd(Ljava/lang/Object;)V',
                                             'invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V')})[0] is False))
    neg.append(('N2 safeUpd 去掉 try/catch', run({'PP': p.replace('    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1\n', '', 1)})[0] is False))
    bad = [n for n, r in neg if not r]
    for n, red in neg:
        print('  %s %s（负样本应变红）' % ('✅' if red else '❌', n))
    if bad:
        print('❌ 门禁敏感性不足：%s' % bad)
        return 2
    print('✅ 门禁 r6d160 通过（2 断言 + 2 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())