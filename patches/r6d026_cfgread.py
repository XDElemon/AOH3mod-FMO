# -*- coding: utf-8 -*-
# r6d026_cfgread.py —— 修「配置文件读不到」：cfgReadText 从 java.nio.file 改为 java.io.FileInputStream
#  症状：BOOT cfgDbg=0（dgDebug 恒为编译默认 0）⇒ dbgOn 恒 false ⇒ 探针永远 0 字节
#  根因：r4c193 逐字件用 Paths.get + Files.readAllBytes 读 /storage，在 Android 上被拒 ⇒ catch 吞掉 ⇒ null
import re, sys, io
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'

NEW = '''.method public static cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    # r6d026：改用 java.io（FileInputStream）—— NIO 在 /storage 上读不到（r4c193 逐字件遗留）
    const/4 v0, 0x0

    :ct_try
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    :ct_loop
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :ct_done

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :ct_loop

    :ct_done
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    :ct_end
    return-object v0

    :ct_catch
    const/4 v0, 0x0

    return-object v0
    .catch Ljava/lang/Exception; {:ct_try .. :ct_end} :ct_catch
.end method
'''

OLD = '''.method public static cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    # r4c193 逐字件（r6d001 复用）：读文本文件，失败→null，不抛异常
    const/4 v1, 0x0
    :ct_try
    const/4 v2, 0x0
    new-array v2, v2, [Ljava/lang/String;
    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    move-result-object v2
    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B
    move-result-object v2
    new-instance v1, Ljava/lang/String;
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :ct_end
    return-object v1
    :ct_catch
    const/4 v1, 0x0
    return-object v1
    .catch Ljava/lang/Exception; {:ct_try .. :ct_end} :ct_catch
.end method
'''

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    a = rd(AFM)
    if 'r6d026' in a:
        print('[SKIP] 已打过'); return
    assert a.count(OLD) == 1, 'cfgReadText 逐字锚点=%d' % a.count(OLD)
    wr(AFM, a.replace(OLD, NEW, 1))
    print('  [OK] cfgReadText: java.nio.file → java.io.FileInputStream')

def chk():
    f = []
    a = rd(AFM)
    b = a[a.find('.method public static cfgReadText('):]
    b = b[:b.find('.end method')]
    if 'Ljava/io/FileInputStream;' not in b: f.append('84-1 未用 FileInputStream')
    if 'java/nio/file' in b: f.append('84-1 仍残留 NIO（在 /storage 上读不到）')
    if '->close()V' not in b: f.append('84-1 未关闭流')
    if '.catch Ljava/lang/Exception;' not in b: f.append('84-1 缺异常兜底（失败须返回 null）')
    if ':cei_ret' in b: f.append('84-1 结构异常')
    if '->read([B)I' not in b: f.append('84-1 缺读取循环')
    return f

def gate():
    fails = chk(); neg = 0
    o = rd(AFM)
    # 负样本①：退回 NIO
    wr(AFM, o.replace(NEW, OLD, 1))
    if chk(): neg += 1
    # 负样本②：删掉异常兜底
    wr(AFM, o.replace('    .catch Ljava/lang/Exception; {:ct_try .. :ct_end} :ct_catch\n', '', 1))
    if chk(): neg += 1
    # 负样本③：删掉 close
    wr(AFM, o.replace('    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V\n\n', '', 1))
    if chk(): neg += 1
    wr(AFM, o)
    print('== 门禁 84 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('84 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)