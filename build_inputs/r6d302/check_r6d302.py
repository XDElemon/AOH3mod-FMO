# -*- coding: utf-8 -*-
"""r6d302 门禁：FBO 开启（S1–S4 + N1–N4）
S1 资源 JSON（暂存）单行差异；S2 SettingsManager 默认值；S3 GameValues 探针；S4 链路一致性。"""
import sys, os, hashlib
SM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/setting/SettingsManager.smali"
GV = "/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/GameValues.smali"
STAGE = "/sdcard/GLG/历史23/build_inputs/r6d302/assets_stage/assets/game/gameValues/GameValues.json"
APK = "/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d301.apk"
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

import zipfile
base = zipfile.ZipFile(APK).read("assets/game/gameValues/GameValues.json").decode("utf-8")
stage = open(STAGE, encoding="utf-8", newline="").read()
expected = base.replace("\tMOBILE_DISABLE_FBO: true,", "\tMOBILE_DISABLE_FBO: false,", 1)

A(stage == expected, "S1a 资源底=APK内文件且仅一行差异")
A("\tMOBILE_DISABLE_FBO: false," in stage, "S1b JSON 已置 false")
A("\tMOBILE_DISABLE_FBO: true," not in stage, "S1c 无 true 残留")

sm = open(SM, encoding="utf-8").read()
A("    iput-boolean v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z" in sm, "S2a FBO_PROVINCES 默认=true(v5)")
A("    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z" not in sm, "S2b 旧 v4 行已替换")
A("    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z" in sm, "S2c NAMES 维持 false（本批不开）")

gv = open(GV, encoding="utf-8").read()
A(gv.count("invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->r6d302_logFBO()V") == 1, "S3a 汇合点调用存在")
A(gv.count(".method private static final r6d302_logFBO()V") == 1, "S3b 探针方法存在")
A(gv.count("Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;") == 2, "S3c 两个布尔 append")
A((":try_start_0" in gv) and (".catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0" in gv) and ("CFG;->exceptionStack(Ljava/lang/Throwable;)V" in gv), "S3d try/catch 完整")
A(gv.count("AirDbgLog;->dWrite(Ljava/lang/String;)V") == 1, "S3e dWrite 调用")

mm1 = open("/tmp/w3a/smali/aoc/kingdoms/lukasz/map/map/MapModeManager$1.smali", encoding="utf-8").read()
pd = open("/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDraw.smali", encoding="utf-8").read()
A(("FBO_PROVINCES:Z" in mm1) and ("drawProvinces_Standard_FBO" in mm1), "S4a 默认模式读取开关")
A("drawProvinces_Standard_LandProvinces_FBO" in pd, "S4b FBO 管理器在")

# 负样本（变异后必须被对应检查判红）
t = stage.replace("MOBILE_DISABLE_FBO: false,", "MOBILE_DISABLE_FBO: true,", 1)
okN1 = (t != expected) and ("\tMOBILE_DISABLE_FBO: true," in t)
print(("PASS " if okN1 else "FAIL ") + "N1 JSON 反改被抓")
if not okN1: fails.append("N1")
t2 = sm.replace("iput-boolean v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z",
                "iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z", 1)
ok2 = ("iput-boolean v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z" in t2)
print(("PASS " if not ok2 else "FAIL ") + "N2 默认值回退被抓")
if ok2: fails.append("N2")
t3 = gv.replace("invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->r6d302_logFBO()V", "REMOVED", 1)
okN3 = ("invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->r6d302_logFBO()V" not in t3) and (".method private static final r6d302_logFBO()V" in t3)
print(("PASS " if okN3 else "FAIL ") + "N3 调用移除被抓")
if not okN3: fails.append("N3")
t4 = gv.replace(".catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0", "REMOVED", 1)
ok4 = (".catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0" in t4)
print(("PASS " if not ok4 else "FAIL ") + "N4 catch 移除被抓")
if ok4: fails.append("N4")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)