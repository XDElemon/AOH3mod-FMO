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
    """64 条：一架飞机一条科技，名字就是机型名。

    版面：列 = 代(0..3)，行 = 国家组*4 + 类型(0..15)。
    前置：同组同类型逐代递进（J11 → J20 → ...），首代无前置。
    """
    models = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))["models"]
    if len(models) != 64:
        raise SystemExit("机型表应为 64 条")
    GROUP = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
    TYPE = {"FIGHTER": 0, "INTERCEPTOR": 1, "ATTACKER": 2, "BOMBER": 3}
    out = []
    nid = BASE_ID
    for aid, m in enumerate(models):
        g, t = m["gen"], m["type"]
        out.append({
            "id": nid, "key": m["key"], "name": m["modelCode"],
            "type": t, "gen": g,
            "col": g - 3, "row": GROUP[m["country"]] * 4 + TYPE[t],
            # 同组同类型的上一代 = 往前 16 条（表按 gen 外层、组内层、类型内层排）
            "req": -1 if g == 3 else nid - 16,
            "req2": -1,
            "cost": COST[g],
            "aid": aid,
        })
        nid += 1
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
    block = "\n" + "\n".join(json_block(n) for n in ns) + "\n"
    return text[:tail] + block + text[tail:]


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    if not args:
        raise SystemExit("用法: gen_air_techs.py <Technologies.json>")
    path = args[0]
    ns = nodes()
    if "--check" in sys.argv:
        cur = open(path, encoding="utf-8").read()
        print("一致 ✅" if inject(cur, ns) == cur else "未注入/不一致 ❌")
        return 0
    text = open(path, encoding="utf-8").read()
    out = inject(text, ns)
    open(path, "w", encoding="utf-8").write(out)
    print("  ✅ 注入 %d 个空军节点（ID %d..%d）-> %s" % (len(ns), ns[0]["id"], ns[-1]["id"], path))
    return 0


if __name__ == "__main__":
    sys.exit(main())
