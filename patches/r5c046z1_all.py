# -*- coding: utf-8 -*-
# r5c046z1_all.py v2 —— 批 r5c046z1：P 线两颗老雷（v80 B2/B3 重现）+ E2 极性 + 按钮消歧
#   用法: python3 r5c046z1_all.py survey | patch | gate
#   v2：① 锚点容忍空行 ② 定位限定在方法体内 ③ 幂等（已修则跳过）
import re, sys, os

AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'

def blast(path, sig):
    s = open(path, encoding='utf-8').read()
    m = re.search(r'[ \t]*\.method[^\n]*' + sig + r'[^\n]*\n', s)
    if not m:
        return s, None, None
    e = s.find('.end method', m.end())
    return s, m.start(), (e + len('.end method')) if e > 0 else None

def pinch(path, sig, pattern, repl, tag, expect=1, already=None):
    s, a, b = blast(path, sig)
    if a is None:
        print('  [FAIL] %s：方法 %s 未找到' % (tag, sig))
        return False
    body = s[a:b]
    if already and re.search(already, body):
        print('  [SKIP] %s：已是目标形态' % tag)
        return True
    n = len(re.findall(pattern, body))
    if n != expect:
        print('  [FAIL] %s 锚点命中 %d 次（期望 %d）' % (tag, n, expect))
        return False
    body2 = re.sub(pattern, repl, body, count=expect)
    open(path, 'w', encoding='utf-8').write(s[:a] + body2 + s[b:])
    print('  [OK] %s（命中 %d）' % (tag, n))
    return True

SIG_STRIKE = r'tryStrikeForAirportP'
SIG_PICK = r'pickAirport\(I\)'

def survey():
    s = open(AFM, encoding='utf-8').read()
    _, a, b = blast(AFM, SIG_STRIKE)
    body = s[a:b] if a is not None else ''
    print('tryStrikeForAirportP: if-eqz v7, :cond_51 =', len(re.findall(r'if-eqz v7, :cond_51', body)),
          '| if-nez v7, :cond_51 =', len(re.findall(r'if-nez v7, :cond_51', body)))
    m = re.search(r'isEmpty\(\)Z\s*\n\s*move-result v4\s*\n\s*(if-\w+ v4, :\w+)', body)
    print('tryStrikeForAirportP: isEmpty 后紧跟 =', m.group(1) if m else '(无)')
    print('E2: if-eq v6, v4, :z_war_go =', len(re.findall(r'if-eq v6, v4, :z_war_go', s)),
          '| if-ne v6, v4, :z_war_go =', len(re.findall(r'if-ne v6, v4, :z_war_go', s)))
    b2 = open(BTN, encoding='utf-8').read()
    print('BTN pickAirport: pin_loop =', b2.count(':pin_loop'))

def patch():
    print('== (1) hasActivePatrol 门（v80 B2 同类雷：没有在飞任务反而跳过）==')
    ok1 = pinch(AFM, SIG_STRIKE,
        r'(hasActivePatrol\(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;\)Z\s*move-result v7\s*)if-eqz v7, :cond_51',
        r'\1if-nez v7, :cond_51', 'A1 hasActivePatrol',
        already=r'hasActivePatrol[^\n]*\s*move-result v7\s*if-nez v7, :cond_51')
    print('== (2) assignedAircraft.isEmpty() 门（v80 B3 同类雷：有飞机反而不入列）==')
    ok2 = pinch(AFM, SIG_STRIKE,
        r'(assignedAircraft:Ljava/util/List;\s*invoke-interface \{v4\}, Ljava/util/List;->isEmpty\(\)Z\s*move-result v4\s*)if-eqz v4, :cond_51',
        r'\1if-nez v4, :cond_51', 'A2 isEmpty',
        already=r'assignedAircraft:Ljava/util/List;\s*invoke-interface \{v4\}, Ljava/util/List;->isEmpty\(\)Z\s*move-result v4\s*if-nez v4, :cond_51')
    print('== (3) E2：玩家机场必须短路（上一批 if-eq ⇒ 反向）==')
    ok3 = pinch(AFM, r'executeAIAssignmentForAirport',
        r'(Airport;->civID:I[ \t]*\n(?:[ \t]*\n)?[ \t]*)if-eq v6, v4, :z_war_go',
        r'\1if-ne v6, v4, :z_war_go', 'A3 E2',
        already=r'Airport;->civID:I[ \t]*\n(?:[ \t]*\n)?[ \t]*if-ne v6, v4, :z_war_go')
    print('== (4) pickAirport：兜底解析后写回 iActiveID（消歧）==')
    pin = ('    :cond_54\n'
           '    # r5c046z1: 兜底解析成功后把下标写回 iActiveID（面板锁定该机场，消除“串机场”观感）\n'
           '    const/4 v7, 0x0\n'
           '    :pin_loop\n'
           '    if-ge v7, v2, :pin_body\n'
           '    goto :pin_end\n'
           '    :pin_body\n'
           '    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
           '    move-result-object v0\n'
           '    if-ne v0, v5, :pin_hit\n'
           '    add-int/lit8 v7, v7, 0x1\n'
           '    goto :pin_loop\n'
           '    :pin_hit\n'
           '    sput v7, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I\n'
           '    :pin_end\n'
           '    return-object v5')
    ok4 = pinch(BTN, SIG_PICK,
        r'[ \t]*:cond_54[ \t]*\n(?:[ \t]*\n)?[ \t]*return-object v5',
        pin, 'A4 pin', already=r':pin_loop')
    print('  -> 结果：%s' % ('全部成功' if all([ok1, ok2, ok3, ok4]) else '有失败项'))
    return all([ok1, ok2, ok3, ok4])

def gate():
    fails = []
    s = open(AFM, encoding='utf-8').read()
    _, a, b = blast(AFM, SIG_STRIKE)
    body = s[a:b] if a is not None else ''
    if not body:
        fails.append('tryStrikeForAirportP 方法缺失')
    else:
        m = re.search(r'hasActivePatrol\(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;\)Z\s*\n\s*move-result v7\s*\n(?:[ \t]*\n)?\s*([^\n]+)', body)
        if not m or not m.group(1).strip().startswith('if-nez v7, :cond_51'):
            fails.append('㊾-1 hasActivePatrol 门极性错：%s' % (m.group(1).strip() if m else '锚点缺失'))
        m2 = re.search(r'invoke-interface \{v4\}, Ljava/util/List;->isEmpty\(\)Z\s*\n\s*move-result v4\s*\n(?:[ \t]*\n)?\s*([^\n]+)', body)
        if not m2 or not m2.group(1).strip().startswith('if-nez v4, :cond_51'):
            fails.append('㊾-2 isEmpty 门极性错：%s' % (m2.group(1).strip() if m2 else '锚点缺失'))
    if re.search(r'if-eq v6, v4, :z_war_go', s):
        fails.append('㊾-3 E2 仍是 if-eq（玩家机场不短路 ⇒ 与 P 线双发）')
    if not re.search(r'if-ne v6, v4, :z_war_go', s):
        fails.append('㊾-3 E2 缺少 if-ne v6, v4, :z_war_go')
    bs, ba, bb = blast(BTN, SIG_PICK)
    bd = bs[ba:bb] if ba is not None else ''
    for pat, tg in ((r':pin_loop', '㊾-4a pin_loop'), (r':pin_hit', '㊾-4b pin_hit'),
                    (r'sput v7, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I', '㊾-4c pin 写回'),
                    (r'if-ge v7, v2, :pin_body', '㊾-4d pin 循环守卫')):
        if not re.search(pat, bd):
            fails.append('%s 缺失' % tg)
    mr = re.search(r'\.method public static pickAirport\(I\)Laoc/kingdoms/lukasz/map/battles/Airport;\s*\n\s*\.registers (\d+)', bs)
    if mr and int(mr.group(1)) < 8:
        fails.append('㊾-5 pickAirport .registers=%s < 8（v7 越界）' % mr.group(1))
    neg_ok = 0
    if re.search(r'move-result v7\s*\n\s*(if-\w+ v7)', 'move-result v7\n    if-eqz v7, :cond_51').group(1).startswith('if-eqz'):
        neg_ok += 1
    if re.search(r'move-result v4\s*\n\s*(if-\w+ v4)', 'move-result v4\n    if-eqz v4, :cond_51').group(1).startswith('if-eqz'):
        neg_ok += 1
    if re.search(r'(if-eq v6, v4, :z_war_go)', 'if-eq v6, v4, :z_war_go'):
        neg_ok += 1
    print('== ㊾ 门禁 ==')
    print('  负样本捕获：%d/3（期望 3）' % neg_ok)
    if neg_ok != 3:
        fails.append('㊾ 负样本捕获 %d/3' % neg_ok)
    if fails:
        print('  X 不通过（%d 项）：' % len(fails))
        for f in fails:
            print('    - ' + f)
        return False
    print('  OK 正样本 0 失配（0 fail）')
    return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'survey'
    if mode == 'survey':
        survey()
    elif mode == 'patch':
        patch()
    elif mode == 'gate':
        sys.exit(0 if gate() else 1)