# -*- coding: utf-8 -*-
# r6d024_probe.py —— 「大规模空战飞机停省不动」专用探针
#   A. AirDbgLog 新增：msTick()（帧计数节流，约每32帧=1秒放行一次）+ msSnap(JIIII)（任务快照一行）
#   B. AFM.updateMissions()：循环入口调 msTick()；每条任务 update() 之后调 msSnap(mid,civ,state,at,tgt)
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
MS = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'

FIELDS = ('.field public static msSeq:I\n'
          '.field public static msOn:Z\n')

MSTICK = (
'.method public static msTick()V\n'
'    .registers 4\n'
'\n'
'    # r6d024：帧计数节流（每 32 帧置一次"本帧记录"标志）\n'
'    sget v0, ' + DLGC + '->msSeq:I\n'
'\n'
'    add-int/lit8 v0, v0, 0x1\n'
'\n'
'    sput v0, ' + DLGC + '->msSeq:I\n'
'\n'
'    and-int/lit8 v1, v0, 0x1f\n'
'\n'
'    if-nez v1, :cond_off\n'
'\n'
'    const/4 v2, 0x1\n'
'\n'
'    goto :goto_set\n'
'\n'
'    :cond_off\n'
'    const/4 v2, 0x0\n'
'\n'
'    :goto_set\n'
'    sput-boolean v2, ' + DLGC + '->msOn:Z\n'
'\n'
'    return-void\n'
'.end method\n'
'\n'
)

MSSNAP = (
'.method public static msSnap(JIIII)V\n'
'    .registers 12\n'
'\n'
'    # r6d024：任务快照（只读；总闸在 dKey 内）\n'
'    sget-boolean v0, ' + DLGC + '->msOn:Z\n'
'\n'
'    if-eqz v0, :ret\n'
'\n'
'    new-instance v0, Ljava/lang/StringBuilder;\n'
'\n'
'    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V\n'
'\n'
'    const-string v1, "MS mid="\n'
'\n'
'    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v1, " c="\n'
'\n'
'    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v1, " s="\n'
'\n'
'    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v1, " at="\n'
'\n'
'    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v1, " tg="\n'
'\n'
'    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
'\n'
'    move-result-object v0\n'
'\n'
'    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
'\n'
'    move-result-object v1\n'
'\n'
'    const-string v0, "AIRDBG"\n'
'\n'
'    invoke-static {v0, v1}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
'\n'
'    :ret\n'
'    return-void\n'
'.end method\n'
'\n'
)

ANCHOR_TICK = ('    invoke-static {}, ' + 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;' + '->updateAIAutoIntercept()V\n')
ANCHOR_SNAP = ('    invoke-virtual {v1}, ' + AMC + '->update()V\n')
SNAP_BLOCK = (
'    # r6d024：任务快照探针（每约 1 秒一次，只读）\n'
'    iget-wide v9, v1, ' + AMC + '->missionID:J\n'
'\n'
'    iget v11, v1, ' + AMC + '->civID:I\n'
'\n'
'    iget-object v12, v1, ' + AMC + '->state:' + MS + '\n'
'\n'
'    invoke-virtual {v12}, ' + MS + '->ordinal()I\n'
'\n'
'    move-result v12\n'
'\n'
'    iget v13, v1, ' + AMC + '->airDivisionAtProvinceID:I\n'
'\n'
'    iget v14, v1, ' + AMC + '->targetProvinceID:I\n'
'\n'
'    invoke-static/range {v9 .. v14}, ' + DLGC + '->msSnap(JIIII)V\n'
'\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d024' in d:
        print('[SKIP] 探针已加'); return
    anc = '.field public static dbgOn:Z\n'
    assert d.count(anc) == 1, '字段锚点=%d' % d.count(anc)
    d = d.replace(anc, anc + FIELDS, 1)
    # 方法插到类里第一个方法之前（保证在 .method 段落内）
    m = re.search(r'\n\.method ', d)
    assert m, '找不到首个方法'
    d = d[:m.start() + 1] + MSTICK + MSSNAP + d[m.start() + 1:]
    wr(DLG, d)
    print('  [OK] AirDbgLog: +msSeq/msOn +msTick +msSnap')
    a = rd(AFM)
    assert a.count(ANCHOR_TICK) == 1, 'updateAIAutoIntercept 锚点=%d' % a.count(ANCHOR_TICK)
    assert a.count(ANCHOR_SNAP) == 1, 'mission.update 锚点=%d' % a.count(ANCHOR_SNAP)
    # updateMissions 提栈
    i = a.find('.method public updateMissions()V')
    j = a.find('.end method', i)
    body = a[i:j]
    assert '    .registers 9\n' in body, 'updateMissions .registers 不是 9'
    body = body.replace('    .registers 9\n', '    .registers 16\n', 1)
    body = body.replace(ANCHOR_TICK, ANCHOR_TICK + '\n    invoke-static {}, ' + DLGC + '->msTick()V\n', 1)
    body = body.replace(ANCHOR_SNAP, ANCHOR_SNAP + '\n' + SNAP_BLOCK, 1)
    a = a[:i] + body + a[j:]
    wr(AFM, a)
    print('  [OK] AFM.updateMissions: +msTick(循环入口) +msSnap(每条任务)')

def chk_tree():
    fails = []
    d = rd(DLG)
    if '.method public static msSnap(JIIII)V' not in d: fails.append('82-1 缺 msSnap')
    if '.method public static msTick()V' not in d: fails.append('82-1 缺 msTick')
    b = d[d.find('.method public static msSnap('):]
    b = b[:b.find('.end method')]
    if not re.search(r'sget-boolean v0, [^\n]*->msOn:Z\n\s*\n\s*if-eqz v0, :\w+', b):
        fails.append('82-1 msSnap 缺 msOn 节流（极性应为 if-eqz→跳过）')
    if '->dKey(' not in b: fails.append('82-1 msSnap 未过 dKey 总闸')
    a = rd(AFM)
    i = a.find('.method public updateMissions()V'); j = a.find('.end method', i)
    body = a[i:j]
    if '->msTick()V' not in body: fails.append('82-2 updateMissions 缺 msTick')
    if not re.search(r'Laoc/kingdoms/lukasz/map/battles/AirMission;->update\(\)V\n\s*\n\s*# r6d024[\s\S]{0,1500}?msSnap\(JIIII\)V', body):
        fails.append('82-2 msSnap 未紧跟 mission.update()（应在 update 之后）')
    mreg = int(re.search(r'\.registers (\d+)', body).group(1))
    loc = mreg - 1
    used = set(int(x) for x in re.findall(r'\bv(\d+)\b', body))
    bad = sorted(x for x in used if x >= loc)
    if bad: fails.append('82-3 寄存器越界 v%s (locals=%d)' % (bad, loc))
    # 只读：插入块内不得写业务字段
    blk = body[body.find('# r6d024：任务快照探针'):body.find('->msSnap(JIIII)V')]
    if re.search(r'\b(iput|sput)', blk): fails.append('82-4 探针块写入了字段（应只读）')
    return fails

def gate():
    fails = chk_tree()
    neg = 0
    # 负样本①：去掉 msOn 节流
    d = rd(DLG)
    b = d[d.find('.method public static msSnap('):]
    seg = b[:b.find('.end method')]
    mut = d.replace(seg, seg.replace('    if-eqz v0, :ret\n\n', '', 1), 1)
    wr(DLG, mut)
    if chk_tree(): neg += 1
    wr(DLG, d)
    # 负样本②：把 msSnap 挪到 update() 之前
    a = rd(AFM)
    i = a.find('.method public updateMissions()V'); j = a.find('.end method', i)
    body = a[i:j]
    blk = body[body.find('\n    # r6d024：任务快照探针'):body.find('->msSnap(JIIII)V\n') + len('->msSnap(JIIII)V\n')]
    moved = body.replace(blk, '').replace(ANCHOR_SNAP, blk + ANCHOR_SNAP, 1)
    wr(AFM, a[:i] + moved + a[j:])
    if chk_tree(): neg += 1
    wr(AFM, a)
    # 负样本③：越界寄存器
    a2 = rd(AFM)
    i2 = a2.find('.method public updateMissions()V'); j2 = a2.find('.end method', i2)
    b2 = a2[i2:j2].replace('iget v14, v1, ' + AMC + '->targetProvinceID:I', 'iget v20, v1, ' + AMC + '->targetProvinceID:I', 1)
    wr(AFM, a2[:i2] + b2 + a2[j2:])
    if chk_tree(): neg += 1
    wr(AFM, a2)
    print('== 门禁 82 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('82 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)