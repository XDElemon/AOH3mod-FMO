# -*- coding: utf-8 -*-
# r6d001_demo.py —— DEMO：配置驱动（prob/intel/pin）挂到现装版 r6c004 上
#   新增字段 dgInit/dgProb/dgIntel/dgPin
#   新增方法 cfgReadText / cfgExtractInt（当年逐字件，已逐条验极性）/ demoLoadCfg
#   接线：① 概率门用 dgProb（%）；② 情报门可关；③ dgPin 钉住省最高优先
#   三轮调研：见本脚本末尾写出的 r6s5/调研_r6d001_*.md
import re, sys, io
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
CFGPATH = '/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

FIELDS = '''
.field public static dgInit:I
.field public static dgProb:I
.field public static dgIntel:I
.field public static dgPin:I
'''

CFG_READ = '''.method public static cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    # r4c193 逐字件（r6d001 复用）：读文本文件，失败→null，不抛异常
    const/4 v1, 0x0
    :ct_try
    const/4 v2, 0x0
    new-array v2, v2, [Ljava/lang/String;
    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    move-result-object v2
    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B
    move-result-object v2
    new-instance v1, Ljava/lang/String;
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :ct_end
    return-object v1
    :ct_catch
    const/4 v1, 0x0
    return-object v1
    .catch Ljava/lang/Exception; {:ct_try .. :ct_end} :ct_catch
.end method
'''

CFG_INT = '''.method public static cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    # r4c197 逐字件（r6d001 复用）：读 "键名": 整数，失败返回 p2 默认值
    if-nez p0, :cei_def
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "\\""
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\\""
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v2
    if-gez v2, :cei_def
    const-string v1, ":"
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    move-result v3
    if-gez v3, :cei_def
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    move-result v4
    add-int/lit8 v5, v3, 0x1
    :cei_ws
    if-ge v5, v4, :cei_num
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 0x20
    if-ne v6, v7, :cei_tab
    add-int/lit8 v5, v5, 0x1
    goto :cei_ws
    :cei_tab
    const/16 v7, 0x9
    if-ne v6, v7, :cei_num
    add-int/lit8 v5, v5, 0x1
    goto :cei_ws
    :cei_num
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v10, 0x0
    if-ge v5, v4, :cei_end
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 0x2d
    if-ne v6, v7, :cei_loop
    const/4 v8, 0x1
    add-int/lit8 v5, v5, 0x1
    :cei_loop
    if-ge v5, v4, :cei_end
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 0x30
    if-lt v6, v7, :cei_end
    const/16 v7, 0x39
    if-gt v6, v7, :cei_end
    mul-int/lit8 v9, v9, 0xa
    add-int/lit8 v6, v6, -0x30
    add-int/2addr v9, v6
    add-int/lit8 v10, v10, 0x1
    add-int/lit8 v5, v5, 0x1
    goto :cei_loop
    :cei_end
    if-eqz v10, :cei_def
    if-nez v8, :cei_ret
    neg-int v9, v9
    :cei_ret
    return v9
    :cei_def
    return p2
.end method
'''

DEMO_LOAD = '''.method public static demoLoadCfg()V
    .registers 6
    # r6d001 DEMO：读 %(path)s
    #   prob  = 出击概率%%（0..100，默认 80）
    #   intel = 轰炸机情报门（1=开 0=关，默认 1）
    #   pin   = 钉住省 id（默认 -1 = 无）
    sget v5, %(cls)s->dgInit:I
    if-nez v5, :dg_have
    const/16 v5, 0x50
    sput v5, %(cls)s->dgProb:I
    const/4 v5, 0x1
    sput v5, %(cls)s->dgIntel:I
    const/4 v5, -0x1
    sput v5, %(cls)s->dgPin:I
    const/4 v5, 0x1
    sput v5, %(cls)s->dgInit:I
    :dg_have
    const-string v0, "%(path)s"
    invoke-static {v0}, %(cls)s->cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-nez v0, :dg_end
    # --- prob（变化时写回并打一条日志）---
    const-string v1, "prob"
    const/16 v2, 0x50
    invoke-static {v0, v1, v2}, %(cls)s->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sget v3, %(cls)s->dgProb:I
    if-eq v3, v2, :dg_p_same
    sput v2, %(cls)s->dgProb:I
    const-string v1, "dcfg p="
    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    :dg_p_same
    # --- intel ---
    const-string v1, "intel"
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, %(cls)s->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, %(cls)s->dgIntel:I
    # --- pin ---
    const-string v1, "pin"
    const/4 v2, -0x1
    invoke-static {v0, v1, v2}, %(cls)s->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, %(cls)s->dgPin:I
    :dg_end
    return-void
.end method
''' % {'path': CFGPATH, 'cls': CLS}

def patch():
    s = rd(AFM)
    if 'r6d001' in s:
        print('[SKIP] 已打'); return
    # ① 字段
    anc = '.field public static afAirportProv:Ljava/util/HashSet;\n'
    assert s.count(anc) == 1, 'field 锚点=%d' % s.count(anc)
    s = s.replace(anc, anc + FIELDS, 1)
    print('  [OK] ① 4 个字段')
    # ② 三个方法（插在 strikeScore 之前）
    anc2 = re.search(r'[ \t]*\.method private strikeScore\(', s)
    assert anc2, 'strikeScore 锚点'
    s = s[:anc2.start()] + CFG_READ + CFG_INT + DEMO_LOAD + '\n' + s[anc2.start():]
    print('  [OK] ② cfgReadText / cfgExtractInt / demoLoadCfg')
    # ③ 概率门 → dgProb
    old3 = re.search(r'(\s*)invoke-virtual \{p2\}, Ljava/util/Random;->nextFloat\(\)F\s*\n'
                     r'(\s*)move-result v4\s*\n'
                     r'(\s*)const v5, 0x3e4ccccd[^\n]*\n'
                     r'(\s*)cmpg-float v4, v4, v5\s*\n'
                     r'(\s*)if-ltz v4, :cond_51\n', s)
    assert old3, '概率门锚点'
    new3 = ('    # r6d001 DEMO：出击概率来自配置 dgProb（%%），默认 80（原实现实际只有 20%%）\n'
            '    sget v5, ' + CLS + '->dgProb:I\n'
            '    int-to-float v5, v5\n'
            '    const v6, 0x42c80000    # 100.0f\n'
            '    div-float/2addr v5, v6\n'
            '    cmpg-float v4, v4, v5\n'
            '    if-ltz v4, :cond_51\n')
    s = s[:old3.start()] + '\n' + new3 + s[old3.end():]
    print('  [OK] ③ 概率门 → dgProb')
    # ④ demoLoadCfg 调用：
    m = re.search(r'\.method public tryStrikeForAirportP\([\s\S]{0,600}?\.registers \d+\n', s)
    assert m, 'tryStrike 头锚点'
    # 找到第一条真指令位置
    tail = s[m.end():]
    lines = tail.split('\n')
    ins = 0
    for i, l in enumerate(lines):
        t = l.strip()
        if not t or t.startswith('.') or t.startswith('#'):
            ins = i + 1
            continue
        ins = i
        break
    s = s[:m.end()] + '\n'.join(lines[:ins]) + ('\n    # r6d001 DEMO：每次尝试出击前刷新配置（缺文件→默认值）\n'
                                                '    invoke-static {}, ' + CLS + '->demoLoadCfg()V\n') + '\n'.join(lines[ins:])
    print('  [OK] ④ tryStrikeForAirportP 入口调 demoLoadCfg')
    # ⑤ 情报门可关（pickStrikeTargetP）
    anc5 = re.search(r'[ \t]*# B1：情报门（仅轰炸机）[^\n]*\n', s)
    assert anc5, '情报门锚点'
    s = s[:anc5.start()] + ('    # r6d001 DEMO：intel=0 → 关闭情报门（轰炸机可打任意敌省）\n'
                            '    sget v10, ' + CLS + '->dgIntel:I\n'
                            '    if-eqz v10, :b1_ik_ok\n') + s[anc5.start():]
    print('  [OK] ⑤ 情报门可开关')
    # ⑥ pin 最高优先（pickStrikeTargetP 评分后）
    anc6 = re.search(r'(\s*)move-result v9\s*\n(\s*)cmpg-float v8, v9, v3\n', s)
    assert anc6, 'pin 锚点'
    s = s[:anc6.end(1)] + ('\n    # r6d001 DEMO：钉住的省（dgPin）最高优先\n'
                           '    sget v10, ' + CLS + '->dgPin:I\n'
                           '    if-ne v7, v10, :dg_nopin\n'
                           '    const v9, 0xbf800000    # -1.0f\n'
                           '    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F\n'
                           '    move-result v9\n'
                           '    :dg_nopin\n') + s[anc6.end(1):]
    print('  [OK] ⑥ dgPin 钉住优先')
    wr(AFM, s)

def gate():
    fails = []
    s = rd(AFM)
    for sig, reg in (('cfgReadText(Ljava/lang/String;)Ljava/lang/String;', 5),
                     ('cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I', 14),
                     ('demoLoadCfg()V', 6)):
        if sig not in s: fails.append('59-1 缺方法 %s' % sig)
        else:
            m = re.search(r'\.method[^\n]*' + re.escape(sig) + r'[\s\S]{0,300}?\.registers (\d+)', s)
            if not m or int(m.group(1)) != reg: fails.append('59-1 %s .registers 非 %d' % (sig, reg))
    for f in ('dgInit:I', 'dgProb:I', 'dgIntel:I', 'dgPin:I'):
        if f not in s: fails.append('59-2 缺字段 %s' % f)
    # 59-3 概率门
    # 59-3 概率门（只在 tryStrikeForAirportP 内判）
    mts = re.search(r'\.method[^\n]*tryStrikeForAirportP[\s\S]*?\.end method', s)
    ts = mts.group(0) if mts else ''
    if not ts: fails.append('59-3 找不到 tryStrikeForAirportP')
    else:
        if 'const v5, 0x3e4ccccd' in ts: fails.append('59-3 概率门仍是硬编码 0.2f')
        if 'dgProb:I\n    int-to-float v5, v5' not in ts: fails.append('59-3 概率门未用 dgProb')
        if 'div-float/2addr v5, v6' not in ts: fails.append('59-3 缺 /100.0f')
    # 59-4 情报门
    if 'dgIntel:I\n    if-eqz v10, :b1_ik_ok' not in s: fails.append('59-4 情报门开关未挂')
    # 59-5 pin
    if 'dgPin:I\n    if-ne v7, v10, :dg_nopin' not in s: fails.append('59-5 pin 未挂')
    if 'const v9, 0xbf800000' not in s: fails.append('59-5 pin 常量错')
    # 59-6 默认值
    if 'const/16 v5, 0x50' not in s: fails.append('59-6 缺默认 prob=80')
    if 'const/4 v5, -0x1' not in s: fails.append('59-6 缺默认 pin=-1')
    # 59-7 逐字件极性抽查（cfgExtractInt）
    for probe in ('if-gez v2, :cei_def', 'if-eqz v10, :cei_def', 'if-nez v8, :cei_ret', 'neg-int v9, v9'):
        if probe not in s: fails.append('59-7 逐字件极性异常：%s' % probe)
    neg = 0
    if re.search(r'const v5, 0x3e4ccccd', 'const v5, 0x3e4ccccd'): neg += 1
    if re.search(r'dgProb:I\n    if-eqz', 'dgProb:I\n    if-eqz'): neg += 1
    if re.search(r'if-ne v7, v10, :dg_nopin', 'if-ne v7, v10, :dg_nopin'): neg += 1
    print('== 门禁 59 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('59 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)