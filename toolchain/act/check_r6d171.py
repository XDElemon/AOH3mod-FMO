#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d171 门禁 · AD-1′「恢复开火」
================================
结构断言 S1..S6 + 极性断言 P1..P5 + 负样本自检 --selftest
退出码 0 = 通过；非 0 = 失败（输出含 ❌）
"""
import re
import sys

AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'


def section(text, sig):
    i = text.index(sig)
    j = text.index('.end method', i)
    return text[i:j]


def checks(ad, afm):
    bad = []

    # ---------------- 结构 ----------------
    if ad.count('.method public static tickTurn()V') != 1:
        bad.append('S1 tickTurn 定义数 ≠ 1')
    if ad.count('.method public static tickAll()V') != 1:
        bad.append('S1 tickAll 定义数 ≠ 1')
    if ad.count('.field private static lastTurn:I') != 1:
        bad.append('S1 lastTurn 字段数 ≠ 1')

    for m in ['fireProvince(III)I', 'applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I',
              'airDefenseAt(I)I', 'inRange(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/province/Province;)Z',
              'eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z',
              'countTargets(ILaoc/kingdoms/lukasz/map/province/Province;)I',
              'pickTarget(ILaoc/kingdoms/lukasz/map/province/Province;I)Laoc/kingdoms/lukasz/map/battles/AirMission;']:
        if ad.count('.method public static ' + m) != 1:
            bad.append('S2 判定链方法缺失/重复：%s' % m)

    blk = section(afm, '.method public updateAll()V')
    if blk.count('AirDefense') != 1:
        bad.append('S3 updateAll 区块内 AirDefense = %d（要求 1）' % blk.count('AirDefense'))
    if afm.count('AirDefense') != 1:
        bad.append('S3 全文件 AirDefense = %d（要求 1）' % afm.count('AirDefense'))
    if '.registers 4' not in blk[:60]:
        bad.append('S3 updateAll .registers 已被改动（应为 4）')

    # S4 不得写 isAlive / isShotDown / isInFlight
    for f in ['isAlive', 'isShotDown', 'isInFlight']:
        hits = [l for l in ad.splitlines() if l.strip().startswith(('iput', 'sput')) and ('AirUnit;->' + f) in l]
        if hits:
            bad.append('S4 违反口径：写了 AirUnit->%s（%d 处）' % (f, len(hits)))

    # S5 必须记账；不得调 private
    if 'recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V' not in ad:
        bad.append('S5 未调用 recordLoss（记账击落缺失）')
    if 'recalcPool()V' not in ad:
        bad.append('S5 未调用 recalcPool')
    if re.search(r'^\s*invoke.*;->applyAirDamage\(', ad, re.M):
        bad.append('S5 调用了 private 方法 applyAirDamage（会 IllegalAccessError）')

    # S6 通道
    if 'dKey' in ad:
        bad.append('S6 使用了 dKey')
    if 'java/nio/file' in ad:
        bad.append('S6 使用了 java.nio.file')
    if ad.count('AirDbgLog;->dWrite(Ljava/lang/String;)V') < 3:
        bad.append('S6 dWrite 调用 < 3')

    # ---------------- 极性 ----------------
    tt = section(ad, '.method public static tickTurn()V')
    if 'if-eq v0, v1, :same' not in tt:
        bad.append('P1 守卫极性错（应 if-eq v0, v1, :same：同回合直接返回）')
    if 'if-ne v0, v1, :same' in tt:
        bad.append('P1 出现 if-ne + :same（血案形态：同回合也会开火）')
    m_same = re.search(r'(?m)^\s*:same\s*$', tt)
    if not m_same:
        bad.append('P1 缺少 :same 标签定义')
    else:
        tail = tt[m_same.end():]
        if 'return-void' not in tail.split('.end method')[0][:80]:
            bad.append('P1 :same 之后不是 return-void')
    i_sp = tt.find('sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I')
    i_call = tt.find('Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickAll()V')
    if i_sp < 0 or i_call < 0 or not (i_sp < i_call):
        bad.append('P2 lastTurn 必须在 tickAll() 之前写')

    ta = section(ad, '.method public static tickAll()V')
    for need, desc in [('if-lez v0, :end', '省份总数≤0 收工'),
                       ('if-ge v1, v0, :end', '循环上界'),
                       ('if-eqz v2, :next', '省空跳过'),
                       ('if-lez v3, :next', '无阵地跳过')]:
        if need not in ta:
            bad.append('P3 循环判定缺失：%s（%s）' % (need, desc))
    i_civ = ta.find('Province;->getCivID()I')
    i_fire = ta.find('Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(III)I')
    if i_civ < 0 or i_fire < 0 or not (i_civ < i_fire):
        bad.append('P4 fireProvince 第一参必须来自 Province.getCivID()')

    amd = section(ad, '.method public static applyMdDamage(')
    if 'recordLoss' not in amd:
        bad.append('P5 applyMdDamage 里没有 recordLoss（击落不记账）')
    if 'recalcPool' not in amd:
        bad.append('P5 applyMdDamage 里没有 recalcPool')

    return bad


def load():
    return open(AD, encoding='utf-8').read(), open(AFM, encoding='utf-8').read()


def main():
    ad, afm = load()
    if '--selftest' in sys.argv:
        muts = [
            ('N1 守卫极性反转（血案）', 'if-eq v0, v1, :same', 'if-ne v0, v1, :same', 'P1'),
            ('N2 lastTurn 写到 tickAll 之后', 'sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I',
             'sput v9, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I', 'P2'),
            ('N3 无阵地也开火（删判据）', 'if-lez v3, :next', 'if-ltz v3, :next', 'P3'),
            ('N4 敌我用常量（去掉 getCivID）', 'invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I',
             'const/4 v4, 0x1', 'P4'),
            ('N5 私自写 isAlive', '    if-eqz v2, :next\n\n    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I',
             '    if-eqz v2, :next\n\n    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z\n\n    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I', 'S4'),
            ('N6 去掉记账', 'recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V', 'dummyCall(Ljava/lang/Object;)V', 'S5'),
        ]
        ok = True
        print('=== 负样本自检 ===')
        for name, src, dst, tag in muts:
            if src not in ad:
                print('  ⚠️ %-30s 突变源不存在（需人工核对）' % name)
                ok = False
                continue
            bad2 = checks(ad.replace(src, dst), afm)  # 全部替换（recordLoss 在正常/收尸两条路径各一次）
            hit = any(tag in b for b in bad2)
            print('  %s %-30s 被抓=%s（%s）' % ('✅' if hit else '❌', name, hit, tag))
            if not hit:
                ok = False
        print('=== 自检结果：%s ===' % ('全部被抓 ✅' if ok else '有漏抓 ❌'))
        return 0 if ok else 1

    bad = checks(ad, afm)
    print('=== r6d171 门禁 ===')
    if bad:
        for b in bad:
            print('  ❌', b)
        print('结果：FAIL（%d 项）' % len(bad))
        return 1
    print('  ✅ S1..S6 结构断言全过')
    print('  ✅ P1..P5 极性断言全过')
    print('结果：PASS')
    return 0


if __name__ == '__main__':
    sys.exit(main())