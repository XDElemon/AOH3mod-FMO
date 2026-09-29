# -*- coding: utf-8 -*-
# r6d052_probe2.py —— 探针 v2：①st=3 优先无差别记录 ②其它状态按 1/60 抽样 ③补回 "RT mid=" 前缀
#   目的：长时间覆盖，抓住“停在昂兰那个任务”的 st/at/home/div/rnd/d/fp/el
# 用法: python3 r6d052_probe2.py patch|gate
import io, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'

P_OLD = '''    sget v0, %(D)s->rpN:I

    const/16 v1, 0x12c
    if-ge v0, v1, :rp_out

    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rpN:I
''' % {'D': DLG_T}

P_NEW = '''    iget-object v0, p0, %(M)s->state:%(ST)s

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
''' % {'D': DLG_T, 'M': M_T, 'ST': ST_T}

B_OLD = '''    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, %(M)s->missionID:J
''' % {'M': M_T}

B_NEW = '''    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "RT mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget-wide v4, p0, %(M)s->missionID:J
''' % {'M': M_T}

FFIELD = '.field public static rpN:I\n'

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    assert d.count(P_OLD) == 1, '探针序言锚点 %d' % d.count(P_OLD)
    d = d.replace(P_OLD, P_NEW, 1)
    assert d.count(B_OLD) == 1, 'RT 前缀锚点 %d' % d.count(B_OLD)
    d = d.replace(B_OLD, B_NEW, 1)
    assert d.count(FFIELD) == 1
    d = d.replace(FFIELD, FFIELD + '.field public static rp3:I\n', 1)
    wr(DLG, d)
    print('patch OK（探针 v2）')

def gate():
    f = []
    d = rd(DLG)
    rb = d.split('.method public static rtPb(%s)V' % M_T)[-1].split('.end method')[0]
    if 'if-ne v0, v1, :rp_thr' not in rb: f.append('113-1 st==3 分支缺失/极性错')
    if 'const/16 v1, 0x7d0' not in rb: f.append('113-1b 缺 st=3 上限 2000')
    if 'const/16 v1, 0x258' not in rb: f.append('113-1c 缺其它状态上限 600')
    if 'rem-int/lit8 v0, v0, 0x3c' not in rb: f.append('113-1d 缺 1/60 抽样')
    if 'if-nez v0, :rp_go' not in rb: f.append('113-1e 抽样极性错')
    if 'const-string v3, "RT mid="' not in rb: f.append('113-2 缺 RT mid= 前缀')
    if '.field public static rp3:I' not in d: f.append('113-3 缺 rp3 字段')
    if ('%s->rp3:I' % DLG_T) not in rb: f.append('113-3b 未接 rp3')
    n = 0
    _1 = rb.replace('if-ne v0, v1, :rp_thr', 'if-eq v0, v1, :rp_thr', 1)
    if 'if-ne v0, v1, :rp_thr' not in _1: n += 1
    _2 = rb.replace('rem-int/lit8 v0, v0, 0x3c', '', 1)
    if 'rem-int/lit8 v0, v0, 0x3c' not in _2: n += 1
    _3 = rb.replace('const-string v3, "RT mid="', 'const-string v3, "mid="', 1)
    if 'const-string v3, "RT mid="' not in _3: n += 1
    print('== 门禁 113 ==  负样本 %d/3' % n)
    if n < 3: f.append('113 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)