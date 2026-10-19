#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_air_model_stats.py —— 生成 AirModelStats：51 机型的数值表 + applyModel(unit)

为什么不做"运行时读 JSON"：
  * Gdx Json 在 smali 里解析要额外造一个数据类 + load()，手写量大、未知字段还会整表炸
    （本仓已有教训：在代码读之前注入 AircraftTypes.json 的未知字段会直接加载失败）。
  * 本站的做法与 AirModelTables.INFO 一致：**JSON 是真源 → 生成 smali 常量表**。
    改数值 = 改 data/aircraft_models.json → 重跑本脚本 + tools/gen_aircraft_models.py → 出包。
  * 好处：零解析风险、零存档影响。

设计要点（不新增 AirUnit 字段，避免动存档）：
  * applyModel(unit) 只覆盖 4 个连续属性：airAttack / defense(→maxHp=def*2) / radarRange / speed
  * 导弹与机炮**按 modelAid 现查**：missileRange/missileCount/missileHops/missileSpeed/hasGun
  * aid 越界或 -1（未定型）→ 一律不动，保持 applyType 的类型默认值

用法： python3 tools/gen_air_model_stats.py [--dry]
"""
import json
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
OUT = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles", "AirModelStats.smali")
CLS = "Laoc/kingdoms/lukasz/map/battles/AirModelStats;"
UNIT = "Laoc/kingdoms/lukasz/map/battles/AirUnit;"

INT_FIELDS = ["MissileRange", "MissileCount", "MissileHops", "MissileRadarRange"]
FLOAT_FIELDS = ["AirAttack", "Defense", "RadarRange", "Speed", "MissileSpeed"]


def fbits(x):
    return struct.unpack("<I", struct.pack("<f", float(x)))[0]


def load():
    """先跑 gen_aircraft_models 的逻辑拿同一份数据，保证表与 JSON 一致"""
    sys.path.insert(0, HERE)
    import gen_aircraft_models as g
    src = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))
    models = g.build(src)
    fails = g.validate(models, src)
    if fails:
        raise SystemExit("❌ 机型表校验未通过: %s" % fails[:3])
    return models


def array_block(name, values, width, fmt):
    lines = ["    new-array v0, %s, [%s" % (hex(len(values)), "F" if width == 4 and fmt == "f" else "I"),
             "",
             "    fill-array-data v0, :%s_data" % name,
             "",
             "    sput-object v0, %s->%s:[%s" % (CLS, name, "F" if width == 4 and fmt == "f" else "I"),
             ""]
    return lines


def main():
    models = load()
    n = len(models)
    L = []
    A = L.append
    A("# 由 tools/gen_air_model_stats.py 生成，禁止手改")
    A("# 数值真源：data/aircraft_models.json → tools/gen_aircraft_models.py 定曲线")
    A("# 51 机型，下标 = modelAid（与 AirModelTables.INFO 同序）")
    A(".class public Laoc/kingdoms/lukasz/map/battles/AirModelStats;")
    A(".super Ljava/lang/Object;")
    A('.source "AirModelStats.java"')
    A("")
    A("# static fields")
    A("")

    fields = []
    for f in FLOAT_FIELDS:
        fields.append((f.upper(), "F", f))
    for f in INT_FIELDS:
        fields.append((f.upper(), "I", f))
    fields.append(("GUN", "Z", "HasGun"))
    extra_fields = [("MS_SPD", "F")]

    for name, t, _ in fields:
        A(".field public static %s:[%s" % (name, t))
        A("")
    A(".field public static MS_SPD:F")
    A("")

    # ---- <clinit>：建表 ----
    A("# direct methods")
    A(".method static constructor <clinit>()V")
    A("    .registers 2")
    A("")
    payloads = []
    for name, t, key in fields:
        if t == "F":
            vals = [fbits(m[key]) for m in models]
            A("    const/16 v1, %s" % hex(n))
            A("")
            A("    new-array v0, v1, [F")
            A("")
            A("    fill-array-data v0, :d_%s" % name)
            A("")
            A("    sput-object v0, %s->%s:[F" % (CLS, name))
            A("")
            payloads.append((name, 4, vals))
        elif t == "I":
            vals = [int(m[key]) for m in models]
            A("    const/16 v1, %s" % hex(n))
            A("")
            A("    new-array v0, v1, [I")
            A("")
            A("    fill-array-data v0, :d_%s" % name)
            A("")
            A("    sput-object v0, %s->%s:[I" % (CLS, name))
            A("")
            payloads.append((name, 4, vals))
        else:
            vals = [1 if m[key] else 0 for m in models]
            A("    const/16 v1, %s" % hex(n))
            A("")
            A("    new-array v0, v1, [Z")
            A("")
            A("    fill-array-data v0, :d_%s" % name)
            A("")
            A("    sput-object v0, %s->%s:[Z" % (CLS, name))
            A("")
            payloads.append((name, 1, vals))
    A("    return-void")
    for name, width, vals in payloads:
        A("")
        A("    :d_%s" % name)
        A("    .array-data %d" % width)
        for v in vals:
            A("        %s" % hex(v))
        A("    .end array-data")
    A(".end method")
    A("")

    # ---- applyModel ----
    A("# 按 modelAid 覆盖连续属性；aid<0 或越界则不动（保留类型默认值）")
    A(".method public static applyModel(%s)V" % UNIT)
    A("    .registers 6")
    A('    .param p0, "unit"    # %s' % UNIT)
    A("")
    A("    if-eqz p0, :am_done")
    A("")
    A("    iget v0, p0, %s->modelAid:I" % UNIT)
    A("")
    A("    if-ltz v0, :am_done")
    A("")
    A("    sget-object v1, %s->AIRATTACK:[F" % CLS)
    A("")
    A("    array-length v2, v1")
    A("")
    A("    if-ge v0, v2, :am_done")
    A("")
    A("    aget v3, v1, v0")
    A("")
    A("    iput v3, p0, %s->airAttack:F" % UNIT)
    A("")
    A("    sget-object v1, %s->DEFENSE:[F" % CLS)
    A("")
    A("    aget v3, v1, v0")
    A("")
    A("    iput v3, p0, %s->defense:F" % UNIT)
    A("")
    A("    const/high16 v4, 0x40000000    # 2.0f")
    A("")
    A("    mul-float v5, v3, v4")
    A("")
    A("    iput v5, p0, %s->maxHp:F" % UNIT)
    A("")
    A("    sget-object v1, %s->RADARRANGE:[F" % CLS)
    A("")
    A("    aget v3, v1, v0")
    A("")
    A("    iput v3, p0, %s->radarRange:F" % UNIT)
    A("")
    A("    sget-object v1, %s->SPEED:[F" % CLS)
    A("")
    A("    aget v3, v1, v0")
    A("")
    A("    iput v3, p0, %s->speed:F" % UNIT)
    A("")
    A("    # 只在 hp 已超过新上限时才拉满；读档时 hp 来自存档，不会被动")
    A("    iget v3, p0, %s->hp:F" % UNIT)
    A("")
    A("    cmpg-float v3, v3, v5")
    A("")
    A("    if-lez v3, :am_done")
    A("")
    A("    iput v5, p0, %s->hp:F" % UNIT)
    A("")
    A("    :am_done")
    A("    return-void")
    A(".end method")
    A("")

    # ---- 导弹/机炮查询 ----
    # 导弹速度查询（msSpd 的配置入口）；越界 → 原作者常量 67.5 px/gamehour
    A("# 按 modelAid 取导弹速度；aid<0/越界 → 67.5（原 TECH-HOOK 常量）")
    A(".method public static missileSpeed(I)F")
    A("    .registers 3")
    A('    .param p0, "aid"    # I')
    A("")
    A("    if-ltz p0, :g_default")
    A("")
    A("    sget-object v0, %s->MISSILESPEED:[F" % CLS)
    A("")
    A("    array-length v1, v0")
    A("")
    A("    if-ge p0, v1, :g_default")
    A("")
    A("    aget v0, v0, p0")
    A("")
    A("    return v0")
    A("")
    A("    :g_default")
    A("    const v0, 0x42870000")
    A("")
    A("    return v0")
    A(".end method")
    A("")

    if "--dry" not in sys.argv:
        open(OUT, "w", encoding="utf-8").write("\n".join(L) + "\n")
        print("  ✅ 已生成 %s（%d 机型 × %d 列）" % (os.path.relpath(OUT, ROOT), n, len(fields)))
    else:
        print("\n".join(L[:20]))
    return 0


if __name__ == "__main__":
    sys.exit(main())
