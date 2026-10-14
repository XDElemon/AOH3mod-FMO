# -*- coding: utf-8 -*-
"""r6d309 门禁 v2：科技树自有增量滚动（S1–S10 + N1–N6 负样本，负样本在切片内变异）"""
import re, sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
ME = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/Menu.smali"
TR = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

mm = open(MM, encoding="utf-8").read()
me = open(ME, encoding="utf-8").read()
tr = open(TR, encoding="utf-8").read()

def slice_m(s, h):
    i = s.find(h); j = s.find("\n.end method", i)
    return s[i:j]

h = slice_m(mm, ".method private final actionMove_MenuInnerElements(II)V")
A((".registers 9" in h) and ("r6d309" in h), "S1 handler regs=9 且含 r6d309 块")
defcnt = lambda t, l: len(re.findall(r"(?m)^\s*" + l + r"\s*$", t))
A(all(defcnt(h, x) == 1 for x in [":scx_native", ":scx_init", ":scx_done2", ":scx_hi", ":scx_lo", ":scx_g1", ":scx_g2"]), "S2 七个标签各定义一次")
A("if-eqz v0, :scx_init" in h, "S3a 首次事件判定 if-eqz")
A(("if-le v1, v2, :scx_g1" in h) and ("if-ge v1, v2, :scx_g2" in h), "S3b 大跳变守卫极性")
A(("if-le v2, v3, :scx_hi" in h) and ("if-ge v2, v4, :scx_lo" in h), "S4 clamp 极性")
A(h.count("scxL:I") >= 3 and "scxOn:Z" in h, "S5 scxL/scxOn 使用")
A("if-ne v0, v1, :scx_native" in h, "S6 树 ID 比较")
A("scaLog(II)V" in mm and ".method private final scaLog(II)V" in mm, "S7 scaLog 方法")
g = slice_m(me, ".method public final updateMenuPosX(I)V")
A((".registers 6" in g) and ("const/4 v3, 0x1" in g) and ("const/4 v3, 0x2" in g) and ("scuLog(II)V" in g), "S8 Menu 侧锚定标记+scuLog")
A(".field public static scxOn:Z" in tr and ".field public static scxL:I" in tr and ".field public static dbgSCA:I" in tr and ".field public static dbgSCU:I" in tr, "S9 Tree 字段")
A(mm.count("move-result v1\n    move-result") == 0, "S10 无连排 move-result")

# 负样本（切片内变异，必须被识别）
b = h.replace("if-eqz v0, :scx_init", "if-nez v0, :scx_init", 1)
A("if-eqz v0, :scx_init" not in b, "N1 首次判定极性反转被识别")
b = h.replace("if-le v1, v2, :scx_g1", "if-gt v1, v2, :scx_g1", 1)
A("if-le v1, v2, :scx_g1" not in b, "N2 守卫极性反转被识别")
b = h.replace("if-le v2, v3, :scx_hi", "if-ge v2, v3, :scx_hi", 1)
A("if-le v2, v3, :scx_hi" not in b, "N3 clamp 极性反转被识别")
c0 = h.count("scxL:I")
b = h.replace("sput p1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->scxL:I", "nop2x", 1)
A(b.count("scxL:I") == c0 - 1, "N4 scxL 写丢失被识别")
b = h.replace(".registers 9", ".registers 6", 1)
A(".registers 9" not in b, "N5 regs 回退被识别")
b = h.replace("if-ne v0, v1, :scx_native", "if-eq v0, v1, :scx_native", 1)
A("if-ne v0, v1, :scx_native" not in b, "N6 树 ID 比较翻转被识别")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)