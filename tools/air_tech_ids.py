#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""air_tech_ids.py —— 空军科技 ID 的固定表（v38 起唯一真源）

## 要解决的问题

v37 及以前，科技 ID 是按「机型在 aid 轴上的首次出现顺序」从 99 递增算出来的：

    order = sorted(机型, key=首次 aid)      # gen_air_techs.nodes() 旧实现
    id    = 99 + order.index(modelCode)

只要增删一个机型（或让某机型的首个槽位提前/后移），后面所有 ID 整体平移。
旧存档里记的是「已研究 ID 列表」，于是玩家研究过的四代轰炸机会变成别的机型 ——
一次数据改动把所有人的存档科技树搅乱。v37 台账 35.10 第 7 条记的就是这笔账。

## 现在的规则（data/air_tech_ids.json）

    baseID   空军科技起始 ID（= AirTechCiv.AIR_BASE，当前 99）
    nextID   水位线：下一个可用 ID。删到末尾也不回退（不重用已发出去的号）
    ids      {modelCode: techID}   当前机型 → 固定 ID；已有的一律沿用
    aliases  {oldCode: newCode}    改名登记：新名继承旧名的 ID（旧存档仍解锁同一机型）
    retired  {code: techID}        已删机型：ID 留空（占位节点），不复用、不重排

分配顺序（resolve）：
    ① 改名继承：new 在机型表里、old 在 ids 里 → 把 old 的 ID 过继给 new；
    ② 复活：机型表里又出现了 retired 里的 code → 取回它原来的 ID；
    ③ 追加：表里没有的新机型 → nextID++，**只影响新机型自己**；
    ④ 退役：ids 里已不在机型表里的 code → 移进 retired，ID 由占位节点保住。

③④ 合起来的性质：**任何一次增删，其余机型的 ID 都不变** —— 这条由
`tools/gate_behavior.py` 的 B22 用临时副本实测（删一个机型 / 加一个机型）。

## 为什么占位节点：ID 必须等于列表下标

`TechnologyTree.lTechnology` 是 List，`loadTechnology()` 按 JSON **文件顺序**逐个
`add()`，之后全程 `get(ID)`。所以「ID = 下标」是硬约束：
ID 有洞 ⇒ 后面的科技全体错位（比旧存档平移更糟）。
所以删机型时不允许把 ID 空出来不用，而是在那个 ID 上放一个**空占位节点**
（mask=0 → 任何国家都不可研究 → 面板上不会给出可点节点）。
"""
import json
import os
import sys

BASE_DEFAULT = 99
REL = os.path.join("data", "air_tech_ids.json")


def table_path(root):
    return os.path.join(root, REL)


def new_table(base=BASE_DEFAULT):
    return {"schema": 1, "note": NOTE, "baseID": int(base), "nextID": int(base),
            "ids": {}, "aliases": {}, "retired": {}}


NOTE = ("由 tools/gen_air_techs.py 维护的科技 ID 固定表。ids = {机型: techID}（只增不改）；"
        "aliases = {旧名: 新名}（改名继承 ID）；retired = {已删机型: techID}（留占位，不复用）；"
        "nextID = 下一个可用 ID（水位线，不回退）。改机型表后跑生成器，别手改本文件的数字。")


def load(root):
    """读表；不存在时返回空表（首次运行由 gen_air_techs 落盘）"""
    p = table_path(root)
    if not os.path.exists(p):
        return new_table()
    with open(p, encoding="utf-8") as f:
        tab = json.load(f)
    out = new_table(int(tab.get("baseID", BASE_DEFAULT)))
    out["nextID"] = int(tab.get("nextID", out["baseID"]))
    out["ids"] = {str(k): int(v) for k, v in (tab.get("ids") or {}).items()}
    out["aliases"] = {str(k): str(v) for k, v in (tab.get("aliases") or {}).items()}
    out["retired"] = {str(k): int(v) for k, v in (tab.get("retired") or {}).items()}
    if tab.get("note"):
        out["note"] = str(tab["note"])
    return out


def save(root, tab):
    os.makedirs(os.path.dirname(table_path(root)), exist_ok=True)
    body = {
        "schema": 1,
        "note": tab.get("note") or NOTE,
        "baseID": int(tab["baseID"]),
        "nextID": int(tab["nextID"]),
        # 按 ID 排序：diff 稳定，"谁在哪个号"一眼可见
        "ids": {k: v for k, v in sorted(tab["ids"].items(), key=lambda kv: kv[1])},
        "aliases": dict(sorted(tab["aliases"].items())),
        "retired": dict(sorted(tab["retired"].items(), key=lambda kv: kv[1])),
    }
    with open(table_path(root), "w", encoding="utf-8") as f:
        json.dump(body, f, ensure_ascii=False, indent=2)
        f.write("\n")
    return body


def slots_of(models):
    """{modelCode: [slot, ...]}，槽位按 aid 升序；另给出机型首次出现的 aid 顺序"""
    slots = {}
    for aid, m in enumerate(models):
        slots.setdefault(m["modelCode"], []).append(dict(aid=aid, **m))
    return slots


def resolve(models, tab):
    """按 ids/aliases/retired 规则解析，返回 (新表, 槽位表, 变更摘要)"""
    slots = slots_of(models)
    codes = list(slots.keys())
    live = set(codes)
    ids = dict(tab["ids"])
    aliases = dict(tab["aliases"])
    retired = dict(tab["retired"])
    nextid = int(tab["nextID"])
    base = int(tab["baseID"])
    renamed, revived, added, retired_now = [], [], [], []

    for old, new in aliases.items():
        if old == new:
            continue
        if old in live and new in live:
            raise SystemExit("❌ 改名登记 %s→%s：两个名字都还在机型表里（先弄清哪个是真的）"
                             % (old, new))
        if new in live and new not in ids and old in ids:
            ids[new] = ids.pop(old)
            renamed.append((old, new))

    for c in codes:
        if c not in ids and c in retired:
            ids[c] = retired.pop(c)
            revived.append(c)

    for c in codes:
        if c not in ids:
            ids[c] = nextid
            nextid += 1
            added.append(c)

    for c in list(ids):
        if c not in live:
            retired[c] = ids.pop(c)
            retired_now.append(c)

    # 水位线只升不降：删到末尾也不能把号发给别人（否则等于复用）
    all_ids = list(ids.values()) + list(retired.values())
    if all_ids:
        nextid = max(nextid, max(all_ids) + 1)
    if len(set(all_ids)) != len(all_ids):
        dup = sorted({i for i in all_ids if all_ids.count(i) > 1})
        raise SystemExit("❌ 科技 ID 重复（id=%r）：ids/retired 两张表里有两个机型抢同一个号" % dup)

    out = {
        "schema": 1,
        "note": tab.get("note") or NOTE,
        "baseID": base,
        "nextID": nextid,
        "ids": ids,
        "aliases": aliases,
        "retired": retired,
    }
    info = dict(renamed=renamed, revived=revived, added=added, retired=retired_now)
    return out, slots, info


def check_table(tab, models):
    """独立校验（闸门用）：表与机型表必须一一对应，ID 不许重复/越界"""
    errs = []
    slots = slots_of(models)
    live = set(slots)
    ids = tab["ids"]
    for c in live:
        if c not in ids:
            errs.append("机型 %s 不在 data/air_tech_ids.json 里（跑 gen_air_techs.py 补）" % c)
    for c in ids:
        if c not in live:
            errs.append("data/air_tech_ids.json 的 %s 已不在机型表里（应移进 retired）" % c)
    seen = {}
    for c, i in list(ids.items()) + list(tab["retired"].items()):
        if i in seen:
            errs.append("ID %d 被 %s 与 %s 同时占用" % (i, seen[i], c))
        seen[i] = c
        if i < tab["baseID"]:
            errs.append("机型 %s 的 ID %d 小于 baseID %d" % (c, i, tab["baseID"]))
        if i >= tab["nextID"]:
            errs.append("机型 %s 的 ID %d 不小于水位线 nextID %d" % (c, i, tab["nextID"]))
    return errs


def main():
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    if "--init" not in sys.argv:
        raise SystemExit("用法: air_tech_ids.py --init [--force]   # 按当前机型表冻结 ID")
    p = table_path(root)
    if os.path.exists(p) and "--force" not in sys.argv:
        raise SystemExit("❌ %s 已存在；确要重建请加 --force（会丢掉历史分配！）" % p)
    models = json.load(open(os.path.join(root, "data", "aircraft_models.json"),
                            encoding="utf-8"))["models"]
    # 冻结口径：按「机型首次出现的 aid」升序，从 BASE_DEFAULT 连续发号 —— 与 v37 完全一致
    slots = slots_of(models)
    order = sorted(slots.items(), key=lambda kv: min(s["aid"] for s in kv[1]))
    tab = new_table(BASE_DEFAULT)
    for i, (code, _) in enumerate(order):
        tab["ids"][code] = BASE_DEFAULT + i
    tab["nextID"] = BASE_DEFAULT + len(order)
    body = save(root, tab)
    print("  ✅ 冻结 %d 条科技 ID：%d..%d -> %s"
          % (len(body["ids"]), BASE_DEFAULT, tab["nextID"] - 1, table_path(root)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
