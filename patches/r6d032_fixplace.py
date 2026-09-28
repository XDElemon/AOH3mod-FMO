# -*- coding: utf-8 -*-
# r6d032_fixplace.py —— 修 r6d031 三个问题：①rtFrame 锚点不可达 ②dWrite 不换行 ③补 AFM 链探针（对冲）
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
RTS = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/RealTimeSim.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
SB = 'Ljava/lang/StringBuilder;'

F_AF = '.field public static afN:I\n'

AF_TICK = (
'.method public static afTick()V\n'
'    .registers 2\n'
'\n'
'    # r6d032：AFM.updateMissions 链内已处理任务计数（纯计数·无 I/O）\n'
'    sget v0, ' + DLGC + '->afN:I\n'
'\n'
'    add-int/lit8 v0, v0, 0x1\n'
'\n'
'    sput v0, ' + DLGC + '->afN:I\n'
'\n'
'    return-void\n'
'.end method\n\n')

AF_FRAME = (
'.method public static afFrame()V\n'
'    .registers 6\n'
'\n'
'    # r6d032：AFM 链每 ≥1s 汇总（免节流）\n'
'    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n'
'\n'
'    move-result-wide v4\n'
'\n'
'    sget-wide v0, ' + DLGC + '->afLastMs:J\n'
'\n'
'    sub-long v0, v4, v0\n'
'\n'
'    const-wide/16 v2, 0x3e8\n'
'\n'
'    cmp-long v0, v0, v2\n'
'\n'
'    if-ltz v0, :aff_ret\n'
'\n'
'    sput-wide v4, ' + DLGC + '->afLastMs:J\n'
'\n'
'    new-instance v0, ' + SB + '\n'
'\n'
'    invoke-direct {v0}, ' + SB + '-><init>()V\n'
'\n'
'    const-string v3, "AF n="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    sget v2, ' + DLGC + '->afN:I\n'
'\n'
'    invoke-virtual {v0, v2}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const/4 v2, 0x0\n'
'\n'
'    sput v2, ' + DLGC + '->afN:I\n'
'\n'
'    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;\n'
'\n'
'    move-result-object v3\n'
'\n'
'    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V\n'
'\n'
'    :aff_ret\n'
'    return-void\n'
'.end method\n\n')

F_AFMS = '.field public static afLastMs:J\n'

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d032' in d: print('[SKIP]'); return
    # ① dWrite 补换行
    old_w = '    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V\n'
    new_w = (old_w + '\n    # r6d032：补换行，保证诊断文件可读\n'
             '    const-string v0, "\\n"\n\n'
             '    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V\n')
    assert d.count(old_w) == 1, 'dWrite.write 锚点=%d' % d.count(old_w)
    d = d.replace(old_w, new_w, 1)
    # ② 新方法 + 字段
    m = re.search(r'\n\.method ', d)
    d = d[:m.start() + 1] + AF_TICK + AF_FRAME + d[m.start() + 1:]
    i = d.find('.method ')
    d = d[:i] + F_AF + F_AFMS + '\n' + d[i:]
    wr(DLG, d)
    print('  [OK] AirDbgLog: dWrite 补换行；+afN/afLastMs +afTick +afFrame')
    # ③ rtFrame 锚点：从 :cond_59 之前 移到 之后
    r = rd(RTS)
    old_anchor = '    invoke-static {}, ' + DLGC + '->rtFrame()V\n\n    :cond_59\n'
    new_anchor = '    :cond_59\n    invoke-static {}, ' + DLGC + '->rtFrame()V\n\n'
    assert r.count(old_anchor) == 1, 'rtFrame 旧锚点=%d' % r.count(old_anchor)
    wr(RTS, r.replace(old_anchor, new_anchor, 1))
    print('  [OK] RealTimeSim: rtFrame 移到 :cond_59 之后（可达）')
    # ④ AFM 链：afTick 在 AirMission->update 之前；afFrame 在方法末尾 return-void 之前
    a = rd(AFM)
    at = '    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->update()V\n'
    assert a.count(at) == 1, 'AirMission->update 锚点=%d' % a.count(at)
    a = a.replace(at, '    invoke-static {}, ' + DLGC + '->afTick()V\n\n' + at, 1)
    i = a.find('.method public updateMissions()V'); j = a.find('.end method', i)
    body = a[i:j]
    k = body.rfind('    return-void\n')
    assert k > 0, 'updateMissions 末尾 return-void 未找到'
    body2 = body[:k] + '    invoke-static {}, ' + DLGC + '->afFrame()V\n\n' + body[k:]
    wr(AFM, a[:i] + body2 + a[j:])
    print('  [OK] AFM.updateMissions: +afTick(每条任务) +afFrame(方法尾)')

def chk():
    f = []
    d = rd(DLG)
    dw = d[d.find('.method public static dWrite('):]; dw = dw[:dw.find('.end method')]
    if dw.count('write(Ljava/lang/String;)V') < 2: f.append('92-1 dWrite 未补换行（应写两次）')
    for n in ('afTick()V', 'afFrame()V'):
        if '.method public static ' + n not in d: f.append('92-2 缺 ' + n)
    at = d[d.find('.method public static afTick()V'):]; at = at[:at.find('.end method')]
    if re.search(r'dWrite|dKey|Ljava/io/', at): f.append('92-2 afTick 内有 I/O')
    af = d[d.find('.method public static afFrame()V'):]; af = af[:af.find('.end method')]
    if '->dWrite(' not in af: f.append('92-2 afFrame 未走 dWrite')
    if af.count("invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;") != 1:
        f.append('92-2 afFrame String 追加走错寄存器')
    r = rd(RTS)
    if re.search(r':cond_59\n\s*invoke-static \{\}, ' + re.escape(DLGC) + r'->rtFrame\(\)V', r) is None:
        f.append('92-3 rtFrame 未紧跟 :cond_59（跳转目标之后才算可达）')
    if re.search(r'->rtFrame\(\)V\n\n\s*:cond_59', r): f.append('92-3 rtFrame 仍在 :cond_59 之前（不可达）')
    a = rd(AFM)
    i = a.find('.method public updateMissions()V'); j = a.find('.end method', i)
    body = a[i:j]
    if '->afTick()V' not in body: f.append('92-4 AFM 缺 afTick')
    if '->afFrame()V' not in body: f.append('92-4 AFM 缺 afFrame')
    if body.find('->afTick()V') > body.find('AirMission;->update()V'):
        f.append('92-4 afTick 未在 AirMission->update 之前')
    return f

def gate():
    fails = chk(); neg = 0
    o_d, o_r, o_a = rd(DLG), rd(RTS), rd(AFM)
    wr(RTS, o_r.replace('    :cond_59\n    invoke-static {}, ' + DLGC + '->rtFrame()V\n\n',
                        '    invoke-static {}, ' + DLGC + '->rtFrame()V\n\n    :cond_59\n', 1))
    if chk(): neg += 1
    wr(RTS, o_r)
    dw = o_d[o_d.find('.method public static dWrite('):]; seg = dw[:dw.find('.end method')]
    wr(DLG, o_d.replace(seg, seg.replace('    const-string v0, "\\n"\n\n    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V\n', '', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d)
    af = o_d[o_d.find('.method public static afFrame()V'):]; aseg = af[:af.find('.end method')]
    wr(DLG, o_d.replace(aseg, aseg.replace('    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V',
                                           '    const-string v0, "AIRDBG"\n\n    invoke-static {v0, v3}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d); wr(RTS, o_r); wr(AFM, o_a)
    print('== 门禁 92 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('92 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)