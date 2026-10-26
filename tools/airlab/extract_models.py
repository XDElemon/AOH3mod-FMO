#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""从 data/aircraft_models.json 抽几架带 fuel 的机型 -> tools/airlab/models.tsv（AirLab 读它）。

列：key / modelCode / type / gen / speed / agility / fuel / radarDetect
speed 默认 800（当前 AircraftTypes.json 里 64 个机型都是 800，还没分化）。
"""
import json, os, sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
SRC = os.path.join(ROOT, "data", "aircraft_models.json")
OUT = os.path.join(ROOT, "tools", "airlab", "models.tsv")


def main():
    d = json.load(open(SRC, encoding="utf-8"))
    rows = []
    for m in d["models"]:
        if "fuel" not in m:
            continue
        s = m.get("stats", {})
        rows.append((m["key"], m["modelCode"], m["type"], str(m["gen"]),
                     "800", str(s.get("Agility", 0.5)), str(m["fuel"]),
                     str(s.get("RadarDetect", 0))))
    with open(OUT, "w", encoding="utf-8") as f:
        f.write("# key\tname\ttype\tgen\tspeed\tagility\tfuel\tradarDetect\n")
        for r in rows:
            f.write("\t".join(r) + "\n")
    print("写出 %d 行 -> %s" % (len(rows), OUT))


if __name__ == "__main__":
    main()
