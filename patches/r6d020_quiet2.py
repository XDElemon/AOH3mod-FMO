# -*- coding: utf-8 -*-
# r6d020_quiet2.py —— 把 dbgOn 总闸铺到 AirDbgLog 的所有入口（d / logOnce 是旁路）
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
TARGETS = ['public static d(Ljava/lang/String;Ljava/lang/String;)I',
           'public static logOnce(Ljava/lang/String;Ljava/lang/String;)I']

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def gate_block(tag):
    return ('    # r6d020 旁路入口同样过 dbgOn 总闸（默认关 ⇒ 静默）\n'
            '    sget-boolean v0, ' + CLS + '->dbgOn:Z\n'
            '\n'
            '    if-eqz v0, :' + tag + '\n')

def tail_block(tag):
    return ('    :' + tag + '\n'
            '    const/4 v0, 0x0\n'
            '\n'
            '    return v0\n')

def patch():
    s = rd(DLG)
    for i, sig in enumerate(TARGETS):
        tag = 'r6d020_off%d' % i
        head = '.method ' + sig + '\n'
        assert s.count(head) == 1, '方法头锚点 %s = %d' % (sig, s.count(head))
        st = s.find(head) + len(head)
        en = s.find('.end method', st)
        body = s[st:en]
        if 'r6d020' in body:
            print('  [SKIP] %s 已有总闸' % sig); continue
        mreg = re.search(r'^[ \t]*\.registers (\d+)\n', body, re.M)
        assert mreg, '找不到 .registers：' + sig
        loc = int(mreg.group(1)) - (2 if 'Ljava/lang/String;Ljava/lang/String;' in sig else 1)
        assert loc >= 1, '%s locals=%d 无空余寄存器' % (sig, loc)
        newbody = body[:mreg.end()] + gate_block(tag) + body[mreg.end():]
        newbody = newbody.rstrip('\n') + '\n\n' + tail_block(tag)
        s = s[:st] + newbody + s[en:]
        print('  [OK] %s 已加总闸（locals=%d，用 v0）' % (sig, loc))
    wr(DLG, s)

def gate():
    fails = []
    s = rd(DLG)
    for i, sig in enumerate(TARGETS):
        tag = 'r6d020_off%d' % i
        st = s.find('.method ' + sig)
        en = s.find('.end method', st)
        body = s[st:en]
        m = re.search(r'sget-boolean v0, [^\n]*AirDbgLog;->dbgOn:Z\n\s*\n\s*(if-\w+) v0, :' + tag, body)
        if not m:
            fails.append('78-1 %s 缺总闸' % sig.split('(')[0])
        elif m.group(1) != 'if-eqz':
            fails.append('78-1 %s 极性写反（%s）' % (sig.split('(')[0], m.group(1)))
        if not re.search(r'\n[ \t]*:' + tag + r'\n', body):
            fails.append('78-2 %s 缺静默出口标签' % sig.split('(')[0])
        # 标签后必须紧跟返回，且不得是方法最后一行（其后要有 .end method）
        tail = body.rstrip('\n').split('\n')[-2:]
        if not any('return' in t for t in tail):
            fails.append('78-3 %s 静默出口返回被扰动' % sig.split('(')[0])
    # 三入口（d / logOnce / dKey）都必须有闸
    n = len(re.findall(r'AirDbgLog;->dbgOn:Z', s))
    if n < 3: fails.append('78-4 总闸只出现在 %d 处（应≥3）' % n)
    neg = 0
    for i, sig in enumerate(TARGETS):
        st = s.find('.method ' + sig); en = s.find('.end method', st)
        body = s[st:en]
        mut = s[:st] + body.replace('if-eqz v0, :r6d020_off%d' % i, 'if-nez v0, :r6d020_off%d' % i, 1) + s[en:]
        wr('/tmp/_dlg_mut.smali', mut); bak = s
        wr(DLG, mut)
        if gate_checks_only(DLG): neg += 1
        wr(DLG, bak)
    if neg != len(TARGETS): fails.append('78 负样本 %d/%d' % (neg, len(TARGETS)))
    # 负样本②：删掉静默出口
    st = s.find('.method ' + TARGETS[1]); en = s.find('.end method', st)
    body = s[st:en].replace('    :r6d020_off1\n', '', 1)
    mut = s[:st] + body + s[en:]
    wr(DLG, mut)
    if gate_checks_only(DLG): neg += 1
    wr(DLG, s)
    print('== 门禁 78 ==  负样本 %d/%d' % (neg, len(TARGETS) + 1))
    if neg != len(TARGETS) + 1: fails.append('78 负样本总数 %d' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

def gate_checks_only(p):
    """只做 78-1/78-2/78-3 的快速检查，用于负样本"""
    s = rd(p); bad = False
    for i, sig in enumerate(TARGETS):
        tag = 'r6d020_off%d' % i
        st = s.find('.method ' + sig); en = s.find('.end method', st)
        body = s[st:en]
        m = re.search(r'sget-boolean v0, [^\n]*AirDbgLog;->dbgOn:Z\n\s*\n\s*(if-\w+) v0, :' + tag, body)
        if not m or m.group(1) != 'if-eqz' or not re.search(r'\n[ \t]*:' + tag + r'\n', body): bad = True
    return bad

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)