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


def check_generated():
    errs = []
    if not os.path.exists(GEN):
        errs.append("缺生成物 AirDefCfg.smali")
        return errs
    head = io.open(GEN, encoding="utf-8").read(300)
    if "# 由 tools/gen_air_defense.py 生成" not in head:
        errs.append("生成物缺“由 tools/… 生成”标记")
    r = subprocess.run([sys.executable, TOOL, "--check"], capture_output=True, text=True)
    if r.returncode != 0:
        errs.append("生成物与 data/air_defense.json 不一致：" +
                    ((r.stdout or "") + (r.stderr or "")).strip()[:300])
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
    errs = check_data(src) + check_generated()
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
