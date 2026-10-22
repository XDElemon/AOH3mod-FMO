#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_techs.py —— 把空军科技线（4 类型 × 4 代 + 总节点）注入 Technologies.json

约束（实测）：`TechnologyTree.lTechnology` 是 List，全程用 `get(ID)`，而 `loadTechnology()`
是按 JSON **文件顺序**逐个 `add()` 的 ⇒ **ID 必须等于列表下标、从 0 连续，且 JSON 里的
节点顺序也必须按 ID 升序**。所以空军节点只能接在最后一个 ID 后面，块按 ID 排序写出。

## v38：ID 不再由"机型出现顺序"现算

v37 及以前 `id = BASE_ID + 该机型首次 aid 的排名`。增删机型 ⇒ 后面整体平移 ⇒
旧存档的"已研究"指到别的机型。现在 ID 取自 **data/air_tech_ids.json**（见
tools/air_tech_ids.py）：已有的一律沿用，新机型追加到水位线之后，删掉的机型把 ID
留在 retired 里（发一个 mask=0 的空占位节点，保证 ID 连续无洞）。

节点归属：Category: "air" → getTopCategoryByCategory 映射到 "air" 页签（该页签已存在）。
版面：air 页签内 5 列 × 4 行
        列0..3 = 该类型的三/四/五/六代；列4 = 总节点（3/4/5/6 代）

用法:
  python3 tools/gen_air_techs.py <Technologies.json>      # 原地注入（幂等）+ 回写 ID 表
  python3 tools/gen_air_techs.py --check <file>           # 只比对（不一致退出码 1）
  python3 tools/gen_air_techs.py --root /tmp/b22 <file>   # 用另一份 data/（闸门验证增删机型）
"""
import json, os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
import air_tech_ids as IDS

TYPES = [("FIGHTER", "Fighter"), ("INTERCEPTOR", "Interceptor"),
         ("ATTACKER", "Attacker"), ("BOMBER", "Bomber")]
GEN_CN = {3: "III", 4: "IV", 5: "V", 6: "VI"}
# 研发成本：三代几乎免费（开局即拿到），之后按代翻倍
COST = {3: 10, 4: 1200, 5: 4000, 6: 12000}
PH_GEN = 3          # 占位节点的代（只占 ID 位，不进任何面板/选型）


def _load_models(root):
    return json.load(open(os.path.join(root, "data", "aircraft_models.json"),
                          encoding="utf-8"))["models"]


def nodes(root=None, table=None):
    """一条科技 = 一个机型（不是槽位）；Name = 裸型号 + 中文代号。被复用的机型（跨类型/跨代）
    只占一条科技，解锁它就把所有占用槽位一起解锁 —— 例如 J20 = CN 战斗机IV + CN 截击机V。

    返回的列表**按 ID 升序**（= 注入顺序 = lTechnology 下标）；占位节点带 placeholder=True。
    """
    root = root or ROOT
    models = _load_models(root)
    if len(models) != 64:
        raise SystemExit("机型表应为 64 条（实际 %d）；删机型请改槽位而不是删行" % len(models))
    tab0 = table or IDS.load(root)
    tab, slots, info = IDS.resolve(models, tab0)

    TYPE = {"FIGHTER": 0, "INTERCEPTOR": 1, "ATTACKER": 2, "BOMBER": 3}
    # 槽位链的前驱：同组同类型的上一代机型
    prev_model = {}
    for m in models:
        prev_model[(m["country"], m["type"], m["gen"])] = m["modelCode"]

    out = []
    for code, ids_ in tab["ids"].items():
        ss = slots[code]
        first = ss[0]
        g = first["gen"]
        # 跨国共用的机型（F-35 之类）**不挂前置**。原因：前置只能填一个 ID，
        # 而两个国家的上一代攻击机是两条不同的国别科技 —— 挂哪一条，另一国就永远点不到。
        multi = len({x["country"] for x in ss}) > 1
        pred = None if multi else (prev_model.get((first["country"], first["type"], g - 1)) if g > 3 else None)
        # 同一机型的 nameCN 必须一致（机型表里逐槽都写了，防漏写/写串）
        cns = {x.get("nameCN", "") for x in ss}
        if len(cns) > 1:
            raise SystemExit("机型 %s 的 nameCN 不一致: %r" % (code, cns))
        cn = first.get("nameCN", "")
        out.append({
            "id": int(ids_),
            "key": first["key"],
            "model": code,
            "name": code + cn,
            "type": first["type"],
            "gen": g,
            "col": g - 3,
            # 行 = 类型轴（战斗0/截击1/攻击2/轰炸3），**不再**把国家组算进行号：
            # 面板已按国家组过滤（AirTechCiv.allowedGroup），四国只显示本国那 4 行。
            "row": TYPE[first["type"]],
            "req": int(tab["ids"][pred]) if pred and pred in tab["ids"] else -1,
            "req2": -1,
            "cost": COST[g],
            "slots": [s["key"] for s in ss],
            "placeholder": False,
        })

    # 已删机型：ID 留空但必须占位（lTechnology 靠下标取，洞会让后面全体错位）
    for code, tid in tab["retired"].items():
        out.append({
            "id": int(tid), "key": "AIR_RETIRED_%s" % code, "model": "",
            "name": "（已删机型 %s 占位）" % code, "type": "", "gen": PH_GEN,
            "col": 0, "row": 0, "req": -1, "req2": -1, "cost": 0,
            "slots": [], "placeholder": True,
        })

    out.sort(key=lambda n: n["id"])
    base = int(tab["baseID"])
    for i, n in enumerate(out):
        if n["id"] != base + i:
            raise SystemExit("❌ 科技 ID 必须连续且从 baseID=%d 起：第 %d 个节点的 ID 是 %d"
                             "（ids/retired 表有洞 —— 删机型时 ID 要留占位，不能空出来）"
                             % (base, i, n["id"]))
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
    # 幂等：先删掉上一次注入的（Category air 的块）
    text = re.sub(r"\n\t\t\{\n\t\t\tID: (\d+),\n(?:(?!\n\t\t\},).)*?Category: \"air\"(?:(?!\n\t\t\},).)*?\n\t\t\},", "",
                  text, flags=re.S)
    tail = text.rindex("\n\t]")
    # 先削掉块尾的空行，再统一补两个换行 —— 否则每跑一次多一个空行，--check 永远不过
    head = text[:tail].rstrip("\n")
    block = "\n\n" + "\n".join(json_block(n) for n in ns) + "\n"
    return head + block + text[tail:]


def write_record(root, ns):
    """把节点表回写到 data/air_tech.json（文档/核对用，游戏不读它）"""
    p = os.path.join(root, "data", "air_tech.json")
    old = {}
    if os.path.exists(p):
        try:
            old = json.load(open(p, encoding="utf-8"))
        except ValueError:
            old = {}
    old["nodes"] = [dict(id=n["id"], name=n["name"], model=n["model"], key=n["key"],
                         type=n["type"],
                         gen=n["gen"], col=n["col"], row=n["row"], req=n["req"],
                         cost=n["cost"], slots=n["slots"],
                         placeholder=n["placeholder"]) for n in ns]
    old["note"] = ("由 tools/gen_air_techs.py 生成；ID 真源 = data/air_tech_ids.json（v38 起固定，"
                   "不随机型增删平移）；row = 类型轴（0战斗/1截击/2攻击/3轰炸），col = 代-3；"
                   "placeholder=true 的是删机型后保留的占位节点（mask=0，不可研究）。"
                   "国家组归属见 AirTechCiv（tools/gen_air_tech_civ.py）。")
    with open(p, "w", encoding="utf-8") as f:
        json.dump(old, f, ensure_ascii=False, indent=2)
        f.write("\n")


def main():
    argv = sys.argv[1:]
    root = ROOT
    if "--root" in argv:
        i = argv.index("--root")
        root = os.path.abspath(argv[i + 1])
        del argv[i:i + 2]
    args = [a for a in argv if not a.startswith("--")]
    if not args:
        raise SystemExit("用法: gen_air_techs.py [--root DIR] [--check] <Technologies.json>")
    path = args[0]
    table = IDS.load(root)
    ns = nodes(root=root, table=table)
    if "--check" in argv:
        cur = open(path, encoding="utf-8").read()
        same = inject(cur, ns) == cur
        print("一致 ✅" if same else "未注入/不一致 ❌")
        return 0 if same else 1      # v37：原本恒返回 0，selftest 第 10 项等于假绿
    text = open(path, encoding="utf-8").read()
    out = inject(text, ns)
    open(path, "w", encoding="utf-8").write(out)
    # 先落盘 ID 表（含新增/退役），再写节点记录 —— 顺序反了会让下一次 --check 看到旧表
    tab2, slots, info = IDS.resolve(_load_models(root), table)
    IDS.save(root, tab2)
    write_record(root, ns)
    live = [n for n in ns if not n["placeholder"]]
    print("  ✅ 注入 %d 个空军节点（ID %d..%d，其中占位 %d）-> %s"
          % (len(ns), ns[0]["id"], ns[-1]["id"], len(ns) - len(live), path))
    if info["added"]:
        print("     ＋新增机型科技 %s（追加在水位线之后）" % ", ".join(info["added"]))
    if info["renamed"]:
        print("     ↔ 改名继承 %s（旧 ID 不动，旧存档仍解锁同一机型）"
              % ", ".join("%s→%s" % x for x in info["renamed"]))
    if info["retired"]:
        print("     －退役机型 %s（ID 保留为占位节点，不复用、不重排）" % ", ".join(info["retired"]))
    if info["revived"]:
        print("     ＋复活的机型 %s（取回它原来的 ID）" % ", ".join(info["revived"]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
