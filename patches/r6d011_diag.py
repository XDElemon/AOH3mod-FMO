# -*- coding: utf-8 -*-
# r6d011_diag.py —— 诊断版：探针恒开（去掉 dbgOn 总闸）+ 配置回显探针
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DBG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch_dbg():
    s = rd(DBG)
    if 'r6d011' in s:
        print('  [SKIP] AirDbgLog 已改'); return
    old = ('    # r6d002：对外版总开关（默认关）——关掉后所有探针（logcat + 文件）静默\n'
           '    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z\n'
           '    if-eqz v0, :cond_63\n')
    assert s.count(old) == 1, 'dKey 闸锚点=%d' % s.count(old)
    s = s.replace(old, '    # r6d011 诊断版：探针恒开（原 dbgOn 总闸暂时移除，发布前恢复）\n', 1)
    wr(DBG, s)
    print('  [OK] dKey 总闸已移除（探针恒开）')

def patch_afm():
    s = rd(AFM)
    if 'r6d011' in s:
        print('  [SKIP] AFM 已改'); return
    # 配置回显：插在 demoLoadCfg 的 :dg_end 之前
    anc = '    :dg_end\n    return-void\n.end method\n'
    assert s.count(anc) == 1, 'dg_end 锚点=%d' % s.count(anc)
    echo = ('    # r6d011 诊断：配置回显（进入解析路径才打）\n'
            '    const-string v1, "dcfgPB"\n'
            '    sget v2, ' + CLS + '->dgProb:I\n'
            '    sget v3, ' + CLS + '->dgAiCap:I\n'
            '    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V\n'
            '    const-string v1, "dcfgIW"\n'
            '    sget v2, ' + CLS + '->dgIntel:I\n'
            '    sget v3, ' + CLS + '->dgAiWar:I\n'
            '    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V\n'
            '    const-string v1, "dcfgPD"\n'
            '    sget v2, ' + CLS + '->dgPin:I\n'
            '    sget v3, ' + CLS + '->dgDebug:I\n'
            '    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V\n')
    s = s.replace(anc, echo + anc, 1)
    wr(AFM, s)
    print('  [OK] 配置回显探针 dcfgPB/dcfgIW/dcfgPD')

def scan_mr(path):
    bad, prev = [], None
    for i, l in enumerate(rd(path).split('\n')):
        t = l.strip()
        if not t or t.startswith('#') or t.startswith('.') or t.endswith(':'): continue
        op = t.split(' ')[0].split('/')[0]
        if op.startswith('move-result') and not (prev and prev.startswith('invoke')): bad.append(i + 1)
        prev = op
    return bad

def gate():
    fails = []
    d, a = rd(DBG), rd(AFM)
    if 'if-eqz v0, :cond_63' in d and 'dbgOn' in d: fails.append('69-1 dKey 总闸仍在（探针仍会静默）')
    if 'r6d011' not in d: fails.append('69-1 缺诊断标记')
    for k in ('"dcfgPB"', '"dcfgIW"', '"dcfgPD"'):
        if k not in a: fails.append('69-2 缺回显探针 %s' % k)
    i = a.find('.method public static demoLoadCfg()V')
    j = a.find('.end method', i)
    body = a[i:j]
    if body.find('dcfgPB') > body.find(':dg_end'): fails.append('69-2 回显不在 :dg_end 之前')
    if a.count('"prob"') < 1 or a.count('if-eqz v0, :dg_end') != 1: fails.append('69-3 E2 修复丢失')
    for f in (DBG, AFM):
        bad = scan_mr(f)
        if bad: fails.append('69-4 %s move-result 异常：%s' % (os.path.basename(f), bad[:2]))
    m = re.search(r'\.method public static demoLoadCfg\(\)V\n\s*\.registers (\d+)', a)
    regs = int(m.group(1))
    for vv in set(re.findall(r'\bv(\d+)\b', body)):
        if int(vv) >= regs: fails.append('69-5 v%s 越界（regs=%d）' % (vv, regs))
    neg = 0
    if re.search(r'dcfgPB', 'dcfgPB'): neg += 1
    if re.search(r'if-eqz v0, :dg_end', 'if-eqz v0, :dg_end'): neg += 1
    if re.search(r'dKey 总闸', 'dKey 总闸'): neg += 1
    print('== 门禁 69 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('69 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch':
        patch_dbg(); patch_afm(); sys.exit(0)
    sys.exit(0 if gate() else 1)