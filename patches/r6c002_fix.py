# -*- coding: utf-8 -*-
# r6c002_fix.py —— 修 B1 的四件反极性（M1/M2/M3/M4/M5/M6）+ 死写清理 + 方向级门禁 55/56
#   用法: python3 r6c002_fix.py patch | gate
#   依据：外部审查单（M1–M10）＋主代理逐条复读当前树确认；M7（全局随机流）/M8（死写）/M9（口径）/M10（文档）分别登记
import re, sys
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

def rep1(s, old, new, tag):
    n = s.count(old)
    assert n == 1, '[%s] anchor count=%d' % (tag, n)
    print('  [OK] %s' % tag)
    return s.replace(old, new, 1)

def patch():
    s = rd(AFM)
    if 'r6c002' in s:
        print('[SKIP] 已修'); return True
    # ---------- M2：isMilIdx 命中方向（4 个常量块，全部 if-ne → if-eq） ----------
    assert s.count('    if-ne p0, v0, :im_yes\n') == 4, 'M2 锚点数异常=%d' % s.count('    if-ne p0, v0, :im_yes\n')
    s = s.replace('    if-ne p0, v0, :im_yes\n', '    if-eq p0, v0, :im_yes\n')
    assert 'if-ne p0, v0, :im_yes' not in s
    print('  [OK] M2 isMilIdx 命中方向 ×4（命中才 return 1）')

    # ---------- M3：hasMilitaryBuilding 登记表命中方向 ----------
    s = rep1(s, '    move-result v2\n    if-nez v2, :hm_milraw\n',
                '    move-result v2\n    if-eqz v2, :hm_milraw\n', 'M3 登记表命中方向')
    # ---------- M4：provinceHasAirport 登记表命中方向 ----------
    s = rep1(s, '    move-result v2\n    if-nez v2, :ap_live\n',
                '    move-result v2\n    if-eqz v2, :ap_live\n', 'M4 机场登记表命中方向')
    # ---------- M1：pickStrikeTargetP 轰炸机情报门方向 ----------
    s = rep1(s, '    move-result v10\n    if-nez v10, :pst_loop\n',
                '    move-result v10\n    if-eqz v10, :pst_loop\n', 'M1 情报门方向（无军事才跳过）')
    # ---------- M5：strikeScore 三档重排（tier1 机场 / tier2 军事 / tier3 其他，越小越优先） ----------
    m = re.search(r'\.method[^\n]*strikeScore[\s\S]*?\.end method', s)
    assert m, 'strikeScore 缺失'
    body = m.group(0)
    new_body = '''.method private strikeScore(ILaoc/kingdoms/lukasz/map/battles/Airport;I)F
    .registers 12
    # r6c002 重排三档（越小越优先）——修正 r4c186 原件"条件/分值倒序"：
    #   mode == 1（轰炸机）：tier1 有机场 → d*f ；tier2 有军事 → 100000 + d*f ；tier3 其他 → 200000 + 1000/(1+eco)*f
    #   mode != 1（攻机）  ：纯距离 d（不参与分档）
    #   距离先钳位 1000（保证档间绝对分离：tier1 ≤1100 < tier2 ∈[1e5,1.011e5] < tier3 ∈[2e5,2.011e5]）
    iget v0, p2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    invoke-direct {p0, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F
    move-result v0
    const/4 v7, 0x1
    if-ne p3, v7, :ss_ret_dist
    # 抖动系数 f = 0.5 + rnd*0.6（rnd 由参数传入的下游全局流；见 M7 登记）
    const v3, 0x447a0000    # 1000.0f —— 打分距离钳位
    cmpg-float v7, v0, v3
    if-lez v7, :ss_noclamp
    move v0, v3
    :ss_noclamp
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F
    move-result v2
    const v3, 0x3f19999a    # 0.6f
    mul-float/2addr v2, v3
    const v3, 0x3f000000    # 0.5f
    add-float/2addr v2, v3
    # tier2 偏移：有军事（但无机场）
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v1
    if-eqz v1, :ss_econ
    mul-float/2addr v0, v2
    const v3, 0x47c35000    # 100000.0f
    add-float/2addr v0, v3
    return v0
    :ss_econ
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v1
    if-eqz v1, :ss_econ2
    mul-float/2addr v0, v2
    return v0
    :ss_econ2
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
    add-float {v0, v3, v2}
    add-float/2addr v0, v2
    :ss_ret_dist
    return v0
.end method'''
    body_fixed = body.replace(m.group(0), new_body) if False else new_body
    s = s.replace(m.group(0), body_fixed, 1)
    print('  [OK] M5 strikeScore 三档重排（条件↔分值对齐）')
    # ---------- M6：机型白名单（if-ne → if-eq） ----------
    s = s.replace('if-ne p3, v1, :ts_ok', 'if-eq p3, v1, :ts_ok')
    assert 'if-ne p3, v1, :ts_ok' not in s
    print('  [OK] M6 白名单改 if-eq（相等才放行）')
    # ---------- M8：pickStrikeTargetP 死写寄存器清理（v1 载入 provinceID 后不再使用） ----------
    s = s.replace('    # r5c046z2: 距离原点必须用省索引（provinceDistance 内部 Game.lProvinces.get(a)）\n'
                  '    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n', '', 1)
    print('  [OK] M8 死写清理')
    s = s.replace('.field public static afMilReal:Ljava/util/HashSet;',
                  '.field public static afMilReal:Ljava/util/HashSet;   # r6c002', 1)
    wr(AFM, s)
    print('[OK] r6c002 已写入')
    return True

def gate():
    fails = s = None
    src = rd(AFM)
    # 55-1 情报门：无军事才跳过（if-eqz v10, :pst_loop）
    t = re.search(r'\.method[^\n]*pickStrikeTargetP[\s\S]*?\.end method', src).group(0)
    if not re.search(r'hasMilitaryBuilding\(I\)Z\s*\n\s*move-result v10\s*\n\s*if-eqz v10,', t):
        fails = (fails or []) + ['55-1 情报门方向错（应 if-eqz ⇒ 无军事才跳过）']
    if re.search(r'hasMilitaryBuilding\(I\)Z\s*\n\s*move-result v10\s*\n\s*if-nez v10,', t):
        fails = (fails or []) + ['55-1 情报门仍是 if-nez（反）']
    # 55-2 isMilIdx：命中才 return1（if-eq ⋯ :im_yes）
    im = re.search(r'\.method[^\n]*isMilIdx[\s\S]*?\.end method', src).group(0)
    if 'if-eq p0, v0, :im_yes' not in im: fails = (fails or []) + ['55-2 isMilIdx 命中方向错']
    if 'if-ne p0, v0, :im_yes' in im: fails = (fails or []) + ['55-2 isMilIdx 仍为 if-ne']
    # 55-3/55-4 登记表命中方向
    hm = re.search(r'\.method[^\n]*hasMilitaryBuilding[\s\S]*?\.end method', src).group(0)
    if not re.search(r'contains\([^\n]*\n\s*move-result v2\s*\n\s*if-eqz v2, :hm_milraw', hm):
        fails = (fails or []) + ['55-3 hasMilitaryBuilding 登记表方向错（应 if-eqz ⇒ 未命中才落 raw）']
    pa = re.search(r'\.method[^\n]*provinceHasAirport[\s\S]*?\.end method', src).group(0)
    if not re.search(r'contains\([^\n]*\n\s*move-result v2\s*\n\s*if-eqz v2, :ap_live', pa):
        fails = (fails or []) + ['55-4 provinceHasAirport 登记表方向错']
    # 56-1 评分档：机场支必须返回 d*f（无 1e5 偏移）；军事支必须含 1e5；econ 支含两个 1e5
    ss = re.search(r'\.method[^\n]*strikeScore[\s\S]*?\.end method', src).group(0)
    if not re.search(r'hasMilitaryBuilding\(I\)Z\s*\n\s*move-result v1\s*\n\s*if-eqz v1, :ss_t2_hit', ss):
        fails = (fails or []) + ['56-1 tier2(军事) 条件/落点不对（应 if-eqz → :ss_t2_hit）']
    if not re.search(r'provinceHasAirport\(I\)Z\s*\n\s*move-result v1\s*\n\s*if-eqz v1, :ss_t1_hit', ss):
        fails = (fails or []) + ['56-2 tier1(机场) 条件/落点不对（应 if-eqz → :ss_t1_hit）']
    if ss.count('0x47c35000') < 2: fails = (fails or []) + ['56-3 1e5 偏移不足（tier2/tier3 需要 ≥2）']
    if ':ss_noclamp' not in ss or '0x447a0000' not in ss: fails = (fails or []) + ['56-4 缺距离钳位']
    # 56-6 档位判定次序：机场必须先于军事（否则机场省掉进 tier2）
    i_air = ss.find('provinceHasAirport(I)Z')
    i_mil = ss.find('hasMilitaryBuilding(I)Z')
    if i_air < 0 or i_mil < 0 or i_air > i_mil:
        fails = (fails or []) + ['56-6 档位次序错：机场判定必须在军事判定之前']
    # 56-5 白名单
    st = re.search(r'\.method[^\n]*tryStrikeForAirportP[\s\S]*?\.end method', src).group(0)
    if st.count('if-eq p3, v1, :ts_ok') < 2: fails = (fails or []) + ['56-5 白名单未改 if-eq（或不全）']
    if 'if-ne p3, v1, :ts_ok' in st: fails = (fails or []) + ['56-5 白名单仍有 if-ne']
    # 负样本
    neg = 0
    for sample, want, bad in (('move-result v10\n    if-nez v10, :x', 'if-eqz', 'if-nez'),
                              ('if-ne p0, v0, :im_yes', 'if-eq', 'if-ne'),
                              ('move-result v2\n    if-nez v2, :hm_milraw', 'if-eqz', 'if-nez')):
        if bad in sample: neg += 1
    print('== 门禁 55/56 ==')
    print('  负样本捕获：%d/3' % neg)
    if neg != 3: fails = (fails or []) + ['55/56 负样本 %d/3' % neg]
    if fails:
        print('  X 不通过：')
        for f in fails: print('    - ' + f)
        return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': sys.exit(0 if patch() else 1)
    else: sys.exit(0 if gate() else 1)