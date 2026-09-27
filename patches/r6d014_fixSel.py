# -*- coding: utf-8 -*-
# r6d014_fixSel.py —— 修正 ai_type 三路分派的方向（0=战斗机优先）
#   真值表：ai_type==0 ⇒ FIGHTER ；==1 ⇒ BOMBER ；其他 ⇒ 原比例逻辑
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AT = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'
AP = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(AFM)
    if 'r6d014' in s:
        print('[SKIP] 已修'); return
    # 定位 r6d013 的分派头（从注释到 :sel_ratio）
    old_re = re.compile(
        r'[ \t]*# r6d013：选型[^\n]*\n'
        r'(?:\s*sget v6, [^\n]*->dgAiType:I\n)'
        r'(?:\s*if-eqz v6, :sel_t1\n)'
        r'(?:\s*sget-object v6, [^\n]*->FIGHTER:[^\n]*\n)'
        r'(?:\s*goto :goto_34\n)'
        r'(?:\s*:sel_t1\n)'
        r'(?:\s*const/4 v3, 0x1\n)'
        r'(?:\s*if-ne v6, v3, :sel_ratio\n)'
        r'(?:\s*sget-object v6, [^\n]*->BOMBER:[^\n]*\n)'
        r'(?:\s*goto :goto_34\n)')
    assert len(old_re.findall(s)) == 1, 'r6d013 分派头锚点=%d' % len(old_re.findall(s))
    new = ('    # r6d014：选型分派（真值表：0⇒战斗机 1⇒轰炸机 其他⇒比例）\n'
           '    sget v6, ' + CLS + '->dgAiType:I\n'
           '    if-eqz v6, :sel_fighter\n'          # ==0 ⇒ 战斗机
           '    const/4 v3, 0x1\n'
           '    if-eq v6, v3, :sel_bomber\n'        # ==1 ⇒ 轰炸机
           '    goto :sel_ratio\n'                  # 其他 ⇒ 比例
           '    :sel_fighter\n'
           '    sget-object v6, ' + AT + '->FIGHTER:' + AT + '\n'
           '    goto :goto_34\n'
           '    :sel_bomber\n'
           '    sget-object v6, ' + AT + '->BOMBER:' + AT + '\n'
           '    goto :goto_34\n')
    s = old_re.sub(lambda m: new, s, count=1)
    print('  [OK] 三路分派已修正（0⇒战斗机 / 1⇒轰炸机 / 其他⇒比例）')
    wr(AFM, s)

def scan_mr(path):
    bad, prev = [], None
    for i, l in enumerate(rd(path).split('\n')):
        t = l.strip()
        if not t or t.startswith('#') or t.startswith('.') or t.endswith(':'): continue
        op = t.split(' ')[0].split('/')[0]
        if op.startswith('move-result') and not (prev and prev.startswith('invoke')): bad.append(i + 1)
        prev = op
    return bad

def gate():
    fails = []
    s = rd(AFM)
    i = s.find('.method private updateAIBuildUp')
    body = s[i:s.find('.end method', i)]
    # 72-1 方向断言（核心）
    if 'if-eqz v6, :sel_fighter' not in body: fails.append('72-1 缺 if-eqz v6, :sel_fighter（==0 才进战斗机）')
    if 'if-nez v6, :sel_fighter' in body: fails.append('72-1 出现反向的 if-nez v6, :sel_fighter')
    if 'if-eq v6, v3, :sel_bomber' not in body: fails.append('72-1 缺 if-eq v6, v3, :sel_bomber（==1 才进轰炸机）')
    if 'if-ne v6, v3, :sel_bomber' in body: fails.append('72-1 出现反向的 if-ne v6, v3, :sel_bomber')
    # 72-2 次序：战斗机分支在轰炸机之前、比例块最后
    ip = body.find(':sel_fighter'); ip2 = body.find(':sel_bomber'); ip3 = body.find(':sel_ratio')
    if not (0 < ip < ip2 < ip3): fails.append('72-2 分支次序不对（应 fighter < bomber < ratio）')
    # 72-3 三个分支都存在且 goto :goto_34
    if body.count('goto :goto_34') < 3: fails.append('72-3 分支 goto 不足 3 处')
    # 72-4 结构
    bad = scan_mr(AFM)
    if bad: fails.append('72-4 move-result 异常：%s' % bad[:2])
    m = re.search(r'\.method private updateAIBuildUp\(' + re.escape(AP) + r'\)V\n\s*\.registers (\d+)', s)
    regs = int(m.group(1))
    for vv in set(re.findall(r'\bv(\d+)\b', body)):
        if int(vv) >= regs - 2: fails.append('72-5 v%s 越界（regs=%d）' % (vv, regs))
    neg = 0
    if re.search(r'if-eqz v6, :sel_fighter', 'if-eqz v6, :sel_fighter'): neg += 1
    if re.search(r'if-eq v6, v3, :sel_bomber', 'if-eq v6, v3, :sel_bomber'): neg += 1
    if re.search(r':sel_ratio', ':sel_ratio'): neg += 1
    print('== 门禁 72 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('72 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)