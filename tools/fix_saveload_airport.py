#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
fix_saveload_airport.py —— 修读档时"机场归属"被机型下标覆盖的既有 bug

实测（LoadSavedGameManager，原文件 4341–4345 行）：

    iget v12, v7, Save_AirUnit;->airportID:I   ← 取出来但没被使用（死代码）
    iget v12, v7, Save_AirUnit;->ma:I
    iput v12, v10, AirUnit;->modelAid:I
    iput v12, v10, AirUnit;->airportID:I       ← 把 ma（机型下标）写进 airportID

⇒ 读档后**每架飞机的机场归属都等于它的机型下标**（0..50），而不是真实机场 ID。
   后果：出动/返航/机场归属判断全错，且因为值"看起来像个合法小整数"，不报错。

修法：把 airportID 真正读出来再写。
    ma        → modelAid
    airportID → airportID

幂等：修完后再跑不会重复改。
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
TARGET = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali")

SAVE = "Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;"
UNIT = "Laoc/kingdoms/lukasz/map/battles/AirUnit;"

BROKEN = """    iget v12, v7, {save}->airportID:I
    iget v12, v7, {save}->ma:I
    iput v12, v10, {unit}->modelAid:I

    iput v12, v10, {unit}->airportID:I""".format(save=SAVE, unit=UNIT)

FIXED = """    iget v12, v7, {save}->ma:I
    iput v12, v10, {unit}->modelAid:I
    iget v12, v7, {save}->airportID:I

    iput v12, v10, {unit}->airportID:I""".format(save=SAVE, unit=UNIT)


def main():
    src = open(TARGET, encoding="utf-8").read()
    if FIXED in src:
        print("  已修过，无需改动")
        return 0
    if BROKEN not in src:
        print("❌ 没找到预期的坏代码块（可能上游已改动，停下来人工确认）")
        return 1
    out = src.replace(BROKEN, FIXED, 1)
    open(TARGET, "w", encoding="utf-8").write(out)
    print("  ✅ 已修 LoadSavedGameManager：airportID 不再被 ma(机型下标) 覆盖")
    return 0


if __name__ == "__main__":
    sys.exit(main())
