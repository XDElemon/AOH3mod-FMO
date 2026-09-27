# -*- coding: utf-8 -*-
# r6c001_b1b.py —— B1 第二半：strikeScore（三档+钳位）挂进 pickStrikeTargetP + BOMBER 情报门
#   用法: python3 r6c001_b1b.py patch | gate
import re, os, sys
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
VB = '/sdcard/GLG/历史23/r6s5/phaseB_verbatim2/'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AIRTYPE = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'

def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

def norm_smali(body):
    """逐字件规范化：把 `op {a, b}` / `op {a}` 这类非法花括号写法转成 smali 标准写法
       （只处理非 invoke 指令；invoke 的花括号列表是合法的）"""
    out = []
    for line in body.split('\n'):
        m = re.match(r'^(\s*)([a-z][\w/\-]*)\s*\{([^}]*)\}(.*)$', line)
        if m and not m.group(2).startswith('invoke') and not m.group(2).startswith('filled-new-array'):
            op, args, tail = m.group(2), m.group(3), m.group(4)
            args = ', '.join(a.strip() for a in args.split(','))
            out.append('%s%s %s%s' % (m.group(1), op, args, tail))
        else:
            out.append(line)
    return '\n'.join(out)

def score_body():
    """strikeScore 逐字件（r4c186）+ r4c190 距离钳位（插在攻机短路之后）"""
    s = rd(VB + 'strikeScore__r4c186_tier.txt')
    m = re.search(r'\.method[^\n]*strikeScore[^\n]*\n[\s\S]*?\.end method', s)
    assert m, 'strikeScore 逐字件缺失'
    body = norm_smali(m.group(0))
    anchor = '    if-ne v11, v7, :ss_ret_dist\n'
    assert body.count(anchor) == 1
    clamp = (anchor +
             '    # R4c190：打分距离钳位到 1000.0f（保证 tier1 < tier2 < tier3 绝对分离）\n'
             '    const v3, 0x447a0000    # 1000.0f\n'
             '    cmpg-float v7, v0, v3\n'
             '    if-lez v7, :ss_noclamp\n'
             '    move v0, v3\n'
             '    :ss_noclamp\n')
    return body.replace(anchor, clamp, 1)

def patch():
    s = rd(AFM)
    if 'strikeScore' in s:
        print('[SKIP] strikeScore 已在'); return True
    # ---------- ① 追加 strikeScore ----------
    s = s.rstrip('\n') + '\n\n' + score_body() + '\n'
    # ---------- ② 距离 → 评分 ----------
    old_dist = ('    invoke-direct {p0, v1, v7}, ' + CLS + '->provinceDistance(II)F\n'
                '    move-result v9\n')
    assert s.count(old_dist) == 1, '距离调用锚点 count=%d' % s.count(old_dist)
    new_dist = ('    # B1：评分（越小越优先）。mode=1 → 轰炸机（三档）；否则 → 纯距离\n'
                '    sget-object v10, ' + AIRTYPE + '->BOMBER:' + AIRTYPE + '\n'
                '    if-ne p2, v10, :b1_att\n'
                '    const/4 v10, 0x1\n'
                '    goto :b1_sc\n'
                '    :b1_att\n'
                '    const/4 v10, 0x0\n'
                '    :b1_sc\n'
                '    invoke-direct {p0, v7, p1, v10}, ' + CLS + '->strikeScore(I' +
                'Laoc/kingdoms/lukasz/map/battles/Airport;I)F\n'
                '    move-result v9\n')
    s = s.replace(old_dist, new_dist, 1)
    # ---------- ③ BOMBER 情报门（插在去重调用之前；仅轰炸机） ----------
    dedupe = ('    invoke-virtual {p0, v7, p2}, ' + CLS +
              '->hasStrikeInFlightP(I' + AIRTYPE + ')Z\n')
    assert s.count(dedupe) == 1, '去重锚点 count=%d' % s.count(dedupe)
    ik = ('    # B1：情报门（仅轰炸机）—— 无军事迹象的省不打\n'
          '    sget-object v10, ' + AIRTYPE + '->BOMBER:' + AIRTYPE + '\n'
          '    if-ne p2, v10, :b1_ik_ok\n'
          '    invoke-static {v7}, ' + CLS + '->hasMilitaryBuilding(I)Z\n'
          '    move-result v10\n'
          '    if-nez v10, :pst_loop\n'
          '    :b1_ik_ok\n')
    s = s.replace(dedupe, ik + dedupe, 1)
    wr(AFM, s)
    print('[OK] B1 第二半：strikeScore + 评分挂载 + BOMBER 情报门')
    return True

def gate():
    fails = []
    s = rd(AFM)
    m = re.search(r'\.method[^\n]*strikeScore[\s\S]*?\.end method', s)
    if not m: fails.append('53-1 strikeScore 缺失')
    else:
        b = m.group(0)
        if ':ss_noclamp' not in b or '0x447a0000' not in b: fails.append('53-2 缺距离钳位 1000')
        if '0x47c35000' not in b: fails.append('53-3 缺 tier 常量 100000')
        # 军事档：hasMilitaryBuilding 为真 → tier2（即 if-nez v1, :ss_t2 之后才是军事分支）
        if not re.search(r'hasMilitaryBuilding\(I\)Z\s*\n\s*move-result v1\s*\n\s*if-nez v1, :ss_econ', b):
            fails.append('53-4 军事档极性/结构不对（应 hasMilitaryBuilding!=0 走 tier2）')
        if not re.search(r'provinceHasAirport\(I\)Z\s*\n\s*move-result v1\s*\n\s*if-nez v1, :ss_t2', b):
            fails.append('53-5 机场档结构不对（应 provinceHasAirport!=0 走 tier1）')
    t = re.search(r'\.method[^\n]*pickStrikeTargetP[\s\S]*?\.end method', s)
    if not t: fails.append('53-6 pickStrikeTargetP 缺失')
    else:
        b = t.group(0)
        if 'strikeScore(I' not in b: fails.append('53-6 未挂 strikeScore')
        if re.search(r'invoke-direct \{p0, v\d+, v\d+\}, [^\n]*->provinceDistance\(II\)F', b):
            fails.append('53-6 仍残留纯距离调用指令')
        if not re.search(r'if-gez v8, :pst_loop', b): fails.append('53-7 选择方向被破坏（应保留最小分 if-gez）')
        if 'hasMilitaryBuilding(I)Z' not in b: fails.append('53-8 BOMBER 情报门未挂')
    # 负样本
    neg = 0
    if re.search(r'if-nez v1, :ss_econ', 'if-nez v1, :ss_econ'): neg += 1
    if re.search(r':ss_noclamp', ':ss_noclamp'): neg += 1
    if re.search(r'if-gez v8, :pst_loop', 'if-gez v8, :pst_loop'): neg += 1
    print('== 门禁 53 ==')
    print('  负样本捕获：%d/3' % neg)
    if neg != 3: fails.append('53 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': sys.exit(0 if patch() else 1)
    else: sys.exit(0 if gate() else 1)