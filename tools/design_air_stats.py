#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""design_air_stats.py —— 机型数值设计表（把"加强方案"落成 data/aircraft_models.json 的 stats{}）

设计口径（2026-10-24 用户拍板）：
  * 只做**数值**加强，科技树不动（剧本里写）；
  * 对象：**CN 的 16 架**；其他三国保持原样（= 相对变弱）；
  * 采用 **B 档**，且**方案一**：四代 atk 保持顶格 150 不动（"两发打死/不秒杀"规则锁死），
    四代靠 hp/探测/射程/隐身/造价变强；
  * 载荷 +1 只给 **战斗机/攻击机/轰炸机**，截击机保持 0（纯对空，不挂炸弹）。

规则表在下面的 CN_RULE 里，改系数即可，不用碰 64 行 JSON。

用法：
  python3 tools/design_air_stats.py --dry     # 只打印评审表 + 与现状的差异
  python3 tools/design_air_stats.py           # 写入 data/aircraft_models.json
  python3 tools/design_air_stats.py --check   # 只校验：现状是否等于设计表（给闸门用）
"""
import json
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MODELS = os.path.join(ROOT, "data", "aircraft_models.json")

# 国家 -> 规则；没列的国家 = 完全不加强（不写 stats）
CN_RULE = {
    # atk 倍率：统一 +12%，但**按代封顶**到"两发打死/不秒杀"的上限（见 ATK_CEILING）
    "atk": 1.12,
    "atk_ceiling": {3: 10 ** 9, 4: 150, 5: 500, 6: 3000},   # = 5 × 上一代最小 hp
    "defense": 1.12,      # hp = 2 × defense ⇒ 血量同步 +12%
    "agility": 1.08,
    "stealth_add": 0.03,
    "detect": 1.15,       # 蓝圈半径同步 +15%
    "mrange": 1.15,       # 红圈半径同步 +15%
    "ground": 1.10,       # 对地攻击力（仅原本 > 0 的机型）
    "payload_add": 1,     # 载荷 +1（截击机除外）
    "payload_types": ("FIGHTER", "ATTACKER", "BOMBER"),
    "cost": 0.90,
    "time_add": -1,
}
RULES = {"CN": CN_RULE}

TYPE_NAME = {"FIGHTER": "战斗", "INTERCEPTOR": "拦截", "ATTACKER": "攻击", "BOMBER": "轰炸"}


def _i(x):
    return int(round(x))


def _d10(x):
    return round(round(float(x) * 10) / 10.0, 1)


def design_for(m, computed):
    """按规则算出该机型的 stats（只包含发生变化的字段）"""
    rule = RULES.get(m["country"])
    if not rule:
        return {}
    t = m["type"]
    gen = int(m["gen"])
    out = {}
    ceiling = rule["atk_ceiling"].get(gen, 10 ** 9)
    atk = min(_i(computed["AirAttack"] * rule["atk"]), ceiling)
    if atk != computed["AirAttack"]:
        out["AirAttack"] = atk
    hp = _d10(computed["Defense"] * 2.0 * rule["defense"])
    defense = _d10(hp / 2.0)
    if defense != composed_defense(computed):
        out["Defense"] = defense
    agi = round(computed["Agility"] * rule["agility"], 2)
    if agi != computed["Agility"]:
        out["Agility"] = agi
    st = round(computed["Stealth"] + rule["stealth_add"], 2)
    if st != computed["Stealth"]:
        out["Stealth"] = st
    det = _i(computed["RadarDetect"] * rule["detect"] / 10.0) * 10
    if det != computed["RadarDetect"]:
        out["RadarDetect"] = det
    mr = _i(computed["MissileRange"] * rule["mrange"] / 5.0) * 5
    if mr != computed["MissileRange"]:
        out["MissileRange"] = mr
    if computed["GroundAttack"] > 0:
        g = _i(computed["GroundAttack"] * rule["ground"])
        if g != computed["GroundAttack"]:
            out["GroundAttack"] = g
    if t in rule["payload_types"]:
        p = computed["MaxPayload"] + rule["payload_add"]
        if p != computed["MaxPayload"]:
            out["MaxPayload"] = p
    cost = _i(computed["CostGold"] * rule["cost"])
    if cost != computed["CostGold"]:
        out["CostGold"] = cost
    tm = max(1, computed["ConstructionTime"] + rule["time_add"])
    if tm != computed["ConstructionTime"]:
        out["ConstructionTime"] = tm
    return out


def composed_defense(computed):
    return _d10(computed["Defense"])


def load():
    """返回 (当前数据, **去掉 stats 的基线** 的 build 结果)。

    关键：设计系数必须乘在"未加强的基线"上，否则第二次运行会把上一轮的加强再乘一遍
    （幂等性炸掉）。所以这里把 stats 剥掉再 build。
    """
    src = json.load(open(MODELS, encoding="utf-8"))
    sys.path.insert(0, os.path.join(ROOT, "tools"))
    import gen_aircraft_models as g
    base = json.loads(json.dumps(src))
    for m in base["models"]:
        m.pop("stats", None)
    return src, g.build(base)


def main():
    src, computed = load()
    want = [design_for(m, c) for m, c in zip(src["models"], computed)]

    rows = []
    changed = 0
    for i, (m, c, w) in enumerate(zip(src["models"], computed, want)):
        cur = m.get("stats") or {}
        if cur != w:
            changed += 1
        rows.append((i, m, c, w, cur))

    if "--check" in sys.argv:
        bad = [(i, m["modelCode"]) for i, m, c, w, cur in rows if w and cur != w]
        if bad:
            print("❌ 设计表与数据不一致：%s" % ", ".join("%s(aid%d)" % (n, i) for i, n in bad[:8]))
            return 1
        print("✅ 设计表与 data/aircraft_models.json 一致")
        return 0

    # 评审表：只列有加强的机型
    print("aid gen 型   型号        atk        hp          detect     mrange    cost    payload  隐身  敏捷")
    for i, m, c, w, cur in rows:
        if not w:
            continue
        def show(field, base, fmt):
            new = w.get(field, base)
            return fmt % (base, new) if new != base else ("%s" % fmt % (base, base)).replace("→", "=")
        atk = "%d→%d" % (c["AirAttack"], w.get("AirAttack", c["AirAttack"]))
        hp = "%.1f→%.1f" % (c["Defense"] * 2, w.get("Defense", c["Defense"]) * 2)
        det = "%d→%d" % (c["RadarDetect"], w.get("RadarDetect", c["RadarDetect"]))
        mr = "%d→%d" % (c["MissileRange"], w.get("MissileRange", c["MissileRange"]))
        cost = "%d→%d" % (c["CostGold"], w.get("CostGold", c["CostGold"]))
        pay = "%d→%d" % (c["MaxPayload"], w.get("MaxPayload", c["MaxPayload"]))
        st = "%.2f→%.2f" % (c["Stealth"], w.get("Stealth", c["Stealth"]))
        ag = "%.2f→%.2f" % (c["Agility"], w.get("Agility", c["Agility"]))
        print("%3d %3d %-4s %-9s %-9s %-10s %-10s %-9s %-11s %-8s %-10s %-11s"
              % (i, c["Gen"], TYPE_NAME[m["type"]], c["Name"], atk, hp, det, mr, cost, pay, st, ag))

    print("\n将写入 %d 条 CN 机型的 stats{}（其他三国不写）" % sum(1 for w in want if w))
    if changed:
        print("与现状不同的条目：%d" % changed)
    if "--dry" in sys.argv:
        print("（--dry：未写入）")
        return 0

    for m, w in zip(src["models"], want):
        if w:
            m["stats"] = w
        elif "stats" in m:
            del m["stats"]
    json.dump(src, open(MODELS, "w", encoding="utf-8"), ensure_ascii=False, indent=2)
    open(MODELS, "a", encoding="utf-8").write("\n")
    print("✅ 已写入 %s" % MODELS)
    print("下一步：python3 tools/gen_aircraft_models.py && python3 tools/gen_air_model_stats.py && "
          "python3 tools/gen_air_oob.py && python3 tools/fmo.py gate")
    return 0


if __name__ == "__main__":
    sys.exit(main())
