# -*- coding: utf-8 -*-
"""r6d303 门禁：FBO 强制置位 + 看门狗（S1–S5 + N1–N4）"""
import sys, os, re
G = "/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Game.smali"
GV = "/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/GameValues.smali"
T = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

g = open(G, encoding="utf-8").read()
gv = open(GV, encoding="utf-8").read()
t = open(T, encoding="utf-8").read()

A(g.count("GameValues;->r6d303_forceFBO()V") == 1, "S1a Game 调用 force 一次")
A("updateDrawProvincesFlags()V\n\n    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->r6d303_forceFBO()V\n\n    .line 1445\n    return-void\n.end method" in g, "S1b 位置正确（loadSettings 尾）")

A(":cond_enable" in gv, "S2a enable 标签在")
mm = re.search(r"(?m)^\s*:cond_enable\s*$", gv)
seg = gv[mm.start():mm.start()+420] if mm else ""
P_TRUE = "const/4 v1, 0x1\n\n    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z"
P_FALSE = "const/4 v1, 0x0\n\n    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z"
N_TRUE = "const/4 v1, 0x1\n\n    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z"
A(P_TRUE in seg, "S2b enable 置 true")
D_OFF = "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n    goto :cond_15"
E_ON = "const/4 v1, 0x1\n\n    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n    .line 358"
F_ON = "    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n    :ff_skip"
A((gv.count(D_OFF) == 1) and (gv.count(E_ON) == 1) and (gv.count(F_ON) == 1), "S2c 禁用/启用/force 三处形态齐")
A(gv.count(N_TRUE) == 0, "S2d names 不写 true（保持关）")
A('const-string v1, " d="' in gv, "S3a 探针含 d=")
A(gv.count("append(Z)Ljava/lang/StringBuilder;") == 3, "S3b 三个布尔 append（p/n/d）")

A(gv.count(".method public static final r6d303_forceFBO()V") == 1, "S4a force 方法存在")
seg2 = gv[gv.find(".method public static final r6d303_forceFBO()V"):]
seg2 = seg2[:seg2.find(".end method")]
A("r6d302_logFBO()V" in seg2 and ":catch_0" in seg2 and "exceptionStack" in seg2, "S4b force 内含自证与兜底")

A(t.count(".field public static scwF:I") == 1 and t.count(".field public static scwL:I") == 1, "S5a 看门狗字段")
A(t.count("InGame_TechnologyTree;->scWatch()V") == 1, "S5b draw 挂点一次")
seg3 = t[t.find(".method private final scWatch()V"):]
seg3 = seg3[:seg3.find(".end method")]
A(("rem-int/lit8 v1, v0, 0x1e" in seg3) and ("getMaxSliderX" in seg3) and ("getNewMenuPosX" in seg3) and ("getScrollableX" in seg3), "S5c 看门狗主体")

# 负样本
def red(name, cond):
    print(("PASS " if cond else "FAIL ") + name)
    if not cond: fails.append(name)

t1 = g.replace("GameValues;->r6d303_forceFBO()V", "GameValues;->REMOVED()V", 1)
red("N1 调用移除被抓", "GameValues;->r6d303_forceFBO()V" not in t1)
E_ON = "const/4 v1, 0x1\n\n    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n    .line 358"
t2 = gv.replace(E_ON, "const/4 v1, 0x0\n\n    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n    .line 358", 1)
red("N2 enable 参数置0被抓", E_ON not in t2)
t3 = t.replace("InGame_TechnologyTree;->scWatch()V", "InGame_TechnologyTree;->REMOVED()V", 1)
red("N3 看门狗挂点移除被抓", "InGame_TechnologyTree;->scWatch()V" not in t3)
t4 = t.replace("rem-int/lit8 v1, v0, 0x1e", "rem-int/lit8 v1, v0, 0x1f", 1)
red("N4 采样节拍被改被抓", "rem-int/lit8 v1, v0, 0x1e" not in t4)

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)