# -*- coding: utf-8 -*-
# r6d025_diag.py v2 —— 修 VerifyError（v1 长整型被当 String）+ 探针恒开 + 自证/心跳
#  血案：pkg_new53 同族 —— 探针寄存器类型不一致 ⇒ ART 校验拒绝整个类 ⇒ 启动崩溃
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
LCH = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/AndroidLauncher.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AFMC = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
MS = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'
SB = 'Ljava/lang/StringBuilder;'

def L(*pieces):
    out = []
    for p in pieces:
        if isinstance(p, list): out.extend(p)
        else: out.append(p)
    return ''.join(x + '\n' for x in out)

def AP(reg, kind='S'):
    if kind == 'S': sig, lst = 'Ljava/lang/String;', '{v0, %s}' % reg
    elif kind == 'J': sig, lst = 'J', '{v0, v1, v2}'
    else: sig, lst = 'I', '{v0, %s}' % reg
    return ['    invoke-virtual %s, %s->append(%s)%s' % (lst, SB, sig, SB), '',
            '    move-result-object v0', '']

NEW_SB = ['    new-instance v0, ' + SB, '', '    invoke-direct {v0}, ' + SB + '-><init>()V', '']
TOSTR = ['    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;', '',
         '    move-result-object v1', '', '    const-string v0, "AIRDBG"', '']
WRITE = ['    invoke-static {v0, v1}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', '']

BOOT = L('.method public static boot()V', '    .registers 4', '',
         '    # r6d025 诊断：探针恒开（正式版撤掉）+ 自证行',
         '    const/4 v0, 0x1', '', '    sput-boolean v0, ' + DLGC + '->dbgOn:Z', '',
         NEW_SB, '    const-string v1, "BOOT cfgDbg="', AP('v1'),
         '    sget v1, ' + AFMC + '->dgDebug:I', AP('v1', 'I'),
         '    const-string v1, " forced=1 探针已启动"', AP('v1'),
         TOSTR, WRITE, '    return-void', '.end method', '')

BEAT = L('.method public static mtBeat(I)V', '    .registers 4', '',
         '    # r6d025：updateMissions 心跳', NEW_SB,
         '    const-string v1, "MT frame="', AP('v1'),
         '    invoke-virtual {v0, p0}, ' + SB + '->append(I)' + SB, '',
         '    move-result-object v0', '',
         TOSTR, WRITE, '    return-void', '.end method', '')

# ★ 类型纪律：String 一律用 v3；v1/v2 恒为 long；v4/v9/v6/v7 恒为 int
SNAP_M = L('.method public static msSnapMission(' + AMC + ')V', '    .registers 12', '',
           '    # r6d025：任务快照（独立方法·只读）',
           '    sget-boolean v0, ' + DLGC + '->msOn:Z', '', '    if-eqz v0, :ret', '',
           '    iget-wide v1, p0, ' + AMC + '->missionID:J', '',
           NEW_SB,
           '    const-string v3, "MS mid="', AP('v3'), AP('v1', 'J'),
           '    const-string v3, " c="', AP('v3'),
           '    iget v4, p0, ' + AMC + '->civID:I', '', AP('v4', 'I'),
           '    const-string v3, " s="', AP('v3'),
           '    iget-object v9, p0, ' + AMC + '->state:' + MS, '',
           '    invoke-virtual {v9}, ' + MS + '->ordinal()I', '',
           '    move-result v9', '', AP('v9', 'I'),
           '    const-string v3, " at="', AP('v3'),
           '    iget v6, p0, ' + AMC + '->airDivisionAtProvinceID:I', '', AP('v6', 'I'),
           '    const-string v3, " tg="', AP('v3'),
           '    iget v7, p0, ' + AMC + '->targetProvinceID:I', '', AP('v7', 'I'),
           '    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;', '',
           '    move-result-object v3', '',
           '    const-string v0, "AIRDBG"', '',
           '    invoke-static {v0, v3}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', '',
           '    :ret', '    return-void', '.end method', '')

HB = L('    and-int/lit16 v1, v0, 0x1ff', '', '    if-nez v1, :hb_skip', '',
       '    invoke-static {v0}, ' + DLGC + '->mtBeat(I)V', '', '    :hb_skip', '')

OLD_BLK = ('    # r6d024：任务快照探针（每约 1 秒一次，只读）\n'
           '    iget-wide v9, v1, ' + AMC + '->missionID:J\n\n'
           '    iget v11, v1, ' + AMC + '->civID:I\n\n'
           '    iget-object v12, v1, ' + AMC + '->state:' + MS + '\n\n'
           '    invoke-virtual {v12}, ' + MS + '->ordinal()I\n\n'
           '    move-result v12\n\n'
           '    iget v13, v1, ' + AMC + '->airDivisionAtProvinceID:I\n\n'
           '    iget v14, v1, ' + AMC + '->targetProvinceID:I\n\n'
           '    invoke-static/range {v9 .. v14}, ' + DLGC + '->msSnap(JIIII)V\n\n')
NEW_BLK = ('    # r6d025：铁律——探针独立成方法，主方法只留一行 invoke\n'
           '    move-object v9, v1\n\n'
           '    invoke-static {v9}, ' + DLGC + '->msSnapMission(' + AMC + ')V\n\n')

ANCH_LCH = '    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V\n'
LCH_BLK = ('    # r6d025 诊断：启动即读配置 + 探针自证\n'
           '    invoke-static {}, ' + AFMC + '->demoLoadCfg()V\n\n'
           '    invoke-static {}, ' + DLGC + '->boot()V\n\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d025' in d:
        print('[SKIP] 已打过'); return
    m = re.search(r'\n\.method ', d)
    d = d[:m.start() + 1] + BOOT + BEAT + SNAP_M + d[m.start() + 1:]
    i = d.find('.method public static msTick()V'); j = d.find('.end method', i)
    body = d[i:j]
    anc = '    sput-boolean v2, ' + DLGC + '->msOn:Z\n'
    assert body.count(anc) == 1, 'msOn 锚点=%d' % body.count(anc)
    d = d[:i] + body.replace(anc, anc + '\n' + HB, 1) + d[j:]
    wr(DLG, d)
    print('  [OK] AirDbgLog: +boot +mtBeat +msSnapMission(类型纪律) +msTick 心跳')
    a = rd(AFM)
    assert a.count(OLD_BLK) == 1, 'r6d024 内联块锚点=%d' % a.count(OLD_BLK)
    wr(AFM, a.replace(OLD_BLK, NEW_BLK, 1))
    print('  [OK] AFM.updateMissions: 内联块 → 一行 invoke')
    l = rd(LCH)
    assert l.count(ANCH_LCH) == 1, 'AndroidLauncher 锚点=%d' % l.count(ANCH_LCH)
    wr(LCH, l.replace(ANCH_LCH, ANCH_LCH + LCH_BLK, 1))
    print('  [OK] AndroidLauncher.onCreate: +demoLoadCfg +boot')

def seg_of(d, name):
    i = d.find('.method public static ' + name)
    return d[i:d.find('.end method', i)] if i >= 0 else ''

def chk():
    f = []
    d = rd(DLG)
    b = seg_of(d, 'msSnapMission')
    if '.method public static msSnapMission(' + AMC + ')V' not in d: f.append('83-1 缺 msSnapMission')
    if not re.search(r'sget-boolean v0, [^\n]*->msOn:Z\n\s*\n\s*if-eqz v0, :\w+', b):
        f.append('83-1 msSnapMission 缺 msOn 节流')
    if '->dKey(' not in b: f.append('83-1 msSnapMission 未过 dKey')
    if re.search(r'\b(iput|sput)', b): f.append('83-1 msSnapMission 写了字段')
    bb = seg_of(d, 'boot()V')
    if '.method public static boot()V' not in d: f.append('83-2 缺 boot()')
    if not re.search(r'const/4 v0, 0x1\n\s*\n\s*sput-boolean v0, [^\n]*->dbgOn:Z', bb):
        f.append('83-2 boot() 未强制 dbgOn=true')
    if '->dKey(' not in bb: f.append('83-2 boot() 未写自证行')
    l = rd(LCH)
    if '->boot()V' not in l: f.append('83-3 AndroidLauncher 未调 boot()')
    if '->demoLoadCfg()V' not in l: f.append('83-3 AndroidLauncher 未调 demoLoadCfg()')
    a = rd(AFM)
    i = a.find('.method public updateMissions()V'); j = a.find('.end method', i)
    body = a[i:j]
    if '->msSnapMission(' not in body: f.append('83-4 updateMissions 缺 msSnapMission')
    blk = body[body.find('# r6d025：铁律'):body.find('->msSnapMission(')]
    if re.search(r'\biget', blk): f.append('83-4 主方法内仍有字段读取（违反铁律）')
    mreg = int(re.search(r'\.registers (\d+)', body).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', body)) if x >= mreg - 1)
    if bad: f.append('83-4 updateMissions 寄存器越界 v%s' % bad)
    # ★ 83-5 寄存器类型纪律（pkg_new53 血案）：String 追加只能用 v3
    if 'invoke-virtual {v0, v1}, ' + SB + '->append(Ljava/lang/String;)' in b:
        f.append('83-5 v1(long 低半) 被当 String 追加 ⇒ VerifyError')
    if b.count('invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)') != 5:
        f.append('83-5 String 追加次数 != 5（结构异常）')
    if 'invoke-virtual {v0, v1, v2}, ' + SB + '->append(J)' not in b:
        f.append('83-5 缺 append(J)（long 应走 v1,v2）')
    if 'invoke-virtual {v0, v9}, ' + SB + '->append(I)' not in b:
        f.append('83-5 ordinal 结果应走 v9（引用/整型分离）')
    mreg2 = int(re.search(r'\.registers (\d+)', b).group(1))
    bad2 = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= mreg2 - 1)
    if bad2: f.append('83-5 msSnapMission 寄存器越界 v%s' % bad2)
    return f

def gate():
    fails = chk(); neg = 0
    o_d, o_a, o_l = rd(DLG), rd(AFM), rd(LCH)
    seg = seg_of(o_d, 'msSnapMission')
    wr(DLG, o_d.replace(seg, seg.replace('    if-eqz v0, :ret\n\n', '', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d.replace(seg, seg.replace('{v0, v3}, ' + SB + '->append(Ljava/lang/String;)',
                                         '{v0, v1}, ' + SB + '->append(Ljava/lang/String;)', 1), 1))
    if chk(): neg += 1
    wr(DLG, o_d)
    i = o_a.find('.method public updateMissions()V'); j = o_a.find('.end method', i)
    body = o_a[i:j].replace('    move-object v9, v1\n',
                            '    iget v10, v1, ' + AMC + '->civID:I\n\n    move-object v9, v1\n', 1)
    wr(AFM, o_a[:i] + body + o_a[j:])
    if chk(): neg += 1
    wr(DLG, o_d); wr(AFM, o_a); wr(LCH, o_l)
    print('== 门禁 83 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('83 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)