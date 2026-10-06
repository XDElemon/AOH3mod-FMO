#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d175.py —— 语义门禁：纬度口径=判定跟随圈
血案教训：文本断言会与实现“同错” ⇒ 本门禁只查“分支与标签的先后/极性”，并提供 3 个负样本自检。
"""
import io, sys

SM = "/tmp/w3a/smali"
FOG = SM + "/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali"
LAT = SM + "/aoc/kingdoms/lukasz/map/battles/AirLat.smali"
PDA = SM + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
RBM = SM + "/aoc/kingdoms/lukasz/map/province/RadarBitmap.smali"

def rd(p): return io.open(p, encoding='utf-8').read()

def checks(fog, lat, pda, rbm):
    r = []
    # S1
    n = fog.count("AirLat;->r(II)I")
    r.append(("S1 AirLat.r 调用数==2", n == 2, "n=%d" % n))
    # S2 雷达分支：口径已改（r 在场）；极性**保持 v119 原样**（本批不改语义）
    i = fog.find("if-eqz v0, :goto_b2")
    near = fog[max(0, i-900):i]
    s2a = "AirLat;->r(II)I" in near and "calcInEllipse(IIII)Z" in near
    s2b = ("goto/16 :cond_165" in fog) and ("if-nez v0, :cond_165" not in fog)
    r.append(("S2 雷达分支口径已改(r+calcInEllipse)", s2a, "near_r=%s" % s2a))
    r.append(("S2b 极性=圈内才标记(裁定A)", s2b, ""))
    # S4 机场分支：椭圆口径（r() + cosK）；禁止旧裸圆
    s4a = "invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcCosK(I)I" in fog
    seq_air = "calcInEllipse(IIII)Z" + "\n\n    move-result v0\n\n    if-eqz v0, :cond_168"
    s4b = seq_air in fog
    s4c = "if-le v0, v6, :cond_168" not in fog
    r.append(("S4 机场分支改椭圆口径(r+cosK)", s4a and s4b, "cosK=%s pair=%s" % (s4a, s4b)))
    r.append(("S4b 禁止旧裸圆形态", s4c, ""))
    # S5 AirLat 内容
    s5 = all(x in lat for x in ('.method public static f(I)F', '.method public static r(II)I',
                                '0x45866000', '0x3fc90fdb', '0x3e800000', '0x3f800000'))
    r.append(("S5 AirLat 唯一入口完整", s5, ""))
    # S6 渲染 4 处未被改动（圈不变）
    s6a = pda.count("sub-int v11, v5, v6") >= 1
    s6b = pda.count("sub-int v11, v5, v2") >= 1
    s6c = rbm.count("mul-float v12, v12, v14") == 1
    r.append(("S6 渲染 R1/R2/R3 未动(圏不变)", s6a and s6b and s6c, "R1=%s R2=%s R3=%s" % (s6a, s6b, s6c)))
    return r

def run(label, fog, lat, pda, rbm, expect_fail):
    print("=== %s ===" % label)
    rs = checks(fog, lat, pda, rbm)
    bad = 0
    for nm, ok, extra in rs:
        print(("  ✅ " if ok else "  ❌ ") + nm + (("  " + extra) if extra else ""))
        if not ok: bad += 1
    print("  -> 失败项=%d" % bad)
    if expect_fail:
        print("  ✅ 负样本按预期变红" if bad > 0 else "  ❌ 负样本未变红（门禁无效）")
        return bad > 0
    return bad == 0

fog, lat, pda, rbm = rd(FOG), rd(LAT), rd(PDA), rd(RBM)
ok = run("正检（当前工作树）", fog, lat, pda, rbm, False)

# ---- 负样本（反转敏感性） ----
bad1 = fog.replace("if-eqz v0, :goto_b2", "if-nez v0, :cond_165", 1)
ok &= run("N1 把极性改回去（裁定A被推翻）", bad1, lat, pda, rbm, True)

bad2 = fog.replace("    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I\n\n    move-result v6\n", "", 1)
ok &= run("N2 抽掉雷达分支的 r()（口径丢失）", bad2, lat, pda, rbm, True)

bad3 = fog.replace("    if-eqz v0, :cond_168\n\n    goto :goto_131", "    mul-int v6, v6, v6\n\n    if-le v0, v6, :cond_168\n\n    goto :goto_131", 1)
ok &= run("N3 机场分支退回裸圆", bad3, lat, pda, rbm, True)

print()
print("\u2705 门禁全部通过（含 3 个负样本）" if ok else "\u274c 门禁存在失败")
sys.exit(0 if ok else 1)
