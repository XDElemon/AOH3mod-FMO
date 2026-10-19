#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_aircraft_models.py —— 生成「每架飞机一条」的配置文件（方案 B 的 51 机型表）

真源：data/aircraft_models.json（机型清单：key/country/type/gen/techId/imageId）
产出：assets/game/AirUnit/AircraftModels.json（51 条，按列表下标 = modelAid）

每条的字段（用户定稿 9 项 + 分类）：
  Aid Name Gen Country Type
  AirAttack Defense RadarRange        # 乙方案：空战三件套（maxHp = Defense*2）
  Speed                               # 飞行速度
  MissileSpeed                        # 导弹飞行速度（驱动两套时钟）
  MissileRange MissileCount MissileHops
  HasGun                              # 是否有机炮

数值规则（不是拍脑袋，来自实测标定 baseline/待办_机场归属与代差_v1.md）：
  * 真实结算里 hp<0 才死、活着才反击；一发秒杀会让交换比变无穷大，
    所以 atk 必须满足 0.2*atk <= 低代最小 hp（否则秒杀）。
    3 代最小 hp = 截击机 Defense12*2 = 24 → atk <= 120。
  * 由此 atk 只能缓涨，代差靠 hp 拉：atk 120/hp100 → 实测 8:1；atk 140/hp250 → 20:1。
  * 同代同 atk，靠 Defense 区分机型（截击薄、轰炸厚），避免破坏"不秒杀"上限。

用法：
  python3 tools/gen_aircraft_models.py [输出目录]
  不给输出目录时只做校验并打印摘要。
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)

TYPE_ENUM = {"FIGHTER": 0, "INTERCEPTOR": 1, "ATTACKER": 2, "BOMBER": 3}
COUNTRY_ENUM = {"CN": 0, "EU": 1, "RU": 2, "US": 3}

# 按代：atk / hp(基础) / radar / speed / missile
# atk 上限受"不秒杀"约束（0.2*atk <= 上一代最小 hp），见文件头说明
# 用户定档「乙」：**每一级相邻都 8:1**
# 推导（真实结算：hp<0 才死、活着才反击；k=打几发才死）：
#   E(相邻) = hp_高 / ((k-1) * 0.5 * atk_低)  ，取 k=2 ⇒ hp_高 = 4 * atk_低
#   且必须"两发打死但不一发打死"：2.5*hp_低 < atk_高 <= 5*hp_低
# 依次解出（3 代战机 atk25/hp30 为基线）：
#   4 代 atk 150 / hp 100   → E(4v3)=8
#   5 代 atk 375 / hp 600   → E(5v4)=8
#   6 代 atk 2000/ hp 1500  → E(6v5)=8
GEN = {
    # mspeed 与原作者 TECH-HOOK 常量 67.5 同量纲（逐帧推进直接除它），
    # 故取 68/84/102/124 ≈ 每代 1.23 倍：高代导弹明显更快，但不至于一帧跳到目标。
    3: dict(atk=25,   hp=30,   radar=500, speed=800,  mrange=100, mcount=2, mhops=1, mspeed=68,  mrr=40),
    4: dict(atk=150,  hp=100,  radar=650, speed=1050, mrange=130, mcount=2, mhops=1, mspeed=84,  mrr=55),
    5: dict(atk=375,  hp=600,  radar=800, speed=1300, mrange=160, mcount=4, mhops=2, mspeed=102, mrr=70),
    6: dict(atk=2000, hp=1500, radar=950, speed=1550, mrange=190, mcount=4, mhops=2, mspeed=124, mrr=85),
}

# 机型差异：只动 hp(Defense) 与 atk 微调，且 atk 必须仍在不秒杀上限内
TYPE_MOD = {
    "INTERCEPTOR": dict(hp=1.00, atk=1.00),
    "FIGHTER":     dict(hp=1.00, atk=1.00),
    "ATTACKER":    dict(hp=1.10, atk=0.95),
    "BOMBER":      dict(hp=1.50, atk=1.00),
}

# 机炮：轰炸机按"无炮、靠导弹"处理（可用处说清，便于以后调）
HAS_GUN = {"INTERCEPTOR": True, "FIGHTER": True, "ATTACKER": True, "BOMBER": False}


def build(src):
    out = []
    for aid, m in enumerate(src["models"]):
        g = int(m["gen"])
        t = m["type"]
        if g not in GEN:
            raise SystemExit("❌ 未知代: %s (%s)" % (g, m["key"]))
        if t not in TYPE_MOD:
            raise SystemExit("❌ 未知机型: %s" % t)
        base = GEN[g]
        mod = TYPE_MOD[t]
        atk = round(base["atk"] * mod["atk"])
        hp = round(base["hp"] * mod["hp"])
        out.append({
            "Aid": aid,
            "Name": m["modelCode"],
            "Key": m["key"],
            "Gen": g,
            "Country": COUNTRY_ENUM[m["country"]],
            "Type": TYPE_ENUM[t],
            "AirAttack": atk,
            "Defense": round(hp / 2.0, 1),
            "RadarRange": base["radar"],
            "Speed": base["speed"],
            "MissileSpeed": base["mspeed"],
            "MissileRange": base["mrange"],
            "MissileCount": base["mcount"],
            "MissileHops": base["mhops"],
            "MissileRadarRange": base["mrr"],
            "HasGun": HAS_GUN[t],
        })
    return out


def validate(models, src):
    """硬校验：不许秒杀（0.2*atk > 上一代最小 hp 就报错）"""
    hp_by_gen = {}
    for e in models:
        hp_by_gen.setdefault(e["Gen"], []).append(e["Defense"] * 2.0)
    fails = []
    for g in sorted(hp_by_gen):
        if g - 1 in hp_by_gen:
            min_hp_low = min(hp_by_gen[g - 1])
            for e in models:
                if e["Gen"] == g and 0.2 * e["AirAttack"] > min_hp_low:
                    fails.append("秒杀风险: %s gen%d atk=%d → 0.2*atk=%.1f > 低代最小hp %.1f"
                                 % (e["Key"], g, e["AirAttack"], 0.2 * e["AirAttack"], min_hp_low))
    # 数量/索引一致性
    if len(models) != src["counts"]["total"]:
        fails.append("条数 %d != 声明 %d" % (len(models), src["counts"]["total"]))
    if [e["Aid"] for e in models] != list(range(len(models))):
        fails.append("Aid 不是 0..N-1 连续")
    return fails


def to_json(models):
    """手写 JSON（Gdx Json 要求无引号键 + 无尾逗号风险，这里保持与 AircraftTypes.json 同风格）"""
    lines = ["{", "\tAircraftModels:", "\t["]
    for e in models:
        lines.append("\t\t{")
        for k in ("Aid", "Name", "Key", "Gen", "Country", "Type", "AirAttack",
                  "Defense", "RadarRange", "Speed", "MissileSpeed",
                  "MissileRange", "MissileCount", "MissileHops", "MissileRadarRange"):
            lines.append("\t\t\t%s: %s," % (k, e[k] if not isinstance(e[k], str) else '"%s"' % e[k]))
        lines.append("\t\t\tHasGun: %s," % ("true" if e["HasGun"] else "false"))
        lines.append("\t\t},")
    lines += ["\t]", "}"]
    return "\n".join(lines) + "\n"


def main():
    src = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))
    models = build(src)
    fails = validate(models, src)
    if fails:
        for f in fails:
            print("  ❌ " + f)
        print("❌ 机型表校验未通过（%d 项）" % len(fails))
        return 1

    outdir = sys.argv[1] if len(sys.argv) > 1 else None
    if outdir:
        dst = os.path.join(outdir, "assets", "game", "AirUnit")
        os.makedirs(dst, exist_ok=True)
        p = os.path.join(dst, "AircraftModels.json")
        open(p, "w", encoding="utf-8").write(to_json(models))
        print("  ✅ 已生成 %s（%d 条，%d B）" % (p, len(models), os.path.getsize(p)))

    by_gen = {}
    for e in models:
        by_gen.setdefault(e["Gen"], []).append(e)
    for g in sorted(by_gen):
        xs = by_gen[g]
        print("  gen%d: %2d 条  atk=%s  hp=%s~%s  radar=%d"
              % (g, len(xs), sorted({x["AirAttack"] for x in xs}),
                 min(x["Defense"] * 2 for x in xs), max(x["Defense"] * 2 for x in xs),
                 xs[0]["RadarRange"]))
    print("✅ 机型表校验通过（不秒杀上限 / Aid 连续 / 条数一致）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
