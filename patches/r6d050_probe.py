# -*- coding: utf-8 -*-
# r6d050_probe.py —— 窄探针：任务关键量（rnd/d/at/home/div/fp/el/st），前 300 次调用
#   目的：确认 8 个 s=3 at==tg 卡住的任务，是"计数器不收敛"还是"师丢失"
#   纪律：独立方法 / 免节流 dWrite / String 恒用 v3 / 不碰 update() 任何分支
import io, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
MIS = R + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
AP_T = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
AD_T = 'Laoc/kingdoms/lukasz/map/army/ArmyDivision;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'

FANCH = '.method public static isAirUnitID(I)Z\n'
FTOP = '.field private static tickMs:J\n'

FIELD = ''
PROBE = '''.method public static rtPb(%(M)s)V
    .registers 10
    # r6d050 探针：任务关键量（前 300 次调用，走免节流 dWrite）
    sget v0, %(D)s->rpN:I

    const/16 v1, 0x12c
    if-ge v0, v1, :rp_ok

    return-void

    :rp_ok
    add-int/lit8 v0, v0, 0x1

    sput v0, %(D)s->rpN:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT rnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget v4, p0, %(M)s->roundsInFlight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget v4, p0, %(M)s->distanceToTarget:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget v4, p0, %(M)s->airDivisionAtProvinceID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " home="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget-object v4, p0, %(M)s->sourceAirport:%(AP)s

    if-eqz v4, :rp_nh

    iget v4, v4, %(AP)s->provinceID:I

    goto :rp_h

    :rp_nh
    const/4 v4, -0x1
    :rp_h
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " div="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget-object v4, p0, %(M)s->airhqDivision:%(AD)s

    if-eqz v4, :rp_nd

    const/4 v4, 0x1
    goto :rp_d

    :rp_nd
    const/4 v4, 0x0
    :rp_d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " fp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget v4, p0, %(M)s->flightProgress:F

    const v5, 0x42c80000    # 100.0f
    mul-float v4, v4, v5
    float-to-int v4, v4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " el="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget-wide v4, p0, %(M)s->animElapsedMs:J

    long-to-int v6, v4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    const-string v3, " st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    iget-object v4, p0, %(M)s->state:%(ST)s

    invoke-virtual {v4}, %(ST)s->ordinal()I

    move-result v4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    invoke-static {v7}, %(D)s->dWrite(Ljava/lang/String;)V

    :rp_out
    return-void
.end method
''' % {'D': DLG_T, 'M': M_T, 'AP': AP_T, 'AD': AD_T, 'ST': ST_T}

UPD_SIG = '.method public update()V\n    .registers 9\n'
CALL = '    invoke-static {p0}, %s->rtPb(%s)V\n\n' % (DLG_T, M_T)

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG); m = rd(MIS)
    assert 'rtPb' not in d, '已打过 r6d050'
    assert d.count(FANCH) == 1, 'DLG 锚点 %d' % d.count(FANCH)
    d = d.replace(FANCH, PROBE + FANCH, 1)
    assert d.count(FTOP) == 1
    d = d.replace(FTOP, FTOP + '.field public static rpN:I\n', 1)
    wr(DLG, d)
    assert m.count(UPD_SIG) == 1, 'update 锚点 %d' % m.count(UPD_SIG)
    m = m.replace(UPD_SIG, UPD_SIG + CALL, 1)
    wr(MIS, m)
    print('patch OK')

def gate():
    f = []
    d = rd(DLG); m = rd(MIS)
    if d.count('.method public static rtPb(%s)V' % M_T) != 1: f.append('110-1 探针方法缺失/重复')
    blk = d.split('.method public static rtPb(%s)V' % M_T)[-1].split('.end method')[0] if 'rtPb' in d else ''
    if '.registers 10' not in blk: f.append('110-1b 寄存器应为 10')
    if ('%s->dWrite(Ljava/lang/String;)V' % DLG_T) not in blk: f.append('110-1c 未走 dWrite')
    if 'const-string v3, "RT rnd="' not in blk: f.append('110-1d 前缀缺失或未用 v3')
    if ('%s->rpN:I' % DLG_T) not in blk: f.append('110-1e 未接节流')
    if 'if-ge v0, v1, :rp_ok' not in blk: f.append('110-1f 节流极性错（应 if-ge 跳出）')
    if '\n    return-void\n\n    :rp_ok\n' not in blk: f.append('110-1f2 节流提前返回缺失')
    for fld in ['->roundsInFlight:I', '->distanceToTarget:I', '->airDivisionAtProvinceID:I',
                '->sourceAirport:', '->airhqDivision:', '->flightProgress:F', '->animElapsedMs:J', '->state:']:
        if fld not in blk: f.append('110-1g 缺字段读取 %s' % fld)
    if 'long-to-int v6, v4' not in blk: f.append('110-1h long 未转 int（防 append(J) 血案）')
    # 调用点：必须是 update() 的第一条指令
    if m.count('%s->rtPb(%s)V' % (DLG_T, M_T)) != 1: f.append('110-2 调用点数量 != 1')
    if (UPD_SIG + CALL) not in m: f.append('110-2b 调用点未位于 update() 入口首条')
    # 负样本
    n = 0
    _d1 = d.replace('if-ge v0, v1, :rp_ok', 'if-lt v0, v1, :rp_ok', 1)
    _blk1 = _d1.split('.method public static rtPb(%s)V' % M_T)[-1].split('.end method')[0]
    if 'if-ge v0, v1, :rp_ok' not in _blk1: n += 1
    if 'long-to-int v6, v4' not in blk.replace('long-to-int v6, v4', 'nop', 1): n += 1
    m3 = m.replace(CALL, '', 1)
    if '%s->rtPb(%s)V' % (DLG_T, M_T) not in m3: n += 1
    print('== 门禁 110 ==  负样本 %d/3' % n)
    if n < 3: f.append('110 负样本 %d/3' % n)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)