#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d199_war.py —— 防空"交战门"：不在交战状态 ⇒ 不开火
位置：AirDefense.eligible，紧跟"同国检查"之后、"有活机/inRange"之前
实现：invoke-static {p1, v1}, DiploManager->isAtWar(II)Z ; if-eqz → 不开火
寄存器：eligible 原 .registers 8（v0..v4 全用满）⇒ 上调为 9，借 v5 作布尔（纪律：只许按需上调）
纪律：锚点先验 ==1 → 全绿才写盘；备份 .pre_r6d199
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
F = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefense.smali")
SIG = "eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z"
NL = "\n\n"

A_REG = ("    .registers 8\n")
N_REG = ("    .registers 9    # r6d199：交战门需要 1 个临时寄存器（原 8 已用满，按需上调）\n")

A_INS = ("    if-eq v1, p1, :no" + NL + "    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;\n")
N_INS = ("    if-eq v1, p1, :no" + NL +
         "    # r6d199：★交战门——只有\"开火方 civ(p1) 与目标 civ(v1) 处于战争状态\"才允许开火\n" +
         "    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z" + NL +
         "    move-result v5" + NL +
         "    if-eqz v5, :no" + NL +
         "    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;\n")

def main():
    s = open(F, encoding="utf-8").read()
    m = re.search(r"^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method" % re.escape(SIG), s, re.S | re.M)
    assert m, "找不到 eligible"
    body = m.group(1)
    n1, n2 = body.count(A_REG), body.count(A_INS)
    print("  [锚点] .registers 8 命中 %d（要求 1）／插入点命中 %d（要求 1）" % (n1, n2))
    if n1 != 1 or n2 != 1:
        print("  ❌ 锚点校验失败，未写盘"); sys.exit(2)
    body = body.replace(A_REG, N_REG, 1).replace(A_INS, N_INS, 1)
    s = s[:m.start(1)] + body + s[m.end(1):]
    bak = F + ".pre_r6d199"
    if not os.path.exists(bak):
        shutil.copy2(F, bak)
    open(F, "w", encoding="utf-8").write(s)
    print("  ✅ 已写盘：eligible 加了交战门（isAtWar(p1,v1) → 为假则不开火）；.registers 8→9")

if __name__ == "__main__":
    main()