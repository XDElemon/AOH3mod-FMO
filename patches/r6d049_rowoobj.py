# -*- coding: utf-8 -*-
# r6d049_rowoobj.py —— 招募面板：航空行"不创建"（对象版，彻底不碰下标）
#   ① AirDbgLog 新增 panelRowLine(Data_UnitTypes)I：对象是航空 ⇒ -1；否则 ⇒ 它的真实 Line
#   ② AirDbgLog 新增 prDbg(Data_UnitTypes)V：每次“隐藏”记录一行（前 80 次，免节流）
#   ③ InGame_RecruitArmy 5 处：invoke-static {v3}, panelRowLine(对象)I + move-result v3
#      （v3 正是刚刚 get+check-cast 得到的那个对象 ⇒ 与原来的 iget Line 语义完全一致）
# 承接：r6d048 的 plDbg 因 Verifier 错误（v5 未初始化）导致启动崩溃，本批从 .pre_r6d048 重做
import io, re, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
REC = R + 'aoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy.smali'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
DUT_T = 'Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;'

ANCHOR = '.method public static isAirUnitID(I)Z\n'
FIELD = '.field public static plN:I\n'
FTOP = '.field private static tickMs:J\n'

NEW = '''.method public static panelRowLine(%(DUT)s)I
    .registers 4
    # r6d049 招募面板“行归属”（对象版）：航空 ⇒ -1（不匹配任何行段 ⇒ 该行不会被创建）
    if-eqz p0, :pr_no

    iget-object v0, p0, %(DUT)s->File:Ljava/lang/String;

    if-eqz v0, :pr_line

    const-string v1, "Air"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    if-eqz v1, :pr_line

    invoke-static {p0}, %(DLG)s->prDbg(%(DUT)s)V

    const/4 v1, -0x1
    return v1

    :pr_line
    iget v1, p0, %(DUT)s->Line:I

    return v1

    :pr_no
    const/4 v1, -0x1
    return v1
.end method
.method public static prDbg(%(DUT)s)V
    .registers 6
    # r6d049 证据：每次隐藏都记一行（前 80 次，免节流）
    sget v4, %(DLG)s->plN:I

    const/16 v0, 0x50

    if-le v4, v0, :pd_out

    add-int/lit8 v4, v4, 0x1

    sput v4, %(DLG)s->plN:I

    iget-object v0, p0, %(DUT)s->File:Ljava/lang/String;

    if-eqz v0, :pd_go

    const-string v0, "(null)"
    :pd_go
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PR hide f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    const-string v2, " l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    iget v2, p0, %(DUT)s->Line:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    invoke-static {v3}, %(DLG)s->dWrite(Ljava/lang/String;)V

    :pd_out
    return-void
.end method
''' % {'DLG': DLG_T, 'DUT': DUT_T}

OLD_INV = re.compile(r'(?P<ind>[ \t]*)invoke-static \{(?P<ix>v1[34])\}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->panelLine\(I\)I\s*\n\s*move-result v3\s*\n')
NEW_INV = '%(ind)sinvoke-static {v3}, ' + DLG_T + '->panelRowLine(' + DUT_T + ')I\n\n%(ind)smove-result v3\n'

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG); b = rd(REC)
    assert 'prDbg' not in d, '已打过 r6d049'
    assert d.count(ANCHOR) == 1, 'DLG 锚点命中 %d' % d.count(ANCHOR)
    d = d.replace(ANCHOR, NEW + ANCHOR, 1)
    assert d.count(FIELD) == 0
    assert d.count(FTOP) == 1, '字段顶部锚点命中 %d' % d.count(FTOP)
    d = d.replace(FTOP, FTOP + FIELD, 1)
    wr(DLG, d)

    n = len(OLD_INV.findall(b))
    assert n == 5, '期望 5 处旧调用，实测 %d' % n
    b = OLD_INV.sub(lambda m: NEW_INV % {'ind': m.group('ind')}, b)
    wr(REC, b)
    print('patch OK（改用对象版 %d 处）' % n)

def gate():
    f = []
    d = rd(DLG); b = rd(REC)
    sig = '.method public static panelRowLine(%s)I' % DUT_T
    if d.count(sig) != 1: f.append('109-1 panelRowLine 缺失/重复')
    blk = d.split(sig)[-1].split('.end method')[0]
    if '.registers 4' not in blk: f.append('109-1b 寄存器应为 4')
    if 'startsWith(Ljava/lang/String;)Z' not in blk: f.append('109-1c 缺前缀判定')
    if 'const/4 v1, -0x1' not in blk: f.append('109-1d 缺 -1')
    if ('iget v1, p0, %s->Line:I' % DUT_T) not in blk: f.append('109-1e 未返回真实 Line')
    # 极性：air ⇒ 走 -1 分支（startsWith 结果 if-eqz 跳到 :pr_line = 非航空）
    if 'move-result v1\n    if-eqz v1, :pr_line' not in blk: f.append('109-1f 极性错误')
    if 'if-eqz p0, :pr_no' not in blk: f.append('109-1g 缺空对象保护')
    # prDbg
    if d.count('.method public static prDbg(%s)V' % DUT_T) != 1: f.append('109-2 prDbg 缺失/重复')
    pb = d.split('.method public static prDbg(%s)V' % DUT_T)[-1].split('.end method')[0]
    if 'const/16 v0, 0x50' not in pb: f.append('109-2b 缺节流')
    if '->dWrite(Ljava/lang/String;)V' not in pb: f.append('109-2c 未走 dWrite')
    if ('%s->plN:I' % DLG_T) not in pb: f.append('109-2d 未接节流字段')
    if d.count(FIELD) != 1: f.append('109-2e 字段缺失/重复')
    # 调用点
    inv = 'invoke-static {v3}, %s->panelRowLine(%s)I' % (DLG_T, DUT_T)
    if b.count(inv) != 5: f.append('109-3 调用点 != 5（实测 %d）' % b.count(inv))
    if b.count('%s->panelLine(I)I' % DLG_T) != 0: f.append('109-3b 仍残留旧 panelLine 调用')
    for seg in b.split(inv)[1:]:
        if not seg.lstrip('\n').lstrip().startswith('move-result v3'):
            f.append('109-3c move-result 不紧邻 invoke'); break
    # 负样本
    n = 0
    if 'const/4 v1, -0x1' not in d.split(sig)[-1].split('.end method')[0].replace('const/4 v1, -0x1', '', 2): n += 1
    d2 = d.replace('move-result v1\n    if-eqz v1, :pr_line', 'if-eqz v1, :pr_line', 1)
    if 'move-result v1\n    if-eqz v1, :pr_line' not in d2: n += 1
    b3 = b.replace(inv, '# killed', 1)
    if b3.count(inv) != 5: n += 1
    print('== 门禁 109 ==  负样本 %d/3' % n)
    if n < 3: f.append('109 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)