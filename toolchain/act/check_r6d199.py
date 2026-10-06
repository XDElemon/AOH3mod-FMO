#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d199.py —— 交战门门禁：AirDefense.eligible 必须"不在交战就不开火"
用法: python3 check_r6d199.py [smali树] [--selftest]
"""
import os, re, sys

REL = "aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
SIG = "eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z"

def body(tree, src=None):
    s = src or open(os.path.join(tree, REL), encoding="utf-8").read()
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(SIG), s, re.S | re.M)
    return m.group(1) if m else ""

def check(tree, src=None):
    b = body(tree, src)
    res = []
    def A(n, c, d=""):
        res.append((n, bool(c), d))
    A("方法存在", bool(b))
    if not b:
        return res
    A("S1 交战门调用恰 1 次", b.count("DiplomacyManager;->isAtWar(II)Z") == 1, "")
    A("S2 参数为 {p1, v1}", b.count("invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z") == 1, "开火方civ, 目标civ")
    A("S3a 有 if-eqz v5（不在交战→不开火）", "if-eqz v5, :no" in b, "")
    A("S3b 无反向 if-nez v5", "if-nez v5, :no" not in b, "写反则变“交战才不开火”")
    A("S4 .registers 已上调到 9", re.search(r"^\s*\.registers 9\b", b, re.M) is not None, "原 8 已用满")
    i_war = b.find("DiplomacyManager;->isAtWar(II)Z")
    i_same = b.find("if-eq v1, p1, :no")
    i_ran = b.find("AirDefense;->inRange")
    A("S5 顺序：同国检查 → 交战门 → inRange", 0 <= i_same < i_war < i_ran, "same=%d war=%d range=%d" % (i_same, i_war, i_ran))
    A("S6 保留项：同国检查仍在", i_same >= 0, "")
    A("S7 保留项：inRange 仍在", i_ran >= 0, "")
    return res

def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    tree = args[0] if args else "/tmp/w3a/smali"
    src = open(os.path.join(tree, REL), encoding="utf-8").read()
    res = check(tree, src)
    print("=== 正检 ===")
    for n, ok, d in res:
        print("  [%s] %-34s %s" % ("PASS" if ok else "FAIL", n, d))
    ok_all = all(o for _, o, _ in res)
    print("  正检 %d/%d %s" % (sum(1 for _, o, _ in res if o), len(res), "PASS" if ok_all else "FAIL"))

    if "--selftest" in sys.argv:
        print("=== 负样本自检（必须全部变红）===")
        NEG = [
            ("N1 删掉交战门调用", "invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z", ""),
            ("N2 极性写反", "if-eqz v5, :no", "if-nez v5, :no"),
            ("N3 参数写错（p0 当开火方）", "invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z", "invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z"),
            ("N4 寄存器退回 8", "    .registers 9    # r6d199：交战门需要 1 个临时寄存器（原 8 已用满，按需上调）", "    .registers 8"),
            ("N5 交战门挪到 inRange 之后", "invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z", "__MOVED__"),
        ]
        bad = 0
        for item in NEG:
            name, old, new = item
            if old not in src:
                print("  [SKIP] %-22s 注入点不存在" % name); bad += 1; continue
            if new == "__MOVED__":
                # 把交战门整段移到 inRange 调用之后（模拟"顺序错乱"）
                blk = "    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z\n\n    move-result v5\n\n    if-eqz v5, :no\n\n"
                if blk not in src:
                    print("  [SKIP] %-22s 找不到整段" % name); bad += 1; continue
                s2 = src.replace(blk, "", 1)
                j = s2.find("AirDefense;->inRange")
                k = s2.find("\n", j) + 1
                s2 = s2[:k] + blk + s2[k:]
            else:
                s2 = src.replace(old, new, 1)
            r = check(tree, s2)
            failed = not all(o for _, o, _ in r)
            print("  [%s] %-22s %s" % ("OK" if failed else "!!", name, "已变红" if failed else "没变红（门禁有洞）"))
            if not failed:
                bad += 1
        print("  负样本 %d/%d %s" % (len(NEG) - bad, len(NEG), "OK" if bad == 0 else "有问题"))
        sys.exit(0 if (ok_all and bad == 0) else 1)
    sys.exit(0 if ok_all else 1)

if __name__ == "__main__":
    main()