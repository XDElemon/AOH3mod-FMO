#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d172 门禁 · 摘除旧探针 pap（修 r6d171 的回归闪退）
=====================================================
断言：
  S1 AirMission 里 pap 调用数 == 0（crash 根因，绝不可复原）
  S2 airhqDivision 字段仍在；placeAirDivision 里的 `if-eqz v0, :cond_39` 仍在（未误删游戏逻辑）
  S3 AirPosProbe.pap 方法定义仍存在（只摘调用，不删方法 ⇒ 避免影响其它批次/门禁）
  S4 AirDefense.tickTurn 仍被 updateAll 调用（r6d171 的开火链不能被本补丁带坏）
负样本：把 pap 调用塞回去 ⇒ S1 必须变红。
"""
import sys

AM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PRB = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'

CALL = ('    invoke-static {p0, v2, v0, v1, p1}, '
        'Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pap(Ljava/lang/Object;Ljava/lang/String;'
        'Ljava/lang/Object;II)V')
AFTER = '    if-eqz v0, :cond_39'


def checks(am, prb, afm):
    bad = []
    if am.count(CALL) != 0:
        bad.append('S1 AirMission 里仍有 pap 调用（回归会复现）=%d' % am.count(CALL))
    if 'airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;' not in am:
        bad.append('S2 airhqDivision 字段丢失')
    if am.count(AFTER) != 1:
        bad.append('S2 placeAirDivision 的 if-eqz v0, :cond_39 计数 = %d（应为 1）' % am.count(AFTER))
    if prb.count('.method public static pap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V') != 1:
        bad.append('S3 AirPosProbe.pap 定义数 ≠ 1（只应摘调用，不删方法）')
    if afm.count('AirDefense;->tickTurn()V') != 1:
        bad.append('S4 updateAll 的开火调用丢失（tickTurn）')
    if afm.count('AirDefDiag;->scanAll()V') != 1:
        bad.append('S4 诊断调用丢失（scanAll）')
    return bad


def main():
    am = open(AM, encoding='utf-8').read()
    prb = open(PRB, encoding='utf-8').read()
    afm = open(AFM, encoding='utf-8').read()

    if '--selftest' in sys.argv:
        print('=== 负样本自检 ===')
        ok = True
        muts = [('N1 把 pap 调用塞回去（血案复原）', am.replace(AFTER, CALL + '\n\n' + AFTER, 1), prb, afm, 'S1'),
                ('N2 删掉 airhqDivision 字段检查', am.replace('airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;', 'airhqX:Laoc/kingdoms/lukasz/map/army/ArmyDivision;'), prb, afm, 'S2'),
                ('N3 连方法一起删（不动调用）', am, prb.replace('.method public static pap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V', '.method public static pap2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V'), afm, 'S3'),
                ('N4 开火调用丢失', am, prb, afm.replace('AirDefense;->tickTurn()V', 'AirDefense;->tickTurnX()V'), 'S4')]
        for name, a2, p2, f2, tag in muts:
            hit = any(tag in b for b in checks(a2, p2, f2))
            print('  %s %-32s 被抓=%s（%s）' % ('✅' if hit else '❌', name, hit, tag))
            ok &= hit
        print('=== 自检结果：%s ===' % ('全部被抓 ✅' if ok else '有漏抓 ❌'))
        return 0 if ok else 1

    bad = checks(am, prb, afm)
    print('=== r6d172 门禁 ===')
    if bad:
        for b in bad:
            print('  ❌', b)
        print('结果：FAIL（%d 项）' % len(bad))
        return 1
    print('  ✅ S1..S4 全过')
    print('结果：PASS')
    return 0


if __name__ == '__main__':
    sys.exit(main())