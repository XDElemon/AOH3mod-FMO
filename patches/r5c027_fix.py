# -*- coding: utf-8 -*-
# r5c027_fix.py —— P1a 修正批
#  FIX-1（真错·极性）：判据里 `if-eq v3, v4, :p0_disp`（v3=机场 civID / v4=玩家 civ）应为 `if-ne`
#      真值表：civ != player ⇒ 派发（AI 文明）；civ == player ⇒ 跳过（玩家机场走玩家链）
#  FIX-2（诊断）：在 executeAIAssignment 入口加 nA2s（打印 civ/apts/ms/diff/pl），
#      用于查明"nA2m 恒定 0"到底是"循环没进"还是"探针没跑"
import io, sys, shutil
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
t = io.open(AFM, encoding='utf-8').read()
if u'nA2s' in t:
    print('!! 已打过 r5c027，退出'); sys.exit(1)
shutil.copy2(AFM, AFM + '.pre_r5c027')

OLD = u'''    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v3, v4, :p0_disp

    goto :cond_20'''
NEW = u'''    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    # r5c027 FIX-1: 极性修正（原写 if-eq ⇒ 只有玩家自己的机场才派发）
    if-ne v3, v4, :p0_disp

    goto :cond_20'''
c = t.count(OLD)
if c != 1:
    print('!! FIX-1 锚点不唯一 count=%d' % c); sys.exit(1)
t = t.replace(OLD, NEW, 1)
print('[FIX-1] 判据极性 if-eq -> if-ne OK')

# 入口探针
OLD2 = u'''.method public executeAIAssignment(I)V
    .registers 7

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;'''
NEW2 = u'''.method public executeAIAssignment(I)V
    .registers 7

    # r5c027 FIX-2: 入口探针（查明循环是否进入）
    const-string v0, "nA2s"

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;'''
c2 = t.count(OLD2)
if c2 != 1:
    print('!! FIX-2 锚点不唯一 count=%d' % c2); sys.exit(1)
t = t.replace(OLD2, NEW2, 1)
print('[FIX-2] 入口探针 nA2s OK')

io.open(AFM, 'w', encoding='utf-8').write(t)
print('r5c027 修正完成')