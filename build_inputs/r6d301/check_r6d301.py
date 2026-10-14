# -*- coding: utf-8 -*-
"""r6d301 门禁：缩放冻结（语义断言 + 变异负样本必红）"""
import sys, os, re
P = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

if not os.path.exists(P):
    print("FAIL file missing"); sys.exit(1)
s = open(P, encoding="utf-8").read()

A(s.count(".field public static sScalingLocked:Z") == 1, "S1 locked 字段已加")

i = s.find(".method public setVisible(Z)V")
j = s.find(".end method", i)
m = s[i:j]

A(("invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V" in m)
  and ("sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J" in m), "S2 super 与 lTime 保留")

A("if-eqz p1, :ts_vis_restore" in m, "S3 显隐分支存在")
A(("invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getEnableScaling()Z" in m)
  and ("const/4 v1, 0x0" in m)
  and ("invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V" in m), "S4 打开→读取并关断")
A(("sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sScalingLocked:Z" in m)
  and ("const/4 v1, 0x1" in m)
  and ("invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V" in m), "S5 关闭→还原")

# 极性形态：按“标签定义”（行首）而非引用定位
mm = re.search(r"(?m)^\s*:ts_vis_restore\s*$", m)
k = mm.start() if mm else -1
A(k >= 0, "S6a 标签定义存在")
tail = m[k:] if k >= 0 else ""
a1 = tail.find("const/4 v1, 0x1")
a2 = tail.find("invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V")
A(0 < a1 < a2, "S6 还原极性：const1 在调用前")
A(tail.find("const/4 v1, 0x0\n    invoke-virtual {v0, v1}") == -1, "S7 还原分支无 0 参数误写")

# 负样本
t = s.replace("if-eqz p1, :ts_vis_restore", "if-nez p1, :ts_vis_restore", 1)
print(("PASS " if "if-nez p1, :ts_vis_restore" in t else "FAIL ") + "N1 显隐极性被改（供模拟器复算）")
t = s.replace("const/4 v1, 0x1\n    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V",
              "const/4 v1, 0x0\n    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V", 1)
print(("PASS " if "const/4 v1, 0x0\n    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V" in t else "FAIL ") + "N2 还原参数置0")
t = s.replace("if-eqz v1, :ts_vis_show_done", "if-nez v1, :ts_vis_show_done", 1)
print(("PASS " if "if-nez v1, :ts_vis_show_done" in t else "FAIL ") + "N3 守卫极性被改")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)