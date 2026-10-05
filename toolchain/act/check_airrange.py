#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_airrange.py —— 门禁：防空射程三处同源(判定/诊断/红圈) == airrange.expected
用法: python3 check_airrange.py [smali树] [--selftest]
纪律: 一律"方法域"内计数；负样本必须全部变红
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))

def expected():
    vals = [l.split("#")[0].strip() for l in open(os.path.join(HERE, "airrange.expected"), encoding="utf-8")]
    vals = [v for v in vals if v]
    base, mult = int(vals[0]), float(vals[1])
    return base, int(round(base * mult))

def method_body(src, sig):
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(sig), src, re.S | re.M)
    return m.group(1) if m else ""

SITES = [
    ("map/battles/AirDefense.smali", "inRange(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/province/Province;)Z", "v13", "v5", True, ":d2_add"),
    ("map/battles/AirDefDiag.smali", "inR(Laoc/kingdoms/lukasz/map/province/Province;I)I", "v15", "v10", True, ":d_inr_add"),
    ("map/province/ProvinceDrawArmy.smali", "drawAirForceRadarIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", "v12", "v2", False, ":d4_add"),
]

def check(tree, srcs=None):
    base, r2 = expected()
    res = []
    for rel, sig, reg, breg, need_hit, ladd in SITES:
        F = os.path.join(tree, "aoc/kingdoms/lukasz", rel)
        src = (srcs or {}).get(rel) or open(F, encoding="utf-8").read()
        body = method_body(src, sig)
        tag = rel.split("/")[-1]
        ldone = ladd.replace("_add", "_done")
        res.append(("%s: 方法存在" % tag, bool(body), ""))
        if not body:
            continue
        res.append(("%s: base=%d ×1" % (tag, base), body.count("const/16 %s, 0x%x" % (reg, base)) == 1, ""))
        res.append(("%s: R2=%d ×1" % (tag, r2), body.count("const/16 %s, 0x%x" % (reg, r2)) == 1, ""))
        res.append(("%s: 无 +150 残留" % tag, "0x96" not in body, ""))
        res.append(("%s: 极性 短波:if-eqz→%s" % (tag, ladd), body.count("if-eqz %s, %s" % (breg, ladd)) == 1, ""))
        res.append(("%s: 极性 长波:if-nez→%s" % (tag, ldone), body.count("if-nez %s, %s" % (breg, ldone)) == 1, ""))
        res.append(("%s: 无反向形态" % tag,
                    body.count("if-nez %s, %s" % (breg, ladd)) == 0 and body.count("if-eqz %s, %s" % (breg, ldone)) == 0, ""))
        if need_hit:
            res.append(("%s: AirLat 判定在" % tag, "Laoc/kingdoms/lukasz/map/battles/AirLat;->hit" in body, ""))
    return res

def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    tree = args[0] if args else "/tmp/w3a/smali"
    F = os.path.join(tree, "aoc/kingdoms/lukasz", SITES[0][0])
    src = open(F, encoding="utf-8").read()
    print("=== 正检 ===")
    res = check(tree)
    for n, ok, d in res:
        print("  [%s] %-28s %s" % ("PASS" if ok else "FAIL", n, d))
    ok_all = all(o for _, o, _ in res)
    print("  正检 %d/%d %s" % (sum(1 for _, o, _ in res if o), len(res), "PASS" if ok_all else "FAIL"))

    if "--selftest" in sys.argv:
        print("=== 负样本自检（必须全部变红）===")
        base, r2 = expected()
        NEG = [
            ("N1 判定退回+150", "map/battles/AirDefense.smali", "const/16 v13, 0x%x" % r2, "add-int/lit16 v13, v13, 0x96    # 450"),
            ("N2 诊断退回+150", "map/battles/AirDefDiag.smali", "const/16 v15, 0x%x" % r2, "add-int/lit16 v15, v15, 0x96    # 450"),
            ("N3 红圈退回+150", "map/province/ProvinceDrawArmy.smali", "const/16 v12, 0x%x" % r2, "add-int/lit16 v12, v12, 0x96    # 450"),
            ("N4 R2改成450", "map/battles/AirDefense.smali", "const/16 v13, 0x%x" % r2, "const/16 v13, 0x1c2    # 450"),
            ("N5 R2改成600", "map/battles/AirDefense.smali", "const/16 v13, 0x%x" % r2, "const/16 v13, 0x258    # 600"),
            ("N6 短波极性翻回", "map/battles/AirDefense.smali", "if-eqz v5, :d2_add", "if-nez v5, :d2_add"),
            ("N7 长波极性翻回", "map/battles/AirDefense.smali", "if-nez v5, :d2_done", "if-eqz v5, :d2_done"),
            ("N8 诊断短波极性翻回", "map/battles/AirDefDiag.smali", "if-eqz v10, :d_inr_add", "if-nez v10, :d_inr_add"),
            ("N9 红圈长波极性翻回", "map/province/ProvinceDrawArmy.smali", "if-nez v2, :d4_done", "if-eqz v2, :d4_done"),
        ]
        bad = 0
        for name, rel, old, new in NEG:
            F2 = os.path.join(tree, "aoc/kingdoms/lukasz", rel)
            s = open(F2, encoding="utf-8").read()
            if old not in s:
                print("  [SKIP] %-14s 注入点不存在" % name); bad += 1; continue
            r = check(tree, {rel: s.replace(old, new, 1)})
            failed = not all(o for _, o, _ in r)
            print("  [%s] %-14s %s" % ("OK" if failed else "!!", name, "已变红" if failed else "没变红（门禁有洞）"))
            if not failed:
                bad += 1
        print("  负样本 %d/%d %s" % (len(NEG) - bad, len(NEG), "OK" if bad == 0 else "有问题"))
        sys.exit(0 if (ok_all and bad == 0) else 1)
    sys.exit(0 if ok_all else 1)

if __name__ == "__main__":
    main()