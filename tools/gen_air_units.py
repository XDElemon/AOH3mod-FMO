#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_units.py —— 生成四个空军编制文件（AirInterceptor/AirFighter/AirBomber/AirAttacker.json）

调研结论（关键）：游戏里空军编制**就是陆军编制表里的一段**——
`assets/game/units/Units.json` 的 11 个类型中，ID 7..10 是 Air*，
各指向 `assets/game/units/AirXxx.json`，文件里是一个变体列表，
列表下标就是 `getBestAidForType()` 返回的 armyID。

⇒ 每个类型文件写 **16 条**：下标 = (gen-3)*4 + 国家组
⇒ 机型 aid = armyID*4 + 类型轴，正好等于机型表里的 (gen-3)*16 + 组*4 + 类型

飞机不参加陆战，所以陆战数值（Attack/Defense/MovementSpeed/AttackRange/SiegeProgress）
一律填 0，只保留名字/科技/造价这些编制要素。

用法: python3 tools/gen_air_units.py [输出目录]
"""
import json, os, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUTD = os.path.join(ROOT, "build", "assets", "game", "units")
GROUP = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
AXIS = {"FIGHTER": 0, "INTERCEPTOR": 1, "ATTACKER": 2, "BOMBER": 3}   # 机型表类型轴
FILE = {7: ("INTERCEPTOR", "AirInterceptor"), 8: ("FIGHTER", "AirFighter"),
        9: ("BOMBER", "AirBomber"), 10: ("ATTACKER", "AirAttacker")}
COST = {3: 200, 4: 420, 5: 900, 6: 1800}
TIME = {3: 3, 4: 5, 5: 8, 6: 12}
MAINT = {3: 0.32, 4: 0.6, 5: 1.2, 6: 2.4}


def tech_ids():
    """科技 ID：按机型表顺序，与 tools/gen_air_techs.py 的 BASE_ID 一致"""
    sys.path.insert(0, os.path.join(ROOT, "tools"))
    import gen_air_techs as g
    return {n["name"]: n["id"] for n in g.nodes()}


def build():
    models = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))["models"]
    ids = tech_ids()
    out = {}
    for uid, (tp, fname) in FILE.items():
        rows = []
        for gen in (3, 4, 5, 6):
            for cn in ("CN", "EU", "RU", "US"):
                aid = (gen - 3) * 16 + GROUP[cn] * 4 + AXIS[tp]
                m = models[aid]
                assert m["type"] == tp and m["gen"] == gen and m["country"] == cn, (aid, m)
                rows.append({
                    "Name": m["modelCode"],
                    "ImageID": 67,               # 军表图标沿用占位；地图贴图由 pickAirImage 按机型取
                    "UnitLevel": gen - 3,
                    "Attack": 0, "Defense": 0, "MovementSpeed": 0.0,
                    "AttackRange": 0, "SiegeProgress": 0.0,   # 不参加陆战，全 0
                    "RequiredTechID": ids[m["modelCode"]],
                    "Cost": COST[gen],
                    "MaintenanceCost": MAINT[gen],
                    "RecruitmentTime": TIME[gen],
                })
        assert len(rows) == 16, fname
        out[fname] = rows
    return out


def to_json(rows):
    L = ["{", "\tArmy: ["]
    for r in rows:
        L.append("\t\t{")
        for k, v in r.items():
            if isinstance(v, str):
                v = '"%s"' % v
            elif isinstance(v, bool):
                v = "true" if v else "false"
            L.append("\t\t\t%s: %s," % (k, v))
        L.append("\t\t},")
    L += ["\t],", "\tAge_of_History: Army", "}"]
    return "\n".join(L) + "\n"


def main():
    outd = sys.argv[1] if len(sys.argv) > 1 and not sys.argv[1].startswith("--") else OUTD
    data = build()
    os.makedirs(outd, exist_ok=True)
    for fname, rows in data.items():
        open(os.path.join(outd, fname + ".json"), "w", encoding="utf-8").write(to_json(rows))
    total = sum(len(v) for v in data.values())
    print("  ✅ 空军编制 %d 条（4 类型 × 16）-> %s" % (total, outd))
    for f, rows in data.items():
        print("     %-16s %s" % (f, ", ".join(r["Name"] for r in rows[:4]) + " …"))
    return 0


if __name__ == "__main__":
    sys.exit(main())
