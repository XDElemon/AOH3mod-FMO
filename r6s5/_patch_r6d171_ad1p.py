#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d171 · AD-1′「恢复开火」补丁
==============================
1) 把留档类放回树：ad_disabled/AirDefense.smali → aoc/kingdoms/lukasz/map/battles/AirDefense.smali
2) 加字段 lastTurn:I（每回合只结算一次的守卫）
3) 加方法 tickTurn()V（守卫+兜底） / tickAll()V（全局省份遍历）
4) 在 AirForceManager.updateAll() 尾部（dumpMissions 之后、return-void 之前）注入 1 行 tickTurn()

两阶段纪律：先全量校验（锚点逐字命中数必须==1）→ 全绿才统一写盘。
"""
import os
import shutil
import sys

BATCH = 'r6d171'
SRC = '/sdcard/GLG/历史23/r6s5/ad_disabled/AirDefense.smali'
DST = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
REVX = '/tmp/revx'

FIELD_ANCHOR = '.field private static rnd:Ljava/util/Random;\n'
FIELD_NEW = ('.field private static rnd:Ljava/util/Random;\n'
             '\n'
             '# r6d171：每回合只结算一次（updateAll 每回合被调用 2 次）\n'
             '.field private static lastTurn:I\n')

TICKTURN_ANCHOR = ('    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dumpMissions()V\n'
                   '\n'
                   '    return-void')
TICKTURN_NEW = ('    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dumpMissions()V\n'
                '\n'
                '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickTurn()V\n'
                '\n'
                '    return-void')

NEW_METHODS = '''

# ============================================================================
# r6d171 · AD-1′ 新增：每回合只结算一次的全局入口
#   tickTurn()：TURN_ID 守卫（updateAll 实测每回合被调用 2 次）+ Throwable 兜底
#   tickAll() ：遍历【所有】省份（不再按国家 ⇒ 没机场的国家也能开火）
# ============================================================================
.method public static tickTurn()V
    .registers 6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I

    if-eq v0, v1, :same

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I

    :try_start_g
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickAll()V
    :try_end_g
    .catch Ljava/lang/Throwable; {:try_start_g .. :try_end_g} :catch_g

    return-void

    :same
    return-void

    :catch_g
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logX(Ljava/lang/Throwable;)V

    return-void
.end method


.method public static tickAll()V
    .registers 8

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-lez v0, :end

    const/4 v1, 0x0

    :loop
    if-ge v1, v0, :end

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :next

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I

    move-result v3

    if-lez v3, :next

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(III)I

    move-result v5

    :next
    add-int/lit8 v1, v1, 0x1

    goto :loop

    :end
    return-void
.end method
'''


def fail(msg):
    print('❌ 阶段1校验失败：%s' % msg)
    print('   ⇒ 已中止，未写盘（两阶段纪律）')
    sys.exit(1)


def main():
    print('=== 阶段1：全量校验（不写盘）===')
    if not os.path.exists(SRC):
        fail('留档类不存在：%s' % SRC)
    if os.path.exists(DST):
        fail('目标已存在（重复打补丁？）：%s' % DST)

    src = open(SRC, encoding='utf-8').read()
    print('  留档类行数 =', len(src.splitlines()))

    if src.count(FIELD_ANCHOR) != 1:
        fail('字段锚点 `%s` 命中 %d ≠ 1' % (FIELD_ANCHOR.strip(), src.count(FIELD_ANCHOR)))
    if '.method public static tickTurn' in src or 'lastTurn' in src:
        fail('留档类里已存在 lastTurn/tickTurn（不该出现）')
    for need in ['fireProvince(III)I', 'applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I',
                 'airDefenseAt(I)I', 'recordLoss', 'recalcPool']:
        if need not in src:
            fail('留档类缺少关键链：%s' % need)
    if not src.rstrip().endswith('.end method'):
        fail('留档类结尾不是 .end method')

    afm = open(AFM, encoding='utf-8').read()
    n = afm.count(TICKTURN_ANCHOR)
    print('  注入锚点（dumpMissions+return-void）全文件命中 = %d（要求 1）' % n)
    if n != 1:
        fail('注入锚点命中 %d ≠ 1' % n)
    if 'AirDefense' in afm:
        fail('AirForceManager 里已存在 AirDefense 引用')
    i = afm.index('.method public updateAll()V')
    j = afm.index('.end method', i)
    if afm[i:j].count(TICKTURN_ANCHOR) != 1:
        fail('注入锚点不在 updateAll 区块内')

    print('  ✅ 阶段1 全绿')

    # ---------- 阶段2：写盘 ----------
    print('=== 阶段2：写盘 ===')
    os.makedirs(REVX, exist_ok=True)
    src2 = src.replace(FIELD_ANCHOR, FIELD_NEW, 1)
    if src2.count('.field private static lastTurn:I') != 1:
        fail('字段插入失败')
    if not src2.rstrip().endswith('.end method'):
        fail('插入字段后结尾异常')
    src3 = src2.rstrip('\n') + '\n' + NEW_METHODS
    open(DST, 'w', encoding='utf-8').write(src3)
    print('  已放回并扩展：%s（%d 行）' % (DST, len(src3.splitlines())))

    shutil.copy2(AFM, AFM + '.pre_' + BATCH)
    shutil.copy2(AFM, os.path.join(REVX, 'AirForceManager.smali.pre_' + BATCH))
    afm2 = afm.replace(TICKTURN_ANCHOR, TICKTURN_NEW, 1)
    if afm2.count('AirDefense;->tickTurn()V') != 1:
        fail('注入行未唯一')
    open(AFM, 'w', encoding='utf-8').write(afm2)
    print('  已注入 tickTurn()V（备份 .pre_%s 与 /tmp/revx/）' % BATCH)

    # ---------- 写盘后复核 ----------
    print('=== 写盘后复核 ===')
    d = open(DST, encoding='utf-8').read()
    t = open(AFM, encoding='utf-8').read()
    mi = t.index('.method public updateAll()V')
    me = t.index('.end method', mi)
    blk = t[mi:me]
    checks = [
        ('AirDefense.smali tickTurn 定义数', d.count('.method public static tickTurn()V'), 1),
        ('AirDefense.smali tickAll 定义数', d.count('.method public static tickAll()V'), 1),
        ('AirDefense.smali lastTurn 字段数', d.count('.field private static lastTurn:I'), 1),
        ('updateAll 区块内 AirDefense', blk.count('AirDefense'), 1),
        ('全文件 AirDefense', t.count('AirDefense'), 1),
        ('updateAll .registers 仍为 4', 1 if '.registers 4' in blk[:60] else 0, 1),
    ]
    ok = True
    for name, got, want in checks:
        good = (got == want)
        ok &= good
        print('  %s %-34s = %s（期望 %s）' % ('✅' if good else '❌', name, got, want))
    print('✅ r6d171 补丁完成' if ok else '❌ 写盘后复核失败')
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())