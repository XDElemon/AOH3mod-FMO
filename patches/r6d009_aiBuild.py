# -*- coding: utf-8 -*-
# r6d009_aiBuild.py —— AI 造机：加"开关 / 战时限制 / 每机场上限"三个闸 + 探针（不碰它的派发与拦截）
#   现有链（已在运行）：AFM.updateAll() → update(civ) → Airport.updateBuild() + updateAIBuildUp(ap)
#   本批：在 updateAIBuildUp 的"AI 专属"门之后插入三道闸，并读配置 dgAiBuild/dgAiWar/dgAiCap
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AP = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
AT = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

FIELDS = ('.field public static dgAiBuild:I\n'
          '.field public static dgAiWar:I\n'
          '.field public static dgAiCap:I\n')

def patch():
    s = rd(AFM)
    if 'r6d009' in s:
        print('[SKIP] 已打'); return
    # ① 字段
    anc = '.field public static dgDebug:I\n'
    assert s.count(anc) == 1, '字段锚点=%d' % s.count(anc)
    s = s.replace(anc, anc + FIELDS, 1)
    print('  [OK] ① 3 个字段 dgAiBuild/dgAiWar/dgAiCap')
    # ② demoLoadCfg：默认值
    anc2 = '    const/4 v5, 0x0\n    sput v5, ' + CLS + '->dgDebug:I\n'
    assert s.count(anc2) == 1, '默认值锚点=%d' % s.count(anc2)
    s = s.replace(anc2, anc2 +
                  '    const/4 v5, 0x1\n    sput v5, ' + CLS + '->dgAiBuild:I\n'
                  '    const/4 v5, 0x1\n    sput v5, ' + CLS + '->dgAiWar:I\n'
                  '    const/4 v5, 0x4\n    sput v5, ' + CLS + '->dgAiCap:I\n', 1)
    print('  [OK] ② 默认 ai_build=1 / ai_wartime=1 / ai_cap=4')
    # ③ demoLoadCfg：读配置
    anc3 = '    :dg_end\n    return-void\n.end method\n'
    assert s.count(anc3) == 1, '配置锚点=%d' % s.count(anc3)
    blk = ('    # --- AI 造机（r6d009）---\n'
           '    const-string v1, "ai_build"\n'
           '    const/4 v2, 0x1\n'
           '    invoke-static {v0, v1, v2}, ' + CLS + '->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
           '    move-result v2\n'
           '    sput v2, ' + CLS + '->dgAiBuild:I\n'
           '    const-string v1, "ai_wartime"\n'
           '    const/4 v2, 0x1\n'
           '    invoke-static {v0, v1, v2}, ' + CLS + '->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
           '    move-result v2\n'
           '    sput v2, ' + CLS + '->dgAiWar:I\n'
           '    const-string v1, "ai_cap"\n'
           '    const/4 v2, 0x4\n'
           '    invoke-static {v0, v1, v2}, ' + CLS + '->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
           '    move-result v2\n'
           '    sput v2, ' + CLS + '->dgAiCap:I\n')
    s = s.replace(anc3, blk + anc3, 1)
    print('  [OK] ③ 配置读取（ai_build / ai_wartime / ai_cap）')
    # ④ updateAIBuildUp：三道闸
    m = re.search(r'(\.method private updateAIBuildUp\(Laoc/kingdoms/lukasz/map/battles/Airport;\)V\n\s*\.registers \d+\n)', s)
    assert m, 'updateAIBuildUp 头锚点'
    gate = ('    # r6d009：AI 造机三闸（开关 / 战时 / 每机场上限）\n'
            '    sget v8, ' + CLS + '->dgAiBuild:I\n'
            '    if-eqz v8, :aib_off\n'
            '    sget v8, ' + CLS + '->dgAiWar:I\n'
            '    if-eqz v8, :aib_ok1\n'
            '    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n'
            '    if-eqz v8, :aib_off\n'
            '    iget v9, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I\n'
            '    iget v8, p1, ' + AP + '->civID:I\n'
            '    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z\n'
            '    move-result v8\n'
            '    if-nez v8, :aib_off\n'
            '    :aib_ok1\n'
            '    iget v8, p1, ' + AP + '->totalAircraft:I\n'
            '    iget-object v9, p1, ' + AP + '->buildQueue:Ljava/util/List;\n'
            '    invoke-interface {v9}, Ljava/util/List;->size()I\n'
            '    move-result v9\n'
            '    add-int/2addr v8, v9\n'
            '    iget-object v9, p1, ' + AP + '->buildingType:' + AT + '\n'
            '    if-eqz v9, :aib_ok2\n'
            '    add-int/lit8 v8, v8, 0x1\n'
            '    :aib_ok2\n'
            '    sget v9, ' + CLS + '->dgAiCap:I\n'
            '    if-ge v8, v9, :aib_go\n'
            '    :aib_off\n'
            '    return-void\n'
            '    :aib_go\n')
    s = s[:m.end()] + gate + s[m.end():]
    print('  [OK] ④ updateAIBuildUp 三闸（早退 return-void）')
    # ⑤ 探针：startBuild 成功分支
    m2 = re.search(r'(\s*)invoke-virtual \{p1, v6\}, ' + re.escape(AP) + r'->startBuild\(' + re.escape(AT) + r'\)Z\n\s*move-result v7\n', s)
    assert m2, 'startBuild 锚点'
    probe = ('    # r6d009 探针：AI 排产成功（机型 ordinal）\n'
             '    const-string v8, "aiBldS"\n'
             '    invoke-virtual {v6}, ' + AT + '->ordinal()I\n'
             '    move-result v9\n'
             '    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n')
    s = s[:m2.end()] + probe + s[m2.end():]
    print('  [OK] ⑤ 探针 aiBldS（默认静默，debug=1 才可见）')
    wr(AFM, s)

def gate():
    fails = []
    s = rd(AFM)
    for f in ('dgAiBuild:I', 'dgAiWar:I', 'dgAiCap:I'):
        if f not in s: fails.append('67-1 缺字段 %s' % f)
    for k in ('"ai_build"', '"ai_wartime"', '"ai_cap"'):
        if k not in s: fails.append('67-2 缺配置键 %s' % k)
    if 'if-eqz v8, :aib_off' not in s: fails.append('67-3 缺开关闸')
    if 'if-nez v8, :aib_off' not in s: fails.append('67-3 缺战时闸')
    if 'if-ge v8, v9, :aib_go' not in s: fails.append('67-3 缺上限闸（应 ≥cap 才放行）')
    if ':aib_off\n    return-void' not in s: fails.append('67-4 早退分支缺失')
    if 'aiBldS' not in s: fails.append('67-5 缺探针')
    # 顺序：三闸必须在 startBuild 之前（在 updateAIBuildUp 内）
    i = s.find('.method private updateAIBuildUp')
    j = s.find('.end method', i)
    body = s[i:j]
    if '# r6d009：AI 造机三闸' not in body: fails.append('67-6 三闸不在 updateAIBuildUp 内')
    if body.find(':aib_go') > body.find('startBuild'): fails.append('67-6 三闸位置不对（应在排产之前）')
    # 寄存器不越界（locals = registers - params）
    m = re.search(r'\.method private updateAIBuildUp\(Laoc/kingdoms/lukasz/map/battles/Airport;\)V\n\s*\.registers (\d+)', s)
    regs = int(m.group(1))
    for vv in set(re.findall(r'\bv(\d+)\b', body)):
        if int(vv) >= regs - 2: fails.append('67-7 v%s 越界（regs=%d）' % (vv, regs))
    neg = 0
    if re.search(r'if-eqz v8, :aib_off', 'if-eqz v8, :aib_off'): neg += 1
    if re.search(r'aiBldS', 'aiBldS'): neg += 1
    if re.search(r'"ai_cap"', '"ai_cap"'): neg += 1
    print('== 门禁 67 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('67 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)