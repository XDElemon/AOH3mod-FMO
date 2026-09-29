# -*- coding: utf-8 -*-
# r6d056_fixinvars.py —— 修 r6d055 的极性错误 + 终态短路 + **真·模拟器门禁**
#   F1 R2: if-nez v4,:ri_r3 → if-eqz v4,:ri_r3   （无师才跳过）
#   F2 R3: if-nez v4,:ri_end → if-eqz v4,:ri_end （无机场才跳过；顺带消 NPE）
#   F4 tickInvars 改返回 Z（是否已终结）；update() 入口 move-result + if-eqz + return-void（终态短路）
#   G117 门禁：**解释执行 tickInvars 的真实 smali**（只支持本方法用到的指令子集）跑 8 例真值表，
#        并对 3 处关键判定做"翻转敏感性"检查（把 if-eqz↔if-nez 换掉后，模拟器必须给出不同结果）
import io, re, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
MIS = R + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
ORD = {'PLANNING': 0, 'EN_ROUTE': 1, 'EXECUTING': 2, 'RETURNING': 3, 'COMPLETED': 4, 'ABORTED': 5}

# ---------------- 修丁点 ----------------
P_SIG = '.method public tickInvars()V'
P_SIG_N = '.method public tickInvars()Z'
P_R1A = 'if-nez v1, :ri_air'
P_R1AN = 'if-eqz v1, :ri_air'
P_R1B = 'if-nez v0, :ri_abort'
P_R1BN = 'if-eqz v0, :ri_abort'
P_R1C = 'if-nez v1, :ri_abort'
P_R1CN = 'if-eqz v1, :ri_abort'
P_R2 = 'if-nez v4, :ri_r3'
P_R2N = 'if-eqz v4, :ri_r3'
P_R3 = 'if-nez v4, :ri_end'
P_R3N = 'if-eqz v4, :ri_end'
P_ABORT_END = '''    const/4 v0, 0x1
    invoke-static {v0}, %(D)s->ivLog(I)V

    return-void
''' % {'D': DLG_T}
P_ABORT_END_N = '''    const/4 v0, 0x1
    invoke-static {v0}, %(D)s->ivLog(I)V

    const/4 v0, 0x1
    return v0
''' % {'D': DLG_T}
P_ARR_END = '''    const/4 v0, 0x2
    invoke-static {v0}, %(D)s->ivLog(I)V

    return-void
''' % {'D': DLG_T}
P_ARR_END_N = '''    const/4 v0, 0x2
    invoke-static {v0}, %(D)s->ivLog(I)V

    const/4 v0, 0x1
    return v0
''' % {'D': DLG_T}
P_END = '''    :ri_end
    return-void
'''
P_END_N = '''    :ri_end
    const/4 v0, 0x0

    return v0
'''
P_CALL = '    invoke-virtual {p0}, %s->tickInvars()V\n' % M_T
P_CALL_N = ('    invoke-virtual {p0}, %s->tickInvars()Z\n\n'
            '    move-result v0\n'
            '    if-eqz v0, :ti_go\n'
            '    return-void\n\n'
            '    :ti_go\n') % M_T

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    m = rd(MIS)
    for old, new, tag in ((P_SIG, P_SIG_N, '签名'),
                          (P_R1A, P_R1AN, 'R1 规划态分支'), (P_R1B, P_R1BN, 'R1 机队null'),
                          (P_R1C, P_R1CN, 'R1 机队空'),
                          (P_R2, P_R2N, 'R2 极性'), (P_R3, P_R3N, 'R3 极性'),
                          (P_ABORT_END, P_ABORT_END_N, 'R1 返回'), (P_ARR_END, P_ARR_END_N, 'R2 返回'),
                          (P_END, P_END_N, 'R3 返回'), (P_CALL, P_CALL_N, 'update 短路')):
        assert m.count(old) == 1, '%s 锚点命中 %d' % (tag, m.count(old))
        m = m.replace(old, new, 1)
    wr(MIS, m)
    print('patch OK（F1/F2 极性 + F4 短路 + 返回 Z）')

# ---------------- 真·解释器（只覆盖本方法用到的指令） ----------------
def body_of(smali_text, sig):
    seg = smali_text.split(sig, 1)[1]
    return seg.split('.end method', 1)[0].splitlines()

def interpret(lines, mission):
    """解释执行 tickInvars 的控制流；返回 ('abort'|'arrive'|'complete'|'none', 动作轨迹)"""
    instrs = []
    for ln in lines:
        s = ln.strip()
        if not s or s.startswith('#') or s.startswith('.line') or s.startswith('.registers') or s.startswith('.param'):
            continue
        instrs.append(s)
    labels = {}
    for i, s in enumerate(instrs):
        if s.startswith(':'):
            labels[s[1:]] = i
    SENT = object()
    reg = {}
    pending = [None]
    trace = []
    pc = 0
    steps = 0
    def jump(lab, pc):
        return labels[lab.split(':')[-1].strip()]
    while pc < len(instrs) and steps < 4000:
        steps += 1
        s = instrs[pc]
        m = re.match(r'^(const/\S+)\s+v(\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)$', s)
        if m:
            reg[int(m.group(2))] = int(m.group(3), 0)
            pc += 1; continue
        m = re.match(r'^iget-object\s+v(\d+),\s*p0,\s*\S+AirMission\$MissionState;$', s)
        if m:
            reg[int(m.group(1))] = mission.get('state_name')
            pc += 1; continue
        m = re.match(r'^iget-object\s+v(\d+),\s*p0,\s*\S+->(\w+):', s)
        if m:
            reg[int(m.group(1))] = mission.get(m.group(2))
            pc += 1; continue
        m = re.match(r'^iget\s+v(\d+),\s*p0,\s*\S+->(\w+):I$', s)
        if m:
            reg[int(m.group(1))] = mission.get(m.group(2))
            pc += 1; continue
        m = re.match(r'^iget-object\s+v(\d+),\s*p0,\s*\S+AirMission\$MissionState;$', s)
        if m:
            reg[int(m.group(1))] = mission.get('state_name')
            pc += 1; continue
        m = re.match(r'^iget-object\s+v(\d+),\s*v(\d+),', s)
        if m:
            src = reg.get(int(m.group(2)))
            if src is None:
                return ('NPE', trace + ['NPE at %s' % s])
            reg[int(m.group(1))] = src
            pc += 1; continue
        m = re.match(r'^iget\s+v(\d+),\s*v(\d+),\s*\S+Airport;->provinceID:I$', s)
        if m:
            src = reg.get(int(m.group(2)))
            if src is None:
                return ('NPE', trace + ['NPE at %s' % s])
            reg[int(m.group(1))] = src.get('provinceID')
            pc += 1; continue
        m = re.match(r'^sget-object\s+v(\d+),\s*\S+MissionState;->(\w+):', s)
        if m:
            reg[int(m.group(1))] = m.group(2)
            pc += 1; continue
        m = re.match(r'^invoke-virtual\s+\{v(\d+)\},\s*\S+MissionState;->ordinal\(\)I$', s)
        if m:
            pending[0] = ORD.get(reg.get(int(m.group(1))))
            pc += 1; continue
        m = re.match(r'^invoke-interface\s+\{v(\d+)\},\s*Ljava/util/List;->size\(\)I$', s)
        if m:
            v = reg.get(int(m.group(1)))
            pending[0] = 0 if v is None else len(v)
            pc += 1; continue
        m = re.match(r'^move-result(?:-object)?\s+v(\d+)$', s)
        if m:
            reg[int(m.group(1))] = pending[0]
            pc += 1; continue
        m = re.match(r'^if-(\w+)(?:z)?\s+v(\d+)(?:,\s*v(\d+))?,\s*:(\S+)$', s)
        if m:
            rawop = m.group(1)
            zflag = rawop.endswith('z')
            op = rawop[:-1] if zflag else rawop
            a_raw = reg.get(int(m.group(2)), SENT)
            if a_raw is SENT:
                return ('UNDEF', trace + ['undef at %s' % s])
            if zflag:
                is_zero = (a_raw is None) or (isinstance(a_raw, int) and a_raw == 0)
                ok = (not is_zero) if op == 'ne' else is_zero
                pc = jump(m.group(4), pc) if ok else pc + 1
                continue
            else:
                b_raw = reg.get(int(m.group(3)), SENT)
                if b_raw is SENT:
                    return ('UNDEF', trace + ['undef at %s' % s])
                a = 0 if a_raw is None else a_raw
                b = 0 if b_raw is None else b_raw
            if op == 'ne': ok = (a != b)
            elif op == 'eq': ok = (a == b)
            elif op == 'ge': ok = (a >= b)
            elif op == 'lt': ok = (a < b)
            elif op == 'le': ok = (a <= b)
            elif op == 'gt': ok = (a > b)
            else: return ('UNDEF', trace + ['unknown op %s' % op])
            pc = jump(m.group(4), pc) if ok else pc + 1
            continue
        m = re.match(r'^goto\s+:(\S+)$', s)
        if m:
            pc = jump(m.group(1), pc); continue
        m = re.match(r'^iput-object\s+v(\d+),\s*p0,\s*\S+->state:', s)
        if m:
            val = reg.get(int(m.group(1)))
            trace.append('state=%s' % val)
            if val in ('ABORTED', 'EXECUTING', 'COMPLETED'):
                return ({'ABORTED': 'abort', 'EXECUTING': 'arrive', 'COMPLETED': 'complete'}[val], trace)
            pc += 1; continue
        if '->returnAirDivisionHome()V' in s or '->returnToBase()V' in s or '->placeAirDivision(I)V' in s:
            trace.append(s.split('->')[-1]); pc += 1; continue
        if '->ivLog(I)V' in s:
            trace.append('ivLog'); pc += 1; continue
        if s.startswith('return'):
            pc += 1; continue
        # 其它指令：忽略（invoke-static dbg 等）
        pc += 1
    return ('none', trace)

def run(lines, **kw):
    mission = {'state_name': None, 'airhqDivision': None, 'assignedAircraft': None,
               'sourceAirport': None, 'targetProvinceID': -1, 'airDivisionAtProvinceID': -1}
    mission.update(kw)
    return interpret(lines, mission)

def gate():
    f = []
    m = rd(MIS)
    if '.method public tickInvars()Z' not in m: f.append('117-0 tickInvars 未返回 Z')
    lines = body_of(m, '.method public tickInvars()Z')
    cases = [
        dict(state_name='EN_ROUTE', airhqDivision=None, assignedAircraft=['a'], want='abort'),      # 1
        dict(state_name='PLANNING', airhqDivision=None, assignedAircraft=[], want='abort'),         # 2
        dict(state_name='PLANNING', airhqDivision=None, assignedAircraft=['a'], want='none'),       # 3
        dict(state_name='EN_ROUTE', airhqDivision='d', targetProvinceID=5995, airDivisionAtProvinceID=5995, want='arrive'),  # 4
        dict(state_name='EN_ROUTE', airhqDivision='d', targetProvinceID=5995, airDivisionAtProvinceID=5998, want='none'),    # 5
        dict(state_name='RETURNING', airhqDivision='d', sourceAirport={'provinceID': 6337},
             airDivisionAtProvinceID=6337, want='complete'),                                    # 6
        dict(state_name='RETURNING', airhqDivision='d', sourceAirport={'provinceID': 6337},
             airDivisionAtProvinceID=6259, want='none'),                                        # 7
        dict(state_name='EXECUTING', airhqDivision='d', want='none'),                            # 8
    ]
    ok = 0
    for i, c in enumerate(cases, 1):
        want = c.pop('want')
        got, tr = run(lines, **c)
        if got == want: ok += 1
        else: f.append('117-1 用例%d 不符: got=%s want=%s trace=%s' % (i, got, want, tr))
    # 反转敏感性：把 3 处关键判定各翻转一次，模拟器必须给出“不同结果”
    sens = 0
    for old, new in (('if-eqz v4, :ri_r3', 'if-nez v4, :ri_r3'),
                     ('if-eqz v4, :ri_end', 'if-nez v4, :ri_end'),
                     ('if-eqz v1, :ri_air', 'if-nez v1, :ri_air')):
        txt = '\n'.join(lines)
        if old not in txt:
            f.append('117-2 找不到待翻转的判定 %s' % old); continue
        mut = txt.replace(old, new, 1).splitlines()
        diff = False
        for c in cases:
            cc = dict(c); want = cc.pop('want', None)
            a, _ = run(lines, **cc)
            b, _ = run(mut, **cc)
            if a != b: diff = True
        if diff: sens += 1
        else: f.append('117-3 翻转 %s 后模拟器结果不变（=模拟器与产物脱节）' % old)
    # 结构：update 入口短路
    if 'invoke-virtual {p0}, %s->tickInvars()Z' % M_T not in m: f.append('117-4 update 未调用 Z 版')
    if 'move-result v0\n    if-eqz v0, :ti_go' not in m: f.append('117-4b 缺终态短路')
    print('== 门禁 117 ==  真值表 %d/8  反转敏感性 %d/3' % (ok, sens))
    if ok < 8: f.append('117 真值表 %d/8' % ok)
    if sens < 3: f.append('117 反转敏感性 %d/3' % sens)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)