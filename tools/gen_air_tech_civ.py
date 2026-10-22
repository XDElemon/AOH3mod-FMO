#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_tech_civ.py —— 生成 AirTechCiv.java：空军科技 → 国家组 的判定表

为什么要有它：
  科技页签原来只按 **页签**（land/air/civil）过滤，四国的空军节点全挤在 air 页签里，
  中国玩家能看到并研究美国的 B-21。页签要按 **国家组** 过滤，就必须知道
  "这条科技属于哪个国家组"。

  这个归属不能手写：一条科技 = 一个机型，机型属于哪国由机型表的槽位键
  （`A_<国>_<型号>_<类>`）唯一决定。所以本脚本直接从 `gen_air_techs.nodes()`
  （与 Technologies.json 同源）导出，保证两边不会各说一套。

  一个机型可能被多国共用（当前只有 F-35：US 攻击机/截击机 + EU 战斗机/截击机/攻击机），
  所以存的是**国家组位掩码**，不是单个组号 —— 否则共用机型总有一国点不到。

用法:
  python3 tools/gen_air_tech_civ.py            # 生成/覆盖 src/java/.../AirTechCiv.java
  python3 tools/gen_air_tech_civ.py --check    # 只校验（不一致 → 退出码 1）
"""
import importlib.util
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map",
                   "battles", "AirTechCiv.java")
GROUP = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
TAG = ("CN", "EU", "RU", "US")


def load_nodes():
    """复用 gen_air_techs 的节点推导（唯一真源）"""
    path = os.path.join(ROOT, "tools", "gen_air_techs.py")
    spec = importlib.util.spec_from_file_location("gen_air_techs", path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod.nodes()


def mask_of_node(n):
    """机型科技：槽位国家组的位或。占位节点（删机型后保 ID 用）没有槽位 ⇒ mask 0。

    mask=0 的含义：任何国家组的 allowedGroup 都是 false ⇒ 面板上既不可研究、也不给
    "可研究"高亮；但它仍占着列表下标，后面的科技 ID 不会错位（v38 的 ID 固定化契约）。
    """
    if n.get("placeholder"):
        return 0
    m = 0
    for key in n["slots"]:
        parts = key.split("_")
        if len(parts) != 4 or parts[0] != "A":
            raise SystemExit("槽位键形状不对: %r" % key)
        m |= 1 << GROUP[parts[1]]
    if m == 0:
        raise SystemExit("科技 %d(%s) 没有任何槽位" % (n["id"], n["name"]))
    return m


def mask_name(m):
    return "+".join(TAG[g] for g in range(4) if m & (1 << g))


def aid_tech_table(ns):
    """aid -> techID（-1 = 该槽位没有科技）。

    注意：槽位键 A_<国>_<型号>_<类> **不含代**，同一个键在不同代可能有不同 aid
    （例：A_CN_J11_A 既不是三代攻击机、而是四代攻击机槽位 aid 18）。
    所以必须用机型表把 key 展开成它实际占用的所有 aid，不能按科技自己的 gen 推。
    """
    import json
    models = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                            encoding="utf-8"))["models"]
    key_aids = {}
    for aid, m in enumerate(models):
        key_aids.setdefault(m["key"], []).append(aid)
    table = [-1] * len(models)
    for n in ns:
        for key in n["slots"]:
            if key not in key_aids:
                raise SystemExit("槽位 %s 不在机型表里" % key)
            for aid in key_aids[key]:
                if table[aid] not in (-1, n["id"]):
                    raise SystemExit("槽位 %s(aid %d) 被两条科技占用：%d / %d"
                                     % (key, aid, table[aid], n["id"]))
                table[aid] = n["id"]
    return table


def render():
    ns = sorted(load_nodes(), key=lambda n: n["id"])
    base = ns[0]["id"]
    # v38：ID 不再等于"机型出现顺序"，而是 data/air_tech_ids.json 里的固定号。
    # 但 **ID 仍然必须等于下标**（lTechnology 是 List）：删掉的机型在 retired 里留了
    # 占位节点，所以这里依旧可以断言"从 base 起严格连续、无重复、无洞"。
    for i, n in enumerate(ns):
        if n["id"] != base + i:
            raise SystemExit("科技 ID 必须连续：期望 %d，实际 %d（删机型要留占位节点，不能空号）"
                             % (base + i, n["id"]))
    import air_tech_ids as _IDS
    tab = _IDS.load(ROOT)
    if int(tab["baseID"]) != base:
        raise SystemExit("data/air_tech_ids.json 的 baseID=%s 与首个科技 ID %d 不一致"
                         % (tab["baseID"], base))
    masks = [mask_of_node(n) for n in ns]
    aids = aid_tech_table(ns)
    gens = [n["gen"] for n in ns]

    rows = []
    for i in range(0, len(masks), 8):
        rows.append("            " + ", ".join("%d" % m for m in masks[i:i + 8]) + ",")
    body = "\n".join(rows)
    arows = []
    for i in range(0, 64, 8):
        arows.append("            " + ", ".join("%d" % v for v in aids[i:i + 8]) + ",")
    abody = "\n".join(arows)
    grows = []
    for i in range(0, len(gens), 16):
        grows.append("            " + ", ".join("%d" % g for g in gens[i:i + 16]) + ",")
    gbody = "\n".join(grows)

    # 便于人工核对的注释表（名字/国家组按列对齐，一眼能看出错行）
    # 占位节点（删机型后保 ID 用）标"占位/—"：它在面板上对任何国家都不可研究
    cells = ["%-9s%-7s" % (n["name"], "占位" if n.get("placeholder") else mask_name(m))
             for n, m in zip(ns, masks)]
    lines = []
    for i in range(0, len(cells), 3):
        lines.append(" *   " + "".join(cells[i:i + 3]).rstrip())
    nameblock = "\n".join(lines)

    return """package aoc.kingdoms.lukasz.map.battles;

/**
 * 空军科技的国家组归属 —— 科技页签「只显示本国节点」的唯一判据。
 *
 * 本文件由 tools/gen_air_tech_civ.py 生成，勿手改。
 * 改机型表（data/aircraft_models.json）后重跑生成器。
 *
 * 为什么需要它：科技 ID %d..%d 一条科技 = 一个机型，机型属于某一国家组
 * （CN0/EU1/RU2/US3）。面板原来只按页签过滤，四国节点全挤在 air 页签里，
 * 于是玩家能看到并研究别国机型（中国玩家点得到美国 B-21）。
 * 共用机型存位掩码：F-35 同时属于 US 与 EU，两国玩家都要能研究它。
 *
 * 归属对照（机型名 → 国家组）：
%s
 */
public final class AirTechCiv {

    /** 空军科技起始 ID（= data/air_tech_ids.json 的 baseID，v38 起固定） */
    public static final int AIR_BASE = %d;

    /** 下标 = techID - AIR_BASE；值 = 国家组位掩码（bit0=CN bit1=EU bit2=RU bit3=US） */
    private static final int[] MASK = {
%s
    };

    /** 下标 = aid（机型槽位 0..63）；值 = 解锁该槽位的科技 ID（-1 = 无） */
    private static final int[] AID_TECH = {
%s
    };

    /** 下标 = techID - AIR_BASE；值 = 代（3..6） */
    private static final int[] GEN = {
%s
    };

    private AirTechCiv() {
    }

    /** aid（机型槽位）→ 解锁它的科技 ID；无则 -1 */
    public static int aidTechOf(int aid) {
        if (aid < 0 || aid >= AID_TECH.length) {
            return -1;
        }
        return AID_TECH[aid];
    }

    /** 空军科技 → 代（3..6）；不是空军科技返回 -1 */
    public static int genOf(int techID) {
        int i = techID - AIR_BASE;
        if (i < 0 || i >= GEN.length) {
            return -1;
        }
        return GEN[i];
    }

    /** 是不是空军科技（科技树面板用"裸型号+中文名"，不能被编制名覆盖） */
    public static boolean isAir(int techID) {
        return maskOf(techID) != 0;
    }

    /** 空军科技 → 国家组位掩码；不是空军科技返回 0 */
    public static int maskOf(int techID) {
        int i = techID - AIR_BASE;
        if (i < 0 || i >= MASK.length) {
            return 0;
        }
        return MASK[i];
    }

    /**
     * 只按国家组判定（纯函数，行为闸门直接跑它）。
     *
     * 非空军科技一律放行：原来的 B3b 门禁把 32..74 号**通用陆地科技**
     * （TradeCenter/ArmoryWorkshop/…/MediumTank）按 ID 段硬分给四个国家，
     * 等于每个国家只能研究其中四分之一 —— 那段逻辑随本次改动一起废除。
     *
     * 注意：这里故意把查表写在本方法内、不转调 maskOf。行为闸门是"只跑入口方法体"
     * 的微型解释器，不跟进嵌套调用；拆成两层会让这条最该被执行的判定反而测不到。
     */
    public static boolean allowedGroup(int techID, int group) {
        int i = techID - AIR_BASE;
        if (i < 0 || i >= MASK.length) {
            return true;
        }
        return (MASK[i] & (1 << group)) != 0;
    }

    /** 游戏侧入口：用文明自己的国家组判定 */
    public static boolean allowed(int techID, int civID) {
        return allowedGroup(techID, AirForceManager.artGroupOf(civID));
    }
}
""" % (base, base + len(ns) - 1, nameblock, base, body, abody, gbody)


def main():
    text = render()
    if "--check" in sys.argv:
        cur = open(OUT, encoding="utf-8").read() if os.path.exists(OUT) else ""
        if cur == text:
            print("一致 ✅")
            return 0
        print("不一致 ❌（重跑 python3 tools/gen_air_tech_civ.py）")
        return 1
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    with open(OUT, "w", encoding="utf-8") as f:
        f.write(text)
    print("  ✅ 生成 %s" % os.path.relpath(OUT, ROOT))
    return 0


if __name__ == "__main__":
    sys.exit(main())
