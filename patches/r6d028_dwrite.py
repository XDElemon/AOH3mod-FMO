# -*- coding: utf-8 -*-
# r6d028_dwrite.py —— 诊断免节流直写：cfgDiag 改走 AirDbgLog.dWrite（独立文件 aircfg_diag.txt）
#  教训①：游戏自带 FinalityLogger.debug/output 全是 return-void（死实现）⇒ 不可用
#  教训②：dKey 有 500ms 落盘节流 ⇒ 同一时刻相邻两行会被吞 ⇒ 诊断必须免节流
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
SB = 'Ljava/lang/StringBuilder;'
CFGLOG = '/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt'

DWRITE = ('.method public static dWrite(Ljava/lang/String;)V\n'
          '    .registers 4\n'
          '\n'
          '    # r6d028：诊断专用免节流直写（失败静默）\n'
          '    const-string v0, "' + CFGLOG + '"\n'
          '\n'
          '    :try_start\n'
          '    new-instance v1, Ljava/io/FileWriter;\n'
          '\n'
          '    const/4 v2, 0x1\n'
          '\n'
          '    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V\n'
          '\n'
          '    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V\n'
          '\n'
          '    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V\n'
          '\n'
          '    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V\n'
          '\n'
          '    :try_end\n'
          '    .catch Ljava/lang/Exception; {:try_start .. :try_end} :dw_catch\n'
          '    return-void\n'
          '\n'
          '    :dw_catch\n'
          '    move-exception v0\n'
          '\n'
          '    return-void\n'
          '.end method\n\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

OLD_CALL = '    invoke-static {v0, v3}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
NEW_CALL = '    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V\n'

def patch():
    d = rd(DLG)
    if 'r6d028' in d: print('[SKIP]'); return
    m = re.search(r'\n\.method ', d)
    d = d[:m.start() + 1] + DWRITE + d[m.start() + 1:]
    i = d.find('.method public static cfgDiag('); j = d.find('.end method', i)
    body = d[i:j]
    assert body.count(OLD_CALL) == 1, 'cfgDiag dKey 调用点=%d' % body.count(OLD_CALL)
    d = d[:i] + body.replace(OLD_CALL, NEW_CALL, 1) + d[j:]
    wr(DLG, d)
    print('  [OK] AirDbgLog: +dWrite（免节流直写 aircfg_diag.txt）；cfgDiag 改走 dWrite')

def chk():
    f = []
    d = rd(DLG)
    if '.method public static dWrite(Ljava/lang/String;)V' not in d: f.append('86-1 缺 dWrite')
    b = d[d.find('.method public static dWrite('):]; b = b[:b.find('.end method')]
    if 'Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V' not in b: f.append('86-1 dWrite 未用 append 模式 FileWriter')
    if '->flush()V' not in b: f.append('86-1 dWrite 未 flush')
    if '.catch Ljava/lang/Exception;' not in b: f.append('86-1 dWrite 缺异常兜底')
    if 'aircfg_diag.txt' not in b: f.append('86-1 dWrite 目标文件不对')
    c = d[d.find('.method public static cfgDiag('):]; c = c[:c.find('.end method')]
    if '->dWrite(' not in c: f.append('86-2 cfgDiag 未走 dWrite')
    if '->dKey(' in c: f.append('86-2 cfgDiag 仍走 dKey（会被 500ms 节流吞掉）')
    return f

def gate():
    fails = chk(); neg = 0
    o = rd(DLG)
    b = o[o.find('.method public static dWrite('):]; seg = b[:b.find('.end method')]
    wr(DLG, o.replace('    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V\n\n', '', 1))
    if chk(): neg += 1
    wr(DLG, o.replace(seg, seg.replace('    .catch Ljava/lang/Exception; {:try_start .. :try_end} :dw_catch\n', '', 1), 1))
    if chk(): neg += 1
    wr(DLG, o)
    c = o[o.find('.method public static cfgDiag('):]; cseg = c[:c.find('.end method')]
    wr(DLG, o.replace(cseg, cseg.replace('    invoke-static {v3}, ' + DLGC + '->dWrite(Ljava/lang/String;)V\n', OLD_CALL, 1), 1))
    if chk(): neg += 1
    wr(DLG, o)
    print('== 门禁 86 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('86 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)