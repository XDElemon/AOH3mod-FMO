# -*- coding: utf-8 -*-
# r6d033_orpha.py —— ①孤儿师取证（msSnapMission 加 ahq= / dp=）②堵 AI 拆军泄漏（airhq_ 护栏）
#   门禁 93 含「判读模拟器」与「护栏模拟器」
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
SPL = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy.smali'
GAME = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/Game.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
ADC = 'Laoc/kingdoms/lukasz/map/army/ArmyDivision;'
SB = 'Ljava/lang/StringBuilder;'

# ---- A. msSnapMission 追加 ahq= / dp= ----
OLD_TAIL = ('    invoke-virtual {v0}, ' + SB + '->toString()Ljava/lang/String;\n'
            '\n'
            '    move-result-object v3\n'
            '\n'
            '    const-string v0, "AIRDBG"\n'
            '\n'
            '    invoke-static {v0, v3}, ' + DLGC + '->dKey(Ljava/lang/String;Ljava/lang/String;)I\n')
NEW_TAIL = (
'    const-string v3, " ahq="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    iget-object v8, p0, ' + AMC + '->airhqDivision:' + ADC + '\n'
'\n'
'    if-eqz v8, :mss_noahq\n'
'\n'
'    const/4 v9, 0x1\n'
'\n'
'    goto :mss_ahq_done\n'
'\n'
'    :mss_noahq\n'
'    const/4 v9, 0x0\n'
'\n'
'    :mss_ahq_done\n'
'    invoke-virtual {v0, v9}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const-string v3, " dp="\n'
'\n'
'    invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
'    const/4 v9, -0x1\n'
'\n'
'    if-eqz v8, :mss_dp_done\n'
'\n'
'    iget v9, v8, ' + ADC + '->provinceID:I\n'
'\n'
'    :mss_dp_done\n'
'    invoke-virtual {v0, v9}, ' + SB + '->append(I)' + SB + '\n'
'\n'
'    move-result-object v0\n'
'\n'
+ OLD_TAIL)

# ---- B. AI_SplitArmy 护栏 ----
ANCH_SPL = '    if-eqz v0, :cond_1c1\n'
GUARD_SPL = (
'    # r6d033 护栏：airhq_ 空军师不参与普通陆军拆分\n'
'    iget-object v1, v0, ' + ADC + '->key:Ljava/lang/String;\n'
'\n'
'    if-eqz v1, :g_af_ok\n'
'\n'
'    const-string v2, "airhq_"\n'
'\n'
'    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z\n'
'\n'
'    move-result v1\n'
'\n'
'    if-eqz v1, :g_af_ok\n'
'\n'
'    goto :cond_1c1\n'
'\n'
'    :g_af_ok\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d033' in d: print('[SKIP DLG]')
    else:
        i = d.find('.method public static msSnapMission('); j = d.find('.end method', i)
        body = d[i:j]
        assert body.count(OLD_TAIL) == 1, 'msSnapMission 尾部锚点=%d' % body.count(OLD_TAIL)
        wr(DLG, d[:i] + body.replace(OLD_TAIL, NEW_TAIL, 1) + d[j:])
        print('  [OK] AirDbgLog.msSnapMission: +ahq= +dp=')
    s = rd(SPL)
    if 'r6d033' not in s:
        assert s.count(ANCH_SPL) == 1, 'AI_SplitArmy 锚点=%d' % s.count(ANCH_SPL)
        wr(SPL, s.replace(ANCH_SPL, ANCH_SPL + '\n' + GUARD_SPL, 1))
        print('  [OK] AI_SplitArmy: +airhq_ 护栏（跳 :cond_1c1）')

# ---------- 门禁 93（含模拟器） ----------
def sim_stuck(seq):
    """93A 判读模拟器：seq=[(s,at,tg,ahq,dp),...] → 判定字符串"""
    run = 1
    best = 1
    for k in range(1, len(seq)):
        run = run + 1 if seq[k][0:2] == seq[k - 1][0:2] else 1
        best = max(best, run)
    s, at, tg, ahq, dp = seq[-1]
    if ahq == 1: return 'STUCK_ORPHAN'
    if dp != at: return 'STUCK_MISMATCH'
    if s in (1, 2) and at == tg and best >= 3: return 'STUCK_HOLD'
    return 'OK'

def sim_guard(keys):
    """93B 护栏模拟器：模拟 startsWith 护栏判定（True=拦下）"""
    return [k.startswith('airhq_') for k in keys]

def chk():
    f = []
    d = rd(DLG)
    m = d[d.find('.method public static msSnapMission('):]; m = m[:m.find('.end method')]
    if '" ahq="' not in m or '" dp="' not in m: f.append('93C-1 msSnapMission 未加 ahq=/dp=')
    if 'append(Ljava/lang/String;)' in m and m.count('invoke-virtual {v0, v3}, ' + SB + '->append(Ljava/lang/String;)') < 7:
        f.append('93C-1 msSnapMission String 追加次数异常')
    if not re.search(r'iget-object v8, p0, ' + re.escape(AMC) + r'->airhqDivision', m):
        f.append('93C-1 未读取 airhqDivision')
    if not re.search(r':mss_noahq\n\s*const/4 v9, 0x0', m): f.append('93C-1 ahq=0 分支未置 0（极性错）')
    mreg = int(re.search(r'\.registers (\d+)', m).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', m)) if x >= mreg - 1)
    if bad: f.append('93C-1 msSnapMission 寄存器越界 v%s' % bad)
    s = rd(SPL)
    g = s[s.find('# r6d033 护栏'):]
    g = g[:g.rfind(':g_af_ok') + 9] if '# r6d033 护栏' in s else ''
    if '# r6d033 护栏' not in s: f.append('93C-2 AI_SplitArmy 缺护栏')
    if g and 'goto :cond_1c1' not in g: f.append('93C-2 护栏未跳到既有的 :cond_1c1（可能新增了出口）')
    if g and 'startsWith' not in g: f.append('93C-2 护栏未做 startsWith 判定')
    if g and 'if-eqz v1, :g_af_ok' not in g: f.append('93C-2 护栏极性错误（应为 if-eqz：是 airhq 才拦）')
    # 93C-3 Game 三处护栏未被破坏
    gm = rd(GAME)
    if gm.count('const-string v3, "airhq_"') < 2: f.append('93C-3 Game 护栏被破坏（v3 处 <2）')
    # 模拟器
    if sim_stuck([(1, 100, 200, 1, 100), (1, 100, 200, 1, 100), (1, 100, 200, 1, 100)]) != 'STUCK_ORPHAN':
        f.append('93A 孤儿师判读错')
    if sim_stuck([(1, 100, 200, 0, 130)] * 3) != 'STUCK_MISMATCH':
        f.append('93A 师省不一致判读错')
    if sim_stuck([(1, 100, 100, 0, 100)] * 4) != 'STUCK_HOLD':
        f.append('93A 目标停留判读错')
    if sim_stuck([(1, 100, 200, 0, 100), (1, 110, 200, 0, 110)]) != 'OK':
        f.append('93A 正常推进误判')
    if sim_guard(['a1', 'airhq_7_3', 'airhq_1']) != [False, True, True]:
        f.append('93B 护栏模拟器结果不符')
    return f

def gate():
    fails = chk(); neg = 0
    d0, s0 = rd(DLG), rd(SPL)
    m = d0[d0.find('.method public static msSnapMission('):]; mseg = m[:m.find('.end method')]
    wr(DLG, d0.replace(mseg, mseg.replace('    :mss_noahq\n\n    const/4 v9, 0x0\n', '    :mss_noahq\n\n    const/4 v9, 0x9\n', 1), 1))
    if chk(): neg += 1
    wr(DLG, d0)
    g = s0[s0.find('    # r6d033 护栏'):]; gseg = g[:g.find(':g_af_ok') + 9]
    wr(SPL, s0.replace(gseg, gseg.replace('    if-eqz v1, :g_af_ok\n\n    goto :cond_1c1\n', '    if-nez v1, :g_af_ok\n\n    goto :cond_1c1\n', 1), 1))
    if chk(): neg += 1
    wr(SPL, s0)
    wr(GAME, rd(GAME).replace('const-string v3, "airhq_"', 'const-string v3, "airhqX"', 2))
    if chk(): neg += 1
    wr(GAME, rd(GAME).replace('const-string v3, "airhqX"', 'const-string v3, "airhq_"'))
    wr(DLG, d0); wr(SPL, s0)
    print('== 门禁 93 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('93 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过（含 93A/93B 模拟器）'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)