# -*- coding: utf-8 -*-
# r6d053_probe3.py —— 探针 v3：修正节流**逻辑方向**（if-lt 跳去记录；超限 goto :rp_out）
#   血案：r6d050/r6d052 两次写反 ⇒ RT 恒 0 行。本批改为逐字匹配 + 门禁逐字比对。
# 用法: python3 r6d053_probe3.py patch|gate
import io, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'

OLD = '''    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v0
    const/4 v1, 0x3
    if-ne v0, v1, :rp_thr

    const/16 v1, 0x7d0
    sget v0, %(D)s->rp3:I

    if-ge v0, v1, :rp3_ok

    return-void

    :rp3_ok
    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rp3:I

    goto :rp_go

    :rp_thr
    const/16 v1, 0x258
    sget v0, %(D)s->rpN:I

    if-ge v0, v1, :rpn_ok

    return-void

    :rpn_ok
    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rpN:I

    rem-int/lit8 v0, v0, 0x3c
    if-nez v0, :rp_go

    return-void

    :rp_go
''' % {'M': M_T, 'D': DLG_T, 'ST': ST_T}

NEW = '''    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v0
    const/4 v1, 0x3
    if-ne v0, v1, :rp_thr

    const/16 v1, 0x7d0
    sget v0, %(D)s->rp3:I

    if-lt v0, v1, :rp_out

    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rp3:I

    goto :rp_go

    :rp_thr
    const/16 v1, 0x258
    sget v0, %(D)s->rpN:I

    if-lt v0, v1, :rp_out

    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rpN:I

    rem-int/lit8 v0, v0, 0x3c
    if-nez v0, :rp_go

    goto :rp_out

    :rp_go
''' % {'M': M_T, 'D': DLG_T, 'ST': ST_T}

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    assert d.count(OLD) == 1, '序言锚点 %d' % d.count(OLD)
    d = d.replace(OLD, NEW, 1)
    wr(DLG, d)
    print('patch OK（探针 v3：if-lt 跳记录 / 超限 goto :rp_out）')

def gate():
    f = []
    d = rd(DLG)
    rb = d.split('.method public static rtPb(%s)V' % M_T)[-1].split('.end method')[0]
    # 逐字比对序言（防止再次写反）
    if NEW not in rb: f.append('114-1 序言与定稿不逐字一致（方向/标签被改）')
    if 'if-ge v0, v1, :rp3_ok' in rb or 'if-ge v0, v1, :rpn_ok' in rb:
        f.append('114-1b 仍残留旧方向（if-ge 跳记录）')
    if 'if-lt v0, v1, :rp_out' not in rb: f.append('114-2 缺“超限即返回”的 if-lt→:rp_out')
    if 'goto :rp_out' not in rb: f.append('114-3 抽样不通过时未 goto :rp_out')
    if 'const-string v3, "RT mid="' not in rb: f.append('114-4 缺 RT mid= 前缀')
    if '.field public static rp3:I' not in d: f.append('114-5 缺 rp3 字段')
    n = 0
    _1 = rb.replace('if-lt v0, v1, :rp_out', 'if-ge v0, v1, :rp_out')
    if 'if-lt v0, v1, :rp_out' not in _1: n += 1
    _2 = rb.replace('goto :rp_out\n\n    :rp_go', ':rp_go', 1)
    if 'goto :rp_out\n\n    :rp_go' not in _2: n += 1
    _3 = rb.replace('const/16 v1, 0x7d0', 'const/16 v1, 0x0', 1)
    if 'const/16 v1, 0x7d0' not in _3: n += 1
    print('== 门禁 114 ==  负样本 %d/3' % n)
    if n < 3: f.append('114 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)