#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B49 防空阵地配置闸门（v106）。

断言：
  1) `data/air_defense.json` 校验通过（唯一 id、必填字段、射程/速度/弹数合法）；
  2) 生成物两份都与真源一致：`AirDefCfg.smali` + `build/assets/game/AirDefense/AirDefense.json`；
  3) 硬口径：**中段雷达只探测不发射**（midcourse.canFire=false 且不带弹/速度）；
     aaa 是唯一发射源，必须 speed>0 且 count>0；
  4) 进包配置里保留 units 说明（range=Real / speed=world px per turn），防止后人拿错单位；
  5) 生成物头部带"由 tools/… 生成"标记（Java 基线闸门靠它放行手写检查）。

红样本（必须变红）：中段改可发射 / 射程为 0 / 不发射却带弹 / 加成射程小于基础 / 删掉 midcourse。
"""
import io
import json
import os
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "data", "air_defense.json")
GEN = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles", "AirDefCfg.smali")
ASSET = os.path.join(ROOT, "build", "assets", "game", "AirDefense", "AirDefense.json")
TOOL = os.path.join(ROOT, "tools", "gen_air_defense.py")

sys.path.insert(0, os.path.join(ROOT, "tools"))
import gen_air_defense as g  # noqa: E402


def check_data(src):
    errs = g.validate(src)
    by = {s.get("id"): s for s in src.get("sites", []) if "id" in s}
    fire = [s for s in src.get("sites", []) if s.get("canFire")]
    if len(fire) != 1 or fire[0].get("id") != "aaa":
        errs.append("唯一发射源必须是 aaa，实际 %s" % [s.get("id") for s in fire])
    if by.get("midcourse", {}).get("canFire"):
        errs.append("midcourse 不许发射（中段雷达只探测/预警）")
    return errs


def check_buildings_integration():
    """v131：防空参数真源已并入建筑配置 —— 进包那份必须与源文件逐字节一致，
    且三个建筑块里真的带着可调字段（防止"改了 data/ 但进包还是旧值"）。"""
    errs = []
    src = os.path.join(ROOT, "assets_r6t007", "game", "buildings", "Buildings.json")
    ship = g.SHIP
    if not os.path.exists(ship):
        return ["缺进包建筑配置 build/assets/game/buildings/Buildings.json（先跑 gen_air_defense.py）"]
    a = io.open(src, encoding="utf-8").read()
    b = io.open(ship, encoding="utf-8").read()
    if a != b:
        errs.append("进包 Buildings.json 与 assets_r6t007 源文件不一致")
    # v132 真机事故：JSON 里的附加键必须在 BuildingsManager$Buildings 类里有同名字段，
    # 否则 gdx Json（本版本 ignoreUnknownFields=false）直接抛异常 ⇒ 整份建筑配置解析失败、建筑列表空白。
    cls = os.path.join(ROOT, "src", "smali", "aoc", "kingdoms", "lukasz", "map",
                       "BuildingsManager$Buildings.smali")
    ctext = io.open(cls, encoding="utf-8").read() if os.path.exists(cls) else ""
    for f in ("EngageRangeReal", "EngageRangeBonusReal", "DetectRangeReal",
              "ReloadHours", "HitChance", "MissileSpeed", "DiscScale"):
        if ".field public %s:" % f not in ctext:
            errs.append("BuildingsManager$Buildings 缺字段 %s（会导致建筑配置解析失败）" % f)
    # 迷雾（PlayerFogOfWar）里的探测半径是硬编码常量，必须与 detectRangeReal 同值；
    # 否则"蓝圈多大"和"实际能探多远"又会分开走。
    fog = os.path.join(ROOT, "src", "smali", "aoc", "kingdoms", "lukasz", "jakowski",
                       "Player", "More", "PlayerFogOfWar.smali")
    ftext = io.open(fog, encoding="utf-8").read() if os.path.exists(fog) else ""
    _mirror = json.load(io.open(os.path.join(ROOT, "data", "air_defense.json"), encoding="utf-8"))
    _by = {s["id"]: s for s in _mirror["sites"]}
    for sid in ("aaa", "radar", "midcourse"):
        hexv = "0x%x" % int(round(_by[sid]["detectRangeReal"]))
        if ("const/16 v6, " + hexv) not in ftext:
            errs.append("PlayerFogOfWar 的 %s 探测半径没跟上配置（缺 const/16 v6, %s）" % (sid, hexv))
    for block in g._blocks(a):
        n = g._block_name(block)
        if n in ("反导阵地", "雷达", "中层反导雷达"):
            if "DetectRangeReal" not in block:
                errs.append("%s 缺 DetectRangeReal" % n)
            if n == "反导阵地":
                for k in ("EngageRangeReal", "EngageRangeBonusReal", "ReloadHours",
                          "HitChance", "MissileSpeed"):
                    if k not in block:
                        errs.append("反导阵地 缺 %s" % k)
    return errs


def check_generated():
    errs = []
    if not os.path.exists(GEN):
        errs.append("缺生成物 AirDefCfg.smali")
        return errs
    full = io.open(GEN, encoding="utf-8").read()
    head = full[:300]
    if "# 由 tools/gen_air_defense.py 生成" not in head:
        errs.append("生成物缺“由 tools/… 生成”标记")
    r = subprocess.run([sys.executable, TOOL, "--check"], capture_output=True, text=True)
    if r.returncode != 0:
        errs.append("生成物与 data/air_defense.json 不一致：" +
                    ((r.stdout or "") + (r.stderr or "")).strip()[:300])
    # v112：查表在 Java（AirDefIds），生成物里不许再有 indexOf
    if ".method public static indexOf" in full:
        errs.append("AirDefCfg 里仍有 indexOf（应搬进 Java：AirDefIds）")
    fj = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles",
                      "AirDefIds.java")
    if not os.path.exists(fj):
        errs.append("缺 Java 查表类 AirDefIds.java")

    # 进包配置要带 units（防止拿 Real 当世界坐标用）
    try:
        asset = json.load(io.open(ASSET, encoding="utf-8"))
        units = asset.get("units") or {}
        if units.get("range") != "Real" or "world px per turn" not in (units.get("speed") or ""):
            errs.append("进包配置的 units 说明缺失/不对：%r" % (units,))
        ids = [s.get("id") for s in asset.get("sites", [])]
        if "aaa" not in ids or "midcourse" not in ids:
            errs.append("进包配置缺 aaa/midcourse：%r" % (ids,))
    except Exception as e:
        errs.append("读进包配置失败：%s" % e)
    return errs


def red_samples():
    base = json.load(io.open(SRC, encoding="utf-8"))

    def mut(fn):
        d = json.loads(json.dumps(base))
        fn(d)
        return d

    def setval(sid, **kw):
        def f(d):
            for s in d["sites"]:
                if s["id"] == sid:
                    s.update(kw)
        return f

    cases = [
        ("中段改可发射", mut(setval("midcourse", canFire=True, speed=67.5, count=1))),
        ("射程为 0", mut(setval("aaa", rangeReal=0))),
        ("不发射却带弹", mut(setval("radar", count=2))),
        ("加成射程小于基础", mut(setval("aaa", rangeReal=140, rangeBonusReal=130))),
        ("删掉 midcourse", mut(lambda d: d.update(sites=[s for s in d["sites"] if s["id"] != "midcourse"]))),
        ("aaa 速度归零", mut(setval("aaa", speed=0.0))),
    ]
    bad = 0
    for name, d in cases:
        errs = check_data(d)
        if not errs:
            bad += 1
            print("FAIL 红样本未变红：%s" % name)
        else:
            print("  red ok  %s → %s" % (name, errs[0]))
    return bad


def main():
    try:
        src = json.load(io.open(SRC, encoding="utf-8"))
    except Exception as e:
        print("FAIL 读 data/air_defense.json 失败：%s" % e)
        return 1
    errs = check_data(src) + check_generated() + check_buildings_integration()
    if "--red" in sys.argv:
        n = red_samples()
        if n:
            errs.append("%d 个红样本没有触发失败" % n)
    if errs:
        for e in errs:
            print("FAIL " + e)
        return 1
    print("OK B49 防空配置：%d 阵地 / 唯一发射源 aaa / 中段只探测 / 生成物与进包配置一致"
          % len(src["sites"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
