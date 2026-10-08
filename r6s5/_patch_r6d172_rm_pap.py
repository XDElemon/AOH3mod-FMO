#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d172 · 修回归：摘掉 AirMission.placeAirDivision 里的旧探针调用 pap()
======================================================================
背景：r6d171 恢复开火后，我方防空打掉飞机 ⇒ 任务收尾走到 placeAirDivision 的
      “airhqDivision == null” 路径 ⇒ 我们的旧探针 pap 崩（NPE 读 ArmyDivision.key）。
      该探针（nPAP）早已无用（位置问题在 r6d168 已解决），故直接摘除调用点。
改动：删除 AirMission.placeAirDivision 里那一行 invoke-static … pap(…)（及其后空行）。
      pap 方法本身保留（无调用者，零影响）。
两阶段纪律：先全量校验锚点（三行组合命中必须==1）→ 再写盘。
"""
import os
import shutil
import sys

BATCH = 'r6d172'
AM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
REVX = '/tmp/revx'

IGET = ('    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->'
        'airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;')
CALL = ('    invoke-static {p0, v2, v0, v1, p1}, '
        'Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pap(Ljava/lang/Object;Ljava/lang/String;'
        'Ljava/lang/Object;II)V')
AFTER = '    if-eqz v0, :cond_39'

ANCHOR = IGET + '\n\n' + CALL + '\n\n' + AFTER
NEW = IGET + '\n\n' + AFTER


def fail(m):
    print('❌ 阶段1校验失败：%s' % m)
    print('   ⇒ 未写盘（两阶段纪律）')
    sys.exit(1)


def main():
    print('=== 阶段1：全量校验 ===')
    if not os.path.exists(AM):
        fail('目标不存在 %s' % AM)
    s = open(AM, encoding='utf-8').read()
    n_anchor = s.count(ANCHOR)
    n_call = s.count(CALL)
    print('  三行组合锚点命中 = %d（要求 1）' % n_anchor)
    print('  pap 调用行命中   = %d（要求 1）' % n_call)
    if n_anchor != 1 or n_call != 1:
        fail('锚点命中不为 1')
    if 'placeAirDivision' not in s:
        fail('找不到 placeAirDivision')
    print('  ✅ 阶段1 全绿')

    print('=== 阶段2：写盘 ===')
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(AM, AM + '.pre_' + BATCH)
    shutil.copy2(AM, os.path.join(REVX, 'AirMission.smali.pre_' + BATCH))
    s2 = s.replace(ANCHOR, NEW, 1)
    assert s2.count(ANCHOR) == 0
    open(AM, 'w', encoding='utf-8').write(s2)
    print('  已删除 pap 调用（备份 .pre_%s 与 /tmp/revx/）' % BATCH)

    print('=== 写盘后复核 ===')
    t = open(AM, encoding='utf-8').read()
    ok = True
    checks = [
        ('AirMission 里 pap 调用数（要求 0）', t.count(CALL), 0),
        ('airhqDivision iget 行仍在（要求 ≥1）', t.count(IGET), 1),
        ('if-eqz v0, :cond_39 仍在（要求 1）', t.count(AFTER), 1),
        ('placeAirDivision 仍在（要求 ≥1）', t.count('placeAirDivision'), 1),
    ]
    for name, got, want in checks:
        good = (got >= want) if '≥' in name else (got == want)
        ok &= good
        print('  %s %-38s = %s（期望 %s）' % ('✅' if good else '❌', name, got, want))
    print('✅ r6d172 补丁完成' if ok else '❌ 复核失败')
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())