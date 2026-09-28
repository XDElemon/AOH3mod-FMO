# -*- coding: utf-8 -*-
# r6d034_seggate.py —— 定点探针：直接在 moveDivisionAlongFlight 里打"换省门"三件套
#   输出（仅当 at != tg 且 gap=dur-anim >= 3000 时，按 1/32 全局节流）：
#     MV mid=<..> fp=<航程进度F> anim=<已累计>/<dur=需要> gap=<差值> at=<省> tg=<目标省>
#   门禁 94：结构/极性/寄存器 + 判读模拟器 + 3 负样本
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
SB = 'Ljava/lang/StringBuilder;'

FIELD = '.field public static mvTick:I\n'

MV = (
'.method public static mvSeg(' + AMC + ')V\n'
'    .registers 16\n'
'\n'
'    # r6d034：换省门定点取证（只读；1/32 节流）\n'
'    sget v1, ' + DLGC + '->mvTick:I\n'
'\n'
'    add-int/lit8 v1, v1, 0x1\n'
'\n'
'    sput v1, ' + DLGC + '->mvTick:I\n'
'\n'
'    and-int/lit8 v1, v1, 0x1f\n'
'\n'
'    if-nez v1, :mv_go\n'
'\n'
'    return-void\n'
'\n'
'    :mv_go\n'
'    iget v4, p0, ' + AMC + '->airDivSegAnimMs:I\n'
'\n'
'    iget v5, p0, ' + AMC + '->airDivSegDurMs:I\n'
'\n'
'    iget v7, p0, ' + AMC + '->airDivisionAtProvinceID:I\n'
'\n'
'    iget v8, p0, ' + AMC + '->targetProvinceID:I\n'
'\n'
'    if-eq v7, v8, :mv_ret\n'
'\n'
'    sub-int v6, v5, v4\n'
'\n'
'    const/16 v1, 0xbb8\n'
'\n'
'    if-lt v6, v1, :mv_ret\n'
'\n'
'    new-instance v0, ' + SB + '\n'
'\n'
'    invoke-direct {v0}, ' + SB + '-><init>()V\n'
'\n'
'    const-string v3, "MV mid="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    iget-wide v9, p0, ' + AMC + '->missionID:J\n'
'\n'
'    invoke-virtual {v0, v9, v10}, ' + SB + '->append(J)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, " fp="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    iget v11, p0, ' + AMC + '->flightProgress:F\n'
'\n'
'    invoke-virtual {v0, v11}, ' + SB + '->append(F)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, " anim="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, v4}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, "/"\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, v5}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, " gap="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, v6}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, " at="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, v7}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, " tg="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, v8}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;\n'
'\n'
'    move-result-object v3\n'
'\n'
'    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V\n'
'\n'
'    :mv_ret\n'
'    return-void\n'
'.end method\n\n')

ANCH = ('    iget v12, p0, ' + AMC + '->airDivSegAnimMs:I\n'
        '\n'
        '    add-int/lit8 v12, v12, 0x10\n'
        '\n'
        '    iput v12, p0, ' + AMC + '->airDivSegAnimMs:I\n')
CALL = ('\n    invoke-static {p0}, ' + DLGC + '->mvSeg(' + AMC + ')V\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d034' not in d:
        m = re.search(r'\n\.method ', d)
        d = d[:m.start() + 1] + MV + d[m.start() + 1:]
        i = d.find('.method ')
        d = d[:i] + FIELD + '\n' + d[i:]
        wr(DLG, d)
        print('  [OK] AirDbgLog: +mvTick +mvSeg(AirMission)')
    a = rd(AM)
    if 'r6d034' not in a:
        assert a.count(ANCH) == 1, 'segAnim 锚点=%d' % a.count(ANCH)
        wr(AM, a.replace(ANCH, ANCH + CALL, 1))
        print('  [OK] AirMission.moveDivisionAlongFlight: +mvSeg 调用')

def sim_gate(anim, dur_, at, tg):
    """判读模拟器：换省门 + 探针筛选条件"""
    if at == tg: return 'SKIP_EQUAL'
    gap = dur_ - anim
    if gap < 3000: return 'NORMAL'
    if anim <= 0: return 'ANIM_FROZEN'      # 时间轴没走
    if dur_ > 60000: return 'DUR_HUGE'      # 段时长异常
    return 'LAGGING'                        # 走得慢但没卡死

def chk():
    f = []
    d = rd(DLG)
    if '.method public static mvSeg(' + AMC + ')V' not in d: f.append('94-1 缺 mvSeg')
    b = d[d.find('.method public static mvSeg('):]; b = b[:b.find('.end method')]
    if '->dWrite(' not in b: f.append('94-1 mvSeg 未走免节流 dWrite')
    if 'invoke-virtual {v0, v11}, ' + SB + '->append(F)' not in b: f.append('94-1 缺 append(F)（航程进度）')
    if 'invoke-virtual {v0, v9, v10}, ' + SB + '->append(J)' not in b: f.append('94-1 append(J) 寄存器对写错')
    if b.count('invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)') < 7:
        f.append('94-1 String 追加次数异常')
    if 'invoke-virtual {v0, v1}, ' + SB + '->append(Ljava/lang/String;)' in b:
        f.append('94-2 v1 被当 String 追加 ⇒ VerifyError 高危')
    if not re.search(r'if-eq v7, v8, :mv_ret', b): f.append('94-2 at==tg 应跳过（极性错）')
    if not re.search(r'if-lt v6, v1, :mv_ret', b): f.append('94-2 gap<阈 应跳过（极性错）')
    m = int(re.search(r'\.registers (\d+)', b).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= m - 1)
    if bad: f.append('94-2 mvSeg 寄存器越界 v%s (locals=%d)' % (bad, m - 1))
    a = rd(AM)
    i = a.find('.method public moveDivisionAlongFlight()V'); j = a.find('.end method', i)
    body = a[i:j]
    if '->mvSeg(' not in body: f.append('94-3 未插 mvSeg')
    if body.find('->mvSeg(') < body.find('airDivSegAnimMs:I'):
        f.append('94-3 mvSeg 插在了时间轴自增之前（应之后）')
    # 模拟器
    if sim_gate(0, 20000, 100, 200) != 'ANIM_FROZEN': f.append('94A 时间轴冻结判读错')
    if sim_gate(100, 90000, 100, 200) != 'DUR_HUGE': f.append('94A 段时长异常判读错')
    if sim_gate(5000, 6000, 100, 200) != 'NORMAL': f.append('94A 正常段误报')
    if sim_gate(5000, 6000, 100, 100) != 'SKIP_EQUAL': f.append('94A at==tg 未跳过')
    return f

def gate():
    fails = chk(); neg = 0
    d0, a0 = rd(DLG), rd(AM)
    b = d0[d0.find('.method public static mvSeg('):]; seg = b[:b.find('.end method')]
    wr(DLG, d0.replace(seg, seg.replace('    if-eq v7, v8, :mv_ret\n', '    if-ne v7, v8, :mv_ret\n', 1), 1))
    if chk(): neg += 1
    wr(DLG, d0.replace(seg, seg.replace('    invoke-virtual {v0, v9, v10}, ' + SB + '->append(J)' + SB + '\n', '    invoke-virtual {v0, v1, v2}, ' + SB + '->append(J)' + SB + '\n', 1), 1))
    if chk(): neg += 1
    wr(DLG, d0)
    wr(AM, a0.replace(ANCH, ANCH.replace('    iget v12, p0, ' + AMC + '->airDivSegAnimMs:I\n', '', 1), 1))
    if chk(): neg += 1
    wr(DLG, d0); wr(AM, a0)
    print('== 门禁 94 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('94 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过（含换省门判读模拟器）'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)