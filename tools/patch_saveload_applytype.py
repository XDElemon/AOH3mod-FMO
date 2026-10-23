#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
patch_saveload_applytype.py —— 读档补 `AircraftDataManager.applyType(unit)`（v47）

## 问题（台账第六节「高」优先级遗留）

出厂路径（`AirForceManager`）是 **applyType → applyModel**：
  applyType 按 `modelAid` 取 `AircraftTypes.json` 的 64 行机型行，写
  `canAttackAir / canAttackGround / airAttack / groundAttack / defense / agility /
   speed / stealth / fuel / combatRadius / radarRange / radarDetect / isDrone /
   maxPayload / currentPayload / maxHp / hp / typeID`；
  applyModel 再按机型数值表覆盖攻击/防御/雷达/速度。

读档路径（`LoadSavedGameManager.loadSave_Airforce`）只有 **applyModel**，`applyType` 从没跑过
⇒ 读档后的飞机停在 `AirUnit.<init>` 的构造期默认值：
  `agility=0`、`stealth=0`、`groundAttack=0`、`combatRadius=500`、`maxPayload=2`……
和同型号新造的飞机不是一个东西。这就是台账里"读档路径不跑 applyType"那条。

## 修法

在 `modelAid` 写入之后、`applyModel` 之前补一次 `applyType`。
`applyType` 会覆盖 4 个"存档里有值"的字段，所以紧接着按存档回填：
`typeID / currentPayload / fuel / hp`（存档优先；hp 若超过新的 maxHp，由 applyModel 自己夹回）。
`modelAid<0` 的老存档会走 `applyType` 里的"按 AirType 取 4 行"回退分支，不会崩。

## 幂等

按 `MARKER` 判断，已打过就直接返回，可反复跑。
"""
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
TARGET = os.path.join(
    ROOT, "src", "smali", "aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali")

SAVE = "Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;"
UNIT = "Laoc/kingdoms/lukasz/map/battles/AirUnit;"
ADM = "Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;"
STATS = "Laoc/kingdoms/lukasz/map/battles/AirModelStats;"
MARKER = "# v47-applytype-wired"

ANCHOR = """    iget v12, v7, {save}->ma:I
    iput v12, v10, {unit}->modelAid:I

    # # applyModel-wired: 读档套机型数值（hp 由存档恢复，这里不碰）
    invoke-static {{v10}}, {stats}->applyModel({unit})V
""".format(save=SAVE, unit=UNIT, stats=STATS)

PATCHED = """    iget v12, v7, {save}->ma:I
    iput v12, v10, {unit}->modelAid:I

    {marker}
    # 读档补 applyType：出厂路径是 applyType -> applyModel，读档只跑了后半截
    # ⇒ canAttack*/agility/stealth/groundAttack/combatRadius/maxPayload 停在构造期占位值。
    # applyType 内部按 modelAid 取 64 行机型行（modelAid<0 的老档退回类型行）。
    invoke-static {{v10}}, {adm}->applyType({unit})V

    # applyType 会覆盖这 4 个「存档里有值」的字段，按存档回填（存档优先）
    iget v12, v7, {save}->typeID:I
    iput v12, v10, {unit}->typeID:I
    iget v12, v7, {save}->currentPayload:I
    iput v12, v10, {unit}->currentPayload:I
    iget v12, v7, {save}->fuel:F
    iput v12, v10, {unit}->fuel:F
    iget v12, v7, {save}->hp:F
    iput v12, v10, {unit}->hp:F

    # # applyModel-wired: 读档套机型数值（hp 由存档恢复，这里不碰）
    invoke-static {{v10}}, {stats}->applyModel({unit})V
""".format(marker=MARKER, save=SAVE, unit=UNIT, stats=STATS, adm=ADM)


def main():
    dry = '--dry' in sys.argv
    src = open(TARGET, encoding="utf-8").read()

    if MARKER in src:
        print("  已打过 v47 applyType 补丁，无需改动")
        return 0
    if ANCHOR not in src:
        print("❌ 找不到锚点（applyModel 钩子块）。可能已被改动，先 git diff 看清再改。")
        return 1
    if src.count(ANCHOR) != 1:
        print("❌ 锚点出现 %d 次（应恰好 1 次），拒绝盲改" % src.count(ANCHOR))
        return 1

    out = src.replace(ANCHOR, PATCHED, 1)
    if dry:
        print("  --dry：将插入 %d 行" % (PATCHED.count("\n") - ANCHOR.count("\n")))
        return 0
    open(TARGET, "w", encoding="utf-8").write(out)
    print("  ✅ 已插入 applyType + 4 字段回填（%d 行）" % (PATCHED.count("\n") - ANCHOR.count("\n")))
    print("  下一步：bash tools/build_java.sh 不需要（纯接线）；直接汇编 + python3 tools/fmo.py gate")
    return 0


if __name__ == "__main__":
    sys.exit(main())
