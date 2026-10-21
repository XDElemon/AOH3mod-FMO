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

# 按代：价格/工时（三代为基数，逐代递增）
COST = {3: 200, 4: 420, 5: 900, 6: 1800}
TIME = {3: 3, 4: 5, 5: 8, 6: 12}
# 按类型：载荷/油量/半径/敏捷
PAY = {"INTERCEPTOR": (0, 80, 500, 0.8), "FIGHTER": (2, 100, 420, 0.7),
       "BOMBER": (8, 160, 1000, 0.2), "ATTACKER": (4, 80, 380, 0.35)}
AIR = {"INTERCEPTOR": (True, False), "FIGHTER": (True, True),
       "BOMBER": (False, True), "ATTACKER": (False, True)}
# 代基线（与 tools/gen_aircraft_models.py 的 GEN 表同源）
GEN = {3: dict(atk=25, hp=30, radar=500, speed=800),
       4: dict(atk=150, hp=100, radar=650, speed=1050),
       5: dict(atk=375, hp=600, radar=800, speed=1300),
       6: dict(atk=2000, hp=1500, radar=950, speed=1550)}
TYPE_MOD = {"INTERCEPTOR": (1.00, 1.00), "FIGHTER": (1.00, 1.00),
            "ATTACKER": (0.95, 1.10), "BOMBER": (1.00, 1.50)}


def build():
    models = json.load(open(MODELS, encoding="utf-8"))["models"]
    if len(models) != 64:
        raise SystemExit("机型表应为 64 条，实际 %d" % len(models))
    rows = []
    for aid, m in enumerate(models):
        g, t = m["gen"], m["type"]
        base = GEN[g]
        amod, dmod = TYPE_MOD[t]
        pay, fuel, radius, agility = PAY[t]
        can_air, can_gnd = AIR[t]
        atk = round(base["atk"] * amod)
        hp = round(base["hp"] * dmod)
        rows.append({
            "ID": aid + 1,
            # Name = 裸型号 + 中文代号（AircraftTypes.json 会被游戏读，面板显示的就是它）
            "Name": m["modelCode"] + m.get("nameCN", ""),
            "Group": COUNTRY[m["country"]],
            "ModelAid": aid,
            "TypeId": TYPE_ID[t],
            "CanAttackAir": can_air,
            "CanAttackGround": can_gnd,
            "AirAttack": atk,
            "GroundAttack": 0 if t == "INTERCEPTOR" else (60 if t == "BOMBER" else (30 if t == "ATTACKER" else 5)),
            "Defense": round(hp / 2.0, 1),
            "Agility": agility,
            "Speed": base["speed"],
            "Stealth": 0.15 if t == "BOMBER" else 0.05,
            "Ecm": 0.1,
            "MaxFuel": fuel,
            "FuelConsumption": 12 if t in ("INTERCEPTOR", "BOMBER") else 10,
            "CombatRadius": radius,
            "RadarRange": base["radar"],
            "MaxPayload": pay,
            "CostGold": COST[g],
            "ConstructionTime": TIME[g],
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
