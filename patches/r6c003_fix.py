# -*- coding: utf-8 -*-
# r6c003_fix.py —— 修「串机场/不起飞」根因 + 两按钮互不干扰
#   FIX-1 pickAirport：iActiveID 范围判断 if-lt → if-ge（有效下标被跳过）
#   FIX-2 a1MemIdx 记忆分支：从 return 之后（死码）移到 iActiveID 分支之前
#   FIX-3 打击按钮：不再改 mode / 不再 stopAirportPatrols（恢复两按钮互不干扰）
import re, sys
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
OPT = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;'
def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(BTN)
    if 'r6c003' in s:
        print('[SKIP] 已修'); return True
    # ---------- FIX-1 ----------
    old1 = '    if-lt v4, v2, :cond_26\n'
    assert s.count(old1) == 1, 'FIX-1 锚点=%d' % s.count(old1)
    s = s.replace(old1, '    if-ge v4, v2, :cond_26   # r6c003：下标 ≥ 列表长度才跳过（原 if-lt=有效下标被跳过）\n', 1)
    print('  [OK] FIX-1 iActiveID 范围判断')
    # ---------- FIX-2：把记忆分支移到 iActiveID 之前，失败落回 iActiveID ----------
    mem_block = ('    # r5c046z3: 面板记忆（点行选中的机场下标），优先于"当前省"等兜底\n'
                 '    sget v4, ' + OPT + '->a1MemIdx:I\n'
                 '    if-ltz v4, :cond_26\n'
                 '    if-ge v4, v2, :cond_26\n'
                 '    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
                 '    move-result-object v5\n'
                 '    check-cast v5, Laoc/kingdoms/lukasz/map/battles/Airport;\n'
                 '    const/4 v6, 0x5\n'
                 '    goto :goto_48\n')
    assert s.count(mem_block) == 1, 'FIX-2 记忆块锚点=%d' % s.count(mem_block)
    s = s.replace(mem_block, '', 1)
    mem_new = ('    # r6c003 面板记忆（点行选中的机场）——优先于引擎选中态；未命中则落到下面的 iActiveID 分支\n'
               '    sget v4, ' + OPT + '->a1MemIdx:I\n'
               '    if-ltz v4, :z_ik_id\n'
               '    if-ge v4, v2, :z_ik_id\n'
               '    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
               '    move-result-object v5\n'
               '    check-cast v5, Laoc/kingdoms/lukasz/map/battles/Airport;\n'
               '    const/4 v6, 0x5\n'
               '    goto :goto_48\n'
               '    :z_ik_id\n')
    anchor2 = '    sget v4, ' + OPT + '->iActiveID:I\n'
    assert s.count(anchor2) == 1, 'FIX-2 iActiveID 锚点=%d' % s.count(anchor2)
    s = s.replace(anchor2, mem_new + anchor2, 1)
    print('  [OK] FIX-2 记忆分支前置（可达）')
    # ---------- FIX-3：打击分支不再动 mode / 不停巡逻 ----------
    old3_re = re.compile(
        r'[ \t]*sget-object v2, Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;\s*'
        r'iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;\s*'
        r'invoke-static \{\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance\(\)Laoc/kingdoms/lukasz/map/battles/AirForceManager;\s*'
        r'move-result-object v2\s*'
        r'if-eqz v2, :cond_76\s*'
        r'iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\s*'
        r'invoke-virtual \{v2, v3\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->stopAirportPatrols\(I\)I\s*'
        r':cond_76\n')
    assert len(old3_re.findall(s)) == 1, 'FIX-3 锚点=%d' % len(old3_re.findall(s))
    s = old3_re.sub('    # r6c003：打击开关只改 autoStrikeOff，不再动 mode / 不再停巡逻（两按钮互不干扰）\n'
                    '    goto :cond_76\n'
                    '    :cond_76\n', s, count=1)
    print('  [OK] FIX-3 打击分支解耦')
    s = s.replace('.method public static pickAirport(I)', '.method public static pickAirport(I)   # r6c003', 1)
    wr(BTN, s)
    return True

def gate():
    fails = []
    s = rd(BTN)
    m = re.search(r'\.method public static pickAirport\(I\)[\s\S]*?\.end method', s)
    b = m.group(0) if m else ''
    if not b: fails.append('57-1 pickAirport 缺失')
    else:
        if re.search(r'if-lt v4, v2, :cond_26', b): fails.append('57-1 iActiveID 范围判断仍是 if-lt（反）')
        if not re.search(r'if-ge v4, v2, :cond_26', b): fails.append('57-1 缺少 if-ge v4, v2, :cond_26')
        i_mem = b.find('a1MemIdx')
        i_id = b.find('iActiveID')
        i_ret = b.find('return-object v4')
        if i_mem < 0: fails.append('57-2 记忆分支缺失')
        elif i_id > 0 and i_mem > i_id: fails.append('57-2 记忆分支未前置（应在 iActiveID 之前）')
        if i_ret > 0 and i_mem > i_ret: fails.append('57-2 记忆分支仍在 return 之后（死码）')
        if ':z_ik_id' not in b: fails.append('57-2 缺 :z_ik_id 回退标签')
    # 57-3 打击分支解耦
    mt1 = re.search(r'if-ne v1, v2, :cond_76[\s\S]{0,900}?:cond_76', s)
    seg = mt1.group(0) if mt1 else ''
    if not seg: fails.append('57-3 找不到打击分支段')
    else:
        if 'Mode;->OFFENSIVE' in seg: fails.append('57-3 打击分支仍在写 mode=OFFENSIVE')
        if 'stopAirportPatrols' in seg: fails.append('57-3 打击分支仍调用 stopAirportPatrols')
        if 'autoStrikeOff' not in seg: fails.append('57-3 打击分支未再切换 autoStrikeOff（改坏了）')
    neg = 0
    if re.search(r'if-lt v4, v2, :cond_26', 'if-lt v4, v2, :cond_26'): neg += 1
    if re.search(r'return-object v4[\s\S]{0,400}a1MemIdx', 'return-object v4\n .... a1MemIdx'): neg += 1
    if re.search(r'Mode;->OFFENSIVE', 'iput-object v2, v0, Airport;->mode:  # Mode;->OFFENSIVE'): neg += 1
    print('== 门禁 57 ==')
    print('  负样本捕获：%d/3' % neg)
    if neg != 3: fails.append('57 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：')
        for f in fails: print('    - ' + f)
        return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': sys.exit(0 if patch() else 1)
    else: sys.exit(0 if gate() else 1)