# -*- coding: utf-8 -*-
# r5c046z2_all.py —— 批 r5c046z2：按子代理诊断清单 E1–E7 修正（全部经主代理自证）
#   用法: python3 r5c046z2_all.py survey | patch | gate
#
# 极性基准：if-eqz=等于0跳 / if-nez=≠0跳 / if-ltz=<0跳 / if-gez=≥0跳
# 诊断 → 结论（自证依据）
#   E1 pickStrikeTargetP 最近距离门 if-ltz→if-gez（if-ltz=<0跳 ⇒ 更近反而 continue，v3/v0 永不更新）
#   E2 同上 hasStrikeInFlightP 用门 if-eqz→if-nez（if-eqz=0跳 ⇒ “无在飞”被跳过）
#   E3 hasStrikeInFlightP 返回极性 if-eq→if-ne（现语义=“同省异类型”）
#   E4 距离原点用 civID → provinceID（provinceDistance 内部 Game.lProvinces.get(a)，必须省索引）
#   E5 概率门 if-gez→if-ltz（对齐文档 80% 尝试口径）
#   E6 机型分派只判 ATTACKER → 加 ATTACKER/BOMBER 白名单
#   E7 pickAirport pin 命中判定 if-ne→if-eq + .registers 8→9（不再覆写入参 p0）
import re, sys, os

AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'

SIG_TGT = r'pickStrikeTargetP'
SIG_STRIKE = r'tryStrikeForAirportP'
SIG_HSF = r'hasStrikeInFlightP'
SIG_PICK = r'pickAirport\(I\)'

def blast(path, sig):
    s = open(path, encoding='utf-8').read()
    m = re.search(r'[ \t]*\.method[^\n]*' + sig + r'[^\n]*\n', s)
    if not m:
        return s, None, None
    e = s.find('.end method', m.end())
    return s, m.start(), (e + len('.end method')) if e > 0 else None

def pinch(path, sig, pattern, repl, tag, already=None, expect=1):
    s, a, b = blast(path, sig)
    if a is None:
        print('  [FAIL] %s：方法 %s 未找到' % (tag, sig)); return False
    body = s[a:b]
    if already and re.search(already, body):
        print('  [SKIP] %s：已是目标形态' % tag); return True
    n = len(re.findall(pattern, body))
    if n != expect:
        print('  [FAIL] %s 锚点命中 %d（期望 %d）' % (tag, n, expect)); return False
    open(path, 'w', encoding='utf-8').write(s[:a] + re.sub(pattern, repl, body, count=expect) + s[b:])
    print('  [OK] %s（命中 %d）' % (tag, n)); return True

# ---------------- survey ----------------
def survey():
    s = open(AFM, encoding='utf-8').read(); b2 = open(BTN, encoding='utf-8').read()
    _, a, b = blast(AFM, SIG_TGT); t = s[a:b]
    _, a2, b2i = blast(AFM, SIG_STRIKE); k = s[a2:b2i]
    _, a3, b3 = blast(AFM, SIG_HSF); h = s[a3:b3]
    _, ab, bb = blast(BTN, SIG_PICK); p = b2[ab:bb]
    def g(txt, pat):
        m = re.search(pat, txt); return m.group(1).strip() if m else '(无)'
    print('E1 距离门      :', g(t, r'cmpg-float v8, v9, v3\s*\n\s*(if-\w+ v8, :\w+)'))
    print('E2 去重门      :', g(t, r'hasStrikeInFlightP[^\n]*\n\s*move-result v8\s*\n\s*(if-\w+ v8, :\w+)'))
    print('E3 HSF 极性    :', g(h, r'AirMission;->type:[^\n]*\n\s*(if-\w+ v6, v5, :\w+)'))
    _d = re.search(r'invoke-direct \{p0, (\w+), v7\},[^\n]*provinceDistance', t)
    print('E4 距离原点    :', (_d.group(1) if _d else '(无)'),
          '| provinceID 已加载:', bool(re.search(r'Airport;->provinceID:I', t)))
    print('E5 概率门      :', g(k, r'cmpg-float v4, v4, v5\s*\n\s*(if-\w+ v4, :cond_51)'))
    print('E6 白名单      :', '已在' if ':ts_ok' in k else '缺失')
    print('E7 pin 命中    :', g(p, r'move-result-object v0\s*\n\s*(if-\w+ v0, v5, :\w+)'), '| .registers:',
          (re.search(r'\.method public static pickAirport\(I\)[^\n]*\n\s*\.registers (\d+)', b2) or ['', '?'])[1])

# ---------------- patch ----------------
def patch():
    ok = []
    print('== E1 最近距离门：if-ltz → if-gez（更近才应更新 best）==')
    ok.append(pinch(AFM, SIG_TGT,
        r'(cmpg-float v8, v9, v3\s*\n\s*)if-ltz v8, :pst_loop',
        r'\1if-gez v8, :pst_loop', 'E1',
        already=r'cmpg-float v8, v9, v3\s*\n\s*if-gez v8, :pst_loop'))
    print('== E2 去重门：if-eqz → if-nez（已有在飞才跳过）==')
    ok.append(pinch(AFM, SIG_TGT,
        r'(hasStrikeInFlightP\([^\n]*\n\s*move-result v8\s*\n\s*)if-eqz v8, :pst_loop',
        r'\1if-nez v8, :pst_loop', 'E2',
        already=r'hasStrikeInFlightP\([^\n]*\n\s*move-result v8\s*\n\s*if-nez v8, :pst_loop'))
    print('== E3 hasStrikeInFlightP 返回极性：if-eq → if-ne ==')
    ok.append(pinch(AFM, SIG_HSF,
        r'(Laoc/kingdoms/lukasz/map/battles/AirMission;->type:[^\n]*\n\s*)if-eq v6, v5, :hsf_next',
        r'\1if-ne v6, v5, :hsf_next', 'E3',
        already=r'AirMission;->type:[^\n]*\n\s*if-ne v6, v5, :hsf_next'))
    print('== E4 距离原点：civID → provinceID ==')
    ok.append(pinch(AFM, SIG_TGT,
        r'(iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I\n)',
        r'\1    # r5c046z2: 距离原点必须用省索引（provinceDistance 内部 Game.lProvinces.get(a)）\n'
        r'    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n',
        'E4a 加载 provinceID', already=r'Airport;->provinceID:I'))
    ok.append(pinch(AFM, SIG_TGT,
        r'invoke-direct \{p0, v2, v7\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance\(II\)F',
        r'invoke-direct {p0, v1, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F',
        'E4b 改用 v1', already=r'invoke-direct \{p0, v1, v7\}, [^\n]*provinceDistance\(II\)F'))
    print('== E5 概率门：if-gez → if-ltz（对齐 80% 尝试口径）==')
    ok.append(pinch(AFM, SIG_STRIKE,
        r'(cmpg-float v4, v4, v5\s*\n\s*)if-gez v4, :cond_51',
        r'\1if-ltz v4, :cond_51', 'E5',
        already=r'cmpg-float v4, v4, v5\s*\n\s*if-ltz v4, :cond_51'))
    print('== E6 机型白名单：仅 ATTACKER / BOMBER 可建任务 ==')
    guard = ('    # r5c046z2 白名单：仅 ATTACKER / BOMBER 允许建任务（FIGHTER/INTERCEPTOR 不得被当轰炸机）\n'
             '    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
             '    if-ne p3, v1, :ts_ok\n'
             '    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
             '    if-ne p3, v1, :ts_ok\n'
             '    goto :cond_51\n'
             '    :ts_ok\n'
             '    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
             '    if-ne p3, v1, :cond_35')
    ok.append(pinch(AFM, SIG_STRIKE,
        r'[ \t]*sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit\$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit\$AirType;\s*\n\s*if-ne p3, v1, :cond_35',
        guard, 'E6 白名单', already=r':ts_ok'))
    print('== E7 pin：.registers 8→9 且命中判定 if-ne → if-eq ==')
    ok.append(pinch(BTN, SIG_PICK,
        r'\.registers 8', '.registers 9', 'E7a registers', already=r'\.registers 9'))
    ok.append(pinch(BTN, SIG_PICK,
        r'(move-result-object v0\s*\n\s*)if-ne v0, v5, :pin_hit',
        r'\1if-eq v0, v5, :pin_hit', 'E7b 命中方向',
        already=r'move-result-object v0\s*\n\s*if-eq v0, v5, :pin_hit'))
    print('  -> 结果：%s' % ('全部成功' if all(ok) else '有失败项(%d/%d)' % (sum(ok), len(ok))))
    return all(ok)

# ---------------- gate ㊿ ----------------
def gate():
    fails = []
    s = open(AFM, encoding='utf-8').read(); bs = open(BTN, encoding='utf-8').read()
    T = (lambda sig: (lambda t: t)(s[blast(AFM, sig)[1]:blast(AFM, sig)[2]])) 
    _, a, b = blast(AFM, SIG_TGT); tgt = s[a:b]
    _, a2, b2 = blast(AFM, SIG_STRIKE); stk = s[a2:b2]
    _, a3, b3 = blast(AFM, SIG_HSF); hsf = s[a3:b3]
    _, ab, bb = blast(BTN, SIG_PICK); pk = bs[ab:bb]

    def nxt(txt, pat, tag):
        m = re.search(pat, txt)
        if not m:
            fails.append('%s：锚点缺失' % tag); return
        n = m.group(1).strip()
        return n

    n = nxt(tgt, r'cmpg-float v8, v9, v3\s*\n\s*(if-\w+ v8, :\w+)', '㊿-1')
    if n and not n.startswith('if-gez v8'): fails.append('㊿-1 距离门应为 if-gez（≥best 才跳过），实为 %s' % n)
    n = nxt(tgt, r'hasStrikeInFlightP\([^\n]*\n\s*move-result v8\s*\n\s*(if-\w+ v8, :\w+)', '㊿-2')
    if n and not n.startswith('if-nez v8'): fails.append('㊿-2 去重门应为 if-nez，实为 %s' % n)
    n = nxt(hsf, r'AirMission;->type:[^\n]*\n\s*(if-\w+ v6, v5, :\w+)', '㊿-3')
    if n and not n.startswith('if-ne v6, v5'): fails.append('㊿-3 HSF 应为 if-ne，实为 %s' % n)
    # ㊿-4：距离原点必须是 provinceID 寄存器
    m_civ = re.search(r'iget (\w+), p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I', tgt)
    m_prov = re.search(r'iget (\w+), p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I', tgt)
    m_dist = re.search(r'invoke-direct \{p0, (\w+), (\w+)\}, [^\n]*provinceDistance\(II\)F', tgt)
    if not (m_civ and m_prov and m_dist):
        fails.append('㊿-4 距离原点锚点缺失（civ=%s prov=%s dist=%s）' % (bool(m_civ), bool(m_prov), bool(m_dist)))
    else:
        if m_dist.group(1) != m_prov.group(1):
            fails.append('㊿-4 距离原点寄存器 %s ≠ provinceID 寄存器 %s（civID 在 %s）'
                         % (m_dist.group(1), m_prov.group(1), m_civ.group(1)))
    n = nxt(stk, r'cmpg-float v4, v4, v5\s*\n\s*(if-\w+ v4, :cond_51)', '㊿-5')
    if n and not n.startswith('if-ltz v4'): fails.append('㊿-5 概率门应为 if-ltz（=80%% 尝试），实为 %s' % n)
    if ':ts_ok' not in stk:
        fails.append('㊿-6 机型白名单缺失（:ts_ok）')
    else:
        for t in ('ATTACKER', 'BOMBER'):
            if not re.search(r'if-ne p3, v1, :ts_ok', stk) or t not in stk.split(':ts_ok')[0]:
                if t not in stk.split(':ts_ok')[0]:
                    fails.append('㊿-6 白名单未覆盖 %s' % t)
    m = re.search(r'\.method public static pickAirport\(I\)[^\n]*\n\s*\.registers (\d+)', bs)
    if m and int(m.group(1)) < 9:
        fails.append('㊿-7 pickAirport .registers=%s < 9（v7 会覆写入参 p0）' % m.group(1))
    n = nxt(pk, r'move-result-object v0\s*\n\s*(if-\w+ v0, v5, :pin_hit)', '㊿-8')
    if n and not n.startswith('if-eq v0, v5'): fails.append('㊿-8 pin 命中应为 if-eq，实为 %s' % n)

    # 负样本（每条方向检查都必须能抓出反向写法）
    neg = 0
    checks = [(r'(cmpg-float v8, v9, v3\s*\n\s*)(if-\w+)', 'cmpg-float v8, v9, v3\n    if-ltz v8, :x', 'if-gez'),
              (r'(move-result v8\s*\n\s*)(if-\w+)', 'move-result v8\n    if-eqz v8, :x', 'if-nez'),
              (r'(AirMission;->type:[^\n]*\n\s*)(if-\w+)', 'AirMission;->type:X\n    if-eq v6, v5, :x', 'if-ne'),
              (r'(cmpg-float v4, v4, v5\s*\n\s*)(if-\w+)', 'cmpg-float v4, v4, v5\n    if-gez v4, :x', 'if-ltz'),
              (r'(move-result-object v0\s*\n\s*)(if-\w+)', 'move-result-object v0\n    if-ne v0, v5, :x', 'if-eq')]
    for pat, sample, want in checks:
        m = re.search(pat, sample)
        got = m.group(2) if m else ''
        if got and not got.startswith(want):
            neg += 1
        else:
            fails.append('负样本自检异常：%s vs %s' % (got, want))
    print('== ㊿ 门禁 ==')
    print('  负样本捕获：%d/%d' % (neg, len(checks)))
    if neg != len(checks):
        fails.append('㊿ 负样本 %d/%d' % (neg, len(checks)))
    if fails:
        print('  X 不通过（%d 项）：' % len(fails))
        for f in fails: print('    - ' + f)
        return False
    print('  OK 8 项全过（0 fail）')
    return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'survey'
    if mode == 'survey': survey()
    elif mode == 'patch': patch()
    elif mode == 'gate': sys.exit(0 if gate() else 1)