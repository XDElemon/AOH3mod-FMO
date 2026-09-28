# -*- coding: utf-8 -*-
# r6d030_boot2.py —— 自证行改走免节流 dWrite，并回显加载后的全部配置（dbg/prob/pin/cap/init）
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AFMC = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
SB = 'Ljava/lang/StringBuilder;'

def A(reg, kind='S'):
    lst = '{v0, %s, v%d}' % (reg, int(reg[1:]) + 1) if kind == 'J' else '{v0, %s}' % reg
    sig = {'S': 'Ljava/lang/String;', 'I': 'I', 'J': 'J'}[kind]
    return ['    invoke-virtual %s, %s->append(%s)%s' % (lst, SB, sig, SB), '',
            '    move-result-object v0', '']

def L(*p):
    out = []
    for x in p:
        out.extend(x) if isinstance(x, list) else out.append(x)
    return ''.join(x + '\n' for x in out)

def S(v, s):
    return ['    const-string %s, "%s"' % (v, s), ''] + A(v)

BOOT = L('.method public static boot()V', '    .registers 4', '',
         '    # r6d030 诊断：探针恒开 + 回显加载后的配置（走免节流 dWrite）',
         '    const/4 v0, 0x1', '', '    sput-boolean v0, ' + DLGC + '->dbgOn:Z', '',
         '    new-instance v0, ' + SB, '', '    invoke-direct {v0}, ' + SB + '-><init>()V', '',
         S('v1', 'BOOT2 dbg='),
         '    sget v1, ' + AFMC + '->dgDebug:I', A('v1', 'I'),
         S('v1', ' prob='),
         '    sget v1, ' + AFMC + '->dgProb:I', A('v1', 'I'),
         S('v1', ' pin='),
         '    sget v1, ' + AFMC + '->dgPin:I', A('v1', 'I'),
         S('v1', ' cap='),
         '    sget v1, ' + AFMC + '->dgAiCap:I', A('v1', 'I'),
         S('v1', ' build='),
         '    sget v1, ' + AFMC + '->dgAiBuild:I', A('v1', 'I'),
         S('v1', ' init='),
         '    sget v1, ' + AFMC + '->dgInit:I', A('v1', 'I'),
         '    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;', '',
         '    move-result-object v3', '',
         '    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V', '',
         '    return-void', '.end method', '')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    i = d.find('.method public static boot()V'); j = d.find('.end method', i)
    assert i > 0, '找不到 boot()'
    wr(DLG, d[:i] + BOOT + d[j + len('.end method\n'):])
    print('  [OK] boot(): dWrite + 回显 dbg/prob/pin/cap/build/init')

def chk():
    f = []
    d = rd(DLG)
    b = d[d.find('.method public static boot()V'):]; b = b[:b.find('.end method')]
    if '->dWrite(' not in b: f.append('87-1 boot 未走免节流 dWrite')
    for k in ('dgDebug', 'dgProb', 'dgPin', 'dgAiCap', 'dgInit'):
        if k not in b: f.append('87-2 未回显 %s' % k)
    if 'invoke-virtual {v0, v1}, ' + SB + '->append(Ljava/lang/String;)' not in b:
        f.append('87-3 String 追加未走 v1')
    if re.search(r'\b(iput|sput v1)', b): f.append('87-4 boot 不应写业务字段（除 dbgOn）')
    m = int(re.search(r'\.registers (\d+)', b).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= m)
    if bad: f.append('87-5 寄存器越界 v%s' % bad)
    return f

def gate():
    fails = chk(); neg = 0
    o = rd(DLG)
    b = o[o.find('.method public static boot()V'):]; seg = b[:b.find('.end method')]
    wr(DLG, o.replace(seg, seg.replace('    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V\n', '', 1), 1))
    if chk(): neg += 1
    wr(DLG, o.replace(seg, seg.replace('    sget v1, ' + AFMC + '->dgPin:I', '    sget v1, ' + AFMC + '->dgNope:I', 1), 1))
    if chk(): neg += 1
    wr(DLG, o.replace(seg, seg.replace('    .registers 4', '    .registers 3', 1), 1))
    if chk(): neg += 1
    wr(DLG, o)
    print('== 门禁 87 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('87 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)