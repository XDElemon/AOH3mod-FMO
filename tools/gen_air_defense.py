#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_defense.py —— 防空阵地参数（M3 前置，v106）。

真源：`data/air_defense.json`。生成两份，**一份一个用途**：

  1. `src/smali/.../AirDefCfg.smali`  —— 运行时读的常量表（零 JSON 解析风险，与 MissileTypes 同一套做法）；
  2. `build/assets/game/AirDefense/AirDefense.json` —— 进包的配置文件（可读、可对照、可给面板/调试用）。

口径（2026-10-27 与用户敲定）：
  * `rangeReal` / `rangeBonusReal` 是 **Real 单位**（与 `Province.getCenterX_Real()` 同尺）；
    导弹/飞机跑的是**世界坐标**（= Real × `MapBG.iMapScale`），换算由调用方做且只做一次；
  * `speed` 是**世界 px/回合**（与飞机同一帧钟，`AirMissileCore.speedDiv()`）；
  * **中段雷达只探测、不发射**（`midcourse.canFire` 必须 false，B47/B49 双闸）；
  * **近炸/接触半径不在本文件**：那是"弹"的属性，归 `data/missiles.json` 的 `fuseRadius/hitRadius`。

用法：
  python3 tools/gen_air_defense.py          # 写两份产物
  python3 tools/gen_air_defense.py --check  # 只比对（闸门 B49 用）
"""
import io
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SRC = os.path.join(ROOT, "data", "air_defense.json")
SMALI = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles", "AirDefCfg.smali")
ASSET = os.path.join(ROOT, "build", "assets", "game", "AirDefense", "AirDefense.json")
CLS = "Laoc/kingdoms/lukasz/map/battles/AirDefCfg;"

REQUIRED = ("id", "nameKey", "canFire", "rangeReal", "rangeBonusReal", "speed", "count", "cooldownHours")


def load():
    return json.load(io.open(SRC, encoding="utf-8"))


def validate(src):
    """返回错误列表（生成器与 B49 共用这一份断言）。"""
    errs = []
    if src.get("schema") != 1:
        errs.append("schema 必须为 1")
    sites = src.get("sites") or []
    if not sites:
        return ["sites 为空"]
    seen = set()
    for s in sites:
        sid = s.get("id")
        if not isinstance(sid, str) or not sid:
            errs.append("阵地缺 id")
            continue
        if sid in seen:
            errs.append("重复 id: %s" % sid)
        seen.add(sid)
        for k in REQUIRED:
            if k not in s:
                errs.append("%s 缺字段 %s" % (sid, k))
        r = s.get("rangeReal")
        rb = s.get("rangeBonusReal")
        if not isinstance(r, (int, float)) or r <= 0:
            errs.append("%s.rangeReal 必须 > 0" % sid)
        if not isinstance(rb, (int, float)) or rb <= 0:
            errs.append("%s.rangeBonusReal 必须 > 0" % sid)
        elif isinstance(r, (int, float)) and rb < r:
            errs.append("%s.rangeBonusReal 不能小于 rangeReal" % sid)
        sp = s.get("speed")
        if not isinstance(sp, (int, float)) or sp < 0:
            errs.append("%s.speed 非法" % sid)
        if s.get("cooldownHours") is not None and (not isinstance(s.get("cooldownHours"), int)
                                                   or s.get("cooldownHours") < 0):
            errs.append("%s.cooldownHours 必须是非负整数" % sid)
        n = s.get("count")
        if not isinstance(n, int) or n < 0:
            errs.append("%s.count 必须是非负整数" % sid)
        # 硬口径：不发射的阵地不许带弹/速度；能发射的必须两者都 > 0
        if s.get("canFire") is True:
            if not (sp > 0):
                errs.append("%s.canFire=true 但 speed<=0" % sid)
            if not (n > 0):
                errs.append("%s.canFire=true 但 count<=0" % sid)
        else:
            if n:
                errs.append("%s.canFire=false 却配了弹数 %d" % (sid, n))
            if sp:
                errs.append("%s.canFire=false 却配了速度 %s" % (sid, sp))
    # 中段雷达只探测（用户反复强调）
    mid = [s for s in sites if s.get("id") == "midcourse"]
    if not mid:
        errs.append("缺 midcourse 阵地（中段雷达只探测）")
    elif mid[0].get("canFire") is not False:
        errs.append("midcourse 不许发射（中段雷达只探测/预警）")
    if not [s for s in sites if s.get("id") == "aaa"]:
        errs.append("缺 aaa 阵地（防空拦截弹发射源）")
    return errs


def gen_smali(src):
    sites = src["sites"]
    n = len(sites)
    out = []
    out.append("# 由 tools/gen_air_defense.py 生成，禁止手改")
    out.append("# 真源：data/air_defense.json（防空阵地参数，M3 前置）")
    out.append("# 口径：range 为 Real 单位；speed 为世界 px/回合；中段雷达只探测不发射")
    out.append(".class public Laoc/kingdoms/lukasz/map/battles/AirDefCfg;")
    out.append(".super Ljava/lang/Object;")
    out.append('.source "AirDefCfg.smali"')
    out.append("")
    for f, ty in (("ID", "[Ljava/lang/String;"), ("NAMEKEY", "[Ljava/lang/String;"),
                  ("RANGE", "[I"), ("RANGEBONUS", "[I"), ("SPEED", "[F"),
                  ("COUNT", "[I"), ("COOLDOWN", "[I"), ("FIRE", "[Z")):
        out.append(".field public static %s:%s" % (f, ty))
        out.append("")
    out.append(".method static constructor <clinit>()V")
    out.append("    .registers 5")
    out.append("")
    for name, key in (("ID", "id"), ("NAMEKEY", "nameKey")):
        out.append("    const/16 v0, 0x%x" % n)
        out.append("")
        out.append("    new-array v0, v0, [Ljava/lang/String;")
        out.append("")
        for i, s in enumerate(sites):
            out.append("    const/4 v1, 0x%x" % i)
            out.append("")
            out.append('    const-string v2, "%s"' % str(s.get(key, "")).replace('"', '\\"'))
            out.append("")
            out.append("    aput-object v2, v0, v1")
            out.append("")
        out.append("    sput-object v0, %s->%s:[Ljava/lang/String;" % (CLS, name))
        out.append("")
    for name, key, ty, conv in (("RANGE", "rangeReal", "I", lambda v: int(round(v))),
                                ("RANGEBONUS", "rangeBonusReal", "I", lambda v: int(round(v))),
                                ("SPEED", "speed", "F", None),
                                ("COUNT", "count", "I", lambda v: int(v)),
                                ("COOLDOWN", "cooldownHours", "I", lambda v: int(v))):
        out.append("    const/16 v0, 0x%x" % n)
        out.append("")
        out.append("    new-array v0, v0, [%s" % ty)
        out.append("")
        out.append("    fill-array-data v0, :d_%s" % name)
        out.append("")
        out.append("    sput-object v0, %s->%s:[%s" % (CLS, name, ty))
        out.append("")
    out.append("    const/16 v0, 0x%x" % n)
    out.append("")
    out.append("    new-array v0, v0, [Z")
    out.append("")
    out.append("    fill-array-data v0, :d_FIRE")
    out.append("")
    out.append("    sput-object v0, %s->FIRE:[Z" % CLS)
    out.append("")
    out.append("    return-void")
    out.append("")
    for name, key, ty, conv in (("RANGE", "rangeReal", "I", lambda v: int(round(v))),
                                ("RANGEBONUS", "rangeBonusReal", "I", lambda v: int(round(v))),
                                ("SPEED", "speed", "F", None),
                                ("COUNT", "count", "I", lambda v: int(v)),
                                ("COOLDOWN", "cooldownHours", "I", lambda v: int(v))):
        out.append(":d_%s" % name)
        out.append("    .array-data %s" % ("4" if ty != "Z" else "1"))
        for s in sites:
            v = s.get(key, 0)
            if ty == "F":
                import struct
                out.append("        0x%x" % struct.unpack("<I", struct.pack("<f", float(v)))[0])
            else:
                out.append("        0x%x" % (conv(v) & 0xFFFFFFFF))
        out.append("    .end array-data")
        out.append("")
    out.append(":d_FIRE")
    out.append("    .array-data 1")
    for s in sites:
        out.append("        %s" % ("0x1" if s.get("canFire") else "0x0"))
    out.append("    .end array-data")
    out.append("")
    out.append(".end method")
    out.append("")

    def acc(name, field, aty, ret):
        out.append(".method public static %s(I)%s" % (name, ret))
        out.append("    .registers 3")
        out.append("")
        out.append("    sget-object v0, %s->%s:[%s" % (CLS, field, aty))
        out.append("")
        out.append("    aget v1, v0, p0")
        out.append("")
        out.append("    return v1")
        out.append(".end method")
        out.append("")

    acc("rangeRealOf", "RANGE", "I", "I")
    acc("rangeBonusRealOf", "RANGEBONUS", "I", "I")
    acc("speedOf", "SPEED", "F", "F")
    acc("countOf", "COUNT", "I", "I")
    acc("cooldownHoursOf", "COOLDOWN", "I", "I")
    acc("canFire", "FIRE", "Z", "Z")
    out.append(".method public static count()I")
    out.append("    .registers 1")
    out.append("")
    out.append("    const/16 v0, 0x%x" % n)
    out.append("")
    out.append("    return v0")
    out.append(".end method")
    out.append("")
    for name, field in (("idOf", "ID"), ("nameKeyOf", "NAMEKEY")):
        out.append(".method public static %s(I)Ljava/lang/String;" % name)
        out.append("    .registers 3")
        out.append("")
        out.append("    sget-object v0, %s->%s:[Ljava/lang/String;" % (CLS, field))
        out.append("")
        out.append("    aget-object v1, v0, p0")
        out.append("")
        out.append("    return-object v1")
        out.append(".end method")
        out.append("")
    out.append(".method public static indexOf(Ljava/lang/String;)I")
    out.append("    .registers 4")
    out.append("")
    out.append("    if-eqz p0, :ret_neg")
    out.append("")
    out.append("    sget-object v0, %s->ID:[Ljava/lang/String;" % CLS)
    out.append("")
    out.append("    const/4 v1, 0x0")
    out.append("")
    out.append("    :loop")
    out.append("")
    out.append("    array-length v2, v0")
    out.append("")
    out.append("    if-ge v1, v2, :ret_neg")
    out.append("")
    out.append("    aget-object v2, v0, v1")
    out.append("")
    out.append("    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z")
    out.append("")
    out.append("    move-result v2")
    out.append("")
    # v111：这里必须是"不相等才继续"。写成 if-nez（非零跳转）极性反了 ⇒
    # indexOf 会返回**第一个不匹配**的下标（AAM→1/SAM 互换、aaa→radar），
    # 线上表现是"空空弹打成了防空弹的型号"。B47/B49 有断言守这一行。
    out.append("    if-eqz v2, :next")
    out.append("")
    out.append("    return v1")
    out.append("")
    out.append("    :next")
    out.append("")
    out.append("    add-int/lit8 v1, v1, 0x1")
    out.append("")
    out.append("    goto :loop")
    out.append("")
    out.append("    :ret_neg")
    out.append("")
    out.append("    const/4 v0, -0x1")
    out.append("")
    out.append("    return v0")
    out.append(".end method")
    return "\n".join(out) + "\n"


def gen_asset(src):
    """进包的配置文件：只保留参数本身（不带 schema 之外的冗余），缩进 2。"""
    out = {
        "schema": src.get("schema", 1),
        "note": src.get("note", ""),
        "units": {"range": "Real", "speed": "world px per turn"},
        "sites": [{k: s.get(k) for k in
                   ("id", "nameKey", "canFire", "rangeReal", "rangeBonusReal",
                    "speed", "count", "cooldownHours")}
                  for s in src["sites"]],
    }
    return json.dumps(out, ensure_ascii=False, indent=2) + "\n"


def main():
    src = load()
    errs = validate(src)
    if errs:
        for e in errs:
            print("FAIL " + e)
        return 1
    smali = gen_smali(src)
    asset = gen_asset(src)
    if "--check" in sys.argv:
        bad = 0
        cur = io.open(SMALI, encoding="utf-8").read() if os.path.exists(SMALI) else ""
        if cur != smali:
            print("FAIL %s 与 data/air_defense.json 不一致" % SMALI)
            bad += 1
        cur = io.open(ASSET, encoding="utf-8").read() if os.path.exists(ASSET) else ""
        if cur != asset:
            print("FAIL %s 与 data/air_defense.json 不一致" % ASSET)
            bad += 1
        if not bad:
            print("✅ AirDefCfg / AirDefense.json 一致（%d 阵地）" % len(src["sites"]))
        return 1 if bad else 0
    io.open(SMALI, "w", encoding="utf-8").write(smali)
    os.makedirs(os.path.dirname(ASSET), exist_ok=True)
    io.open(ASSET, "w", encoding="utf-8").write(asset)
    print("✅ 写出 %s（%d 阵地）" % (SMALI, len(src["sites"])))
    print("✅ 写出 %s" % ASSET)
    return 0


if __name__ == "__main__":
    sys.exit(main())
