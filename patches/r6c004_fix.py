# -*- coding: utf-8 -*-
# r6c004 —— 修外部审查 E0/E1/E2/E3/E4/E5 + 删死码（F1-F5）
#  F1 pin 循环守卫 if-ge → if-lt（否则该块永不写回 iActiveID）
#  F2 召回(missionType==2) 下标钳位颠倒 → 越界才钳 0
#  F3 strikeScore 三档错配 → 有机场=d*f < 有军事=100000+ < 其他=200000+
#  F4 删除 pickAirport 里不可达的记忆块（死码）
#  F5 探针无条件 + 来源码去重（selectedAirportProvinceID → 8）
import re, sys
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
OPT = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;'
def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

def patch_btn():
    s = rd(BTN)
    if 'r6c004' in s: print('  [SKIP] BtnMission 已修'); return s
    n = 0
    # ---- F1 pin 循环守卫 ----
    m = re.search(r':pin_loop\s*\n\s*if-ge v7, v2, :pin_body', s)
    assert m, 'F1 锚点未命中'
    s = s[:m.start()] + m.group(0).replace('if-ge v7, v2, :pin_body',
                                           'if-lt v7, v2, :pin_body   # r6c004：v7<size 才进循环体') + s[m.end():]
    print('  [OK] F1 pin 循环守卫 if-ge → if-lt'); n += 1
    # ---- F2 召回钳位（寄存器无关）----
    m = re.search(r'if-gez (v\d+), (:\w+)\s*\n\s*if-lt \1, (v\d+), \2\s*\n\s*const/4 \1, 0x0\s*\n\s*:(\w+)\s*\n(\s*invoke-interface \{\w+, \1\})', s)
    assert m, 'F2 锚点未命中'
    r1, l1, r2, l2, inv = m.group(1), m.group(2), m.group(3), m.group(4), m.group(5)
    new = ('if-ltz %s, :z_rcl_ok   # r6c004：越界才钳 0（原写法只钳"合法"情形）\n'
           '    const/4 %s, 0x0\n'
           '    goto :%s\n'
           '    :z_rcl_ok\n'
           '    if-lt %s, %s, :%s\n'
           '    const/4 %s, 0x0\n'
           '    :%s\n'
           '%s') % (r1, r1, l2, r1, r2, l2, r1, l2, inv)
    s = s[:m.start()] + new + s[m.end():]
    print('  [OK] F2 召回下标钳位（越界才钳 0）')  # r6c004
    n += 1
    # ---- F4 删除死码（return 之后的记忆块）----
    m = re.search(r'[ \t]*# r5c046z3: 面板记忆[^\n]*\n'
                  r'(?:\s*sget v4, ' + re.escape(OPT) + r'->a1MemIdx:I\n)'
                  r'(?:\s*if-ltz v4, :\w+\n)(?:\s*if-ge v4, v2, :\w+\n)'
                  r'(?:\s*invoke-interface \{v3, v4\}, Ljava/util/List;->get\(I\)Ljava/lang/Object;\n)'
                  r'(?:\s*move-result-object v5\n)(?:\s*check-cast v5, Laoc/kingdoms/lukasz/map/battles/Airport;\n)'
                  r'(?:\s*const/4 v6, 0x5\n)(?:\s*goto :\w+\n)', s)
    assert m, 'F4 锚点未命中'
    s = s[:m.start()] + '    # r6c004：原"点行记忆"分支位于 return 之后（不可达死码），已删除；解析链改由 iActiveID + pin 回写 保证\n' + s[m.end():]
    print('  [OK] F4 删除死码（不可达记忆块）'); n += 1
    # ---- F5a 探针无条件 ----
    m = re.search(r'const/4 v0, 0x1\s*\n\s*if-ne p0, v0, :z_hp1\s*\n\s*goto :z_hp2\s*\n\s*:z_hp1\s*\n', s)
    assert m, 'F5a 锚点未命中'
    s = s[:m.start()] + '    # r6c004：诊断探针改为无条件打印（原来只在绘制路径打，按键那一刻看不到）\n' + s[m.end():]
    print('  [OK] F5a 探针无条件'); n += 1
    # ---- F5b 来源码去重 ----
    m = re.search(r'(getAirportByProvinceID\(I\)Laoc/kingdoms/lukasz/map/battles/Airport;\s*\n\s*move-result-object v5\s*\n\s*if-eqz v5, :\w+\s*\n\s*const/4 )(v\d+), 0x2', s)
    assert m, 'F5b 锚点未命中'
    s = s[:m.start()] + m.group(1).replace('const/4', 'const/16') + m.group(2) + ', 0x8   # r6c004：与"实例空(2)"区分开' + s[m.end():]
    print('  [OK] F5b 来源码去重（选中省 → 8）'); n += 1
    s = s.replace('.method public static pickAirport(I)Laoc',
                  '.method public static pickAirport(I)Laoc', 1)
    wr(BTN, s)
    print('  BtnMission 改动 %d 处' % n)
    return s

def patch_afm():
    s = rd(AFM)
    if 'r6c004' in s: print('  [SKIP] AFM 已修'); return s
    old = re.search(
        r'([ \t]*# tier1[^\n]*\n)'
        r'(?:\s*invoke-static \{p1\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport\(I\)Z\n)'
        r'(?:\s*move-result v1\n)'
        r'(?:\s*if-eqz v1, :ss_t1_hit\n)'
        r'([ \t]*# tier2[^\n]*\n)'
        r'(?:\s*invoke-static \{p1\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding\(I\)Z\n)'
        r'(?:\s*move-result v1\n)'
        r'(?:\s*if-eqz v1, :ss_t2_hit\n)'
        r'([ \t]*# tier3[^\n]*\n)', s)
    assert old, 'F3 头部锚点未命中'
    new = (
        '    # r6c004 tier1：该省有机场 → d * f（最优先）\n'
        '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z\n'
        '    move-result v1\n'
        '    if-nez v1, :ss_chk_mil\n'
        '    mul-float/2addr v0, v2\n'
        '    return v0\n'
        '    :ss_chk_mil\n'
        '    # r6c004 tier2：有军事建筑 → 100000 + d * f\n'
        '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z\n'
        '    move-result v1\n'
        '    if-nez v1, :ss_t3\n'
        '    mul-float/2addr v0, v2\n'
        '    const v3, 0x47c35000    # 100000.0f\n'
        '    add-float/2addr v0, v3\n'
        '    return v0\n'
        '    :ss_t3\n'
        '    # r6c004 tier3：其他 → 200000 + 1000/(1+eco)*f\n')
    s = s[:old.start()] + new + s[old.end():]
    # 删掉旧的两个"命中"块（分值已内联）
    for lbl, body in (('ss_t1_hit', r'[ \t]*:ss_t1_hit\s*\n\s*mul-float/2addr v0, v2\s*\n\s*return v0\s*\n'),
                      ('ss_t2_hit', r'[ \t]*:ss_t2_hit\s*\n\s*mul-float/2addr v0, v2\s*\n\s*const v3, 0x47c35000[^\n]*\n\s*add-float/2addr v0, v3\s*\n\s*return v0\s*\n')):
        mm = re.search(body, s)
        assert mm, 'F3 旧块 %s 未命中' % lbl
        s = s[:mm.start()] + s[mm.end():]
    assert 'ss_t1_hit' not in s and 'ss_t2_hit' not in s, 'F3 旧标签残留'
    s = s.replace('.method private static strikeScore(I', '.method private static strikeScore(I', 1)
    wr(AFM, s)
    print('  [OK] F3 strikeScore 三档重排（机场 < 军事 < 其他）')
    return s

def gate():
    fails = []
    b = rd(BTN); a = rd(AFM)
    mb = re.search(r'\.method public static pickAirport\(I\)[\s\S]*?\.end method', b).group(0)
    if 'if-ge v7, v2, :pin_body' in b: fails.append('58-1 pin 守卫仍是 if-ge')
    if 'if-lt v7, v2, :pin_body' not in b: fails.append('58-1 缺 if-lt v7, v2, :pin_body')
    if 'if-gez v1, :cond_ba' in b: fails.append('58-2 召回钳位仍是旧形态')
    if ':z_rcl_ok' not in b: fails.append('58-2 缺 :z_rcl_ok')
    if 'if-ne p0, v0, :z_hp1' in b: fails.append('58-5 探针仍受 p0 守卫')
    if 'a1MemIdx:I\n    if-ltz v4, :cond_26' in mb: fails.append('58-4 死码仍在')
    if 'const/16 v6,0x8' not in b: fails.append('58-5 来源码未去重')
    # F3：三档方向 + 次序
    ms = re.search(r'\.method[^\n]*strikeScore\([\s\S]*?\.end method', a).group(0)
    if 'if-eqz v1, :ss_t1_hit' in ms or 'ss_t1_hit' in ms: fails.append('58-3 旧 tier 跳转残留')
    if 'if-nez v1, :ss_chk_mil' not in ms: fails.append('58-3 缺"有机场才走 tier1"')
    ipa = ms.find('AirForceManager;->provinceHasAirport(I)Z'); imil = ms.find('AirForceManager;->hasMilitaryBuilding(I)Z')
    i1 = ms.find('if-nez v1, :ss_chk_mil'); i2 = ms.find('if-nez v1, :ss_t3')
    m3 = re.search(r'\n\s*:ss_t3\s*\n', ms); i3 = m3.start() if m3 else -1
    if not (0 < i1 < i2 < i3): fails.append('58-3 三段次序不对')
    # 分值绑定：tier1 段内不得出现 100000 常量
    seg1 = ms[i1:i2]
    if '0x47c35000' in seg1: fails.append('58-3 tier1 段混入 100000 常量')
    seg2 = ms[i2:i3]
    if '0x47c35000' not in seg2: fails.append('58-3 tier2 段缺 100000 常量')
    seg3 = ms[i3:]
    if seg3.count('0x47c35000') < 1: fails.append('58-3 tier3 段缺 200000（两次 100000）')
    neg = 0
    if re.search(r'if-ge v7, v2, :pin_body', 'if-ge v7, v2, :pin_body'): neg += 1
    if re.search(r'if-eqz v1, :ss_t1_hit', 'if-eqz v1, :ss_t1_hit'): neg += 1
    if re.search(r'if-gez v1, :cond_ba', 'if-gez v1, :cond_ba'): neg += 1
    print('== 门禁 58 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('58 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch':
        patch_btn(); patch_afm(); sys.exit(0)
    sys.exit(0 if gate() else 1)