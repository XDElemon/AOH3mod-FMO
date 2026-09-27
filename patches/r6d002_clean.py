# -*- coding: utf-8 -*-
# r6d002_clean.py —— 对外 clean 版：探针总开关（默认关）+ 去掉日志噪音
#   ① AirDbgLog 增字段 dbgOn:Z（默认 false）；dKey 开头守卫 ⇒ 所有探针（logcat+文件）一次静默
#   ② demoLoadCfg 读配置 debug 键（默认 0）→ 写 dbgOn
#   ③ 去掉 BtnMission 里 CFG.exceptionStack("MISSION_SKIP_EMPTY") 噪音
import re, sys, io
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DBG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
DCLS = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch_dbg():
    s = rd(DBG)
    if 'dbgOn' in s: print('  [SKIP] AirDbgLog 已改'); return
    # ① 字段
    anc = '.field private static lastFlushMs:J\n'
    assert s.count(anc) == 1, 'dbg 字段锚点=%d' % s.count(anc)
    s = s.replace(anc, anc + '.field public static dbgOn:Z\n', 1)
    # ② dKey 守卫
    m = re.search(r'(\.method public static dKey\(Ljava/lang/String;Ljava/lang/String;\)I\n\s*\.registers 10\n)', s)
    assert m, 'dKey 头锚点'
    guard = ('    # r6d002：对外版总开关（默认关）——关掉后所有探针（logcat + 文件）静默\n'
             '    sget-boolean v0, ' + DCLS + '->dbgOn:Z\n'
             '    if-eqz v0, :cond_63\n')
    s = s[:m.end()] + guard + s[m.end():]
    wr(DBG, s)
    print('  [OK] ① AirDbgLog.dbgOn + dKey 守卫')

def patch_afm():
    s = rd(AFM)
    if 'dgDebug' in s: print('  [SKIP] AFM 已改'); return
    s = s.replace('.field public static dgPin:I\n', '.field public static dgPin:I\n.field public static dgDebug:I\n', 1)
    # demoLoadCfg: 默认 dgDebug=0 + 读 debug 键并写 dbgOn
    anc = '    const/4 v5, 0x1\n    sput v5, ' + CLS + '->dgInit:I\n'
    assert s.count(anc) == 1, 'dgInit 锚点=%d' % s.count(anc)
    s = s.replace(anc, '    const/4 v5, 0x0\n    sput v5, ' + CLS + '->dgDebug:I\n' + anc, 1)
    anc2 = '    :dg_end\n    return-void\n.end method\n'
    assert s.count(anc2) == 1, 'dg_end 锚点=%d' % s.count(anc2)
    blk = ('    # --- debug（0=静默，1=开探针）---\n'
           '    const-string v1, "debug"\n'
           '    const/4 v2, 0x0\n'
           '    invoke-static {v0, v1, v2}, ' + CLS + '->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
           '    move-result v2\n'
           '    sput v2, ' + CLS + '->dgDebug:I\n'
           '    const/4 v3, 0x0\n'
           '    if-eqz v2, :dg_dbg_off\n'
           '    const/4 v3, 0x1\n'
           '    :dg_dbg_off\n'
           '    sput-boolean v3, ' + DCLS + '->dbgOn:Z\n')
    s = s.replace(anc2, blk + anc2, 1)
    wr(AFM, s)
    print('  [OK] ② demoLoadCfg 读 debug → dbgOn')

def patch_btn():
    s = rd(BTN)
    if 'r6d002' in s: print('  [SKIP] BtnMission 已改'); return
    m = re.search(r'(\s*)invoke-static \{v7\}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack\(Ljava/lang/Throwable;\)V\n', s)
    assert m, 'exceptionStack 锚点'
    s = s[:m.start()] + '    # r6d002：对外版去掉该异常栈噪音（不改逻辑）\n' + s[m.end():]
    wr(BTN, s)
    print('  [OK] ③ 去掉 MISSION_SKIP_EMPTY 噪音')

def gate():
    fails = []
    d, a, b = rd(DBG), rd(AFM), rd(BTN)
    # 60-1 开关
    if '.field public static dbgOn:Z' not in d: fails.append('60-1 缺 dbgOn 字段')
    md = re.search(r'\.method public static dKey\(Ljava/lang/String;Ljava/lang/String;\)I\n\s*\.registers 10\n([\s\S]{0,300}?)invoke-static \{[^}]*\}, Landroid/util/Log;->d', d)
    if not md: fails.append('60-1 dKey 守卫未在 Log.d 之前')
    else:
        seg = md.group(1)
        if 'sget-boolean v0, ' + DCLS + '->dbgOn:Z' not in seg: fails.append('60-1 dKey 缺 dbgOn 判断')
        if 'if-eqz v0, :cond_63' not in seg: fails.append('60-1 dKey 守卫未回早退分支')
    # 60-2 配置驱动
    if '"debug"' not in a: fails.append('60-2 demoLoadCfg 未读 debug 键')
    if 'sput-boolean v3, ' + DCLS + '->dbgOn:Z' not in a: fails.append('60-2 未写 dbgOn')
    if 'const/4 v5, 0x0\n    sput v5, ' + CLS + '->dgDebug:I' not in a: fails.append('60-2 dgDebug 默认非 0')
    # 60-3 默认静默：不得有地方无条件置 1
    if re.search(r'\n\s*const/4 (v\d+), 0x1\n\s*sput-boolean \1, ' + re.escape(DCLS) + r'->dbgOn:Z', a):
        fails.append('60-3 存在无条件开探针')
    # 60-4 噪音
    if 'exceptionStack(Ljava/lang/Throwable;)V' in b and 'MISSION_SKIP_EMPTY' in b:
        i = b.find('MISSION_SKIP_EMPTY')
        if 'exceptionStack' in b[i:i + 400]: fails.append('60-4 MISSION_SKIP_EMPTY 噪音仍在')
    # 60-5 探针不外泄
    for f, nm in ((a, 'AirForceManager'), (b, 'BtnMission')):
        if re.search(r'Landroid/util/Log;->', f): fails.append('60-5 %s 里有裸 Log 调用' % nm)
    neg = 0
    if re.search(r'Log;->d', 'invoke-static {}, Landroid/util/Log;->d('): neg += 1
    if re.search(r'if-eqz v0, :cond_63', 'if-eqz v0, :cond_63'): neg += 1
    if re.search(r'const/4 v3, 0x1', 'const/4 v3, 0x1'): neg += 1
    print('== 门禁 60 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('60 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch':
        patch_dbg(); patch_afm(); patch_btn(); sys.exit(0)
    sys.exit(0 if gate() else 1)