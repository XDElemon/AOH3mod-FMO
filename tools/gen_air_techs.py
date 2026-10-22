#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_techs.py —— 把空军科技线（16 分线 + 4 总节点）注入 Technologies.json

约束（实测）：`TechnologyTree.lTechnology` 是 List，全程用 `get(ID)` 且循环 0..iTechnologySize
⇒ **ID 必须等于列表下标、从 0 连续**。所以空军节点只能接在最后一个 ID 后面（当前 99..118），
不能跳到 400 —— 除非改成"按 ID 建数组"（那是钢丝大修时一起做的事）。

节点归属：Category: "air" → getTopCategoryByCategory 映射到 "air" 页签（该页签已存在）。
版面：air 页签内 5 列 × 4 行
        列0..3 = 该类型的三/四/五/六代；列4 = 总节点（3/4/5/6 代）
用法: python3 tools/gen_air_techs.py <Technologies.json>    # 原地注入（幂等）
      python3 tools/gen_air_techs.py --check <file>
"""
import json, re, sys, os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BASE_ID = 99                     # 接在现有 98 之后，必须连续
TYPES = [("FIGHTER", "Fighter"), ("INTERCEPTOR", "Interceptor"),
         ("ATTACKER", "Attacker"), ("BOMBER", "Bomber")]
GEN_CN = {3: "III", 4: "IV", 5: "V", 6: "VI"}
# 研发成本：三代几乎免费（开局即拿到），之后按代翻倍
COST = {3: 10, 4: 1200, 5: 4000, 6: 12000}


def nodes():
    """一条科技 = 一个机型（不是槽位）；Name = 裸型号 + 中文代号。被复用的机型（跨类型/跨代）只占一条科技，
    解锁它就把所有占用槽位一起解锁 —— 例如 J20 = CN 战斗机IV + CN 截击机V。"""
    models = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))["models"]
    if len(models) != 64:
        raise SystemExit("机型表应为 64 条")
    GROUP = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
    TYPE = {"FIGHTER": 0, "INTERCEPTOR": 1, "ATTACKER": 2, "BOMBER": 3}

    # 槽位按 aid 排序 => 同一机型首次出现就是它的"首代槽位"
    slots = {}
    for aid, m in enumerate(models):
        slots.setdefault(m["modelCode"], []).append(
            dict(aid=aid, key=m["key"], country=m["country"], type=m["type"], gen=m["gen"],
                 nameCN=m.get("nameCN", "")))
    # 槽位链的前驱：同组同类型的上一代机型
    prev_model = {}
    for m in models:
        prev_model[(m["country"], m["type"], m["gen"])] = m["modelCode"]

    order = sorted(slots.items(), key=lambda kv: min(s["aid"] for s in kv[1]))
    id_of = {code: BASE_ID + i for i, (code, _) in enumerate(order)}

    out = []
    for code, ss in order:
        first = ss[0]
        g = first["gen"]
        # 跨国共用的机型（只有 F-35：US 攻击/截击 + EU 战斗/截击/攻击）**不挂前置**。
        # 原因：前置只能填一个 ID，而两个国家的上一代攻击机是两条不同的国别科技
        # （EU=HARRIER 105 / US=A10 112）——挂哪一条，另一国就永远点不到这个节点。
        multi = len({x["country"] for x in ss}) > 1
        pred = None if multi else (prev_model.get((first["country"], first["type"], g - 1)) if g > 3 else None)
        # 同一机型的 nameCN 必须一致（机型表里逐槽都写了，防漏写/写串）
        cns = {x["nameCN"] for x in ss}
        if len(cns) > 1:
            raise SystemExit("机型 %s 的 nameCN 不一致: %r" % (code, cns))
        cn = first["nameCN"]
        out.append({
            "id": id_of[code],
            "key": first["key"],
            "model": code,
            "name": code + cn,
            "type": first["type"],
            "gen": g,
            "col": g - 3,
            # 行 = 类型轴（战斗0/截击1/攻击2/轰炸3），**不再**把国家组算进行号：
            # 面板已按国家组过滤（AirTechCiv.allowedGroup），四国只显示本国那 4 行；
            # 行里再掺国家组会让 US 玩家的 4 行落在 12..15（屏幕外，够不着）。
            "row": TYPE[first["type"]],
            "req": id_of.get(pred, -1) if pred else -1,
            "req2": -1,
            "cost": COST[g],
            "slots": [s["key"] for s in ss],
        })
    return out


def json_block(n):
    return """		{
			ID: %d,
			Name: "%s",
			ImageID: 0,
			Category: "air",
			SubTag: "%s",

			TreeColumn: %d,
			TreeRow: %d,

			RequiredTech: %d,
			RequiredTech2: %d,

			ResearchCost: %d,

			Repeatable: false,
			AI: 5,
		},""" % (n["id"], n["name"], n["key"], n["col"], n["row"], n["req"], n["req2"], n["cost"])


def inject(text, ns):
    # 幂等：先删掉上一次注入的（ID >= BASE_ID 且 Category air 的块）
    text = re.sub(r"\n\t\t\{\n\t\t\tID: (\d+),\n(?:(?!\n\t\t\},).)*?Category: \"air\"(?:(?!\n\t\t\},).)*?\n\t\t\},", "",
                  text, flags=re.S)
    tail = text.rindex("\n\t]")
    # 先削掉块尾的空行，再统一补两个换行 —— 否则每跑一次多一个空行，--check 永远不过
    head = text[:tail].rstrip("\n")
    block = "\n\n" + "\n".join(json_block(n) for n in ns) + "\n"
    return head + block + text[tail:]


def write_record(ns):
    """把节点表回写到 data/air_tech.json（文档/核对用，游戏不读它）"""
    p = os.path.join(ROOT, "data", "air_tech.json")
    old = {}
    if os.path.exists(p):
        try:
            old = json.load(open(p, encoding="utf-8"))
        except ValueError:
            old = {}
    old["nodes"] = [dict(id=n["id"], name=n["name"], model=n["model"], key=n["key"],
                         type=n["type"],
                         gen=n["gen"], col=n["col"], row=n["row"], req=n["req"],
                         cost=n["cost"], slots=n["slots"]) for n in ns]
    old["note"] = ("由 tools/gen_air_techs.py 生成；row = 类型轴（0战斗/1截击/2攻击/3轰炸），"
                   "col = 代-3。国家组归属见 AirTechCiv（tools/gen_air_tech_civ.py）。")
    with open(p, "w", encoding="utf-8") as f:
        json.dump(old, f, ensure_ascii=False, indent=2)
        f.write("\n")


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    if not args:
        raise SystemExit("用法: gen_air_techs.py <Technologies.json>")
    path = args[0]
    ns = nodes()
    if "--check" in sys.argv:
        cur = open(path, encoding="utf-8").read()
        same = inject(cur, ns) == cur
        print("一致 ✅" if same else "未注入/不一致 ❌")
        return 0 if same else 1      # v37：原本恒返回 0，selftest 第 10 项等于假绿
    text = open(path, encoding="utf-8").read()
    out = inject(text, ns)
    open(path, "w", encoding="utf-8").write(out)
    write_record(ns)
    print("  ✅ 注入 %d 个空军节点（ID %d..%d）-> %s" % (len(ns), ns[0]["id"], ns[-1]["id"], path))
    return 0


if __name__ == "__main__":
    sys.exit(main())
