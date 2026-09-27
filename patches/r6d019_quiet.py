# -*- coding: utf-8 -*-
# r6d019_quiet.py —— 对外干净版：恢复探针总闸（dbgOn，默认 false ⇒ 全静默）
import re, sys, io, os

DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
OLD = '    # r6d011 诊断版：探针恒开（原 dbgOn 总闸暂时移除，发布前恢复）\n'
NEW = ('    # r6d019 对外干净版：恢复 dbgOn 总闸（默认 false ⇒ 全部探针静默）\n'
       '    sget-boolean v0, ' + CLS + '->dbgOn:Z\n'
       '\n'
       '    if-eqz v0, :cond_63\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def dkey_body(s):
    i = s.find('.method public static dKey(')
    j = s.find('.end method', i)
    return s[i:j]

def patch():
    s = rd(DLG)
    if 'r6d019' in s:
        print('[SKIP] dKey 总闸已恢复')
    else:
        assert s.count(OLD) == 1, '锚点=%d' % s.count(OLD)
        s = s.replace(OLD, NEW, 1)
        wr(DLG, s)
        print('  [OK] dKey 顶部已恢复 dbgOn 总闸（if-eqz ⇒ 关着就跳走）')
    # ② activeMissions：DebugMissionList（每次增删 Log.d + getStackTraceString）→ 普通 ArrayList
    a = rd(AFM)
    if 'DebugMissionList' not in a:
        print('[SKIP] activeMissions 已是普通 ArrayList')
    else:
        assert a.count('new-instance v0, Laoc/kingdoms/lukasz/map/battles/DebugMissionList;\n') == 1, 'DebugMissionList 构造锚点异常'
        assert a.count('invoke-direct {v0}, Laoc/kingdoms/lukasz/map/battles/DebugMissionList;-><init>()V\n') == 1
        a = a.replace('new-instance v0, Laoc/kingdoms/lukasz/map/battles/DebugMissionList;\n',
                      'new-instance v0, Ljava/util/ArrayList; # r6d019：去掉调试链表的 logcat 噪声\n', 1)
        a = a.replace('invoke-direct {v0}, Laoc/kingdoms/lukasz/map/battles/DebugMissionList;-><init>()V\n',
                      'invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V\n', 1)
        wr(AFM, a)
        print('  [OK] activeMissions: DebugMissionList → java.util.ArrayList')

def check_tree(afm_src):
    """返回 (fails, neg_ok) —— 用于负样本对同一逻辑做变异检查"""
    fails = []
    src = rd(DLG)
    body = dkey_body(src)
    if 'r6d019' not in src:
        fails.append('77-0 补丁未打')
    m = re.search(r'sget-boolean v0, [^\n]*AirDbgLog;->dbgOn:Z\n\s*\n\s*(if-\w+) v0, :cond_63', body)
    if not m:
        fails.append('77-1 dKey 顶部缺 dbgOn 总闸')
    else:
        if m.group(1) != 'if-eqz':
            fails.append('77-1 极性写反（%s，应为 if-eqz）' % m.group(1))
        if body.find('dbgOn') > body.find('if-eqz p0'):
            fails.append('77-1 总闸未在空判之前')
    # 77-2 <clinit> 默认 dgDebug=0
    if ' const/4 v0, 0x0\n' not in afm_src or 'sput v0, ' + 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I' not in afm_src:
        fails.append('77-2 <clinit> 默认 dgDebug≠0（或结构变了）')
    # 77-3 全树只有一处 sput-boolean dbgOn
    n = len(re.findall(r'sput-boolean [^\n]*->dbgOn:Z', afm_src)) + len(re.findall(r'sput-boolean [^\n]*->dbgOn:Z', src))
    if n != 1:
        fails.append('77-3 sput-boolean dbgOn 出现 %d 次（应为 1，且由 dgDebug 驱动）' % n)
    if not re.search(r'dgDebug:I\n[^\n]*\n[^\n]*(?:if-eqz|if-nez)[^\n]*\n[^\n]*sput-boolean[^\n]*dbgOn:Z|dgDebug:I[^#]*\n(?:[^\n]*\n){0,6}?[^\n]*sput-boolean[^\n]*dbgOn:Z', afm_src):
        # 宽松判定：dbgOn 的写入必须出现在引用 dgDebug 的 12 行内
        i = afm_src.find('sput-boolean')
        ok = False
        for m2 in re.finditer(r'sput-boolean[^\n]*->dbgOn:Z', afm_src):
            seg = afm_src[max(0, m2.start() - 700):m2.start()]
            if 'dgDebug' in seg: ok = True
        if not ok:
            fails.append('77-3 dbgOn 不是由 dgDebug 驱动（疑似无条件开启）')
    # 77-4 全树 Log.d / Log.e 调用点白名单
    out = []
    for root, _, fs in os.walk('/tmp/revx'):
        for f in fs:
            if not f.endswith('.smali'): continue
            p = os.path.join(root, f)
            t = rd(p)
            if 'Landroid/util/Log;->d(' in t or 'Landroid/util/Log;->e(' in t:
                out.append(p)
    bad = [p for p in out if 'AirDbgLog.smali' not in p]
    if bad: fails.append('77-4 非白名单内出现 Log.d/e：%s' % [os.path.basename(x) for x in bad[:3]])
    # 77-5 activeMissions 不得再用 DebugMissionList（已换普通 ArrayList）
    if 'DebugMissionList' in afm_src:
        fails.append('77-5 AFM 仍引用 DebugMissionList')
    return fails

def gate():
    afm = rd(AFM)
    fails = check_tree(afm)
    neg = 0
    # 负样本①：总闸极性写反
    src = rd(DLG)
    mut = src.replace('if-eqz v0, :cond_63', 'if-nez v0, :cond_63', 1)
    wr('/tmp/_neg1.smali', mut)
    bak = src
    wr(DLG, mut)
    if check_tree(afm): neg += 1
    wr(DLG, bak)
    # 负样本②：<clinit> 去掉 dgDebug 的默认值（模拟"默认没消毒"）
    mut2 = afm.replace('sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I',
                       'sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebugX:I', 1)
    if mut2 != afm and check_tree(mut2): neg += 1
    # 负样本④：把 DebugMissionList 塞回去
    mut4 = afm.replace('new-instance v0, Ljava/util/ArrayList; # r6d019：去掉调试链表的 logcat 噪声',
                       'new-instance v0, Laoc/kingdoms/lukasz/map/battles/DebugMissionList;', 1)
    if mut4 != afm and check_tree(mut4): neg += 1
    # 负样本③：业务类里塞一个 Log.d
    probe = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/_neg77.smali'
    wr(probe, '.class public L_neg77;\n.method public static x()V\n    .registers 1\n    const-string v0, "x"\n    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I\n    return-void\n.end method\n')
    if check_tree(afm): neg += 1
    os.remove(probe)
    os.remove('/tmp/_neg1.smali')
    print('== 门禁 77 ==  负样本 %d/4' % neg)
    if neg != 4: fails.append('77 负样本 %d/4' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)