# -*- coding: utf-8 -*-
# r6d039_ruprobe.py —— 取"陆军招募面板"每行的兵种 id：ArmyManager.getRecruitmentCost(IIII)I 入口探针
#   输出（1 秒节流 + 2bit 轮转 ⇒ 每个 unitID 每约 4 秒记一次）：RU uid=<unitID> c=<civID>
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
ARM = '/tmp/revx/aoc/kingdoms/lukasz/map/army/ArmyManager.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
SB = 'Ljava/lang/StringBuilder;'

FIELDS = ('.field public static ruLastMs:J\n'
          '.field public static ruSlot:I\n')

RU = (
'.method public static ruUnit(II)V\n'
'    .registers 8\n'
'\n'
'    # r6d039：招募面板兵种取证（civ, unitID）\n'
'    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n'
'\n'
'    move-result-wide v0\n'
'\n'
'    sget-wide v2, ' + DLGC + '->ruLastMs:J\n'
'\n'
'    sub-long v2, v0, v2\n'
'\n'
'    const-wide/16 v4, 0x3e8\n'
'\n'
'    cmp-long v2, v2, v4\n'
'\n'
'    if-ltz v2, :ru_a\n'
'\n'
'    return-void\n'
'\n'
'    :ru_a\n'
'    sput-wide v0, ' + DLGC + '->ruLastMs:J\n'
'\n'
'    sget v2, ' + DLGC + '->ruSlot:I\n'
'\n'
'    add-int/lit8 v2, v2, 0x1\n'
'\n'
'    and-int/lit8 v2, v2, 0x3\n'
'\n'
'    sput v2, ' + DLGC + '->ruSlot:I\n'
'\n'
'    add-int v2, v2, p1\n'
'\n'
'    and-int/lit8 v2, v2, 0x3\n'
'\n'
'    if-nez v2, :ru_b\n'
'\n'
'    return-void\n'
'\n'
'    :ru_b\n'
'    new-instance v0, ' + SB + '\n'
'\n'
'    invoke-direct {v0}, ' + SB + '-><init>()V\n'
'\n'
'    const-string v3, "RU uid="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, p1}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, " c="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, p0}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;\n'
'\n'
'    move-result-object v3\n'
'\n'
'    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V\n'
'\n'
'    return-void\n'
'.end method\n\n')

ANCH = ('    .line 91\n'
        '    invoke-static {p0}, ' + 'Laoc/kingdoms/lukasz/map/army/ArmyManager;' + '->getRecruitmentCost_Regiments(I)I\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d039' not in d:
        m = re.search(r'\n\.method ', d)
        d = d[:m.start() + 1] + RU + d[m.start() + 1:]
        i = d.find('.method ')
        d = d[:i] + FIELDS + '\n' + d[i:]
        wr(DLG, d)
        print('  [OK] AirDbgLog: +ruLastMs/ruSlot +ruUnit(civ,unitID)')
    a = rd(ARM)
    if 'r6d039' not in a:
        assert a.count(ANCH) == 1, 'getRecruitmentCost 锚点=%d' % a.count(ANCH)
        wr(ARM, a.replace(ANCH, ANCH + '\n    # r6d039 探针\n    invoke-static {p0, p2}, ' + DLGC + '->ruUnit(II)V\n', 1))
        print('  [OK] ArmyManager.getRecruitmentCost: +ruUnit 探针（p2=unitID）')

def rotate_hits(slot, uids):
    """模拟器：给定 slot 与 unitID 列表，返回本 slot 会被记录的 unitID"""
    return [u for u in uids if ((slot + u) & 3) == 0]

def chk():
    f = []
    d = rd(DLG)
    if '.method public static ruUnit(II)V' not in d: f.append('100-1 缺 ruUnit')
    b = d[d.find('.method public static ruUnit(II)V'):]; b = b[:b.find('.end method')]
    if '->dWrite(' not in b: f.append('100-1 ruUnit 未走免节流 dWrite')
    if 'append(I)' not in b: f.append('100-1 缺 append(I)')
    if 'invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' not in b:
        f.append('100-1 String 追加未走 v3')
    if 'if-ltz v2, :ru_a' not in b or 'if-nez v2, :ru_b' not in b:
        f.append('100-2 节流/轮转极性错')
    if 'and-int/lit8 v2, v2, 0x3' not in b: f.append('100-2 缺 2bit 轮转')
    reg = int(re.search(r'\.registers (\d+)', b).group(1))
    if reg - 2 <= 5:
        bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= reg - 2)
        if bad: f.append('100-2 ruUnit 寄存器越界 v%s' % bad)
    a = rd(ARM)
    i = a.find('.method public static getRecruitmentCost(IIII)I'); j = a.find('.end method', i)
    body = a[i:j]
    if '->ruUnit(' not in body: f.append('100-3 getRecruitmentCost 未插探针')
    if body.find('->ruUnit(') > body.find('getRecruitmentCost_Regiments'):
        f.append('100-3 探针应插在取团数之前')
    # 模拟器：4 个兵种在 4 个 slot 内各命中一次
    uids = [0, 1, 2, 3]
    hit = []
    for s in range(4):
        hit += rotate_hits(s, uids)
    if sorted(hit) != uids: f.append('100A 轮转模拟器未覆盖全部兵种：%s' % hit)
    return f

def gate():
    fails = chk(); neg = 0
    o_d, o_a = rd(DLG), rd(ARM)
    b = o_d[o_d.find('.method public static ruUnit(II)V'):]; seg = b[:b.find('.end method')]
    wr(DLG, o_d.replace(seg, seg.replace('    if-ltz v2, :ru_a\n', '    if-gtz v2, :ru_a\n', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d.replace(seg, seg.replace('    if-nez v2, :ru_b\n', '    if-eqz v2, :ru_b\n', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d)
    wr(ARM, o_a.replace('    invoke-static {p0, p2}, ' + DLGC + '->ruUnit(II)V\n', '    invoke-static {p0, p1}, ' + DLGC + '->ruUnit(II)V\n', 1))
    if chk(): neg += 1
    wr(DLG, o_d); wr(ARM, o_a)
    print('== 门禁 100 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('100 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过（含轮转模拟器）'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)