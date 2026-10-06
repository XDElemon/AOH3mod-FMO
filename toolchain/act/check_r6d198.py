#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d198.py —— 删除批门禁：废弃路径必须"没了"，保留项必须"还在"
用法: python3 check_r6d198.py [smali树] [--selftest]
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
PDA_REL = "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
RG3_REL = "aoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$3.smali"
SDF_REL = "aoc/kingdoms/lukasz/map/province/RadarSDF.smali"

def read(tree, rel):
    p = os.path.join(tree, rel)
    return open(p, encoding="utf-8").read() if os.path.isfile(p) else ""

def check(tree, pda=None, rg3=None):
    pda = pda if pda is not None else read(tree, PDA_REL)
    rg3 = rg3 if rg3 is not None else read(tree, RG3_REL)
    res = []
    def A(n, c, d=""):
        res.append((n, bool(c), d))
    # —— 删除项 ——
    A("A1 作战半径环调用已删", pda.count("drawAirForceCircles") == 0, "")
    A("A2 作战半径环方法已删", ".method public static final drawAirForceCircles" not in pda, "")
    A("A3 机场雷达盘方法已删", "drawAirForceRadar(" not in pda, "")
    A("A4 RendererGame$3 调用已删", rg3.count("drawAirForceRadar") == 0, "")
    A("A5 RadarSDF 已出树", not os.path.isfile(os.path.join(tree, SDF_REL)), "")
    A("A6 贴图盘死代码块已删", pda.count("r6d198：贴图盘三段绘制已删除") == 3, "应留 3 处注释")
    # —— 保留项（防误删）——
    A("R1 飞机雷达仍在", pda.count("drawAircraftRadar") >= 2, "定义+调用")
    A("R2 D4 红圈 tint 仍在", pda.count("const/high16 v9, 0x3e800000") >= 1 and pda.count("const/high16 v10, 0x3e800000") >= 1, "")
    A("R3 建筑图标仍在", "drawBuildingProvinceIcon" in pda, "")
    rb = read(tree, "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")
    A("R4 逐行盘 tint=1.0f 仍在", rb.count("const/high16 v0, 0x3f800000") == 1, "")
    A("R5 逐行盘颜色块仍在", rb.count("const v1, 0x") >= 1, "")
    return res

def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    tree = args[0] if args else "/tmp/w3a/smali"
    res = check(tree)
    print("=== 正检 ===")
    for n, ok, d in res:
        print("  [%s] %-26s %s" % ("PASS" if ok else "FAIL", n, d))
    ok_all = all(o for _, o, _ in res)
    print("  正检 %d/%d %s" % (sum(1 for _, o, _ in res if o), len(res), "PASS" if ok_all else "FAIL"))

    if "--selftest" in sys.argv:
        print("=== 负样本自检（必须全部变红）===")
        pda, rg3 = read(tree, PDA_REL), read(tree, RG3_REL)
        NEG = [
            ("N1 复原一处贴图盘绘制",
             lambda d: {"pda": d["pda"].replace("    # r6d198：贴图盘三段绘制已删除（原为 goto 之后的不可达死代码）",
                                               "    sget v8, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I", 1)},
             "pda"),
            ("N2 复原作战半径环方法",
             lambda d: {"pda": d["pda"] + "\n.method public static final drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V\n    .registers 1\n    return-void\n.end method\n"},
             "pda"),
            ("N3 删掉 D4 红圈 tint",
             lambda d: {"pda": d["pda"].replace("const/high16 v9, 0x3e800000", "const/high16 v9, 0x0", 1)},
             "pda"),
            ("N4 删掉飞机雷达调用",
             lambda d: {"pda": re.sub(r"^\s*invoke-static.*drawAircraftRadar.*\n", "", d["pda"], count=1, flags=re.M)},
             "pda"),
            ("N5 复原 RendererGame$3 调用",
             lambda d: {"rg3": d["rg3"].replace("    # r6d198：机场雷达盘调用已删除（方法体同批删除）",
                                               "    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceRadar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", 1)},
             "rg3"),
        ]
        bad = 0
        for item in NEG:
            name, fn = item[0], item[1]
            d = {"pda": pda, "rg3": rg3}
            out = fn(d)
            r = check(tree, out.get("pda", pda), out.get("rg3", rg3))
            failed = not all(o for _, o, _ in r)
            print("  [%s] %-24s %s" % ("OK" if failed else "!!", name, "已变红" if failed else "没变红（门禁有洞）"))
            if not failed:
                bad += 1
        print("  负样本 %d/%d %s" % (len(NEG) - bad, len(NEG), "OK" if bad == 0 else "有问题"))
        sys.exit(0 if (ok_all and bad == 0) else 1)
    sys.exit(0 if ok_all else 1)

if __name__ == "__main__":
    main()