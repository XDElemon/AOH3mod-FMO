# -*- coding: utf-8 -*-
# r6d015_mix.py —— AI 选型改为"可配权重混编"（默认 战斗机5 : 截击1 : 攻击2 : 轰炸2）
#   轮转：r = 该机场已投机数 % 总权重 ⇒ 按累计权重落到具体机型（权重0则该机型永不被选）
#   ai_type：0=混编(默认) 1=战斗机优先 2=轰炸机优先 3=原比例逻辑
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AT = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'
AP = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

NEWSEL = (
 '    # r6d015：选型（ai_type 0=混编 1=战斗机优先 2=轰炸机优先 3=原比例）\n'
 '    sget v6, {C}->dgAiType:I\n'
 '    if-eqz v6, :mix_go\n'
 '    const/4 v3, 0x1\n'
 '    if-eq v6, v3, :sel_fighter\n'
 '    const/4 v3, 0x2\n'
 '    if-eq v6, v3, :sel_bomber\n'
 '    goto :sel_ratio\n'
 '    :sel_fighter\n'
 '    sget-object v6, {T}->FIGHTER:{T}\n'
 '    goto :goto_34\n'
 '    :sel_bomber\n'
 '    sget-object v6, {T}->BOMBER:{T}\n'
 '    goto :goto_34\n'
 '    :mix_go\n'
 '    sget v3, {C}->dgWF:I\n'
 '    sget v4, {C}->dgWI:I\n'
 '    sget v5, {C}->dgWA:I\n'
 '    sget v7, {C}->dgWB:I\n'
 '    add-int/2addr v4, v3\n'
 '    add-int/2addr v5, v4\n'
 '    add-int/2addr v7, v5\n'
 '    if-lez v7, :mix_fighter\n'
 '    iget v6, p1, {A}->totalAircraft:I\n'
 '    rem-int/2addr v6, v7\n'
 '    sget v3, {C}->dgWF:I\n'
 '    if-lt v6, v3, :mix_k1\n'
 '    :mix_fighter\n'
 '    sget-object v6, {T}->FIGHTER:{T}\n'
 '    goto :goto_34\n'
 '    :mix_k1\n'
 '    sget v3, {C}->dgWF:I\n'
 '    sget v4, {C}->dgWI:I\n'
 '    add-int/2addr v3, v4\n'
 '    if-lt v6, v3, :mix_k2\n'
 '    sget-object v6, {T}->INTERCEPTOR:{T}\n'
 '    goto :goto_34\n'
 '    :mix_k2\n'
 '    sget v3, {C}->dgWF:I\n'
 '    sget v4, {C}->dgWI:I\n'
 '    add-int/2addr v3, v4\n'
 '    sget v4, {C}->dgWA:I\n'
 '    add-int/2addr v3, v4\n'
 '    if-lt v6, v3, :mix_bomber\n'
 '    sget-object v6, {T}->ATTACKER:{T}\n'
 '    goto :goto_34\n'
 '    :mix_bomber\n'
 '    sget-object v6, {T}->BOMBER:{T}\n'
 '    goto :goto_34\n'
).replace('{C}', CLS).replace('{T}', AT).replace('{A}', AP)

def patch():
    s = rd(AFM)
    if 'r6d015' in s:
        print('[SKIP] 已打'); return
    # ① 字段
    anc = '.field public static dgAiType:I\n'
    assert s.count(anc) == 1, '字段锚点=%d' % s.count(anc)
    s = s.replace(anc, anc + '.field public static dgWF:I\n.field public static dgWI:I\n'
                             '.field public static dgWA:I\n.field public static dgWB:I\n', 1)
    print('  [OK] ① 4 个权重字段')
    # ② <clinit> 默认 5/1/2/2
    anc2 = '    const/4 v0, 0x0\n    sput v0, ' + CLS + '->dgAiType:I\n'
    assert s.count(anc2) >= 1, '<clinit> 锚点'
    s = s.replace(anc2, anc2 +
                  '    const/4 v0, 0x5\n    sput v0, ' + CLS + '->dgWF:I\n'
                  '    const/4 v0, 0x1\n    sput v0, ' + CLS + '->dgWI:I\n'
                  '    const/4 v0, 0x2\n    sput v0, ' + CLS + '->dgWA:I\n'
                  '    const/4 v0, 0x2\n    sput v0, ' + CLS + '->dgWB:I\n', 1)
    # demoLoadCfg 默认值也补一份
    anc2b = '    const/4 v5, 0x0\n    sput v5, ' + CLS + '->dgAiType:I\n'
    assert anc2b in s, 'demoLoadCfg 默认锚点'
    s = s.replace(anc2b, anc2b +
                  '    const/4 v5, 0x5\n    sput v5, ' + CLS + '->dgWF:I\n'
                  '    const/4 v5, 0x1\n    sput v5, ' + CLS + '->dgWI:I\n'
                  '    const/4 v5, 0x2\n    sput v5, ' + CLS + '->dgWA:I\n'
                  '    const/4 v5, 0x2\n    sput v5, ' + CLS + '->dgWB:I\n', 1)
    print('  [OK] ② 默认权重 5/1/2/2')
    # ③ 配置读取（4 个权重键）
    anc3 = '    sput v2, ' + CLS + '->dgAiType:I\n'
    assert s.count(anc3) == 1, '配置读取锚点=%d' % s.count(anc3)
    keys = (('ai_w_fighter', 'dgWF', '0x5'), ('ai_w_inter', 'dgWI', '0x1'),
            ('ai_w_attacker', 'dgWA', '0x2'), ('ai_w_bomber', 'dgWB', '0x2'))
    add = ''
    for k, f, d in keys:
        add += ('    const-string v1, "%s"\n'
                '    const/4 v2, %s\n'
                '    invoke-static {v0, v1, v2}, %s->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
                '    move-result v2\n'
                '    sput v2, %s->%s:I\n' % (k, d, CLS, CLS, f))
    s = s.replace(anc3, anc3 + add, 1)
    print('  [OK] ③ 配置键 ai_w_fighter/ai_w_inter/ai_w_attacker/ai_w_bomber')
    # ④ 替换选型块（r6d014 的整块 → 新分派）
    old_re = re.compile(r'[ \t]*# r6d014：选型分派[^\n]*\n[\s\S]*?:sel_bomber\n[^\n]*BOMBER[^\n]*\n[ \t]*goto :goto_34\n')
    assert len(old_re.findall(s)) == 1, 'r6d014 块锚点=%d' % len(old_re.findall(s))
    s = old_re.sub(lambda m: NEWSEL, s, count=1)
    print('  [OK] ④ 选型块 → 混编轮转')
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
    for f in ('dgWF:I', 'dgWI:I', 'dgWA:I', 'dgWB:I'):
        if f not in s: fails.append('73-1 缺字段 %s' % f)
    for k in ('"ai_w_fighter"', '"ai_w_inter"', '"ai_w_attacker"', '"ai_w_bomber"'):
        if k not in s: fails.append('73-2 缺配置键 %s' % k)
    i = s.find('.method private updateAIBuildUp'); body = s[i:s.find('.end method', i)]
    for probe, t in (('# r6d015：选型', '混编块'), ('rem-int/2addr v6, v7', '取模轮转'),
                     ('if-lt v6, v3, :mix_k1', '第一阈值'), ('if-lt v6, v3, :mix_k2', '第二阈值'),
                     ('if-lt v6, v3, :mix_bomber', '第三阈值')):
        if probe not in body: fails.append('73-3 缺 %s' % t)
    # 方向断言：==0 必须 if-eqz 进混编
    if 'if-eqz v6, :mix_go' not in body: fails.append('73-4 缺 if-eqz v6, :mix_go（==0 才混编）')
    if 'if-nez v6, :mix_go' in body: fails.append('73-4 出现反向 if-nez v6, :mix_go')
    # 四机型都必须可达
    for t in ('FIGHTER', 'INTERCEPTOR', 'ATTACKER', 'BOMBER'):
        if body.count(t + ':' + AT) < 1: fails.append('73-5 %s 分支不可达' % t)
    bad = scan_mr(AFM)
    if bad: fails.append('73-6 move-result 异常：%s' % bad[:2])
    m = re.search(r'\.method private updateAIBuildUp\(' + re.escape(AP) + r'\)V\n\s*\.registers (\d+)', s)
    regs = int(m.group(1))
    for vv in set(re.findall(r'\bv(\d+)\b', body)):
        if int(vv) >= regs - 2: fails.append('73-7 v%s 越界（regs=%d）' % (vv, regs))
    neg = 0
    if re.search(r'if-eqz v6, :mix_go', 'if-eqz v6, :mix_go'): neg += 1
    if re.search(r'rem-int/2addr v6, v7', 'rem-int/2addr v6, v7'): neg += 1
    if re.search(r'INTERCEPTOR', 'INTERCEPTOR'): neg += 1
    print('== 门禁 73 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('73 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)