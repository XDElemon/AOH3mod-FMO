# -*- coding: utf-8 -*-
# r6d048_diag.py —— 证据探针：抓 panelLine 的入参与依据（前 80 次调用）
#   目的：弄清 r6d047 为什么把所有行都判成"航空"（-1）
#   输出（aircfg_diag.txt，免节流）： PL i=… sz=… air=… line=…
# 用法: python3 r6d048_diag.py patch|gate
import io, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
DUT_T = 'Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;'
AM_T = 'Laoc/kingdoms/lukasz/map/army/ArmyManager;'

FIELD = '.field public static plN:I\n'
FIELD_ANCHOR = '.field public static isAirUnitID'  # 占位（实际用下面的锚点）
FANCH = '.method public static isAirUnitID(I)Z\n'

PLDBG = '''.method public static plDbg(I)V
    .registers 9
    # r6d048 诊断：记录 panelLine 的入参与判定依据（前 80 次，走免节流 dWrite）
    sget v0, %(DLG)s->plN:I

    const/16 v1, 0x50

    if-le v0, v1, :pd_out

    add-int/lit8 v0, v0, 0x1

    sput v0, %(DLG)s->plN:I

    const/4 v2, -0x1
    const/16 v3, -0x9
    sget-object v0, %(AM)s->lUnitsTypes:Ljava/util/List;

    if-eqz v0, :pd_mk

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    if-ge p0, v2, :pd_mk

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4
    if-eqz v4, :pd_mk

    check-cast v4, %(DUT)s

    iget v3, v4, %(DUT)s->Line:I
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4
    if-eqz v4, :pd_mk

    invoke-static {p0}, %(DLG)s->isAirUnitID(I)Z

    move-result v5
    if-eqz v5, :pd_a0

    const/4 v5, 0x1
    goto :pd_mk

    :pd_a0
    const/4 v5, 0x0
    :pd_mk
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PL i="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4
    const-string v6, " sz="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4
    const-string v6, " air="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4
    const-string v6, " line="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    invoke-static {v7}, %(DLG)s->dWrite(Ljava/lang/String;)V

    :pd_out
    return-void
.end method
''' % {'DLG': DLG_T, 'DUT': DUT_T, 'AM': AM_T}

CALL_OLD = '''    # r6d047 招募面板“行归属”：航空兵种返回 -1（不匹配任何行段 ⇒ 该行不会被创建）
'''
CALL_NEW = CALL_OLD + '''    invoke-static {p0}, %s->plDbg(I)V

''' % DLG_T

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    assert d.count(FANCH) == 1, '锚点 isAirUnitID 命中 %d' % d.count(FANCH)
    assert 'plDbg' not in d, '已打过探针'
    d = d.replace(FANCH, PLDBG + FANCH, 1)
    FTOP = '.field private static tickMs:J\n'
    assert d.count(FTOP) == 1, '字段锚点命中 %d' % d.count(FTOP)
    assert d.count(FIELD) == 0, '字段已存在'
    d = d.replace(FTOP, FTOP + FIELD, 1)
    assert d.count(CALL_OLD) == 1, 'panelLine 注释锚点命中 %d' % d.count(CALL_OLD)
    d = d.replace(CALL_OLD, CALL_NEW, 1)
    wr(DLG, d)
    print('patch OK')

def gate():
    f = []
    d = rd(DLG)
    if d.count('.method public static plDbg(I)V') != 1: f.append('108-1 plDbg 缺失/重复')
    blk = d.split('.method public static plDbg(I)V')[-1].split('.end method')[0]
    if '.registers 9' not in blk: f.append('108-1b 寄存器应为 9')
    if ('%s->dWrite(Ljava/lang/String;)V' % DLG_T) not in blk: f.append('108-1c 未走 dWrite')
    if 'const-string v6, "PL i="' not in blk: f.append('108-1d 缺前缀')
    if ('.field public static plN:I' not in d): f.append('108-1e 缺节流字段')
    if ('%s->plN:I' % DLG_T) not in blk: f.append('108-1f 探针未接节流')
    # 调用点：panelLine 内且只 1 处
    if d.count('invoke-static {p0}, %s->plDbg(I)V' % DLG_T) != 1: f.append('108-2 调用点数量 != 1')
    if 'invoke-static {p0}, %s->plDbg(I)V\n\n    if-ltz p0, :pl_lk' % DLG_T not in d:
        f.append('108-2b 调用点未位于 panelLine 入口')
    # 负样本
    n = 0
    d1 = d.replace('const/16 v1, 0x50', 'const/16 v1, 0x0', 1)
    if 'const/16 v1, 0x50' not in d1: n += 1
    d2 = d
    _i = d2.index('.method public static plDbg(I)V')
    _j = d2.index('dWrite(Ljava/lang/String;)V', _i)
    d2 = d2[:_j] + 'nop' + d2[_j + len('dWrite(Ljava/lang/String;)V'):]
    _blk2 = d2.split('.method public static plDbg(I)V')[-1].split('.end method')[0]
    if '->dWrite(' not in _blk2: n += 1
    d3 = d.replace('.field public static plN:I', '', 1)
    if '.field public static plN:I' not in d3: n += 1
    print('== 门禁 108 ==  负样本 %d/3' % n)
    print('   [dbg] n1=%s n2=%s n3=%s' % (
        'const/16 v1, 0x50' not in d1,
        'dWrite' not in _blk2,
        '.field public static plN:I' not in d3))
    if n < 3: f.append('108 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)