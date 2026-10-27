#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B47 M2 导弹类型表闸门。

断言（数据 + 生成物 + 口径）：
  1) data/missiles.json 校验通过（id 唯一、枚举合法、数值范围、能力一对一）；
  2) 生成物与真源一致（tools/gen_missile_types.py --check）；
  3) 口径硬约束：**没有 midcourse 发射源**（中段雷达只探测）、**只有核弹头可被 ABM 拦**、
     防空拦截弹由 ad_site 发射、反导拦截弹由 abm_site 发射；
  4) 七项能力里 5 个导弹能力都能映射到恰好一个类型；两个机炮能力不映射到导弹；
  5) 生成物头部有“由 tools/… 生成”标记（Java 基线闸门依赖它）。
红样本：midcourse 发射源 / 核弹头不可被拦 / 重复 id / 能力重复 / 数值越界 —— 都必须变红。
"""
import io
import json
import os
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "data", "missiles.json")
GEN = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles", "MissileTypes.smali")
TOOL = os.path.join(ROOT, "tools", "gen_missile_types.py")

sys.path.insert(0, os.path.join(ROOT, "tools"))
import gen_missile_types as g  # noqa: E402


def check_data(src):
    errs = g.validate(src)
    by = {t["id"]: t for t in src["types"] if "id" in t}
    # 口径硬约束（正常数据必须全部满足）
    if by.get("ABM", {}).get("launcher") != "abm_site":
        errs.append("ABM 必须由 abm_site 发射")
    if by.get("SAM", {}).get("launcher") != "ad_site":
        errs.append("SAM 必须由 ad_site 发射")
    for t in src["types"]:
        if t.get("warhead") == "nuclear" and "ABM" not in (t.get("interceptableBy") or []):
            errs.append("%s 核弹头必须可被 ABM 拦" % t.get("id"))
    return errs


def check_generated():
    errs = []
    if not os.path.exists(GEN):
        return ["缺生成物 MissileTypes.smali"]
    head = io.open(GEN, encoding="utf-8").read(300)
    if "# 由 tools/gen_missile_types.py 生成" not in head:
        errs.append("生成物缺“由 tools/… 生成”标记")
    r = subprocess.run([sys.executable, TOOL, "--check"], capture_output=True, text=True)
    if r.returncode != 0:
        errs.append("生成物与 data/missiles.json 不一致：" + ((r.stdout or "") + (r.stderr or "")).strip()[:300])
    return errs


def red_samples():
    base = json.load(open(SRC, encoding="utf-8"))

    def mut(fn):
        d = json.loads(json.dumps(base))
        fn(d)
        return d

    cases = []
    cases.append(("midcourse 发射源", mut(lambda d: d["enums"]["launcher"].append("midcourse"))))
    cases.append(("核弹头不可被 ABM 拦", mut(lambda d: [t.update(interceptableBy=[]) for t in d["types"] if t["id"] == "TAC_NUKE"])))
    cases.append(("重复 id", mut(lambda d: d["types"].append(dict(d["types"][0])))))
    cases.append(("能力重复", mut(lambda d: [t.update(capability="CanAAMissile") for t in d["types"] if t["id"] == "AGM"])))
    cases.append(("数值越界", mut(lambda d: [t.update(speed=999) for t in d["types"] if t["id"] == "AAM"])))
    cases.append(("反导阵地改发射源", mut(lambda d: [t.update(launcher="aircraft") for t in d["types"] if t["id"] == "ABM"])))

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
        src = json.load(open(SRC, encoding="utf-8"))
    except Exception as e:
        print("FAIL 读 data/missiles.json 失败：%s" % e)
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
    print("OK B47 导弹类型表：%d 类型 / 能力映射 / 中段不发射 / 只核弹头可被 ABM 拦" % len(src["types"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
