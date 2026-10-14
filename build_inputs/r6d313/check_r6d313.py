# -*- coding: utf-8 -*-
"""r6d313 门禁：锚定清零加固 + 探针 v3（S + N）"""
import re, sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
mm = open(MM, encoding="utf-8").read()
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

# S1/S2: 锚定清零加固
A(len(re.findall(r"\.line 2666\n    const/4 v3, 0x0\n    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z", mm)) == 1, "S1 X 锚定显式清零")
A(len(re.findall(r"\.line 2657\n    const/4 v3, 0x0\n    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosY:Z", mm)) == 1, "S2 Y 锚定显式清零")
# S3/S4: 探针不再用 v1
A("iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x1" in mm, "S3 nSF1 用 v3")
A("iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x0" in mm, "S4 nSF0 用 v3")
# S5: 旧依赖残留为零（在 X/Y 锚定与两探针处不得再有 v1 写法）
A(mm.count("iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z") == 0, "S5 旧 X 写法清零")
A(mm.count("iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosY:Z") == 0, "S6 旧 Y 写法清零")

# 负样本（切片内变异必须被识别）
b = mm.replace("    const/4 v3, 0x0\n    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z",
               "    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z", 1)
A(b.count("const/4 v3, 0x0\n    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->updateSliderMenuPosX:Z") == 0, "N1 X 回退被抓")
b = mm.replace("iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x1",
               "iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x1", 1)
A("iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x1" not in b, "N2 nSF1 回退被抓")
b = mm.replace("iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x0",
               "iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x0", 1)
A("iget v3, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeSliderMenuID:I\n    const/4 v2, 0x0" not in b, "N3 nSF0 回退被抓")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)