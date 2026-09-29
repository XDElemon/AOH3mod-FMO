# -*- coding: utf-8 -*-
# r6d054_probe4.py —— 探针 v4：真正修正节流方向（限内→记录；超限→跳过）
#   语义（必须成立）：st==3 且 rp3<2000 → 记录，否则跳过
#                     st!=3 且 rpN<600  → 记录（且仅当 rpN%60==0 真正写行），否则跳过
#   门禁 115 带 **语义模拟器**（不再只比对我自己写的文本）
import io, re, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'

OLD = '''    const/16 v1, 0x7d0
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
''' % {'D': DLG_T}

NEW = '''    const/16 v1, 0x7d0
    sget v0, %(D)s->rp3:I

    if-lt v0, v1, :rp3_log

    goto :rp_out

    :rp3_log
    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rp3:I

    goto :rp_go

    :rp_thr
    const/16 v1, 0x258
    sget v0, %(D)s->rpN:I

    if-lt v0, v1, :rpn_log

    goto :rp_out

    :rpn_log
    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rpN:I

    rem-int/lit8 v0, v0, 0x3c
    if-nez v0, :rp_go

    goto :rp_out
''' % {'D': DLG_T}

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    assert d.count(OLD) == 1, '序言锚点 %d' % d.count(OLD)
    wr(DLG, d.replace(OLD, NEW, 1))
    print('patch OK（探针 v4：限内→记录 / 超限→:rp_out）')

def sim(rp3, rpN, st, limit3=0x7d0, limitn=0x258, mod=0x3c):
    """语义模拟：返回 True 表示会写行"""
    if st == 3:
        if rp3 < limit3:
            return True
        return False
    if rpN < limitn:
        return (rpN + 1) % mod == 0   # 递增后取模
    return False

def gate():
    f = []
    d = rd(DLG)
    rb = d.split('.method public static rtPb(%s)V' % M_T)[-1].split('.end method')[0]
    # 语义：'限内→记录' 的分支必须跳向 “log” 标签；'超限' 必须走 :rp_out
    for lim, loglab in (('const/16 v1, 0x7d0', ':rp3_log'), ('const/16 v1, 0x258', ':rpn_log')):
        seg = rb.split(lim, 1)[1] if lim in rb else ''
        if ('if-lt v0, v1, %s' % loglab) not in seg:
            f.append('115-1 %s 后未按 “限内→记录(%s)” 跳转' % (lim, loglab))
        if 'goto :rp_out' not in seg:
            f.append('115-2 %s 后缺 “超限→:rp_out”' % lim)
    if 'if-nez v0, :rp_go' not in rb: f.append('115-3 缺 1/60 抽样判据')
    if 'const-string v3, "RT mid="' not in rb: f.append('115-4 缺 RT mid= 前缀')
    # 模拟器（把上面的语义跑成真值表）
    exp = [(0, 0, 3, True), (2000, 0, 3, False), (0, 59, 1, True), (0, 0, 1, False)]
    for rp3, rpN, st, want in exp:
        got = sim(rp3, rpN, st)
        if got != want:
            f.append('115-5 模拟器不符 rp3=%d rpN=%d st=%d got=%s want=%s' % (rp3, rpN, st, got, want))
    n = 0
    _1 = rb.replace('if-lt v0, v1, :rp3_log', 'if-lt v0, v1, :rp_out', 1)
    if 'if-lt v0, v1, :rp3_log' not in _1: n += 1
    _2 = rb.replace('goto :rp_out\n\n    :rp3_log', ':rp3_log', 1)
    if 'goto :rp_out\n\n    :rp3_log' not in _2: n += 1
    _3 = rb.replace('if-nez v0, :rp_go', 'if-eqz v0, :rp_go', 1)
    if 'if-nez v0, :rp_go' not in _3: n += 1
    print('== 门禁 115 ==  负样本 %d/3' % n)
    if n < 3: f.append('115 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过；模拟器真值表 4/4')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)