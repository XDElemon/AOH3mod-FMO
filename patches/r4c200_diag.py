# -*- coding: utf-8 -*-
# R4c200：配置诊断强化
#  ① :lc_ok 处打印 app 真正读到的原文（nRTXT <len> [<text>]）
#  ② mtime 相同但 cfgMode==0 时强制重解析
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

def rep1(old, new, tag):
    global src
    n = src.count(old)
    assert n == 1, 'anchor[%s] count=%d' % (tag, n)
    src = src.replace(old, new, 1)
    print('OK %s' % tag)

# ① 原文直录
A = '    :lc_ok\n\n    const-string v12, "rove"\n'
B = ('    :lc_ok\n\n'
     '    # R4c200：把 app 真正读到的原文打出来（定位内容不符）\n'
     '    const-string v12, "AIRDBG"\n'
     '    new-instance v10, Ljava/lang/StringBuilder;\n'
     '    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V\n'
     '    const-string v13, "nRTXT "\n'
     '    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v11}, Ljava/lang/String;->length()I\n'
     '    move-result v6\n'
     '    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '    const-string v13, " ["\n'
     '    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    const-string v13, "]"\n'
     '    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
     '    move-result-object v13\n'
     '    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
     '    move-result v6\n'
     '    const-string v12, "rove"\n')
rep1(A, B, 'raw text dump')

# ② cfgMode==0 时强制重解析
C = '    :lc_skip1\n    const-string v12, "nCL skip=1"\n'
D = ('    :lc_skip1\n'
     '    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I\n'
     '    if-eqz v6, :lc_skip1_log\n'
     '    goto :lc_proceed\n'
     '    :lc_skip1_log\n'
     '    const-string v12, "nCL skip=1"\n')
rep1(C, D, 'force retry')

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))