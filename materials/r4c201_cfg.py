# -*- coding: utf-8 -*-
# R4c201：
#  ① 废掉 mtime 门：:lc_skip1 直接 goto :lc_proceed（每 64 次调用重读一次 122 字节文件，代价可忽略）
#     —— 彻底消灭"stamp 写死后永久 skip"这一整类问题
#  ② 读文件失败时也打一条 nRTXT NULL，避免静默
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

def rep1(old, new, tag):
    global src
    n = src.count(old)
    assert n == 1, 'anchor[%s] count=%d' % (tag, n)
    src = src.replace(old, new, 1)
    print('OK %s' % tag)

# ① 废门
A = ('    :lc_skip1\n'
     '    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I\n'
     '    if-eqz v6, :lc_skip1_log\n'
     '    goto :lc_proceed\n'
     '    :lc_skip1_log\n')
B = ('    :lc_skip1\n'
     '    # R4c201：无视 mtime，直接重解析（消灭 stamp 卡死问题）\n'
     '    goto :lc_proceed\n'
     '    :lc_skip1_log\n')
rep1(A, B, 'no mtime gate')

# ② 读失败也留痕
C = ('    :lc_skip4\n'
     '    const-string v12, "nCL skip=4"\n')
D = ('    :lc_skip4\n'
     '    const-string v13, "AIRDBG"\n'
     '    const-string v12, "nRTXT NULL"\n'
     '    invoke-static {v13, v12}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
     '    move-result v6\n'
     '    const-string v12, "nCL skip=4"\n')
rep1(C, D, 'null text log')

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))