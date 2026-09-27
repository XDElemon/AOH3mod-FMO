# -*- coding: utf-8 -*-
# r6d013_aiType.py —— AI 选型改为"战斗机优先"（可配置 ai_type）+ AI 机场状态探针
#   ① 新字段 dgAiType:I，配置键 ai_type（0=战斗机优先(默认) 1=轰炸机优先 2=原比例逻辑）
#   ② updateAIBuildUp 选型块改造
#   ③ 新增状态探针 aiApN(totalAircraft) / aiApT(在建机型 ordinal 或 -1)，用于观察 AI 机队增长
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AT = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'
AP = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(AFM)
    if 'r6d013' in s:
        print('[SKIP] 已打'); return
    # ① 字段
    anc = '.field public static dgAiCap:I\n'
    assert s.count(anc) == 1, '字段锚点=%d' % s.count(anc)
    s = s.replace(anc, anc + '.field public static dgAiType:I\n', 1)
    print('  [OK] ① 字段 dgAiType')
    # ② <clinit> 默认（0=战斗机优先）+ demoLoadCfg 默认 + 配置读取
    anc2 = '    const/4 v0, 0x1\n    sput v0, ' + CLS + '->dgAiWar:I\n'
    assert s.count(anc2) == 1, '<clinit> 锚点=%d' % s.count(anc2)
    s = s.replace(anc2, anc2 + '    const/4 v0, 0x0\n    sput v0, ' + CLS + '->dgAiType:I\n', 1)
    anc3 = '    const/4 v5, 0x4\n    sput v5, ' + CLS + '->dgAiCap:I\n'
    assert anc3 in s, '默认锚点'
    s = s.replace(anc3, anc3 + '    const/4 v5, 0x0\n    sput v5, ' + CLS + '->dgAiType:I\n', 1)
    anc4 = '    :dg_end\n    return-void\n.end method\n'
    assert s.count(anc4) == 1, '配置尾锚点=%d' % s.count(anc4)
    s = s.replace(anc4, ('    const-string v1, "ai_type"\n'
                         '    const/4 v2, 0x0\n'
                         '    invoke-static {v0, v1, v2}, ' + CLS + '->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
                         '    move-result v2\n'
                         '    sput v2, ' + CLS + '->dgAiType:I\n') + anc4, 1)
    print('  [OK] ② ai_type 默认0 + 配置读取')
    # ③ 选型块改造
    old_re = re.compile(
        r'[ \t]*iget-object v3, p1, ' + re.escape(AP) + r'->aircraft:Ljava/util/Map;\s*'
        r'sget-object v4, ' + re.escape(AT) + r'->BOMBER:' + re.escape(AT) + r'\s*'
        r'invoke-interface \{v3, v4\}, Ljava/util/Map;->get\(Ljava/lang/Object;\)Ljava/lang/Object;\s*'
        r'move-result-object v4\s*check-cast v4, Ljava/util/List;\s*'
        r'invoke-interface \{v4\}, Ljava/util/List;->size\(\)I\s*move-result v4\s*'
        r'iget v5, p1, ' + re.escape(AP) + r'->totalAircraft:I\s*mul-int/lit8 v4, v4, 0x2\s*'
        r'if-le v4, v5, :cond_32\s*sget-object v6, ' + re.escape(AT) + r'->ATTACKER:' + re.escape(AT) + r'\s*'
        r'goto :goto_34\s*:cond_32\s*sget-object v6, ' + re.escape(AT) + r'->BOMBER:' + re.escape(AT) + r'\s*:goto_34\n')
    assert len(old_re.findall(s)) == 1, '选型块锚点=%d' % len(old_re.findall(s))
    new = ('    # r6d013：选型（ai_type：0=战斗机优先 1=轰炸机优先 2=原比例）\n'
           '    sget v6, ' + CLS + '->dgAiType:I\n'
           '    if-eqz v6, :sel_t1\n'
           '    sget-object v6, ' + AT + '->FIGHTER:' + AT + '\n'
           '    goto :goto_34\n'
           '    :sel_t1\n'
           '    const/4 v3, 0x1\n'
           '    if-ne v6, v3, :sel_ratio\n'
           '    sget-object v6, ' + AT + '->BOMBER:' + AT + '\n'
           '    goto :goto_34\n'
           '    :sel_ratio\n'
           '    iget-object v3, p1, ' + AP + '->aircraft:Ljava/util/Map;\n'
           '    sget-object v4, ' + AT + '->BOMBER:' + AT + '\n'
           '    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;\n'
           '    move-result-object v4\n'
           '    check-cast v4, Ljava/util/List;\n'
           '    invoke-interface {v4}, Ljava/util/List;->size()I\n'
           '    move-result v4\n'
           '    iget v5, p1, ' + AP + '->totalAircraft:I\n'
           '    mul-int/lit8 v4, v4, 0x2\n'
           '    if-le v4, v5, :cond_32\n'
           '    sget-object v6, ' + AT + '->ATTACKER:' + AT + '\n'
           '    goto :goto_34\n'
           '    :cond_32\n'
           '    sget-object v6, ' + AT + '->BOMBER:' + AT + '\n'
           '    :goto_34\n')
    s = old_re.sub(lambda m: new, s, count=1)
    print('  [OK] ③ 选型：默认战斗机优先（可配置）')
    # ④ 状态探针：在"非玩家机场"判定之后
    anc5 = re.search(r'(\.method private updateAIBuildUp\(' + re.escape(AP) + r'\)V[\s\S]{0,5000}?if-eq v1, v2, :\w+\n)', s)
    assert anc5, '状态探针锚点'
    probe = ('    # r6d013：AI 机场状态探针（机队总数 / 在建机型）\n'
             '    const-string v8, "aiApN"\n'
             '    iget v9, p1, ' + AP + '->totalAircraft:I\n'
             '    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
             '    const-string v8, "aiApT"\n'
             '    iget-object v9, p1, ' + AP + '->buildingType:' + AT + '\n'
             '    if-eqz v9, :apT_none\n'
             '    invoke-virtual {v9}, ' + AT + '->ordinal()I\n'
             '    move-result v9\n'
             '    goto :apT_log\n'
             '    :apT_none\n'
             '    const/4 v9, -0x1\n'
             '    :apT_log\n'
             '    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n')
    s = s[:anc5.end()] + probe + s[anc5.end():]
    print('  [OK] ④ 状态探针 aiApN / aiApT')
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
    if 'dgAiType:I' not in s: fails.append('71-1 缺字段 dgAiType')
    if '"ai_type"' not in s: fails.append('71-2 缺配置键 ai_type')
    b = re.search(r'\.method static constructor <clinit>\(\)V([\s\S]*?)\.end method', s).group(1)
    if 'dgAiType:I' not in b: fails.append('71-2 <clinit> 缺 dgAiType 默认')
    i = s.find('.method private updateAIBuildUp')
    j = s.find('.end method', i)
    body = s[i:j]
    if '# r6d013：选型' not in body: fails.append('71-3 选型块未改造')
    if 'sget-object v6, '+AT+'->FIGHTER:' not in body: fails.append('71-3 缺"战斗机优先"分支')
    if ':sel_ratio' not in body: fails.append('71-3 缺比例分支')
    if 'aiApN' not in body or 'aiApT' not in body: fails.append('71-4 缺状态探针')
    # 探针应在 :goto_34 之前（即选型前）
    if body.find('aiApN') > body.find(':goto_34'): fails.append('71-4 状态探针位置不对')
    bad = scan_mr(AFM)
    if bad: fails.append('71-5 move-result 异常：%s' % bad[:2])
    m = re.search(r'\.method private updateAIBuildUp\(' + re.escape(AP) + r'\)V\n\s*\.registers (\d+)', s)
    regs = int(m.group(1))
    for vv in set(re.findall(r'\bv(\d+)\b', body)):
        if int(vv) >= regs - 2: fails.append('71-6 v%s 越界（regs=%d）' % (vv, regs))
    neg = 0
    if re.search(r'dgAiType', 'dgAiType'): neg += 1
    if re.search(r'FIGHTER', 'FIGHTER'): neg += 1
    if re.search(r'aiApN', 'aiApN'): neg += 1
    print('== 门禁 71 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('71 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)