#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d169 · AD-R0「只读诊断版」补丁
=================================
只做一件事：在 AirForceManager.updateAll()V 开头插入 1 行
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->scanAll()V

两阶段纪律（血案强制）：
  阶段1：全量校验锚点（逐字命中数必须 == 1）—— 任一不满足则**不写盘**
  阶段2：备份 + 统一写盘
适用于"锚点必须逐字含空行核"的既有铁律。
"""
import os
import shutil
import sys

BATCH = 'r6d169'
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DIAG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
REVX = '/tmp/revx'

ANCHOR = ('.method public updateAll()V\n'
          '    .registers 4\n'
          '\n'
          '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V')

INSERT_LINE = '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->scanAll()V'
NEW_ANCHOR = ('.method public updateAll()V\n'
              '    .registers 4\n'
              '\n'
              + INSERT_LINE + '\n'
              '\n'
              '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V')


def fail(msg):
    print('❌ 阶段1校验失败：%s' % msg)
    print('   ⇒ 已中止，未写盘（两阶段纪律）')
    sys.exit(1)


def main():
    # ---------- 阶段 1：全量校验 ----------
    print('=== 阶段1：全量校验（不写盘）===')
    if not os.path.exists(AFM):
        fail('目标文件不存在 %s' % AFM)
    if not os.path.exists(DIAG):
        fail('新类不存在 %s（请先落 AirDefDiag.smali）' % DIAG)

    s = open(AFM, encoding='utf-8').read()

    n = s.count(ANCHOR)
    print('  锚点逐字命中 = %d（要求 1）' % n)
    if n != 1:
        fail('锚点命中 %d ≠ 1' % n)

    if 'AirDefDiag' in s:
        fail('AirForceManager 里已存在 AirDefDiag 引用（重复打补丁？）')

    if s.count('.method public updateAll()V') != 1:
        fail('updateAll 方法定义不是 1 个')

    # 方法域校验：锚点本身以 `.method ...` 开头 ⇒ 方法起点就是锚点起点
    i = s.index(ANCHOR)
    mi = i
    me = s.index('.end method', mi)
    print('  updateAll 区块 = [%d, %d) ｜ 锚点位置 = %d' % (mi, me, i))
    if not (mi <= i < me):
        fail('锚点不在 updateAll 方法域内')

    # 新类自检：必须含 scanAll + catch Throwable
    d = open(DIAG, encoding='utf-8').read()
    if d.count('.method public static scanAll()V') != 1:
        fail('AirDefDiag.scanAll 定义数 ≠ 1')
    if '.catch Ljava/lang/Throwable;' not in d:
        fail('AirDefDiag.scanAll 缺少 catch Throwable（不得外抛）')
    if 'dKey' in d or 'java/nio/file' in d:
        fail('AirDefDiag 使用了禁用通道（dKey / NIO）')

    print('  ✅ 阶段1 全绿')

    # ---------- 阶段 2：备份 + 写盘 ----------
    print('=== 阶段2：备份 + 写盘 ===')
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(AFM, AFM + '.pre_' + BATCH)
    shutil.copy2(AFM, os.path.join(REVX, 'AirForceManager.smali.pre_' + BATCH))
    print('  备份：%s.pre_%s ｜ %s/AirForceManager.smali.pre_%s' % (AFM, BATCH, REVX, BATCH))

    s2 = s.replace(ANCHOR, NEW_ANCHOR, 1)
    if s2.count(INSERT_LINE) != 1:
        fail('写盘前复核：插入行出现 %d 次' % s2.count(INSERT_LINE))
    open(AFM, 'w', encoding='utf-8').write(s2)
    print('  已写盘')

    # ---------- 写盘后复核 ----------
    print('=== 写盘后复核 ===')
    t = open(AFM, encoding='utf-8').read()
    mi = t.index('.method public updateAll()V')
    me = t.index('.end method', mi)
    blk = t[mi:me]
    print('  updateAll 区块内 AirDefDiag =', blk.count('AirDefDiag'), '（要求 1）')
    print('  全文件 AirDefDiag =', t.count('AirDefDiag'), '（要求 1）')
    print('  updateAll .registers 仍为 4 =', '    .registers 4\n' in blk[:80] or '.registers 4' in blk[:80])
    print('  AirDefDiag.smali 行数 =', len(d.splitlines()))
    ok = (blk.count('AirDefDiag') == 1 and t.count('AirDefDiag') == 1)
    print('✅ r6d169 补丁完成' if ok else '❌ 写盘后复核失败')
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())