#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d165 —— 横向分列改成“用排版自己数出来的计数”（不再反查省份）

实测证据（r6d164 抓样）：
  `nUPX` 1256 行，`air=1` 有 167 行，但 **off= 永远是 0**；
  同省 x= 有 -30 / -50（说明排版在跑、基数量对）。
  ⇒ `Province.columnShiftFor(provinceID, isAir)` 里“按 id 再取一次省份 + 数两类”这条链
     始终判成“只有一类” ⇒ 返回 0。（怀疑 `Game.getProvince(iProvinceID)` 那条链拿到的是空省）

改法：
  A1 删掉 r6d164 在两个分支里写的 X（它们依赖 columnShiftFor）
  A2 在 `updateArmyPosY` **第一次循环结束之后**加“第二次遍历”，用**本方法自己数出来的
     jAir(v5) / j(v1)** 决定是否分列，再逐支写 iShiftX（含 upx 取证）：
        两类都在(v5>0 且 v1>0) ⇒ 空军 +28 / 陆军 −28；否则 0（居中）
     外层自带 try/catch（失败不影响主流程）
  A3 给 `columnShiftFor` 加诊断 `AirPosProbe.csf(III)V`（provID, airCnt, gndCnt；-1 表示取不到省份）
     —— 用来定位“反查链”到底错在哪（后续可删）
"""
import os
import shutil
import sys

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d165'
REVX = '/tmp/revx/'
PROV = ROOT + 'aoc/kingdoms/lukasz/map/province/Province.smali'
PROBE = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'

# ---- 要删掉的 r6d164 两块 ----
DEL_AIR = '''    # === r6d164：横向列偏移在此与 Y 同时写入 ===
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

DEL_GND = DEL_AIR.replace('const/4 v4, 0x1', 'const/4 v4, 0x0')

# ---- 第二遍遍历（插在 :goto_3d 之前）----
PASS2 = '''    # === r6d165：横向分列（第二遍遍历，用本方法自己的计数 v5=空军数 / v1=陆军数）===
    :r6d165_try_start
    const/4 v0, 0x0

    :r6d165_loop
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v2, :r6d165_end

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z
    if-nez v3, :r6d165_next

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v3, :r6d165_havekey

    const-string v4, "airhq_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    :r6d165_havekey
    const/4 v6, 0x0

    if-lez v5, :r6d165_base

    if-lez v1, :r6d165_base

    const/16 v6, 0x1c

    if-eqz v7, :r6d165_neg

    goto :r6d165_base

    :r6d165_neg
    const/16 v6, -0x1c

    :r6d165_base
    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v4
    neg-int v4, v4
    div-int/lit8 v4, v4, 0x2
    add-int/2addr v4, v6
    iput v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v3, v7, v6, v4}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->upx(IIII)V

    :r6d165_next
    add-int/lit8 v0, v0, 0x1

    goto :r6d165_loop

    :r6d165_end
    :r6d165_try_end
    goto :r6d165_out

    :r6d165_catch
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :r6d165_out
    nop

    .catch Ljava/lang/Exception; {:r6d165_try_start .. :r6d165_try_end} :r6d165_catch
    # === r6d165 end ===
'''

# ---- csf 诊断方法 ----
CSF_METHOD = '''.method public static declared-synchronized csf(III)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1
    const-string v2, "nCSF p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " air="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    return-void
.end method

'''


def rd(p):
    return open(p, encoding='utf-8').read()


def main():
    prov, probe = rd(PROV), rd(PROBE)

    # csf 的调用点：columnShiftFor 里两个决策点
    CSF_LINE = ('    invoke-static {p0, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->csf(III)V\n\n')

    plan = [
        (PROV, 'A1a 删 r6d164 空军分支 X 块', DEL_AIR, ''),
        (PROV, 'A1b 删 r6d164 陆军分支 X 块', DEL_GND, ''),
        (PROV, 'A2 第二遍遍历（分列写入）',
         '    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n\n    .line 528\n\n    .end local v0    # "ex":Ljava/lang/Exception;\n\n    :goto_3d\n',
         '    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n\n    .line 528\n\n    .end local v0    # "ex":Ljava/lang/Exception;\n\n' + PASS2 + '    :goto_3d\n'),
        (PROV, 'A3a columnShiftFor 计数后诊断',
         '    :r6d163_after\n    if-lez v3, :r6d163_done\n',
         '    :r6d163_after\n' + CSF_LINE + '    if-lez v3, :r6d163_done\n'),
        (PROV, 'A3b columnShiftFor 取不到省时诊断',
         '    move-result-object v0\n    if-nez v0, :r6d163_done\n',
         '    move-result-object v0\n    if-nez v0, :r6d163_done\n\n'
         '    const/4 v3, -0x1\n\n    const/4 v4, -0x1\n\n'
         '    invoke-static {p0, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->csf(III)V\n'),
        (PROBE, 'A3c 新增 csf 探针',
         '\n.method public static declared-synchronized upx(IIII)V\n',
         '\n' + CSF_METHOD + '.method public static declared-synchronized upx(IIII)V\n'),
    ]

    # 注意：A3b 的诊断在“取不到省”时**不会**执行（它在跳转之后），所以改为插在跳转之前
    plan = [p for p in plan if p[1] != 'A3b columnShiftFor 取不到省时诊断']

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
    print('✅ r6d165 已落盘')
    return 0


if __name__ == '__main__':
    sys.exit(main())