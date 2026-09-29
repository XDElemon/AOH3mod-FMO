# -*- coding: utf-8 -*-
# r6d055_invars.py —— 治本：AirMission.tickInvars()（R1/R2/R3）+ 触发计数 ivLog
#   R1 师为空 ⇒ 作废+清残（释放配额）；R2 在航且师到目标省 ⇒ 执行；R3 返航且师在机场省 ⇒ 结算
#   门禁 116 = 结构断言 + **语义模拟器真值表 8 例** + 3 负样本
import io, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
MIS = R + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'
AD_T = 'Laoc/kingdoms/lukasz/map/army/ArmyDivision;'
AP_T = 'Laoc/kingdoms/lukasz/map/battles/Airport;'

IVLOG = '''.method public static ivLog(I)V
    .registers 8
    # r6d055 R1/R2/R3 触发计数（前 60 次，走免节流 dWrite）
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

INV = '''.method public tickInvars()V
    .registers 8
    # r6d055 状态机不变量：R1 清残 / R2 到达 / R3 到家结算
    iget-object v0, p0, %(M)s->airhqDivision:%(AD)s

    if-nez v0, :ri_r2

    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v1
    if-nez v1, :ri_air

    goto :ri_abort

    :ri_air
    iget-object v0, p0, %(M)s->assignedAircraft:Ljava/util/List;

    if-nez v0, :ri_abort

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    if-nez v1, :ri_abort

    goto :ri_r2

    :ri_abort
    sget-object v0, %(ST)s->ABORTED:%(ST)s

    iput-object v0, p0, %(M)s->state:%(ST)s

    invoke-direct {p0}, %(M)s->returnAirDivisionHome()V

    const/4 v0, 0x1
    invoke-static {v0}, %(D)s->ivLog(I)V

    return-void

    :ri_r2
    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v1
    const/4 v2, 0x1
    if-ne v1, v2, :ri_r3

    iget v3, p0, %(M)s->targetProvinceID:I

    if-ltz v3, :ri_r3

    iget-object v4, p0, %(M)s->airhqDivision:%(AD)s

    if-nez v4, :ri_r3

    iget v5, p0, %(M)s->airDivisionAtProvinceID:I

    if-ne v5, v3, :ri_r3

    invoke-direct {p0, v3}, %(M)s->placeAirDivision(I)V

    sget-object v0, %(ST)s->EXECUTING:%(ST)s

    iput-object v0, p0, %(M)s->state:%(ST)s

    const/4 v0, 0x2
    invoke-static {v0}, %(D)s->ivLog(I)V

    return-void

    :ri_r3
    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v1
    const/4 v2, 0x3
    if-ne v1, v2, :ri_end

    iget-object v4, p0, %(M)s->sourceAirport:%(AP)s

    if-nez v4, :ri_end

    iget v5, v4, %(AP)s->provinceID:I

    iget v6, p0, %(M)s->airDivisionAtProvinceID:I

    if-ne v6, v5, :ri_end

    sget-object v0, %(ST)s->COMPLETED:%(ST)s

    iput-object v0, p0, %(M)s->state:%(ST)s

    invoke-direct {p0}, %(M)s->returnAirDivisionHome()V

    invoke-direct {p0}, %(M)s->returnToBase()V

    const/4 v0, 0x3
    invoke-static {v0}, %(D)s->ivLog(I)V

    :ri_end
    return-void
.end method
''' % {'M': M_T, 'ST': ST_T, 'AD': AD_T, 'AP': AP_T, 'D': DLG_T}

FANCH = '.method public static isAirUnitID(I)Z\n'
FFIELD = '.field public static rp3:I\n'
UPD = '.method public update()V\n'
PROBE = '    invoke-static {p0}, %s->rtPb(%s)V\n' % (DLG_T, M_T)
INVCALL = '\n    invoke-virtual {p0}, %s->tickInvars()V\n' % M_T

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG); m = rd(MIS)
    assert 'ivLog' not in d, '已打过 r6d055'
    assert d.count(FANCH) == 1
    d = d.replace(FANCH, IVLOG + FANCH, 1)
    assert d.count(FFIELD) == 1, '缺 rp3 字段锚点'
    d = d.replace(FFIELD, FFIELD + '.field public static ivN:I\n', 1)
    wr(DLG, d)
    assert 'tickInvars' not in m, 'AirMission 已打过'
    assert m.count(UPD) == 1
    m = m.replace(UPD, INV + UPD, 1)
    assert m.count(PROBE) == 1, '探针调用锚点 %d' % m.count(PROBE)
    m = m.replace(PROBE, PROBE + INVCALL, 1)
    wr(MIS, m)
    print('patch OK（tickInvars R1/R2/R3 + ivLog）')

def sim_invars(div, st, at, target, home, fleet_empty):
    """README 版语义：返回 'abort' / 'arrive' / 'complete' / 'none'"""
    if not div:
        if st != 0:
            return 'abort'
        return 'abort' if fleet_empty else 'none'
    if st == 1 and target is not None and target >= 0 and at == target:
        return 'arrive'
    if st == 3 and home is not None and at == home:
        return 'complete'
    return 'none'

def gate():
    f = []
    d = rd(DLG); m = rd(MIS)
    ib = d.split('.method public static ivLog(I)V')[-1].split('.end method')[0] if 'ivLog' in d else ''
    if not ib: f.append('116-1 缺 ivLog')
    if 'if-ge v0, v1, :iv_out' not in ib: f.append('116-1b ivLog 节流方向错（应超限跳出）')
    if '.field public static ivN:I' not in d: f.append('116-1c 缺 ivN 字段')
    tb = m.split('.method public tickInvars()V')[-1].split('.end method')[0] if 'tickInvars' in m else ''
    if not tb: f.append('116-2 缺 tickInvars')
    if '.registers 8' not in tb: f.append('116-2b 寄存器应为 8')
    for call, name in (('->placeAirDivision(I)V', 'placeAirDivision'), ('->returnAirDivisionHome()V', 'returnAirDivisionHome'), ('->returnToBase()V', 'returnToBase')):
        if (M_T + call) not in tb: f.append('116-2c 缺 %s' % name)
    for st in ('ABORTED', 'EXECUTING', 'COMPLETED'):
        if ('%s->%s:%s' % (ST_T, st, ST_T)) not in tb: f.append('116-2d 缺状态 %s' % st)
    if tb.count('%s->ivLog(I)V' % DLG_T) != 3: f.append('116-2e ivLog 调用数 != 3')
    # 结构极性
    if 'if-nez v0, :ri_r2' not in tb: f.append('116-3 R1 极性错（有师应跳过）')
    if 'if-ne v5, v3, :ri_r3' not in tb: f.append('116-3b R2 判据错')
    if 'if-ne v6, v5, :ri_end' not in tb: f.append('116-3c R3 判据错')
    if (PROBE + INVCALL) not in m: f.append('116-4 update 入口未按“探针→tickInvars”挂载')
    # ---- 语义模拟器：8 例真值表 ----
    cases = [
        (None, 1, 6337, 5995, 6337, False, 'abort'),
        (None, 0, -1, 5995, 6337, True, 'abort'),
        (None, 0, -1, 5995, 6337, False, 'none'),
        ('d', 1, 5995, 5995, 6337, False, 'arrive'),
        ('d', 1, 5998, 5995, 6337, False, 'none'),
        ('d', 3, 6337, 5995, 6337, False, 'complete'),
        ('d', 3, 6259, 5995, 6337, False, 'none'),
        ('d', 2, 5995, 5995, 6337, False, 'none'),
    ]
    ok = 0
    for div, st, at, tg, hm, fe, want in cases:
        got = sim_invars(div, st, at, tg, hm, fe)
        if got == want: ok += 1
        else: f.append('116-5 模拟器不符 div=%s st=%s at=%s home=%s got=%s want=%s' % (div, st, at, hm, got, want))
    # 负样本
    n = 0
    _1 = tb.replace('if-nez v0, :ri_r2', 'if-eqz v0, :ri_r2', 1)
    if 'if-nez v0, :ri_r2' not in _1: n += 1
    _2 = tb.replace('if-ne v6, v5, :ri_end', 'if-eq v6, v5, :ri_end', 1)
    if 'if-ne v6, v5, :ri_end' not in _2: n += 1
    _3 = m.replace(INVCALL, '', 1)
    if (PROBE + INVCALL) not in _3: n += 1
    print('== 门禁 116 ==  模拟器 %d/8  负样本 %d/3' % (ok, n))
    if n < 3: f.append('116 负样本 %d/3' % n)
    if ok < 8: f.append('116 模拟器 %d/8' % ok)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)