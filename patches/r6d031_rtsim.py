# -*- coding: utf-8 -*-
# r6d031_rtsim.py —— RealTimeSim 帧内取证三探针（照《调研_r6d031_第三轮_施工定稿》执行）
#   ① rtTick()          每处理一条任务 +1（纯计数，无 I/O）
#   ② rtFrame()         每 ≥1s 输出 "RTF n=<本帧已处理数>"（免节流 dWrite）
#   ③ rtCatch(Throwable) 输出 "RTCATCH n=<断点> ex=<类型>"（免节流 dWrite）
#   插入点零寄存器；RealTimeSim 原有指令一字不改（纯插入 3 行 invoke）
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
RTS = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/RealTimeSim.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AFMC = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
SB = 'Ljava/lang/StringBuilder;'

FIELDS = ('.field public static rtN:I\n'
          '.field public static rtLastMs:J\n')

RT_TICK = (
'.method public static rtTick()V\n'
'    .registers 2\n'
'\n'
'    # r6d031：RealTimeSim 帧内已处理任务计数（纯计数·无 I/O）\n'
'    sget v0, ' + DLGC + '->rtN:I\n'
'\n'
'    add-int/lit8 v0, v0, 0x1\n'
'\n'
'    sput v0, ' + DLGC + '->rtN:I\n'
'\n'
'    return-void\n'
'.end method\n\n')

RT_FRAME = (
'.method public static rtFrame()V\n'
'    .registers 6\n'
'\n'
'    # r6d031：每 ≥1s 输出一帧汇总（免节流）\n'
'    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n'
'\n'
'    move-result-wide v4\n'
'\n'
'    sget-wide v0, ' + DLGC + '->rtLastMs:J\n'
'\n'
'    sub-long v0, v4, v0\n'
'\n'
'    const-wide/16 v2, 0x3e8\n'
'\n'
'    cmp-long v0, v0, v2\n'
'\n'
'    if-ltz v0, :rf_ret\n'
'\n'
'    sput-wide v4, ' + DLGC + '->rtLastMs:J\n'
'\n'
'    new-instance v0, ' + SB + '\n'
'\n'
'    invoke-direct {v0}, ' + SB + '-><init>()V\n'
'\n'
'    const-string v3, "RTF n="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    sget v2, ' + DLGC + '->rtN:I\n'
'\n'
'    invoke-virtual {v0, v2}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const/4 v2, 0x0\n'
'\n'
'    sput v2, ' + DLGC + '->rtN:I\n'
'\n'
'    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;\n'
'\n'
'    move-result-object v3\n'
'\n'
'    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V\n'
'\n'
'    :rf_ret\n'
'    return-void\n'
'.end method\n\n')

RT_CATCH = (
'.method public static rtCatch(Ljava/lang/Throwable;)V\n'
'    .registers 8\n'
'\n'
'    # r6d031：catch 内取证（断点 + 异常类型；免节流）\n'
'    new-instance v0, ' + SB + '\n'
'\n'
'    invoke-direct {v0}, ' + SB + '-><init>()V\n'
'\n'
'    const-string v3, "RTCATCH n="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    sget v2, ' + DLGC + '->rtN:I\n'
'\n'
'    invoke-virtual {v0, v2}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const/4 v2, 0x0\n'
'\n'
'    sput v2, ' + DLGC + '->rtN:I\n'
'\n'
'    const-string v3, " ex="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n'
'\n'
'    move-result-object v3\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
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

ANCH_TICK = '    invoke-static {v1}, ' + AFMC + '->dedupAirhqDivision(' + AMC + ')V\n'
ANCH_CATCH = '    :catch_5e\n    move-exception v0\n'
ANCH_FRAME = '    :cond_59\n'

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d031' in d: print('[SKIP]'); return
    anc = '.field public static dWrite' if '.field public static dWrite' in d else None
    m = re.search(r'\n\.method ', d)          # 方法插到首个方法前
    d = d[:m.start() + 1] + RT_TICK + RT_FRAME + RT_CATCH + d[m.start() + 1:]
    # 字段插到首个 .method 之前（类字段区）
    i = d.find('.method ')
    d = d[:i] + FIELDS + '\n' + d[i:]
    wr(DLG, d)
    print('  [OK] AirDbgLog: +rtN/rtLastMs +rtTick +rtFrame +rtCatch')
    r = rd(RTS); orig = r
    assert r.count(ANCH_TICK) == 1, 'rtTick 锚点=%d' % r.count(ANCH_TICK)
    assert r.count(ANCH_CATCH) == 1, 'rtCatch 锚点=%d' % r.count(ANCH_CATCH)
    assert r.count(ANCH_FRAME) == 1, 'rtFrame 锚点=%d' % r.count(ANCH_FRAME)
    r = r.replace(ANCH_TICK, '    invoke-static {}, ' + DLGC + '->rtTick()V\n\n' + ANCH_TICK, 1)
    r = r.replace(ANCH_CATCH, ANCH_CATCH + '\n    invoke-static {v0}, ' + DLGC + '->rtCatch(Ljava/lang/Throwable;)V\n', 1)
    r = r.replace(ANCH_FRAME, '    invoke-static {}, ' + DLGC + '->rtFrame()V\n\n' + ANCH_FRAME, 1)
    assert r != orig
    wr(RTS, r)
    print('  [OK] RealTimeSim.updateFrame: +3 行 invoke（纯插入）')

def chk():
    f = []
    d = rd(DLG)
    t = d[d.find('.method public static rtTick()V'):]; t = t[:t.find('.end method')]
    if '.method public static rtTick()V' not in d: f.append('91-1 缺 rtTick')
    if re.search(r'dWrite|dKey|Ljava/io/', t): f.append('91-1 rtTick 内有 I/O（应为纯计数）')
    fr = d[d.find('.method public static rtFrame()V'):]; fr = fr[:fr.find('.end method')]
    if '->dWrite(' not in fr: f.append('91-2 rtFrame 未走免节流 dWrite')
    if '->dKey(' in fr: f.append('91-2 rtFrame 走了 dKey（会被节流吞行）')
    rc = d[d.find('.method public static rtCatch('):]; rc = rc[:rc.find('.end method')]
    if '->dWrite(' not in rc: f.append('91-2 rtCatch 未走 dWrite')
    if 'invoke-virtual {v0, v1}, ' + SB + '->append(Ljava/lang/String;)' in rc:
        f.append('91-3 rtCatch 用 v1(Throwable) 做 String 追加 ⇒ VerifyError 高危')
    if rc.count('invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)') != 3:
        f.append('91-3 rtCatch 的 String 追加次数 != 3')
    if 'invoke-virtual {v0, v2}, ' + SB + '->append(I)' not in rc: f.append('91-3 rtCatch 缺 append(I)')
    for m_, regs in (('rtTick()V', 2), ('rtFrame()V', 6), ('rtCatch(Ljava/lang/Throwable;)V', 8)):
        b = d[d.find('.method public static ' + m_):]; b = b[:b.find('.end method')]
        mreg = int(re.search(r'\.registers (\d+)', b).group(1))
        loc = mreg - (1 if '(' in m_ and 'Ljava/lang/Throwable' in m_ else 0)
        bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= loc)
        if bad: f.append('91-3 %s 寄存器越界 v%s' % (m_, bad))
    r = rd(RTS)
    if '->rtTick()V' not in r: f.append('91-4 RealTimeSim 缺 rtTick')
    if '->rtFrame()V' not in r: f.append('91-4 RealTimeSim 缺 rtFrame')
    if '->rtCatch(' not in r: f.append('91-4 RealTimeSim 缺 rtCatch')
    j = r.find(ANCH_TICK); k = r.find('->rtTick()V')
    if not (k < j): f.append('91-4 rtTick 未在 dedupAirhqDivision 之前')
    ci = r.find(':catch_5e'); ki = r.find('->rtCatch(')
    if not (ci < ki): f.append('91-4 rtCatch 未在 catch 内')
    fi = r.find(ANCH_FRAME); fr_i = r.find('->rtFrame()V')
    if not (fr_i < fi): f.append('91-4 rtFrame 未在 :cond_59 之前')
    if r.count(ANCH_TICK) != 1 or r.count(ANCH_CATCH) != 1 or r.count(ANCH_FRAME) != 1:
        f.append('91-4 锚点不再唯一（原有指令被改动）')
    return f

def gate():
    fails = chk(); neg = 0
    o_d, o_r = rd(DLG), rd(RTS)
    rc = o_d[o_d.find('.method public static rtCatch('):]; seg = rc[:rc.find('.end method')]
    wr(DLG, o_d.replace(seg, seg.replace('{v0, v3}, ' + SB + '->append(Ljava/lang/String;)',
                                         '{v0, v1}, ' + SB + '->append(Ljava/lang/String;)', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d)
    wr(RTS, o_r.replace('    invoke-static {}, ' + DLGC + '->rtTick()V\n\n' + ANCH_TICK, ANCH_TICK, 1))
    if chk(): neg += 1
    wr(RTS, o_r)
    fr = o_d[o_d.find('.method public static rtFrame()V'):]; fseg = fr[:fr.find('.end method')]
    wr(DLG, o_d.replace(fseg, fseg.replace('    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V',
                                           '    const-string v0, "AIRDBG"\n\n    invoke-static {v0, v3}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d); wr(RTS, o_r)
    print('== 门禁 91 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('91 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)