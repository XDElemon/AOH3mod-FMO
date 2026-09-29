# -*- coding: utf-8 -*-
# r6d051_probefix.py —— 只修探针（不碰 AirMission/不加 tickInvars）
#   ① rtPb 节流极性修正：if-ge v0,v1,:rp_ok + return-void  →  if-ge v0,v1,:rp_out
#      （r6d050 写法使 rpN 永不递增 ⇒ RT 恒 0 行）
#   ② RT 行加入 missionID（long → int，避免 append(J) 血案）
# 用法: python3 r6d051_probefix.py patch|gate
import io, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
MIS = R + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'

A_OLD = '''    const/16 v1, 0x12c
    if-ge v0, v1, :rp_ok

    return-void

    :rp_ok
    add-int/lit8 v0, v0, 0x1
'''
A_NEW = '''    const/16 v1, 0x12c
    if-ge v0, v1, :rp_out

    add-int/lit8 v0, v0, 0x1
'''

B_OLD = '    const-string v3, "RT rnd="\n'
B_NEW = ('''    iget-wide v4, p0, %(M)s->missionID:J

    long-to-int v6, v4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " rnd="
''' % {'M': M_T})

UPD = '.method public update()V\n'

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG); m = rd(MIS)
    assert d.count(A_OLD) == 1, '节流锚点 %d' % d.count(A_OLD)
    d = d.replace(A_OLD, A_NEW, 1)
    assert d.count(B_OLD) == 1, 'RT 行锚点 %d' % d.count(B_OLD)
    d = d.replace(B_OLD, B_NEW, 1)
    wr(DLG, d)
    assert 'tickInvars' not in m, 'AirMission 不应含 tickInvars（本批只修探针）'
    print('patch OK（仅探针）')

def gate():
    f = []
    d = rd(DLG); m = rd(MIS)
    rb = d.split('.method public static rtPb(%s)V' % M_T)[-1].split('.end method')[0]
    if 'if-ge v0, v1, :rp_out' not in rb: f.append('112-1 节流未指向 :rp_out（极性/落点错）')
    if ':rp_ok' in rb: f.append('112-1b 仍残留 :rp_ok 标签')
    if ('%s->missionID:J' % M_T) not in rb: f.append('112-2 RT 行缺 missionID')
    if 'long-to-int v6, v4' not in rb: f.append('112-2b long 未转 int')
    if rb.count('->dWrite(Ljava/lang/String;)V') != 1: f.append('112-3 dWrite 调用数 != 1')
    if 'tickInvars' in d or 'tickInvars' in m: f.append('112-4 误带 tickInvars 补丁')
    if m.count('%s->rtPb(%s)V' % (DLG_T, M_T)) != 1: f.append('112-5 探针调用点 != 1')
    if (UPD + '    .registers 9\n    invoke-static {p0}, %s->rtPb(%s)V\n' % (DLG_T, M_T)) not in m:
        f.append('112-5b 探针调用不在 update() 入口首条')
    n = 0
    _r = rb.replace('if-ge v0, v1, :rp_out', 'if-lt v0, v1, :rp_out', 1)
    if 'if-ge v0, v1, :rp_out' not in _r: n += 1
    _r2 = rb.replace('long-to-int v6, v4', '')
    if 'long-to-int v6, v4' not in _r2: n += 1
    _m = m.replace('%s->rtPb(%s)V' % (DLG_T, M_T), 'nop', 1)
    if '%s->rtPb(%s)V' % (DLG_T, M_T) not in _m: n += 1
    print('== 门禁 112 ==  负样本 %d/3' % n)
    print('   [dbg] n1=%s n2=%s n3=%s' % (
        'if-ge v0, v1, :rp_out' not in _r,
        'long-to-int v6, v4' not in _r2,
        '%s->rtPb(%s)V' % (DLG_T, M_T) not in _m))
    if n < 3: f.append('112 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)