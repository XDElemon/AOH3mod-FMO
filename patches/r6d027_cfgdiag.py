# -*- coding: utf-8 -*-
# r6d027_cfgdiag.py —— 配置读取诊断：AirDbgLog.cfgDiag(path) 打 e/r/len/rd，并让 boot() 先于 demoLoadCfg
#  纪律：String 一律 v3；long 恒 v4/v5；append(J) 传 {v0, v4, v5}
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
LCH = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/AndroidLauncher.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AFMC = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
SB = 'Ljava/lang/StringBuilder;'

def L(*p):
    out = []
    for x in p:
        out.extend(x) if isinstance(x, list) else out.append(x)
    return ''.join(x + '\n' for x in out)

def AP(reg, kind='S'):
    if kind == 'J':
        lst = '{v0, %s, v%d}' % (reg, int(reg[1:]) + 1)
    else:
        lst = '{v0, %s}' % reg
    sig = {'S': 'Ljava/lang/String;', 'I': 'I', 'J': 'J'}[kind]
    return ['    invoke-virtual %s, %s->append(%s)%s' % (lst, SB, sig, SB), '',
            '    move-result-object v0', '']

CFGD = L('.method public static cfgDiag(Ljava/lang/String;)V', '    .registers 12', '',
         '    # r6d027：配置读取诊断（e=存在 r=可读 len=字节 rd=读取结果）',
         '    new-instance v0, Ljava/io/File;', '',
         '    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V', '',
         '    invoke-virtual {v0}, Ljava/io/File;->exists()Z', '', '    move-result v1', '',
         '    invoke-virtual {v0}, Ljava/io/File;->canRead()Z', '', '    move-result v2', '',
         '    invoke-virtual {v0}, Ljava/io/File;->length()J', '', '    move-result-wide v4', '',
         '    invoke-static {p0}, ' + AFMC + '->cfgReadText(Ljava/lang/String;)Ljava/lang/String;', '',
         '    move-result-object v6', '',
         '    new-instance v0, ' + SB, '', '    invoke-direct {v0}, ' + SB + '-><init>()V', '',
         '    const-string v3, "CFGRD e="', AP('v3'),
         AP('v1', 'I'),
         '    const-string v3, " r="', AP('v3'),
         AP('v2', 'I'),
         '    const-string v3, " len="', AP('v3'),
         AP('v4', 'J'),
         '    const-string v3, " rd="', AP('v3'),
         '    if-eqz v6, :rd_null', '',
         '    const-string v3, "ok"', '',
         '    goto :rd_done', '',
         '    :rd_null', '    const-string v3, "null"', '',
         '    :rd_done', AP('v3'),
         '    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;', '',
         '    move-result-object v3', '',
         '    const-string v0, "AIRDBG"', '',
         '    invoke-static {v0, v3}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', '',
         '    return-void', '.end method', '')

ANCH_RD = ('    const-string v0, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json"\n'
           '    invoke-static {v0}, ' + AFMC + '->cfgReadText(Ljava/lang/String;)Ljava/lang/String;\n')
NEW_RD = ('    const-string v0, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json"\n'
          '    # r6d027：读取前先诊断（e/r/len/rd）\n'
          '    invoke-static {v0}, ' + DLGC + '->cfgDiag(Ljava/lang/String;)V\n\n'
          '    invoke-static {v0}, ' + AFMC + '->cfgReadText(Ljava/lang/String;)Ljava/lang/String;\n')

OLD_LCH = ('    invoke-static {}, ' + AFMC + '->demoLoadCfg()V\n\n'
           '    invoke-static {}, ' + DLGC + '->boot()V\n\n')
NEW_LCH = ('    invoke-static {}, ' + DLGC + '->boot()V\n\n'
           '    invoke-static {}, ' + AFMC + '->demoLoadCfg()V\n\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d027' in d: print('[SKIP]'); return
    m = re.search(r'\n\.method ', d)
    wr(DLG, d[:m.start() + 1] + CFGD + d[m.start() + 1:])
    print('  [OK] AirDbgLog: +cfgDiag(path)')
    a = rd(AFM)
    assert a.count(ANCH_RD) == 1, 'cfgReadText 调用点=%d' % a.count(ANCH_RD)
    wr(AFM, a.replace(ANCH_RD, NEW_RD, 1))
    print('  [OK] demoLoadCfg: 读取前插 cfgDiag')
    l = rd(LCH)
    assert l.count(OLD_LCH) == 1, 'AndroidLauncher 顺序锚点=%d' % l.count(OLD_LCH)
    wr(LCH, l.replace(OLD_LCH, NEW_LCH, 1))
    print('  [OK] AndroidLauncher: boot() 提到 demoLoadCfg() 之前')

def chk():
    f = []
    d = rd(DLG)
    if '.method public static cfgDiag(Ljava/lang/String;)V' not in d: f.append('85-1 缺 cfgDiag')
    b = d[d.find('.method public static cfgDiag('):]; b = b[:b.find('.end method')]
    if 'Ljava/io/File;->exists()Z' not in b: f.append('85-1 缺 exists 探测')
    if 'Ljava/io/File;->canRead()Z' not in b: f.append('85-1 缺 canRead 探测')
    if '->length()J' not in b: f.append('85-1 缺 length 探测')
    if '->cfgReadText(' not in b: f.append('85-1 未调用 cfgReadText')
    if 'invoke-virtual {v0, v1}, ' + SB + '->append(Ljava/lang/String;)' in b:
        f.append('85-2 v1(int) 被当 String 追加 ⇒ VerifyError 高危')
    if 'invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' not in b:
        f.append('85-2 String 追加未走 v3')
    if 'invoke-virtual {v0, v4, v5}, ' + SB + '->append(J)' not in b:
        f.append('85-2 append(J) 未走 v4/v5')
    if '->dKey(' not in b: f.append('85-1 cfgDiag 未过 dKey')
    mreg = int(re.search(r'\.registers (\d+)', b).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= mreg - 1)
    if bad: f.append('85-2 cfgDiag 寄存器越界 v%s' % bad)
    a = rd(AFM)
    i = a.find('.method public static demoLoadCfg()V'); j = a.find('.end method', i)
    body = a[i:j]
    if '->cfgDiag(' not in body: f.append('85-3 demoLoadCfg 未调 cfgDiag')
    if body.find('->cfgDiag(') > a[i:j].find('->cfgReadText('):
        f.append('85-3 cfgDiag 未在 cfgReadText 之前')
    l = rd(LCH)
    if l.find('->boot()V') > l.find('->demoLoadCfg()V'): f.append('85-4 boot 应在 demoLoadCfg 之前')
    return f

def gate():
    fails = chk(); neg = 0
    o_d, o_a, o_l = rd(DLG), rd(AFM), rd(LCH)
    b = o_d[o_d.find('.method public static cfgDiag('):]; seg = b[:b.find('.end method')]
    wr(DLG, o_d.replace(seg, seg.replace('{v0, v3}, ' + SB + '->append(Ljava/lang/String;)',
                                         '{v0, v1}, ' + SB + '->append(Ljava/lang/String;)', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d)
    wr(AFM, o_a.replace('    # r6d027：读取前先诊断（e/r/len/rd）\n    invoke-static {v0}, ' + DLGC + '->cfgDiag(Ljava/lang/String;)V\n\n', '', 1))
    if chk(): neg += 1
    wr(AFM, o_a)
    wr(LCH, o_l.replace(NEW_LCH, OLD_LCH, 1))
    if chk(): neg += 1
    wr(DLG, o_d); wr(AFM, o_a); wr(LCH, o_l)
    print('== 门禁 85 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('85 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)