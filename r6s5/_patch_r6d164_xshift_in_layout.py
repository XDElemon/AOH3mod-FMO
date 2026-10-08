#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d164 —— 让"横向分列"真正生效 + 取证

诊断（本节起点的实测证据）：
  * 和平时期部队**是逐支绘制的**（`ProvinceDrawArmy$1.drawArmy` 画的是"不在战斗中"的师；
    `if-nez inBattle, :cond_f` = 非零才跳 ⇒ inBattle==0 才继续画 ⇒ 和平时期走这条路）。
    证据：`nAIF` 59316 行 / `nTO` 2628 行（都在逐支绘制链上）。
  * 但 r6d163 的横向偏移只写在 `ArmyDivision.defaultShiftX()` 里，而它**只在
    “部队宽度刷新 / 移动初始化”时被调用**（Renderer 的宽度任务、MoveUnits）——
    和平时期刚叠起来的那一刻很可能还没被写过 ⇒ `iShiftX` 仍是 0 ⇒ **看不到分列**。
    日志侧：`nUPY` 里 `ax=` 一直是 0（该字段读的就是空军的 iShiftX）。

修法（本批）：
  A1 `Province.updateArmyPosY()`：`.registers 7→9`；在**空军分支**与**陆军分支**里，
     算完 iShiftY 之后**顺手把 iShiftX 也写掉**（居中量 + columnShiftFor(本省, 是否空军)）。
     ⇒ 横向分列与纵向堆叠在同一时刻生效，不再依赖 defaultShiftX 的调用时机。
  A2 新增取证探针 `AirPosProbe.upx(IIII)V`（provID, isAir, offset, finalX）→ `nUPX`
  A3 `AirPosProbe.w` 改为 `declared-synchronized`（多线程写同一日志会交错，已实测到）
"""
import os
import shutil
import sys

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d164'
REVX = '/tmp/revx/'
PROV = ROOT + 'aoc/kingdoms/lukasz/map/province/Province.smali'
PROBE = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'

X_BLOCK_AIR = '''    # === r6d164：横向列偏移在此与 Y 同时写入 ===
    iget v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    const/4 v4, 0x1

    invoke-static {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->columnShiftFor(II)I

    move-result v7
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v3
    neg-int v3, v3
    div-int/lit8 v3, v3, 0x2
    add-int/2addr v3, v7
    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    invoke-static {v6, v4, v7, v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->upx(IIII)V

    # === r6d164 end ===
'''

X_BLOCK_GND = '''    # === r6d164：横向列偏移在此与 Y 同时写入 ===
    iget v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    const/4 v4, 0x0

    invoke-static {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->columnShiftFor(II)I

    move-result v7
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v3
    neg-int v3, v3
    div-int/lit8 v3, v3, 0x2
    add-int/2addr v3, v7
    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    invoke-static {v6, v4, v7, v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->upx(IIII)V

    # === r6d164 end ===
'''

UPX_METHOD = '''.method public static declared-synchronized upx(IIII)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1
    const-string v2, "nUPX p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " air="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method

'''


def rd(p):
    return open(p, encoding='utf-8').read()


def main():
    prov, probe = rd(PROV), rd(PROBE)

    AIR_OLD = '''    invoke-static {p0, v2, v0, v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->upyPr(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;III)V

    add-int/lit8 v5, v5, 0x1'''
    AIR_NEW = AIR_OLD.replace('\n\n    add-int', '\n\n' + X_BLOCK_AIR + '\n    add-int')

    GND_OLD = '''    invoke-static {p0, v2, v0, v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->upyPr(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;III)V
    :try_end_33'''
    GND_NEW = GND_OLD.replace('\n    :try_end_33', '\n\n' + X_BLOCK_GND + '\n    :try_end_33')
    GND_NEW = GND_OLD.replace('\n    :try_end_33', '\n\n' + X_BLOCK_GND + '\n    :try_end_33')

    plan = [
        (PROV, 'A1a .registers 7→9（updateArmyPosY）',
         '.method public final updateArmyPosY()V\n    .registers 7\n',
         '.method public final updateArmyPosY()V\n    .registers 9\n'),
        (PROV, 'A1b 空军分支写 iShiftX', AIR_OLD, AIR_NEW),
        (PROV, 'A1c 陆军分支写 iShiftX', GND_OLD, GND_NEW),
        (PROBE, 'A2 新增 upx 探针',
         '\n.method public static up(I)V\n', '\n' + UPX_METHOD + '.method public static up(I)V\n'),
        (PROBE, 'A3 w 加 declared-synchronized',
         '.method private static w(Ljava/lang/StringBuilder;)V',
         '.method private static declared-synchronized w(Ljava/lang/StringBuilder;)V'),
    ]

    sim = {PROV: prov, PROBE: probe}
    problems = []
    for path, tag, old, new in plan:
        s = sim[path]
        c = s.count(old)
        if c != 1:
            problems.append('%s：锚点命中 %d（应 1）' % (tag, c))
            print('  ✗ %s：锚点命中 %d（应 1）' % (tag, c))
            continue
        sim[path] = s.replace(old, new, 1)
        print('  ✓ %s' % tag)

    if problems:
        print('❌ 有锚点未命中，**未写盘**：')
        for p in problems:
            print('   -', p)
        return 1

    for path in (PROV, PROBE):
        b = path + '.pre_' + BATCH
        if not os.path.exists(b):
            shutil.copy2(path, b)
            print('  备份 ->', b)
        os.makedirs(REVX, exist_ok=True)
        shutil.copy2(path, REVX + os.path.basename(path) + '.pre_' + BATCH)
        open(path, 'w', encoding='utf-8').write(sim[path])
    print('✅ r6d164 已落盘')
    return 0


if __name__ == '__main__':
    sys.exit(main())