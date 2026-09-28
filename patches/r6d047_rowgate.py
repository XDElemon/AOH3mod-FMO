# -*- coding: utf-8 -*-
# r6d047_rowgate.py —— 让飞机行"根本不出现"（不是不绘制）
#   思路（零新增分支、零寄存器类型变化）：
#     InGame_RecruitArmy 里 5 处「读 Data_UnitTypes.Line → 用它守卫本行」，
#     把该读取改为调用 AirDbgLog.panelLine(i)I：
#        非航空 ⇒ 返回真实 Line（行为完全不变）
#        航空   ⇒ 返回 -1（不匹配任何行段 ⇒ 该行根本不被创建，也就没有空档、无法点击）
# 用法: python3 r6d047_rowgate.py patch|gate
import io, re, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
REC = R + 'aoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy.smali'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
DUT_T = 'Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;'

NEW_M = '''.method public static panelLine(I)I
    .registers 6
    # r6d047 招募面板“行归属”：航空兵种返回 -1（不匹配任何行段 ⇒ 该行不会被创建）
    if-ltz p0, :pl_lk

    const/4 v0, -0x1
    return v0

    :pl_lk
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    if-eqz v0, :pl_fb

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    if-ge p0, v1, :pl_fb

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2
    if-eqz v2, :pl_fb

    check-cast v2, %s

    invoke-static {p0}, %s->isAirUnitID(I)Z

    move-result v1
    if-eqz v1, :pl_line

    const/4 v1, -0x1
    return v1

    :pl_line
    iget v1, v2, %s->Line:I

    return v1

    :pl_fb
    const/4 v1, -0x1
    return v1
.end method
''' % (DUT_T, DLG_T, DUT_T)

ANCHOR = '.method public static isAirUnitButton('
IGET = re.compile(r'(?P<ind>[ \t]*)iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager\$Data_UnitTypes;->Line:I\s*\n')
IDXREGS = ['v14', 'v14', 'v14', 'v14', 'v13']

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def snippet(ind, idx):
    return ('%sinvoke-static {%s}, %s->panelLine(I)I\n\n%smove-result v3\n' % (ind, idx, DLG_T, ind))

def patch():
    d = rd(DLG); b = rd(REC)
    assert d.count(ANCHOR) == 1, '锚点A命中 %d' % d.count(ANCHOR)
    assert 'panelLine' not in d, '已打过 A'
    wr(DLG, d.replace(ANCHOR, NEW_M + ANCHOR, 1))
    n = len(IGET.findall(b))
    assert n == 5, '期望 5 处 Line 读取，实测 %d' % n
    cnt = {'i': 0}
    def rep(m):
        i = cnt['i']; cnt['i'] += 1
        return snippet(m.group('ind'), IDXREGS[i])
    b = IGET.sub(rep, b)
    wr(REC, b)
    print('patch OK（Line 读取改写 %d 处）' % cnt['i'])

def gate():
    f = []
    d = rd(DLG); b = rd(REC)
    # 1 辅助方法
    if d.count('.method public static panelLine(I)I') != 1: f.append('107-1 panelLine 缺失/重复')
    blk = d.split('.method public static panelLine(I)I')[-1].split('.end method')[0] if 'panelLine' in d else ''
    if '.registers 6' not in blk: f.append('107-1b 寄存器应为 6')
    if ('invoke-static {p0}, %s->isAirUnitID(I)Z' % DLG_T) not in blk: f.append('107-1c 未复用 isAirUnitID')
    if 'const/4 v1, -0x1' not in blk: f.append('107-1d 缺 -1 返回')
    if 'iget v1, v2, %s->Line:I' % DUT_T not in blk: f.append('107-1e 未返回真实 Line')
    # 2 原读取应清零
    if IGET.search(b): f.append('107-2 仍有旧 Line 读取（未全部改写）')
    if b.count('%s->panelLine(I)I' % DLG_T) != 5: f.append('107-2b panelLine 调用数 != 5')
    if b.count('iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I') != 0: f.append('107-2c 仍残留旧 Line 读取')
    # 3 紧邻性（每处 invoke 后必须紧跟 move-result v3）
    inv = 'invoke-static {v14}, %s->panelLine(I)I' % DLG_T
    inv13 = 'invoke-static {v13}, %s->panelLine(I)I' % DLG_T
    if b.count(inv) != 4: f.append('107-3 v14 调用数 != 4（实测 %d）' % b.count(inv))
    if b.count(inv13) != 1: f.append('107-3b v13 调用数 != 1（实测 %d）' % b.count(inv13))
    for t in (inv, inv13):
        for seg in b.split(t)[1:]:
            if not seg.lstrip('\n').lstrip().startswith('move-result v3'):
                f.append('107-3c move-result 不紧邻 invoke')
                break
    # 4 负样本
    n_ok = 0
    b1 = b.replace(inv, '# killed', 1)
    if b1.count('%s->panelLine(I)I' % DLG_T) != 5: n_ok += 1
    b2 = b
    _i0 = b2.index('panelLine(I)I'); _j0 = b2.index('move-result v3', _i0)
    b2 = b2[:_j0] + 'nop\n' + b2[_j0:]
    if not b2.split('panelLine(I)I')[1].lstrip('\n').lstrip().startswith('move-result v3'): n_ok += 1
    d3 = d.replace('.method public static panelLine(I)I', '.method public static panelLineX(I)I', 1)
    if '.method public static panelLine(I)I' not in d3: n_ok += 1
    # 5 模拟器（Line 语义）
    lines = {0: 0, 1: 0, 2: 1, 3: 2, 4: 2, 5: 1, 6: 2, 7: 1, 8: 1, 9: 1, 10: 1}
    air = {7, 8, 9, 10}
    got = [-1 if i in air else lines.get(i, -1) for i in range(0, 11)]
    exp = [0, 0, 1, 2, 2, 1, 2, -1, -1, -1, -1]
    if got != exp: f.append('107-5 模拟器失败: %s' % got)
    print('== 门禁 107 ==  负样本 %d/3' % n_ok)
    if n_ok < 3: f.append('107 负样本 %d/3' % n_ok)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)