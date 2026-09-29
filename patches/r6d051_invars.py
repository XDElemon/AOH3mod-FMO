# -*- coding: utf-8 -*-
# r6d051_invars.py —— ①修 r6d050 探针节流极性 ②探针加 missionID
#                    ③新增 AirMission.tickInvars()V（R1/R2/R3 结构性转移）④update() 入口挂上
# 用法: python3 r6d051_invars.py patch|gate
import io, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
MIS = R + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'
AD_T = 'Laoc/kingdoms/lukasz/map/army/ArmyDivision;'
AP_T = 'Laoc/kingdoms/lukasz/map/battles/Airport;'

# ---------- A. rtPb 节流极性修正 ----------
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

# ---------- A2. 探针加 missionID ----------
B_OLD = '    const-string v3, "RT rnd="\n'
B_NEW = ('''    iget-wide v4, p0, %(M)s->missionID:J

    long-to-int v6, v4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " rnd="
''' % {'M': M_T})

# ---------- B. ivLog ----------
IVLOG = '''.method public static ivLog(I)V
    .registers 8
    # r6d051 R1/R2/R3 触发计数（前 60 次，走免节流 dWrite）
    sget v0, %(D)s->ivN:I

    const/16 v1, 0x3c
    if-ge v0, v1, :iv_out

    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->ivN:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV fire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    invoke-static {v4}, %(D)s->dWrite(Ljava/lang/String;)V

    :iv_out
    return-void
.end method
''' % {'D': DLG_T}

FANCH = '.method public static isAirUnitID(I)Z\n'
FFIELD = '.field public static rpN:I\n'

# ---------- C. tickInvars ----------
INV = '''.method public tickInvars()V
    .registers 8
    # r6d051 状态机不变量：用“师的实际位置/资源存在性”补齐三个缺失转移
    # ---- R1：师为空 ----
    iget-object v0, p0, %(M)s->airhqDivision:%(AD)s

    if-nez v0, :r2_start

    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v1
    if-nez v1, :r1_air

    goto :r1_abort

    :r1_air
    iget-object v0, p0, %(M)s->assignedAircraft:Ljava/util/List;

    if-nez v0, :r1_abort

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    if-nez v1, :r1_abort

    goto :r2_start

    :r1_abort
    sget-object v0, %(ST)s->ABORTED:%(ST)s

    iput-object v0, p0, %(M)s->state:%(ST)s

    invoke-direct {p0}, %(M)s->returnAirDivisionHome()V

    const/4 v0, 0x1
    invoke-static {v0}, %(D)s->ivLog(I)V

    return-void

    # ---- R2：在航 且 师已到目标省 ⇒ 到达 ----
    :r2_start
    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v1
    const/4 v2, 0x1
    if-ne v1, v2, :r3_start

    iget v3, p0, %(M)s->targetProvinceID:I

    if-ltz v3, :r3_start

    iget-object v4, p0, %(M)s->airhqDivision:%(AD)s

    if-nez v4, :r3_start

    iget v5, p0, %(M)s->airDivisionAtProvinceID:I

    if-ne v5, v3, :r3_start

    invoke-direct {p0, v3}, %(M)s->placeAirDivision(I)V

    sget-object v0, %(ST)s->EXECUTING:%(ST)s

    iput-object v0, p0, %(M)s->state:%(ST)s

    const/4 v0, 0x2
    invoke-static {v0}, %(D)s->ivLog(I)V

    return-void

    # ---- R3：返航 且 师已在家 ⇒ 结算 ----
    :r3_start
    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v1
    const/4 v2, 0x3
    if-ne v1, v2, :r_end

    iget-object v3, p0, %(M)s->sourceAirport:%(AP)s

    if-nez v3, :r_end

    iget v4, v3, %(AP)s->provinceID:I

    iget v6, p0, %(M)s->airDivisionAtProvinceID:I

    if-eq v6, v4, :r3_dist

    goto :r3_done

    :r3_dist
    iget v6, p0, %(M)s->distanceToTarget:I

    if-lez v6, :r_end

    :r3_done
    sget-object v0, %(ST)s->COMPLETED:%(ST)s

    iput-object v0, p0, %(M)s->state:%(ST)s

    invoke-direct {p0}, %(M)s->returnAirDivisionHome()V

    invoke-direct {p0}, %(M)s->returnToBase()V

    const/4 v0, 0x3
    invoke-static {v0}, %(D)s->ivLog(I)V

    :r_end
    return-void
.end method
''' % {'M': M_T, 'ST': ST_T, 'AD': AD_T, 'AP': AP_T, 'D': DLG_T}

UPD_ANCHOR = '.method public update()V\n'
PROBE_CALL = '    invoke-static {p0}, %s->rtPb(%s)V\n' % (DLG_T, M_T)
INV_CALL = '\n    invoke-virtual {p0}, %s->tickInvars()V\n' % M_T

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG); m = rd(MIS)
    assert 'ivLog' not in d, '已打过 r6d051'
    assert d.count(A_OLD) == 1, 'rtPb 节流锚点 %d' % d.count(A_OLD)
    d = d.replace(A_OLD, A_NEW, 1)
    assert d.count(B_OLD) == 1, 'RT 行锚点 %d' % d.count(B_OLD)
    d = d.replace(B_OLD, B_NEW, 1)
    assert d.count(FANCH) == 1
    d = d.replace(FANCH, IVLOG + FANCH, 1)
    assert d.count(FFIELD) == 1
    d = d.replace(FFIELD, FFIELD + '.field public static ivN:I\n', 1)
    wr(DLG, d)

    assert 'tickInvars' not in m, 'AirMission 已打过'
    assert m.count(UPD_ANCHOR) == 1, 'update 锚点 %d' % m.count(UPD_ANCHOR)
    m = m.replace(UPD_ANCHOR, INV + UPD_ANCHOR, 1)
    assert m.count(PROBE_CALL) == 1, '探针调用锚点 %d' % m.count(PROBE_CALL)
    m = m.replace(PROBE_CALL, PROBE_CALL + INV_CALL, 1)
    wr(MIS, m)
    print('patch OK')

def gate():
    f = []
    d = rd(DLG); m = rd(MIS)
    # 1 ivLog
    if d.count('.method public static ivLog(I)V') != 1: f.append('111-1 ivLog 缺失/重复')
    ib = d.split('.method public static ivLog(I)V')[-1].split('.end method')[0]
    if '.registers 8' not in ib: f.append('111-1b ivLog 寄存器应为 8')
    if 'if-ge v0, v1, :iv_out' not in ib: f.append('111-1c ivLog 节流极性错（应 if-ge 跳过）')
    if ('%s->dWrite(Ljava/lang/String;)V' % DLG_T) not in ib: f.append('111-1d ivLog 未走 dWrite')
    if '.field public static ivN:I' not in d: f.append('111-1e 缺 ivN 字段')
    # 2 rtPb
    rb = d.split('.method public static rtPb(%s)V' % M_T)[-1].split('.end method')[0]
    if 'if-ge v0, v1, :rp_out' not in rb: f.append('111-2 rtPb 节流极性错（应 if-ge 跳过）')
    if ':rp_ok' in rb: f.append('111-2b 仍残留旧标签 :rp_ok')
    if ('%s->missionID:J' % M_T) not in rb: f.append('111-2c RT 行未带 missionID')
    if 'long-to-int v6, v4' not in rb: f.append('111-2d long 未转 int')
    # 3 tickInvars
    if m.count('.method public tickInvars()V') != 1: f.append('111-3 tickInvars 缺失/重复')
    tb = m.split('.method public tickInvars()V')[-1].split('.end method')[0]
    if '.registers 8' not in tb: f.append('111-3b tickInvars 寄存器应为 8')
    if ('%s->placeAirDivision(I)V' % M_T) not in tb: f.append('111-3c 缺 placeAirDivision')
    if ('%s->returnAirDivisionHome()V' % M_T) not in tb: f.append('111-3d 缺 returnAirDivisionHome')
    if ('%s->returnToBase()V' % M_T) not in tb: f.append('111-3e 缺 returnToBase')
    for st in ['ABORTED', 'EXECUTING', 'COMPLETED']:
        if ('%s->%s:%s' % (ST_T, st, ST_T)) not in tb: f.append('111-3f 缺状态 %s' % st)
    if tb.count('%s->ivLog(I)V' % DLG_T) != 3: f.append('111-3g ivLog 调用数 != 3')
    if 'if-nez v0, :r2_start' not in tb: f.append('111-3h R1 极性错（应 if-nez 跳走）')
    if 'if-ne v5, v3, :r3_start' not in tb: f.append('111-3i R2 判据错（应 at!=target 跳过）')
    if 'if-eq v6, v4, :r3_dist' not in tb: f.append('111-3j R3 需先判 at==home')
    # 4 update 入口顺序
    if (PROBE_CALL + INV_CALL) not in m: f.append('111-4 update 入口未按“探针→tickInvars”挂载')
    head = m.split(UPD_ANCHOR, 1)[1][:400]
    if not head.startswith('\n    .registers 9\n    invoke-static {p0}, %s->rtPb(%s)V\n\n    invoke-virtual {p0}, %s->tickInvars()V\n' % (DLG_T, M_T, M_T)):
        f.append('111-4b 入口两条调用顺序/形态不符（原代码 move-result 不计）')
    # 负样本
    n = 0
    d1 = d.replace('if-ge v0, v1, :iv_out', 'if-lt v0, v1, :iv_out', 1)
    if 'if-ge v0, v1, :iv_out' not in d1.split('.method public static ivLog(I)V')[-1].split('.end method')[0]: n += 1
    m2 = m
    _i2 = m2.index('.method public tickInvars()V')
    _j2 = m2.index('placeAirDivision(I)V', _i2)
    m2 = m2[:_j2] + 'placeAirDivisionX(I)V' + m2[_j2 + len('placeAirDivision(I)V'):]
    if ('%s->placeAirDivision(I)V' % M_T) not in m2.split('.method public tickInvars()V')[-1].split('.end method')[0]: n += 1
    m3 = m.replace(INV_CALL, '', 1)
    if (PROBE_CALL + INV_CALL) not in m3: n += 1
    print('== 门禁 111 ==  负样本 %d/3' % n)
    if n < 3: f.append('111 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)