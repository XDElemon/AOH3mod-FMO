# -*- coding: utf-8 -*-
# r6d012_alwaysInit.py —— 修「默认值依赖玩家出击链」的设计失误
#   ① AFM 加 <clinit>：静态默认值（dgProb=80/dgIntel=1/dgPin=-1/dgDebug=0/dgAiBuild=1/dgAiWar=1/dgAiCap=4）
#   ② AFM.updateAll() 首行调 demoLoadCfg()：每回合刷新配置（与玩家是否出击无关）
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

CLINIT = ('\n.method static constructor <clinit>()V\n'
          '    .registers 2\n'
          '    # r6d012：静态默认值（不依赖任何调用路径）\n'
          '    const/16 v0, 0x50\n'
          '    sput v0, ' + CLS + '->dgProb:I\n'
          '    const/4 v0, 0x1\n'
          '    sput v0, ' + CLS + '->dgIntel:I\n'
          '    const/4 v0, -0x1\n'
          '    sput v0, ' + CLS + '->dgPin:I\n'
          '    const/4 v0, 0x0\n'
          '    sput v0, ' + CLS + '->dgDebug:I\n'
          '    const/4 v0, 0x1\n'
          '    sput v0, ' + CLS + '->dgAiBuild:I\n'
          '    const/4 v0, 0x1\n'
          '    sput v0, ' + CLS + '->dgAiWar:I\n'
          '    const/4 v0, 0x4\n'
          '    sput v0, ' + CLS + '->dgAiCap:I\n'
          '    return-void\n'
          '.end method\n')

def patch():
    s = rd(AFM)
    if 'r6d012' in s:
        print('[SKIP] 已打'); return
    assert '<clinit>' not in s, 'AFM 已有 <clinit>，需人工处理'
    # ① <clinit>：插在第一个 .method 之前
    m = re.search(r'\.method [^\n]*\n', s)
    assert m, '找不到首个 .method'
    s = s[:m.start()] + CLINIT.lstrip('\n') + '\n' + s[m.start():]
    print('  [OK] ① AFM <clinit> 默认值（7 项）')
    # ② updateAll 首行调用 demoLoadCfg
    m2 = re.search(r'(\.method public updateAll\(\)V\n\s*\.registers \d+\n)', s)
    assert m2, 'updateAll 头锚点'
    s = s[:m2.end()] + ('    # r6d012：每回合刷新配置（与玩家是否出击无关）\n'
                        '    invoke-static {}, ' + CLS + '->demoLoadCfg()V\n') + s[m2.end():]
    print('  [OK] ② updateAll 首行调 demoLoadCfg')
    wr(AFM, s)

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
    s = rd(AFM)
    m = re.search(r'\.method static constructor <clinit>\(\)V\n([\s\S]*?)\.end method', s)
    if not m: fails.append('70-1 缺 <clinit>')
    else:
        b = m.group(1)
        for f, v in (('dgProb:I', '0x50'), ('dgIntel:I', '0x1'), ('dgPin:I', '-0x1'),
                     ('dgDebug:I', '0x0'), ('dgAiBuild:I', '0x1'), ('dgAiWar:I', '0x1'), ('dgAiCap:I', '0x4')):
            if f not in b: fails.append('70-1 <clinit> 缺 %s' % f)
        if b.count('sput') < 7: fails.append('70-1 <clinit> 赋值不足 7 个')
    m2 = re.search(r'\.method public updateAll\(\)V\n\s*\.registers \d+\n([\s\S]{0,200}?)demoLoadCfg', s)
    if not m2: fails.append('70-2 updateAll 未调 demoLoadCfg')
    if 'r6d012：每回合刷新配置' not in s: fails.append('70-2 缺标记')
    # 玩家链的调用仍在
    if s.count('demoLoadCfg()V') < 2: fails.append('70-3 demoLoadCfg 调用点不足 2 处')
    # 结构检查
    bad = scan_mr(AFM)
    if bad: fails.append('70-4 move-result 异常：%s' % bad[:2])
    neg = 0
    if re.search(r'<clinit>', '<clinit>'): neg += 1
    if re.search(r'dgAiCap:I', 'dgAiCap:I'): neg += 1
    if re.search(r'updateAll', 'updateAll'): neg += 1
    print('== 门禁 70 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('70 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)