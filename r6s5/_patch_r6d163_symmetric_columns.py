#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d163 —— 横向“对称分列 + 单边居中”（用户两条要求）

用户要求：
  1) 陆军师离开该省后，空军师回到**中心**（陆军同理）；
  2) 同省既有空军又有陆军时，**不只空军右移，陆军也要左移**（对称分列）。

现状（r6d162）：`ArmyDivision.defaultShiftX()` 里“key 以 airhq_ 开头 ⇒ 永远 +56px”，
                陆军永远不动 ⇒ 单边时不会回中、陆军也不左移。

修法：
  A1  Province 新增静态方法 `columnShiftFor(II)I`（provinceID, isAir）：
        扫描该省部队 ⇒ 统计 airhq_ 与非 airhq_ 两类的数量
        两类都 >0 ⇒ 返回 +28（空军）/ −28（陆军）
        否则（只有一类 / 无省 / 无部队）⇒ 返回 0（居中）
  A2  ArmyDivision.defaultShiftX()：把“永远 +56”换成
        `base + Province.columnShiftFor(this.provinceID, isAir)`（key 为空 ⇒ 不加偏移）
      ⇒ 由于写在“默认偏移函数”里，所有 iShiftX 写入者（updateArmyWidth_Just / MoveUnits）都会自动带上。

本脚本：**两阶段**（先全量校验锚点命中数，全绿后才统一写盘）—— r6d161 教训。
"""
import os
import shutil
import sys

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d163'
REVX = '/tmp/revx/'
PROV = ROOT + 'aoc/kingdoms/lukasz/map/province/Province.smali'
ARMY = ROOT + 'aoc/kingdoms/lukasz/map/army/ArmyDivision.smali'

# ---------------- A1：Province 新增 columnShiftFor ----------------
PROV_ANCHOR = '.method public final getArmySize()I\n'

PROV_NEW = '''.method public static columnShiftFor(II)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0
    if-nez v0, :r6d163_done

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    :r6d163_loop
    if-ge v1, v2, :r6d163_after

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5
    if-nez v5, :r6d163_next

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;
    if-eqz v6, :r6d163_ground

    const-string v7, "airhq_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    if-eqz v7, :r6d163_ground

    add-int/lit8 v3, v3, 0x1

    goto :r6d163_next

    :r6d163_ground
    add-int/lit8 v4, v4, 0x1

    :r6d163_next
    add-int/lit8 v1, v1, 0x1

    goto :r6d163_loop

    :r6d163_after
    if-lez v3, :r6d163_done

    if-lez v4, :r6d163_done

    if-eqz p1, :r6d163_gret

    const/16 v7, 0x1c

    return v7

    :r6d163_gret
    const/16 v7, -0x1c

    return v7

    :r6d163_done
    const/4 v7, 0x0

    return v7
.end method

'''

# ---------------- A2：ArmyDivision.defaultShiftX ----------------
ARMY_OLD = '''    # === r6d161：空军师横向另起一列（右移 56px）===
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v1, :r6d161_done

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :r6d161_done

    const/16 v1, 0x38

    add-int/2addr v0, v1

    :r6d161_done
    # === r6d161 end ===
    return v0
.end method'''

ARMY_NEW = '''    # === r6d163：横向对称分列（两类都在才分列；单边居中）===
    const/4 v1, 0x0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v2, :r6d163_done

    const-string v3, "airhq_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->columnShiftFor(II)I

    move-result v4

    add-int/2addr v0, v4

    :r6d163_done
    # === r6d163 end ===
    return v0
.end method'''

ARMY_ANCHOR_OLD = '''.method public final defaultShiftX()I
    .registers 4
'''
ARMY_ANCHOR_NEW = '''.method public final defaultShiftX()I
    .registers 6
'''


def rd(p):
    return open(p, encoding='utf-8').read()


def main():
    prov = rd(PROV)
    army = rd(ARMY)

    # ---------- 阶段 1：全量校验（不写盘） ----------
    plan = []
    plan.append((PROV, 'A1 插入 columnShiftFor', PROV_ANCHOR, PROV_NEW + PROV_ANCHOR))
    plan.append((ARMY, 'A2a .registers 4->6', ARMY_ANCHOR_OLD, ARMY_ANCHOR_NEW))
    plan.append((ARMY, 'A2b 横向偏移改造', ARMY_OLD, ARMY_NEW))

    problems = []
    sim = {PROV: prov, ARMY: army}
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
        print('❌ 有锚点未命中，**未写盘**（避免半成品）：')
        for p in problems:
            print('   -', p)
        return 1

    # ---------- 阶段 2：写盘 + 备份 ----------
    for path in (PROV, ARMY):
        b = path + '.pre_' + BATCH
        if not os.path.exists(b):
            shutil.copy2(path, b)
            print('  备份 ->', b)
        os.makedirs(REVX, exist_ok=True)
        shutil.copy2(path, REVX + os.path.basename(path) + '.pre_' + BATCH)
        open(path, 'w', encoding='utf-8').write(sim[path])
    print('✅ r6d163 两处编辑已落盘（阶段1校验通过后才写）')
    return 0


if __name__ == '__main__':
    sys.exit(main())