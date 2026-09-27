# -*- coding: utf-8 -*-
# r6c003b —— 最小修复：FIX-1（iActiveID 范围判断）+ FIX-3（打击按钮解耦）
import re, sys
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(BTN)
    if 'r6c003' in s:
        print('[SKIP] 已修'); return True
    # FIX-1
    old1 = '    if-lt v4, v2, :cond_26\n'
    assert s.count(old1) == 1, 'FIX-1 锚点=%d' % s.count(old1)
    s = s.replace(old1, '    if-ge v4, v2, :cond_26   # r6c003：下标 ≥ 长度才跳过（原 if-lt ⇒ 有效下标被跳过）\n', 1)
    print('  [OK] FIX-1 iActiveID 范围判断 if-lt → if-ge')
    # FIX-3
    pat = re.compile(
        r'[ \t]*sget-object v2, Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;\s*'
        r'iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport\$Mode;\s*'
        r'invoke-static \{\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance\(\)Laoc/kingdoms/lukasz/map/battles/AirForceManager;\s*'
        r'move-result-object v2\s*if-eqz v2, :cond_76\s*'
        r'iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\s*'
        r'invoke-virtual \{v2, v3\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->stopAirportPatrols\(I\)I\s*')
    # 只改“打击开关”分支里的那段：定位 autoStrikeOff 切换之后
    idx = s.find('xor-int/lit8 v2, v2, 0x1')
    assert idx > 0, 'FIX-3 找不到打击开关切换点'
    head, tail = s[:idx], s[idx:]
    assert len(pat.findall(tail)) == 1, 'FIX-3 打击分支锚点=%d' % len(pat.findall(tail))
    tail = pat.sub('    # r6c003：打击开关只改 autoStrikeOff，不再动 mode / 不再停巡逻（两按钮互不干扰）\n', tail, count=1)
    s = head + tail
    print('  [OK] FIX-3 打击分支解耦（mode/stopAirportPatrols 已移除）')
    s = s.replace('.method public static pickAirport(I)', '.method public static pickAirport(I)   # r6c003', 1)
    wr(BTN, s)
    return True

def gate():
    fails = []
    s = rd(BTN)
    b = re.search(r'\.method public static pickAirport\(I\)[\s\S]*?\.end method', s).group(0)
    if 'if-lt v4, v2, :cond_26' in b: fails.append('57-1 仍是 if-lt（反）')
    if 'if-ge v4, v2, :cond_26' not in b: fails.append('57-1 缺 if-ge v4, v2, :cond_26')
    seg = re.search(r'if-ne v1, v2, :cond_76[\s\S]{0,600}?:cond_76', s)
    if not seg: fails.append('57-3 找不到打击分支')
    else:
        t = seg.group(0)
        if 'Mode;->OFFENSIVE' in t: fails.append('57-3 打击分支仍写 mode')
        if 'stopAirportPatrols' in t: fails.append('57-3 打击分支仍停巡逻')
        if 'autoStrikeOff' not in t: fails.append('57-3 打击分支未切换 autoStrikeOff')
    neg = 0
    if re.search(r'if-lt v4, v2, :cond_26', 'if-lt v4, v2, :cond_26'): neg += 1
    if re.search(r'Mode;->OFFENSIVE', 'x Mode;->OFFENSIVE x'): neg += 1
    if re.search(r'stopAirportPatrols', 'invoke stopAirportPatrols(I)I'): neg += 1
    print('== 门禁 57 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('57 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': sys.exit(0 if patch() else 1)
    else: sys.exit(0 if gate() else 1)