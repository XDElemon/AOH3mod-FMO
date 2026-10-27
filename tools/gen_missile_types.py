#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_missile_types.py —— 生成 MissileTypes（M2 导弹类型表）。

为什么不用运行时读 JSON：与 AirModelTables/AirModelStats 同一套做法 ——
`data/missiles.json` 是**真源**，本脚本把它编成 smali 常量表 + 几个查表方法，
零 JSON 解析风险、零存档影响。

口径（2026-10-27 用户拍板）：
  * **中段反导雷达只探测/预警，不发射拦截弹** ⇒ launcher 枚举里没有 midcourse；
  * **反导阵地只拦核弹头** ⇒ 只有 TAC_NUKE / ALBM_NUKE 的 interceptableBy=[ABM]；
  * 防空阵地（SAM）拦飞机；常规 AGM/ALBM 不被反导拦。

用法：
  python3 tools/gen_missile_types.py          # 写文件
  python3 tools/gen_missile_types.py --check  # 只比对（闸门用），不一致退出码 1
"""
import json
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SRC = os.path.join(ROOT, "data", "missiles.json")
OUT = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles", "MissileTypes.smali")
CLS = "Laoc/kingdoms/lukasz/map/battles/MissileTypes;"

CAPS = {"CanAAMissile", "CanAGMissile", "CanTacticalNuke", "CanALBM", "CanALBMNuke"}
# 能力 → 必须存在的 missile type
CAP_TO_TYPE = {
    "AAM": "CanAAMissile",
    "AGM": "CanAGMissile",
    "TAC_NUKE": "CanTacticalNuke",
    "ALBM": "CanALBM",
    "ALBM_NUKE": "CanALBMNuke",
}


def load():
    with open(SRC, encoding="utf-8") as f:
        return json.load(f)


def validate(src):
    """返回错误列表；gate/生成器共用这一份断言。"""
    errs = []
    if src.get("schema") != 1:
        errs.append("schema 必须为 1")
    enums = src.get("enums") or {}
    for k in ("launcher", "target", "warhead", "interceptor"):
        if not enums.get(k):
            errs.append("缺 enums.%s" % k)
    types = src.get("types") or []
    if not types:
        return ["types 为空"]
    seen = set()
    caps_seen = {}
    for t in types:
        tid = t.get("id")
        if not isinstance(tid, str) or not tid:
            errs.append("类型缺 id")
            continue
        if tid in seen:
            errs.append("重复 id: %s" % tid)
        seen.add(tid)
        for key, ekey in (("launcher", "launcher"), ("target", "target"),
                          ("warhead", "warhead")):
            if t.get(key) not in enums.get(ekey, []):
                errs.append("%s.%s 非法: %r" % (tid, key, t.get(key)))
        cap = t.get("capability")
        if cap is not None:
            if cap not in CAPS:
                errs.append("%s.capability 非法: %r" % (tid, cap))
            elif cap in caps_seen:
                errs.append("%s 与 %s 抢同一个能力 %s" % (tid, caps_seen[cap], cap))
            else:
                caps_seen[cap] = tid
        for k in ("speed", "lifeTurns", "turnRate", "hitRadius"):
            v = t.get(k)
            if not isinstance(v, (int, float)) or v < 0:
                errs.append("%s.%s 非法: %r" % (tid, k, v))
        sp = t.get("speed", 0)
        if not (0 < sp <= 300):
            errs.append("%s.speed 越界(0,300]: %r" % (tid, sp))
        lf = t.get("lifeTurns", 0)
        if not (0 < lf <= 5):
            errs.append("%s.lifeTurns 越界(0,5]: %r" % (tid, lf))
        tr = t.get("turnRate", 0)
        if not (0 <= tr <= 720):
            errs.append("%s.turnRate 越界[0,720]: %r" % (tid, tr))
        hr = t.get("hitRadius", 0)
        if not (2 <= hr <= 30):
            errs.append("%s.hitRadius 越界[2,30]: %r" % (tid, hr))
        ib = t.get("interceptableBy") or []
        for x in ib:
            if x not in enums.get("interceptor", []):
                errs.append("%s.interceptableBy 非法: %r" % (tid, x))
        nuke = t.get("warhead") == "nuclear"
        if nuke and "ABM" not in ib:
            errs.append("%s 是核战斗部，必须可被 ABM 拦" % tid)
        if (not nuke) and ib:
            errs.append("%s 不是核战斗部，却声明可被拦截: %r" % (tid, ib))

    # 矩阵/发射源口径（用户拍板）
    by_id = {t.get("id"): t for t in types}
    expect = {
        "AAM": ("aircraft", "air"),
        "SAM": ("ad_site", "air"),
        "ABM": ("abm_site", "nuke_warhead"),
        "AGM": ("aircraft", "ground"),
        "ALBM": ("aircraft", "province"),
        "TAC_NUKE": ("aircraft", "province"),
        "ALBM_NUKE": ("aircraft", "province"),
    }
    for tid, (la, ta) in expect.items():
        t = by_id.get(tid)
        if not t:
            errs.append("缺类型: %s" % tid)
            continue
        if t.get("launcher") != la:
            errs.append("%s.launcher 应为 %s，实际 %r" % (tid, la, t.get("launcher")))
        if t.get("target") != ta:
            errs.append("%s.target 应为 %s，实际 %r" % (tid, ta, t.get("target")))
    if "midcourse" in (enums.get("launcher") or []):
        errs.append("launcher 不许出现 midcourse（中段雷达只探测、不发射）")
    for tid, cap in CAP_TO_TYPE.items():
        t = by_id.get(tid)
        if t and t.get("capability") != cap:
            errs.append("%s.capability 应为 %s，实际 %r" % (tid, cap, t.get("capability")))
        if cap not in caps_seen:
            errs.append("能力 %s 没有对应导弹类型" % cap)
    return errs


def fbits(x):
    return struct.unpack("<I", struct.pack("<f", float(x)))[0]


def gen(src):
    types = src["types"]
    n = len(types)
    enums = src["enums"]

    def idx(ekey, val):
        return enums[ekey].index(val)

    out = []
    out.append("# 由 tools/gen_missile_types.py 生成，禁止手改")
    out.append("# 真源：data/missiles.json（M2 导弹类型表）")
    out.append("# 口径：中段雷达只探测不发射；反导阵地只拦核弹头；防空阵地拦飞机")
    out.append(".class public Laoc/kingdoms/lukasz/map/battles/MissileTypes;")
    out.append(".super Ljava/lang/Object;")
    out.append('.source "MissileTypes.smali"')
    out.append("")
    for f, ty in (("ID", "[Ljava/lang/String;"), ("NAMEKEY", "[Ljava/lang/String;"),
                  ("CAP", "[Ljava/lang/String;"), ("SPEED", "[F"), ("LIFE", "[F"),
                  ("TURN", "[F"), ("HITR", "[F"), ("LAUNCHER", "[I"), ("TARGET", "[I"),
                  ("WARHEAD", "[I"), ("IMASK", "[I")):
        out.append(".field public static %s:%s" % (f, ty))
        out.append("")

    # <clinit>
    out.append(".method static constructor <clinit>()V")
    out.append("    .registers 5")
    out.append("")
    # String arrays：逐条 aput-object
    for name, key in (("ID", "id"), ("NAMEKEY", "nameKey"), ("CAP", "capability")):
        out.append("    const/16 v0, 0x%x" % n)
        out.append("")
        out.append("    new-array v0, v0, [Ljava/lang/String;")
        out.append("")
        for i, t in enumerate(types):
            v = t.get(key)
            if v is None:
                v = ""
            out.append("    const/4 v1, 0x%x" % i)
            out.append("")
            out.append('    const-string v2, "%s"' % v.replace('"', '\\"'))
            out.append("")
            out.append("    aput-object v2, v0, v1")
            out.append("")
        out.append("    sput-object v0, %s->%s:%s" % (CLS, name, "[Ljava/lang/String;"))
        out.append("")
    # float/int arrays
    for name, key, ty, conv in (
            ("SPEED", "speed", "F", fbits), ("LIFE", "lifeTurns", "F", fbits),
            ("TURN", "turnRate", "F", fbits), ("HITR", "hitRadius", "F", fbits),
            ("LAUNCHER", "launcher", "I", lambda x: idx("launcher", x)),
            ("TARGET", "target", "I", lambda x: idx("target", x)),
            ("WARHEAD", "warhead", "I", lambda x: idx("warhead", x)),
            ("IMASK", "interceptableBy", "I",
             lambda xs: sum(1 << idx("interceptor", x) for x in (xs or [])))):
        out.append("    const/16 v0, 0x%x" % n)
        out.append("")
        out.append("    new-array v0, v0, [%s" % ty)
        out.append("")
        out.append("    fill-array-data v0, :d_%s" % name)
        out.append("")
        out.append("    sput-object v0, %s->%s:[%s" % (CLS, name, ty))
        out.append("")
    out.append("    return-void")
    out.append("")
    # array-data blocks（payload 必须放在 .end method 之前）
    for name, key, ty, conv in (
            ("SPEED", "speed", "F", fbits), ("LIFE", "lifeTurns", "F", fbits),
            ("TURN", "turnRate", "F", fbits), ("HITR", "hitRadius", "F", fbits),
            ("LAUNCHER", "launcher", "I", lambda x: idx("launcher", x)),
            ("TARGET", "target", "I", lambda x: idx("target", x)),
            ("WARHEAD", "warhead", "I", lambda x: idx("warhead", x)),
            ("IMASK", "interceptableBy", "I",
             lambda xs: sum(1 << idx("interceptor", x) for x in (xs or [])))):
        out.append(":d_%s" % name)
        out.append("    .array-data 4")
        for t in types:
            out.append("        0x%x" % conv(t.get(key)))
        out.append("    .end array-data")
        out.append("")
    out.append(".end method")
    out.append("")

    # accessors
    # 注意：返回类型必须与数组类型一致。int 数组用 `return v1` 声明成 (I)F 会让 ART
    # 校验器判类型不匹配 ⇒ 首次使用该类时 VerifyError（M2 之前没人调用，所以一直没暴露）。
    def acc(name, field, aty):
        ret = "F" if aty == "F" else "I"
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

    for name, field in (("speedOf", "SPEED"), ("lifeOf", "LIFE"),
                        ("turnOf", "TURN"), ("hitRadiusOf", "HITR")):
        acc(name, field, "F")
    for name, field in (("launcherOf", "LAUNCHER"), ("targetOf", "TARGET"),
                        ("warheadOf", "WARHEAD"), ("interceptMaskOf", "IMASK")):
        acc(name, field, "I")

    # count / strings
    out.append(".method public static count()I")
    out.append("    .registers 1")
    out.append("")
    out.append("    const/16 v0, 0x%x" % n)
    out.append("")
    out.append("    return v0")
    out.append(".end method")
    out.append("")

    for name, field in (("idOf", "ID"), ("nameKeyOf", "NAMEKEY"), ("capabilityOf", "CAP")):
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
    out.append("    if-nez v2, :next")
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
    out.append("")
    return "\n".join(out)


def main():
    src = load()
    errs = validate(src)
    if errs:
        for e in errs:
            print("❌ " + e)
        return 1
    text = gen(src)
    exists = ""
    if os.path.exists(OUT):
        exists = open(OUT, encoding="utf-8").read()
    if "--check" in sys.argv:
        if exists != text:
            print("❌ MissileTypes.smali 与 data/missiles.json 不一致（跑 tools/gen_missile_types.py）")
            return 1
        print("✅ MissileTypes 一致（%d 类型）" % len(src["types"]))
        return 0
    with open(OUT, "w", encoding="utf-8") as f:
        f.write(text)
    print("✅ 写出 %s（%d 类型）" % (os.path.relpath(OUT, ROOT), len(src["types"])))
    return 0


if __name__ == "__main__":
    sys.exit(main())
