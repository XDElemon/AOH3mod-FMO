#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_oob.py —— 生成 64 条"空军编制"（AircraftTypes.json）

为什么要 64 条：游戏原本只有 4 条 AirType 模板（拦截/战斗/轰炸/攻击），
applyType 按 type.ordinal() 取，所以每架飞机没有自己的名字/价格/工时/载荷。

本工具按机型表（data/aircraft_models.json，64 槽全满）生成 64 条编制：
  ID           1..64           （= aid+1，与机型表 aid 一一对应）
  Name         机型短码
  Group        0..3            （国家标签：CN/EU/RU/US）
  ModelAid     0..63           （= aid = imageId-70）
  RequiredTechID  该机型的 techId（空军科技线 400 段上线后替换）
  数值         atk/def/雷达/速度 按代基线；价格/工时按代递增
  载荷/油量/半径 按类型（轰炸机大载荷、长半径；截击机短半径大雷达）

用法: python3 tools/gen_air_oob.py [输出目录]     # 默认 build/assets/game/AirUnit
      python3 tools/gen_air_oob.py --check
"""
import json, os, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MODELS = os.path.join(ROOT, "data", "aircraft_models.json")
COUNTRY = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
TYPE_ID = {"INTERCEPTOR": 1, "FIGHTER": 2, "BOMBER": 3, "ATTACKER": 4}

# 价格/工时：**不在本文件定义** —— 与机型表同源（tools/gen_aircraft_models.py 的 COST/TIME，
# 含无人机 ×0.6 / 工期 -1 折扣），否则面板显示值与 p1bCost 扣款会对不上。
# v52：本文件**不再自己派生数值** —— 全部来自 tools/gen_aircraft_models.py 的 build()（唯一真源）：
#   · 战斗数值/探测/速度/导弹/造价/工期/机炮/无人机
#   · 面板与编制字段（载荷/油量/作战半径/敏捷/隐身/对地攻击/ECM/可打空/可打地）
# 这样 AircraftTypes.json（面板读）与 AirModelStats（圆/战斗读）不可能再分叉。
from gen_aircraft_models import build as build_models  # noqa: E402  (ROOT 已在下面 sys.path 注入)

TYPE_ID = {"INTERCEPTOR": 1, "FIGHTER": 2, "BOMBER": 3, "ATTACKER": 4}
COUNTRY = {"CN": 0, "EU": 1, "RU": 2, "US": 3}


def build():
    sys.path.insert(0, os.path.join(ROOT, "tools"))
    src = json.load(open(MODELS, encoding="utf-8"))
    models = src["models"]
    if len(models) != 64:
        raise SystemExit("机型表应为 64 条，实际 %d" % len(models))
    computed = build_models(src)
    if len(computed) != len(models):
        raise SystemExit("gen_aircraft_models.build() 条数异常")
    rows = []
    for aid, (m, c) in enumerate(zip(models, computed)):
        t = m["type"]
        rows.append({
            "ID": aid + 1,
            # Name = 裸型号 + 中文代号（AircraftTypes.json 会被游戏读，面板显示的就是它）
            "Name": c["Name"],
            "Group": COUNTRY[m["country"]],
            "ModelAid": aid,
            "TypeId": TYPE_ID[t],
            "CanAttackAir": bool(c["CanAttackAir"]),
            "CanAttackGround": bool(c["CanAttackGround"]),
            "AirAttack": c["AirAttack"],
            "GroundAttack": c["GroundAttack"],
            "Defense": c["Defense"],
            "Agility": c["Agility"],
            "Speed": c["Speed"],
            "Stealth": c["Stealth"],
            "CombatRadius": c["CombatRadius"],
            "RadarDetect": c["RadarDetect"],
            "IsDrone": bool(c["Drone"]),
            "MaxPayload": c["MaxPayload"],
            "CostGold": c["CostGold"],
            "ConstructionTime": c["ConstructionTime"],
            "RequiredTechID": -1,  # 空军科技 400 段上线前不设门槛（否则面板能造、点了没反应）
        })
    return rows


def to_json(rows):
    L = ["{", "\tAircraftTypes:", "\t["]
    for r in rows:
        L.append("\t\t{")
        for k, v in r.items():
            if isinstance(v, bool):
                v = "true" if v else "false"
            elif isinstance(v, str):
                v = '"%s"' % v
            L.append("\t\t\t%s: %s," % (k, v))
        L.append("\t\t},")
    L += ["\t]", "}"]
    return "\n".join(L) + "\n"


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    outdir = args[0] if args else os.path.join(ROOT, "build", "assets", "game", "AirUnit")
    rows = build()
    text = to_json(rows)
    if "--check" in sys.argv:
        p = os.path.join(outdir, "AircraftTypes.json")
        cur = open(p, encoding="utf-8").read() if os.path.exists(p) else ""
        print("一致 ✅" if cur == text else "不一致 ❌")
        return 0 if cur == text else 1
    os.makedirs(outdir, exist_ok=True)
    open(os.path.join(outdir, "AircraftTypes.json"), "w", encoding="utf-8").write(text)
    bygroup = {}
    for r in rows:
        bygroup[r["Group"]] = bygroup.get(r["Group"], 0) + 1
    print("  ✅ 64 条编制 -> %s（按国家组: %s）" % (os.path.join(outdir, "AircraftTypes.json"), bygroup))
    return 0


if __name__ == "__main__":
    sys.exit(main())
