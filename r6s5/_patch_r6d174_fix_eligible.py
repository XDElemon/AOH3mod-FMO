#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d174 · 修开火侧两个极性 bug（AD-1 遗留）
==========================================
① eligible：`if-ne v1, p1, :no` ⇒ 实际是"敌方就返回 false"（只打友军）
   应改为 `if-eq v1, p1, :no`（==本省主人=友军才跳过）
② inRange ：`if-ne v2, v3, :yes` ⇒ 实际是"不同省就算在射程内"（射程失效）
   应改为 `if-eq v2, v3, :yes`（同省⇒必中；不同省才走距离计算）

两阶段：锚点命中必须==1；写盘后复核。
"""
import os
import shutil
import sys

BATCH = 'r6d174'
AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
REVX = '/tmp/revx'

# eligible 内的敌我判定
EL_OLD = ('    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I\n'
          '\n'
          '    if-ne v1, p1, :no')
EL_NEW = ('    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I\n'
          '\n'
          '    if-eq v1, p1, :no')

# inRange 内的同省判定
IR_OLD = ('    move-result v3\n'
          '\n'
          '    if-ne v2, v3, :yes')
IR_NEW = ('    move-result v3\n'
          '\n'
          '    if-eq v2, v3, :yes')


def fail(m):
    print('❌ 阶段1校验失败：%s' % m)
    sys.exit(1)


def main():
    print('=== 阶段1：全量校验 ===')
    s = open(AD, encoding='utf-8').read()
    n1 = s.count(EL_OLD)
    n2 = s.count(IR_OLD)
    print('  eligible 锚点命中 = %d（要求 1）' % n1)
    print('  inRange  锚点命中 = %d（要求 1）' % n2)
    if n1 != 1:
        fail('eligible 锚点命中 %d ≠ 1' % n1)
    if n2 != 1:
        fail('inRange 锚点命中 %d ≠ 1' % n2)
    for bads in ['if-eq v1, p1, :no', 'if-eq v2, v3, :yes']:
        if bads in s:
            fail('已存在修正后的形态（%s）⇒ 重复打补丁？' % bads)
    print('  ✅ 阶段1 全绿')

    print('=== 阶段2：写盘 ===')
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(AD, AD + '.pre_' + BATCH)
    shutil.copy2(AD, os.path.join(REVX, 'AirDefense.smali.pre_' + BATCH))
    s2 = s.replace(EL_OLD, EL_NEW, 1).replace(IR_OLD, IR_NEW, 1)
    open(AD, 'w', encoding='utf-8').write(s2)
    print('  已写盘')

    print('=== 写盘后复核 ===')
    t = open(AD, encoding='utf-8').read()
    ok = True
    checks = [
        ('eligible 已修正（if-eq v1,p1,:no）', t.count('if-eq v1, p1, :no'), 1),
        ('eligible 旧形态已消失', t.count('if-ne v1, p1, :no'), 0),
        ('inRange 已修正（if-eq v2,v3,:yes）', t.count('if-eq v2, v3, :yes'), 1),
        ('inRange 旧形态已消失', t.count('if-ne v2, v3, :yes'), 0),
        ('recordLoss 记账仍在', 1 if 'recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V' in t else 0, 1),
        ('recalcPool 仍在', 1 if 'recalcPool()V' in t else 0, 1),
        ('tickTurn/tickAll 仍在', 1 if ('.method public static tickTurn()V' in t and '.method public static tickAll()V' in t) else 0, 1),
    ]
    for name, got, want in checks:
        good = (got == want)
        ok &= good
        print('  %s %-36s = %s（期望 %s）' % ('✅' if good else '❌', name, got, want))
    print('✅ r6d174 补丁完成' if ok else '❌ 复核失败')
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())