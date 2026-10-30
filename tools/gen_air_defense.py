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
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SRC = os.path.join(ROOT, "assets_r6t007", "game", "buildings", "Buildings.json")
MIRROR = os.path.join(ROOT, "data", "air_defense.json")
SMALI = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles", "AirDefCfg.smali")
ASSET = os.path.join(ROOT, "build", "assets", "game", "AirDefense", "AirDefense.json")
SHIP = os.path.join(ROOT, "build", "assets", "game", "buildings", "Buildings.json")
CLS = "Laoc/kingdoms/lukasz/map/battles/AirDefCfg;"

REQUIRED = ("id", "nameKey", "canFire", "rangeReal", "rangeBonusReal", "speed", "count",
            "cooldownHours", "detectRangeReal", "reloadHours", "hitChance")


BUILDING_SPECS = (("aaa", "反导阵地", "AD_AAA", True, 1),
                  ("radar", "雷达", "AD_RADAR", False, 0),
                  ("midcourse", "中层反导雷达", "AD_MID", False, 0))


def _blocks(text):
    """从建筑配置（缩进格式，非严格 JSON）里切出每个 `{...}` 块。"""
    i = text.index("[")
    depth = 0
    start = None
    for j in range(i, len(text)):
        c = text[j]
        if c == "{":
            if depth == 0:
                start = j
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0 and start is not None:
                yield text[start:j + 1]
                start = None


def _block_name(block):
    m = re.search(r'Name:\s*\[(.*?)\]', block, re.S)
    if not m:
        return ""
    mm = re.search(r'"([^"]*)"', m.group(1))
    return mm.group(1) if mm else ""


def _num(block, key, default):
    m = re.search(r'(?m)^\s*' + key + r':\s*\[\s*(-?[\d.]+)\s*\]', block)
    return float(m.group(1)) if m else default


def load():
    """真源 = 建筑配置 `assets/game/buildings/Buildings.json`（v131 起）。

    三个防空建筑的附加字段（游戏解析器忽略未知键，只有我们读）：
      EngageRangeReal / EngageRangeBonusReal / DetectRangeReal / ReloadHours / HitChance / MissileSpeed
    """
    text = io.open(SRC, encoding="utf-8").read()
    by = {}
    for b in _blocks(text):
        n = _block_name(b)
        if n:
            by[n] = b
    sites = []
    for sid, name, namekey, canfire, count in BUILDING_SPECS:
        b = by.get(name)
        if b is None:
            raise SystemExit("❌ Buildings.json 里找不到建筑「%s」" % name)
        default_rng = 200 if sid == "midcourse" else (130 if sid == "radar" else 100)
        sites.append({
            "id": sid, "nameKey": namekey, "canFire": canfire,
            "rangeReal": int(round(_num(b, "EngageRangeReal", default_rng))),
            "rangeBonusReal": int(round(_num(b, "EngageRangeBonusReal", default_rng))),
            "speed": _num(b, "MissileSpeed", 0.0),
            "count": count, "cooldownHours": 0,
            "detectRangeReal": int(round(_num(b, "DetectRangeReal", 300))),
            "discScale": _num(b, "DiscScale", 1.0),
            "reloadHours": _num(b, "ReloadHours", 0.0),
            "hitChance": _num(b, "HitChance", 0.0),
        })
    return {"schema": 1, "sites": sites}


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
                  ("COUNT", "[I"), ("COOLDOWN", "[I"), ("FIRE", "[Z"),
                  ("DETECT", "[I"), ("RELOAD", "[F"), ("HIT", "[F"), ("DISC", "[F")):
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
                                ("COOLDOWN", "cooldownHours", "I", lambda v: int(v)),
                                ("DETECT", "detectRangeReal", "I", lambda v: int(round(v))),
                                ("RELOAD", "reloadHours", "F", None),
                                ("HIT", "hitChance", "F", None),
                                ("DISC", "discScale", "F", None)):
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
                                ("COOLDOWN", "cooldownHours", "I", lambda v: int(v)),
                                ("DETECT", "detectRangeReal", "I", lambda v: int(round(v))),
                                ("RELOAD", "reloadHours", "F", None),
                                ("HIT", "hitChance", "F", None),
                                ("DISC", "discScale", "F", None)):
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
    acc("detectRealOf", "DETECT", "I", "I")
    acc("reloadHoursOf", "RELOAD", "F", "F")
    acc("hitChanceOf", "HIT", "F", "F")
    acc("discScaleOf", "DISC", "F", "F")
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
    # v112：indexOf 不再由生成器拼 smali —— 查表是逻辑（带循环/条件跳转），
    # 搬进 Java（MissileTypeIds / AirDefIds），极性由 javac 保证。
    return "\n".join(out) + "\n"


def gen_asset(src):
    """进包的配置文件：只保留参数本身（不带 schema 之外的冗余），缩进 2。"""
    out = {
        "schema": src.get("schema", 1),
        "note": src.get("note", ""),
        "units": {"range": "Real", "speed": "world px per turn"},
        "sites": [{k: s.get(k) for k in
                   ("id", "nameKey", "canFire", "rangeReal", "rangeBonusReal",
                    "speed", "count", "cooldownHours",
                    "detectRangeReal", "reloadHours", "hitChance", "discScale")}
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
    raw = io.open(SRC, encoding="utf-8").read()
    if "--check" in sys.argv:
        bad = 0
        for path, want in ((SMALI, smali), (ASSET, asset), (MIRROR, asset), (SHIP, raw)):
            cur = io.open(path, encoding="utf-8").read() if os.path.exists(path) else ""
            if cur != want:
                print("FAIL %s 与 Buildings.json 派生不一致" % path)
                bad += 1
        if not bad:
            print("✅ AirDefCfg / 镜像 / 进包 Buildings.json 一致（%d 阵地）" % len(src["sites"]))
        return 1 if bad else 0
    for path, body in ((SMALI, smali), (ASSET, asset), (MIRROR, asset), (SHIP, raw)):
        os.makedirs(os.path.dirname(path), exist_ok=True)
        io.open(path, "w", encoding="utf-8").write(body)
    print("✅ 写出 %s（%d 阵地）" % (SMALI, len(src["sites"])))
    print("✅ 写出 %s" % ASSET)
    print("✅ 同步镜像 %s" % MIRROR)
    print("✅ 写出进包建筑配置 %s" % SHIP)
    return 0


if __name__ == "__main__":
    sys.exit(main())
