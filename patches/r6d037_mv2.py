# -*- coding: utf-8 -*-
# r6d037_mv2.py —— mvSeg 两处升级：①调用点移到"兜底之后"（读到的 dur 是修复后值）②增加 s= 状态与放宽过滤
#   目的：抓那 16 个"连续上百次采样都不换省"的真·卡死任务，看到它卡在哪个状态/哪一步
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
MS = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'
SB = 'Ljava/lang/StringBuilder;'

# 1) 旧的调用点（在 anim 自增后）→ 删除
OLD_CALL = ('    iget v12, p0, ' + AMC + '->airDivSegAnimMs:I\n'
            '\n'
            '    add-int/lit8 v12, v12, 0x10\n'
            '\n'
            '    iput v12, p0, ' + AMC + '->airDivSegAnimMs:I\n'
            '\n'
            '    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->mvSeg(' + AMC + ')V\n')
NEW_CALL = ('    iget v12, p0, ' + AMC + '->airDivSegAnimMs:I\n'
            '\n'
            '    add-int/lit8 v12, v12, 0x10\n'
            '\n'
            '    iput v12, p0, ' + AMC + '->airDivSegAnimMs:I\n')

# 2) 新调用点：兜底块之后（:ssd_ok 之后）
ANCH2 = ('    :ssd_ok\n')
NEW2 = ('    :ssd_ok\n'
        '    # r6d037：兜底之后取值 ⇒ dur 为修复后真值\n'
        '    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->mvSeg(' + AMC + ')V\n')

# 3) mvSeg 增加 s= 字段（把 " at=" 之前插入 s=）
OLD_S = '    const-string v3, " at="\n'
NEW_S = ('    const-string v3, " s="\n'
         '\n'
         '    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
         '\n'
         '    move-result-object v0\n'
         '\n'
         '    iget-object v12, p0, ' + AMC + '->state:' + MS + '\n'
         '\n'
         '    invoke-virtual {v12}, ' + MS + '->ordinal()I\n'
         '\n'
         '    move-result v12\n'
         '\n'
         '    invoke-virtual {v0, v12}, ' + SB + '->append(I)' + SB + '\n'
         '\n'
         '    move-result-object v0\n'
         '\n'
         '    const-string v3, " at="\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    a = rd(AM)
    if 'r6d037' not in a:
        assert a.count(OLD_CALL) == 1, '旧调用点=%d' % a.count(OLD_CALL)
        a = a.replace(OLD_CALL, NEW_CALL, 1)
        i = a.find('.method public moveDivisionAlongFlight()V'); j = a.find('.end method', i)
        body = a[i:j]
        assert body.count(ANCH2) == 1, ':ssd_ok 锚点=%d' % body.count(ANCH2)
        body = body.replace(ANCH2, NEW2, 1)
        wr(AM, a[:i] + body + a[j:])
        print('  [OK] AirMission: mvSeg 调用点移到 dur 兜底之后')
    d = rd(DLG)
    if 'r6d037' not in d:
        i = d.find('.method public static mvSeg('); j = d.find('.end method', i)
        body = d[i:j]
        assert body.count(OLD_S) == 1, 'at= 锚点=%d' % body.count(OLD_S)
        body = body.replace(OLD_S, NEW_S, 1)
        wr(DLG, d[:i] + body + d[j:])
        print('  [OK] AirDbgLog.mvSeg: +s=<状态序号>')

def chk():
    f = []
    a = rd(AM)
    i = a.find('.method public moveDivisionAlongFlight()V'); j = a.find('.end method', i)
    m = a[i:j]
    if '->mvSeg(' not in m: f.append('97-1 缺 mvSeg')
    k_fix = m.find('const/16 v12, 0x3e8')
    k_call = m.find('->mvSeg(')
    if k_fix < 0 or k_call < 0 or k_call < k_fix: f.append('97-1 mvSeg 未移到兜底之后（读到的 dur 仍是旧值）')
    d = rd(DLG)
    b = d[d.find('.method public static mvSeg('):]; b = b[:b.find('.end method')]
    if '" s="' not in b: f.append('97-2 mvSeg 未加 s= 字段')
    if '->ordinal()I' not in b: f.append('97-2 s= 未取状态序号')
    if b.count('invoke-virtual {v0, v12}, ' + SB + '->append(I)') != 1: f.append('97-2 append(I) 次数异常')
    if 'invoke-virtual {v0, v12}, ' + SB + '->append(Ljava/lang/String;)' in b:
        f.append('97-2 v12 被当 String 追加 ⇒ VerifyError 高危')
    reg = int(re.search(r'\.registers (\d+)', b).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= reg - 1)
    if bad: f.append('97-2 mvSeg 寄存器越界 v%s' % bad)
    return f

def gate():
    fails = chk(); neg = 0
    o_a, o_d = rd(AM), rd(DLG)
    i = o_a.find('.method public moveDivisionAlongFlight()V'); j = o_a.find('.end method', i)
    m = o_a[i:j]
    wr(AM, o_a[:i] + m.replace('    :ssd_ok\n    # r6d037：兜底之后取值 ⇒ dur 为修复后真值\n    invoke-static {p0}, '
                               + 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->mvSeg(' + AMC + ')V\n',
                               '    :ssd_ok\n    invoke-static {p0}, '
                               + 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->mvSeg(' + AMC + ')V\n', 1) + o_a[j:])
    if chk(): neg += 1   # 只有"存在性"能过 ⇒ 该负样本不算红，见下
    wr(AM, o_a)
    wr(DLG, o_d.replace('    const-string v3, " s="\n\n', '', 1))
    if chk(): neg += 1
    wr(DLG, o_d)
    b = o_d[o_d.find('.method public static mvSeg('):]; bseg = b[:b.find('.end method')]
    wr(DLG, o_d.replace(bseg, bseg.replace('    invoke-virtual {v0, v12}, ' + SB + '->append(I)' + SB + '\n',
                                           '    invoke-virtual {v0, v12}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d)
    print('== 门禁 97 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('97 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)