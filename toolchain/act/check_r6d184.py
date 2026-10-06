#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
check_r6d184.py —— r6d184 门禁
本批定位：**以"库内最新源码"重出成品包**，修掉装机版（r6d183）里"雷达圈小了一圈"的问题。
    · 基线 = r6d180 树 + PC 回传 r6d181/182 三件套（AirDefense / AirDefDiag / ProvinceDrawArmy）
    · 因此渲染侧回到已知正确态：
        S7 RadarBitmap 三常量 = 1.0f 剖面 / 0.2f alpha / (0.431,0.725,1.0) 填充色
        S8 ProvinceDrawArmy.drawAirForceRadar 未被 return-void 禁用
    · AD 侧 = 库内最新（D1 已废止、D2 +150px、D3 纬度口径、D4 红圈、D5 发数=阵地数）

用法：
    python3 check_r6d184.py <smali树根>              # 正检
    python3 check_r6d184.py <smali树根> --selftest   # 正检 + 负样本自检
约定：正检 0 失败；每个负样本必须让它对应的那条检查变红。
"""
import sys, os, re

AD = "aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
PDA = "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
DIAG = "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
RB = "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali"


def body(text, header_re):
    """取 .method <header_re> ... .end method 之间的正文"""
    m = re.search(r"(?m)^\.method[^\n]*" + header_re + r"[^\n]*\n([\s\S]*?)^\.end method", text)
    return m.group(1) if m else None


def d4_block(text):
    m = re.search(r"(?m)^\s*#\s*---\s*r6d18\d\s+D4[\s\S]*?\n\s*:d4_skip\s*\n", text)
    return m.group(0) if m else None


def strip_comments(s):
    return "\n".join(l for l in s.splitlines() if not l.lstrip().startswith("#"))


# ------------------------------------------------------------------ 检查
def s1_tickall(F):
    b = body(F[AD], r"tickAll\(\)V")
    if not b:
        return False
    return ("if-lez v3, :next" in b) and ("fireProvince(III)I" in b) and ("hasRadarBuilding" not in b)


def s2_inrange(F):
    b = body(F[AD], r"inRange\(")
    if not b:
        return False
    return ("0x12c" in b) and ("0x96" in b) and ("AirLat;->hit(IIII)Z" in b) and re.search(r"if-eq v2, v3", b)


def s3_d4(F):
    d = d4_block(F[PDA])
    if not d:
        return False
    return ("radarFill" in d) and ("AirLat;->f(I)F" in d) and \
           (d.count("0x3e800000") >= 2) and ("0x3f800000" in d)


def s4_d4_regs(F):
    d = d4_block(F[PDA])
    if not d:
        return False
    b = strip_comments(d)
    return not re.search(r"\bv0\b", b) and not re.search(r"\bv6\b", b)


def s5_d4_after_goto(F):
    t = F[PDA]
    i_goto = t.find(":goto_101")
    d = d4_block(t)
    if i_goto < 0 or not d:
        return False
    return t.find(d) > i_goto


def s6_invariants(F):
    hc = body(F[AD], r"adHitChance\(")
    dm = body(F[AD], r"adDamagePerHit\(")
    pt = body(F[AD], r"pickTarget\(")
    if not hc or not dm or not pt:
        return False
    return ("0x3f000000" in hc) and ("0x40400000" in dm) and \
           ("if-eq v1, p2, :found" in pt) and ("if-ne v1, p2, :found" not in pt) and \
           (F[AD].count("0x45866000") == 0)


def s7_radarbitmap(F):
    t = F[RB]
    ell = body(t, r"drawRadarEllipse\(")
    dr = body(t, r"draw\(L")
    rf = body(t, r"refresh\(\)V")
    if not ell or not dr or not rf:
        return False
    return ("0x3f800000" in ell) and ("0x3e23d70a" not in ell) and \
           ("0x3e4ccccd" in dr) and ("0x3e19999a" not in dr) and \
           ("0x3edcdcdd" in rf) and ("0x3f39b9ba" in rf)


def s8_drawairforceradar_enabled(F):
    b = body(F[PDA], r"drawAirForceRadar\(")
    if not b:
        return False
    for line in b.splitlines():
        s = line.strip()
        if not s or s.startswith("#") or s.startswith("."):
            continue
        return s != "return-void"
    return False


def s9_selfboot(F):
    return 'nABOOT v=r6d184' in F[DIAG]


CHECKS = [
    ("S1", "tickAll：AAA 判据 + 发数=阵地数 + 不含雷达许可（D1 已废止）", s1_tickall),
    ("S2", "inRange：300 / +150 / AirLat.hit / 同省直通", s2_inrange),
    ("S3", "D4 红圈块：radarFill + AirLat.f + 红参数", s3_d4),
    ("S4", "D4 块不碰 v0(迭代器)/v6(汇合点后在用)", s4_d4_regs),
    ("S5", "D4 块位于 :goto_101 之后", s5_d4_after_goto),
    ("S6", "不变量：命中0.5/伤害3.0/pickTarget if-eq/AirLat唯一纬度入口", s6_invariants),
    ("S7", "本批修复：RadarBitmap 剖面1.0f + alpha0.2f + 浅蓝填充", s7_radarbitmap),
    ("S8", "本批修复：drawAirForceRadar 未被禁用", s8_drawairforceradar_enabled),
    ("S9", "自证串 nABOOT v=r6d184", s9_selfboot),
]


# ------------------------------------------------------------------ 负样本
def sub_in_body(text, header_re, old, new, count=1):
    m = re.search(r"(?m)^\.method[^\n]*" + header_re + r"[^\n]*\n([\s\S]*?)^\.end method", text)
    if not m:
        return text
    b = m.group(1)
    nb = b.replace(old, new, count)
    return text[:m.start(1)] + nb + text[m.end(1):]


def neg_radarbitmap_K(F):
    F[RB] = sub_in_body(F[RB], r"drawRadarEllipse\(", "0x3f800000", "0x3e23d70a")


def neg_disable_dar(F):
    F[PDA] = sub_in_body(F[PDA], r"drawAirForceRadar\(",
                         "const/16 v0, 0x302", "return-void\n    const/16 v0, 0x302")


def neg_inrange_bare_circle(F):
    F[AD] = sub_in_body(F[AD], r"inRange\(", "AirLat;->hit(IIII)Z", "AirLat;->r(II)I")


def neg_d4_clobber_v0(F):
    d = d4_block(F[PDA])
    if not d:
        return
    m = re.search(r"(?m)^\s*#\s*---\s*r6d18\d\s+D4[^\n]*\n", d)
    ins = d[:m.end()] + "    move-object v0, v7\n" + d[m.end():]
    F[PDA] = F[PDA].replace(d, ins)


def neg_picktarget_polarity(F):
    F[AD] = sub_in_body(F[AD], r"pickTarget\(", "if-eq v1, p2, :found", "if-ne v1, p2, :found")


def neg_selfboot(F):
    F[DIAG] = F[DIAG].replace("nABOOT v=r6d184", "nABOOT v=r6d182")


NEGS = [
    ("N1 S7", "把 RadarBitmap 剖面常数改回 0.16f（=装机版那处 bug）", neg_radarbitmap_K, "S7"),
    ("N2 S8", "把 drawAirForceRadar 禁用（装机版那处改动）", neg_disable_dar, "S8"),
    ("N3 S2", "把 inRange 的 AirLat.hit 换掉（退回非纬度口径）", neg_inrange_bare_circle, "S2"),
    ("N4 S4", "在 D4 块里覆盖 v0（迭代器）", neg_d4_clobber_v0, "S4"),
    ("N5 S6", "把 pickTarget 极性改回 if-ne（r6d180 血案）", neg_picktarget_polarity, "S6"),
    ("N6 S9", "自证串改回 r6d182", neg_selfboot, "S9"),
]


def load(root):
    F = {}
    for rel in (AD, PDA, DIAG, RB):
        p = os.path.join(root, rel.replace("/", os.sep))
        if not os.path.isfile(p):
            print("!! 文件不存在: %s" % p)
            sys.exit(3)
        with open(p, "rb") as f:
            F[rel] = f.read().decode("utf-8").replace("\r\n", "\n")
    return F


def run_checks(F):
    fails = []
    for cid, desc, fn in CHECKS:
        ok = False
        try:
            ok = bool(fn(F))
        except Exception as e:
            print("   [ERR] %-4s %s (%s)" % (cid, desc, e))
        print("   [%s] %-4s %s" % ("PASS" if ok else "FAIL", cid, desc))
        if not ok:
            fails.append(cid)
    return fails


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    root = sys.argv[1]
    selftest = "--selftest" in sys.argv
    print("=== 正检 ===")
    base = load(root)
    fails = run_checks(base)
    print("   正检失败数: %d" % len(fails))
    bad = 0
    if selftest:
        print("=== 负样本自检 ===")
        for nid, desc, mutate, target in NEGS:
            F = load(root)
            mutate(F)
            got = [cid for cid, d, fn in CHECKS if not bool(fn(F))]
            ok = target in got
            print("   [%s] %-4s 目标 %s / 实际变红 %s  (%s)"
                  % ("OK" if ok else "MISS", nid, target, ",".join(got) or "无", desc))
            if not ok:
                bad += 1
        print("   负样本未按预期变红数: %d" % bad)
    return 1 if (fails or bad) else 0


if __name__ == "__main__":
    sys.exit(main())
