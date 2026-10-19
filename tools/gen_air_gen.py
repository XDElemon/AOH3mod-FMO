#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_air_gen.py —— 把「代际」从常量桩接成真实取值（代差靠数值的前置条件）

背景（见 baseline/research_gen载体_v1.md）：
  * `AirUnit` 上没有「这一架是几代」的字段，但**已经有 `modelAid`**（机型下标）：
      - 出厂/入场时由 AirForceManager.stampAirUnit → getBestAidForType 写入；
      - `SaveGameManager` 第 556 行序列化、`LoadSavedGameManager` 第 4343 行读回 —— **存档已带**；
      - 默认 -1，未知机型。
  * `AirModelTables.genOf(idx)` 已能从机型下标反推代：`((IMAGE&0xFF)-70)>>4 + 3`。
  * `AirMission.unitGenOf(unit)` 是桩，恒返回 3 → 所有飞机都被当三代，
    导致 `missileCountForGen` 永远是 2 发。

本脚本只做一件事：把 `unitGenOf` 改成「读 modelAid → genOf」，带空/越界兜底。
不新增字段、不动存档格式。

用法： python3 tools/gen_air_gen.py
判据： tools/gate_behavior.py 的 B6 用例全绿（null / -1 / 越界 → 3；正常 → genOf 透传）
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
TARGET = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles/AirMission.smali")

METHOD = """\
.method private static unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I
    .registers 3
    .param p0, "unit"    # Laoc/kingdoms/lukasz/map/battles/AirUnit;

    # 代际 = 机型下标反推（modelAid 由 stampAirUnit 落字段，存档已带）
    # 生成器: tools/gen_air_gen.py ｜ 兜底: 空/未定型/越界 → 3（与旧行为一致）
    if-eqz p0, :gen_fallback

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    if-ltz v0, :gen_fallback

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I

    array-length v1, v1

    if-ge v0, v1, :gen_fallback

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->genOf(I)I

    move-result v0

    return v0

    :gen_fallback
    const/4 v0, 0x3

    return v0
.end method
"""


def main():
    src = open(TARGET, encoding="utf-8").read()
    pat = re.compile(r"\.method private static unitGenOf\(Laoc/kingdoms/lukasz/map/battles/AirUnit;\)I.*?\.end method\n",
                     re.S)
    if not pat.search(src):
        raise SystemExit("❌ AirMission 里找不到 unitGenOf")
    out = pat.sub(METHOD, src, count=1)
    if out == src:
        print("  已是最新，无需改动")
    else:
        open(TARGET, "w", encoding="utf-8").write(out)
        print("  ✅ 已改写 AirMission.unitGenOf（modelAid → genOf，带兜底）")


if __name__ == "__main__":
    main()
