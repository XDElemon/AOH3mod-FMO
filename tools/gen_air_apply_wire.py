#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""把 AirModelStats.applyModel 接进两条路径（幂等）

1) AirForceManager.stampAirUnit —— 出厂/入场：写完 modelAid 后套数值，并把 hp 拉满
2) LoadSavedGameManager       —— 读档：写完 modelAid 后套数值，**不碰 hp**（用存档值）
"""
import os, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
S = os.path.join(ROOT, "src", "smali", "aoc", "kingdoms", "lukasz")
UNIT = "Laoc/kingdoms/lukasz/map/battles/AirUnit;"
STATS = "Laoc/kingdoms/lukasz/map/battles/AirModelStats;"
MARK = "# applyModel-wired"

def patch(path, old, new, name):
    src = open(path, encoding="utf-8").read()
    if new in src:
        print("  已接: %s" % name); return
    if old not in src:
        raise SystemExit("❌ 锚点没找到: %s" % name)
    open(path, "w", encoding="utf-8").write(src.replace(old, new, 1))
    print("  ✅ 已接: %s" % name)

# 1) stampAirUnit：出厂
p1 = os.path.join(S, "map/battles/AirForceManager.smali")
old1 = """    iput v1, p0, %s->modelAid:I
    :r6d265_sau_ret""" % UNIT
new1 = """    iput v1, p0, %s->modelAid:I

    # %s: 出厂套机型数值，并把 hp 拉满
    invoke-static {p0}, %s->applyModel(%s)V

    iget v2, p0, %s->maxHp:F

    iput v2, p0, %s->hp:F

    :r6d265_sau_ret""" % (UNIT, MARK, STATS, UNIT, UNIT, UNIT)

# 2) 读档：只套数值，不动 hp
p2 = os.path.join(S, "jakowski/SaveLoad/LoadSavedGameManager.smali")
old2 = """    iput v12, v10, %s->modelAid:I
    iget v12, v12""" % UNIT  # 占位，实际用下面的
old2 = """    iput v12, v10, %s->modelAid:I
    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->airportID:I""" % UNIT
new2 = """    iput v12, v10, %s->modelAid:I

    # %s: 读档套机型数值（hp 由存档恢复，这里不碰）
    invoke-static {v10}, %s->applyModel(%s)V

    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->airportID:I""" % (UNIT, MARK, STATS, UNIT)

patch(p1, old1, new1, "stampAirUnit（出厂）")
patch(p2, old2, new2, "LoadSavedGameManager（读档）")
