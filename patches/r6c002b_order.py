# -*- coding: utf-8 -*-
# r6c002b_order.py —— 修 strikeScore 档位判定次序（机场优先）+ 修正门禁 56-3 阈值 + 加次序断言 56-6
import re, sys
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
GATE = '/sdcard/GLG/历史23/r6c002_fix.py'
def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

NEW_SS = '''.method private strikeScore(ILaoc/kingdoms/lukasz/map/battles/Airport;I)F
    .registers 12
    # r6c002 三档（越小越优先）——次序：先机场(tier1) → 再军事(tier2) → 其余(tier3)
    #   注意：hasMilitaryBuilding 的第三来源是"机场表" ⇒ 若先判军事，机场省会掉进 tier2 ⇒ 必须先判机场
    #   mode != 1（攻机）：纯距离 d
    iget v0, p2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    invoke-direct {p0, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F
    move-result v0
    const/4 v7, 0x1
    if-ne p3, v7, :ss_ret_dist
    # 打分距离钳位 1000（保证档间绝对分离：tier1 ≤1100 < tier2 ∈[1e5,1.011e5] < tier3 ∈[2e5,2.011e5]）
    const v3, 0x447a0000    # 1000.0f
    cmpg-float v7, v0, v3
    if-lez v7, :ss_noclamp
    move v0, v3
    :ss_noclamp
    # 抖动系数 f = 0.5 + rnd*0.6（M7 已登记：当前消耗全局随机流）
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F
    move-result v2
    const v3, 0x3f19999a    # 0.6f
    mul-float/2addr v2, v3
    const v3, 0x3f000000    # 0.5f
    add-float/2addr v2, v3
    # tier1：该省有机场 → d * f
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v1
    if-eqz v1, :ss_t1_hit
    # tier2：该省有军事（其他军事建筑） → 100000 + d * f
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v1
    if-eqz v1, :ss_t2_hit
    # tier3：其他 → 200000 + 1000/(1+eco)*f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v6
    const/4 v4, 0x0
    if-eqz v6, :ss_ec1
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F
    move-result v4
    :ss_ec1
    const v3, 0x447a0000    # 1000.0f
    const/high16 v5, 0x3f800000    # 1.0f
    add-float/2addr v5, v4
    div-float/2addr v3, v5
    mul-float/2addr v3, v2
    const v2, 0x47c35000    # 100000.0f
    add-float/2addr v0, v2
    add-float/2addr v0, v2
    add-float/2addr v0, v3
    :ss_ret_dist
    return v0
    :ss_t1_hit
    mul-float/2addr v0, v2
    return v0
    :ss_t2_hit
    mul-float/2addr v0, v2
    const v3, 0x47c35000    # 100000.0f
    add-float/2addr v0, v3
    return v0
.end method'''

def patch():
    s = rd(AFM)
    m = re.search(r'\.method[^\n]*strikeScore[\s\S]*?\.end method', s)
    assert m, 'strikeScore 缺失'
    s = s.replace(m.group(0), NEW_SS, 1)
    wr(AFM, s)
    print('[OK] strikeScore 次序修正：机场(tier1) → 军事(tier2) → 其余(tier3)')
    # 门禁同步：56-3 阈值 2；新增 56-6 次序断言
    g = rd(GATE)
    g = g.replace("if ss.count('0x47c35000') < 3: fails = (fails or []) + ['56-3 1e5 偏移不足（tier2/tier3 需要）']",
                  "if ss.count('0x47c35000') < 2: fails = (fails or []) + ['56-3 1e5 偏移不足（tier2/tier3 需要 ≥2）']")
    g = g.replace("    # 56-5 白名单",
                  "    # 56-6 档位判定次序：机场必须先于军事（否则机场省掉进 tier2）\n"
                  "    i_air = ss.find('provinceHasAirport(I)Z')\n"
                  "    i_mil = ss.find('hasMilitaryBuilding(I)Z')\n"
                  "    if i_air < 0 or i_mil < 0 or i_air > i_mil:\n"
                  "        fails = (fails or []) + ['56-6 档位次序错：机场判定必须在军事判定之前']\n"
                  "    # 56-5 白名单")
    g = g.replace("""    if not re.search(r'provinceHasAirport\\(I\\)Z\\s*\\n\\s*move-result v1\\s*\\n\\s*if-eqz v1, :ss_econ2', ss):
        fails = (fails or []) + ['56-2 tier1(机场) 条件/落点不对']""",
                  """    if not re.search(r'provinceHasAirport\\(I\\)Z\\s*\\n\\s*move-result v1\\s*\\n\\s*if-eqz v1, :ss_t1_hit', ss):
        fails = (fails or []) + ['56-2 tier1(机场) 条件/落点不对（应 if-eqz → :ss_t1_hit）']""")
    g = g.replace("""    if not re.search(r'hasMilitaryBuilding\\(I\\)Z\\s*\\n\\s*move-result v1\\s*\\n\\s*if-eqz v1, :ss_econ', ss):
        fails = (fails or []) + ['56-1 tier2(军事) 条件/落点不对']""",
                  """    if not re.search(r'hasMilitaryBuilding\\(I\\)Z\\s*\\n\\s*move-result v1\\s*\\n\\s*if-eqz v1, :ss_t2_hit', ss):
        fails = (fails or []) + ['56-1 tier2(军事) 条件/落点不对（应 if-eqz → :ss_t2_hit）']""")
    wr(GATE, g)
    print('[OK] 门禁 56 同步（阈值 2 / 次序断言 56-6 / 新标签）')
    return True

if __name__ == '__main__':
    sys.exit(0 if patch() else 1)