"""design_air_stats.py —— 机型数值设计表（把"四国风格"落成 data/aircraft_models.json 的 stats{}）

v107（2026-10-27 用户口径）：**64 架全部逐机型写数值**，不再只有 CN。
  · 系数只在下面的 RULES 里改，不手填 64 行 JSON；
  · 每次从"剥掉 stats 的基线"重算 ⇒ 幂等，重复运行不会叠乘；
  · **弹道导弹（ALBM/TAC_NUKE/ALBM_NUKE）不配数**（用户：以后由科技单独控制）；
  · 机炮不配弹道数据（"同省即射、固定近距"，由机炮伤害逻辑处理）。

四国风格（2026-10-27 定稿；CN 按用户要求"加成再加一点"提升为 B+ 档）：
  CN 火力/产能：atk+12%、def+20%、敏捷+12%、隐身+0.05、探测+22%、导弹射程+25%、
                对地+18%、载荷+2、造价−15%、工期−1、机速+6%、导弹速度+5%
  US 电子隐身：atk+5%、def+0%、敏捷+5%、隐身+0.08、探测+25%、射程+20%、
                对地+5%、载荷+0、造价+15%、工期+0、机速+3%、导弹速度+6%
  RU 暴力低价：atk+10%、def+0%、敏捷+2%、隐身+0.01、探测+5%、射程+10%、
                对地+15%、载荷+1、造价−15%、工期+0、机速+0%、导弹速度+3%
  EU 均衡偏贵：atk+0%、def+5%、敏捷+10%、隐身+0.05、探测+18%、射程+18%、
                对地+0%、载荷+0、造价+10%、工期+1、机速+5%、导弹速度+4%

用法：
  python3 tools/design_air_stats.py --dry     # 打印 64 行评审表（不写入）
  python3 tools/design_air_stats.py           # 写入 data/aircraft_models.json
  python3 tools/design_air_stats.py --check   # 校验现状是否等于设计表（B33 用）
"""
import json
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MODELS = os.path.join(ROOT, "data", "aircraft_models.json")

# 国家 -> 规则；没列的国家 = 完全不加强（不写 stats）
RULES = {
    # atk_ceiling = 5 × 上一代最小 hp（"两发打死/不秒杀"规则，gen_aircraft_models.validate() 也查）
    "CN": dict(atk=1.12, atk_ceiling={3: 10 ** 9, 4: 150, 5: 500, 6: 3000},
               defense=1.20, agility=1.12, stealth_add=0.05, detect=1.22, mrange=1.25,
               ground=1.18, payload_add=2, cost=0.85, time_add=-1, speed=1.06, mspeed=1.05),
    "US": dict(atk=1.05, atk_ceiling={3: 10 ** 9, 4: 150, 5: 500, 6: 3000},
               defense=1.00, agility=1.05, stealth_add=0.08, detect=1.25, mrange=1.20,
               ground=1.05, payload_add=0, cost=1.15, time_add=0, speed=1.03, mspeed=1.06),
    "RU": dict(atk=1.10, atk_ceiling={3: 10 ** 9, 4: 150, 5: 500, 6: 3000},
               defense=1.00, agility=1.02, stealth_add=0.01, detect=1.05, mrange=1.10,
               ground=1.15, payload_add=1, cost=0.85, time_add=0, speed=1.00, mspeed=1.03),
    "EU": dict(atk=1.00, atk_ceiling={3: 10 ** 9, 4: 150, 5: 500, 6: 3000},
               defense=1.05, agility=1.10, stealth_add=0.05, detect=1.18, mrange=1.18,
               ground=1.00, payload_add=0, cost=1.10, time_add=1, speed=1.05, mspeed=1.04),
}

# 类型系数（飞机速度）：截击 > 战斗 > 攻击 > 轰炸
TYPE_SPEED = {"INTERCEPTOR": 1.15, "FIGHTER": 1.08, "ATTACKER": 0.95, "BOMBER": 0.85}
# 截击机多带一发（纯对空，靠弹量吃饭）
TYPE_MCOUNT_ADD = {"INTERCEPTOR": 1}

TYPE_NAME = {"FIGHTER": "战斗", "INTERCEPTOR": "拦截", "ATTACKER": "攻击", "BOMBER": "轰炸"}


def _i(x):
    return int(round(x))


def _d10(x):
    return round(round(float(x) * 10) / 10.0, 1)


def _r5(x):
    return int(round(float(x) / 5.0)) * 5


def design_for(m, computed):
    """按国别规则算出该机型的**完整** stats（64 架全写，逐机型可审阅）"""
    rule = RULES.get(m["country"])
    if not rule:
        return {}
    t = m["type"]
    gen = int(m["gen"])
    out = {}
    ceiling = rule["atk_ceiling"].get(gen, 10 ** 9)
    out["AirAttack"] = min(_i(computed["AirAttack"] * rule["atk"]), ceiling)
    hp = _d10(computed["Defense"] * 2.0 * rule["defense"])
    out["Defense"] = _d10(hp / 2.0)
    out["Agility"] = round(computed["Agility"] * rule["agility"], 2)
    out["Stealth"] = round(computed["Stealth"] + rule["stealth_add"], 2)
    out["RadarDetect"] = _i(computed["RadarDetect"] * rule["detect"] / 10.0) * 10
    out["MissileRange"] = _r5(computed["MissileRange"] * rule["mrange"])
    if computed["GroundAttack"] > 0:
        out["GroundAttack"] = _i(computed["GroundAttack"] * rule["ground"])
    payload = computed["MaxPayload"] + (rule["payload_add"] if t != "INTERCEPTOR" else 0)
    out["MaxPayload"] = max(0, payload)
    out["CostGold"] = _i(computed["CostGold"] * rule["cost"])
    out["ConstructionTime"] = max(1, computed["ConstructionTime"] + rule["time_add"])
    # v107 新增：飞机速度 / 导弹速度 / 载弹（导弹）逐机型
    out["Speed"] = _r5(computed["Speed"] * rule["speed"] * TYPE_SPEED[t])
    out["MissileSpeed"] = _i(computed["MissileSpeed"] * rule["mspeed"])
    out["MissileCount"] = computed["MissileCount"] + TYPE_MCOUNT_ADD.get(t, 0)
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

    if "--dry" in sys.argv:
        print("aid gen 型   国 型号          atk    hp     敏捷  探测   射程 载弹  机速  弹速  造价 载荷")
        for i, m, c, w, cur in rows:
            print("%3d %3d %-4s %-2s %-12s %4d %6.1f %5.2f %5d %5d %4d %5d %4d %5d %3d"
                  % (i, c["Gen"], TYPE_NAME[m["type"]], m["country"], m["modelCode"],
                     w["AirAttack"], w["Defense"] * 2, w["Agility"], w["RadarDetect"],
                     w["MissileRange"], w["MissileCount"], w["Speed"], w["MissileSpeed"],
                     w["CostGold"], w["MaxPayload"]))
        print("\n共 %d 条；与现状不同 %d 条（--dry：未写入）" % (len(want), changed))
        return 0

    print("将写入 %d 条 stats{}（全 64 架）" % sum(1 for w in want if w))
    if changed:
        print("与现状不同的条目：%d" % changed)

    for m, w in zip(src["models"], want):
        if w:
            m["stats"] = w
        elif "stats" in m:
            del m["stats"]
    if "note" in src:
        src["note"] = ("AirModelTables 唯一真源（64 槽全满：4 国 × 4 类型 × 4 代）。"
                       "aid = imageId-70 = (gen-3)*16 + country*4 + type。"
                       "v107 起 stats{} 是**全 64 架显式数值**（tools/design_air_stats.py 生成，勿手改）；"
                       "弹道导弹数值不在本表（以后由科技单独控制）。")
    json.dump(src, open(MODELS, "w", encoding="utf-8"), ensure_ascii=False, indent=2)
    open(MODELS, "a", encoding="utf-8").write("\n")
    print("✅ 已写入 %s（%d 架）" % (MODELS, sum(1 for w in want if w)))
    print("下一步：python3 tools/gen_aircraft_models.py && python3 tools/gen_air_model_stats.py && "
          "python3 tools/gen_air_oob.py && python3 tools/fmo.py gate")
    return 0


if __name__ == "__main__":
    sys.exit(main())
