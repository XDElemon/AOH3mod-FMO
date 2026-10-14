# -*- coding: utf-8 -*-
"""r6d302 补丁：开启 FBO 省份绘制（A 方案）
E1 资源：MOBILE_DISABLE_FBO true→false（以 r6d301 APK 内文件为底，注入暂存目录）
E2 smali：SettingsManager.FBO_PROVINCES 默认 true
E3 smali：GameValues 末尾探针 r6d302_logFBO + 调用
锚点先验=1 才写盘；双树同步。"""
import hashlib, os, sys, time, zipfile

BATCH = "r6d302"
APK = "/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d301.apk"
STAGE = "/sdcard/GLG/历史23/build_inputs/r6d302/assets_stage/assets/game/gameValues/GameValues.json"
BASE_MD5 = "f42c0fe7da70760ae48af1bbec7f78a3"
REPO_ASSET = "/root/history23_repo/assets_r6t007/game/gameValues/GameValues.json"

SM_TREES = [
    "/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/setting/SettingsManager.smali",
    "/root/history23_repo/src/smali/aoc/kingdoms/lukasz/jakowski/setting/SettingsManager.smali",
]
GV_TREES = [
    "/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/GameValues.smali",
    "/root/history23_repo/src/smali/aoc/kingdoms/lukasz/jakowski/GameValues.smali",
]

SM_OLD = "    iput-boolean v4, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z"
SM_NEW = "    iput-boolean v5, p0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z"

GV_OLD = ("    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n"
          "    .line 358\n"
          "    :cond_15\n"
          "    return-void\n"
          ".end method\n")
GV_NEW = ("    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n"
          "    .line 358\n"
          "    :cond_15\n"
          "    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->r6d302_logFBO()V\n\n"
          "    return-void\n"
          ".end method\n\n"
          ".method private static final r6d302_logFBO()V\n"
          "    .registers 4\n"
          "\n"
          "    :try_start_0\n"
          "    new-instance v0, Ljava/lang/StringBuilder;\n\n"
          "    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V\n\n"
          "    const-string v1, \"nFBO p=\"\n\n"
          "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n"
          "    move-result-object v0\n\n"
          "    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
          "    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z\n\n"
          "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n\n"
          "    move-result-object v0\n\n"
          "    const-string v1, \" n=\"\n\n"
          "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n"
          "    move-result-object v0\n\n"
          "    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;\n\n"
          "    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z\n\n"
          "    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n\n"
          "    move-result-object v0\n\n"
          "    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n\n"
          "    move-result-object v0\n\n"
          "    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n\n"
          "    :try_end_0\n"
          "    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0\n\n"
          "    goto :goto_0\n\n"
          "    :catch_0\n"
          "    move-exception v0\n\n"
          "    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n\n"
          "    :goto_0\n"
          "    return-void\n"
          ".end method\n")

ok = True
for t in SM_TREES + GV_TREES:
    if not os.path.exists(t):
        print("MISSING", t); ok = False
if ok:
    for t in SM_TREES:
        s = open(t, encoding="utf-8").read()
        c = s.count(SM_OLD)
        print("PRE", t.split("/")[2], "SM", c)
        if c != 1: ok = False
    for t in GV_TREES:
        s = open(t, encoding="utf-8").read()
        c = s.count(GV_OLD)
        print("PRE", t.split("/")[2], "GV", c)
        if c != 1 or GV_NEW in s: ok = False
if not ok:
    print("ABORT: anchor precheck failed"); sys.exit(1)

# 资源底：r6d301 APK 内 GameValues.json
z = zipfile.ZipFile(APK)
raw = z.read("assets/game/gameValues/GameValues.json")
m = hashlib.md5(raw).hexdigest()
print("BASE json md5", m)
if m != BASE_MD5:
    print("ABORT: base json md5 mismatch"); sys.exit(1)
base = raw.decode("utf-8")
oldline = "\tMOBILE_DISABLE_FBO: true,"
if base.count(oldline) != 1:
    print("ABORT: json line count", base.count(oldline)); sys.exit(1)
stage_text = base.replace(oldline, "\tMOBILE_DISABLE_FBO: false,", 1)
os.makedirs(os.path.dirname(STAGE), exist_ok=True)
open(STAGE, "w", encoding="utf-8", newline="").write(stage_text)
print("STAGE", STAGE, hashlib.md5(stage_text.encode("utf-8")).hexdigest()[:12], "len", len(stage_text), "base_len", len(base))

if os.path.exists(REPO_ASSET):
    r = open(REPO_ASSET, encoding="utf-8").read()
    if hashlib.md5(r.encode("utf-8")).hexdigest() == BASE_MD5:
        open(REPO_ASSET, "w", encoding="utf-8", newline="").write(r.replace(oldline, "\tMOBILE_DISABLE_FBO: false,", 1))
        print("REPO asset updated")
    else:
        print("REPO asset differs from APK base -> skipped (记录保留)")

for t in SM_TREES:
    raw2 = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(raw2)
    s = raw2.replace(SM_OLD, SM_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE SM", t.split("/")[2], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

for t in GV_TREES:
    raw2 = open(t, encoding="utf-8").read()
    bak = t + ".pre_" + BATCH
    if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(raw2)
    s = raw2.replace(GV_OLD, GV_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE GV", t.split("/")[2], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

print("DONE", BATCH, time.strftime("%H:%M:%S"))