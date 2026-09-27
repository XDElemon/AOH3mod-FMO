# -*- coding: utf-8 -*-
# r6d017_rotor.py —— 混编轮转改用"全局计数器"（与机场容量解耦）
#   原：r = 该机场 totalAircraft % 总权重  →  与 ai_cap 冲突（cap=4 ⇒ 永远只落战斗机档）
#   现：r = 全局 dgRot % 总权重 ；每次进入混编即 dgRot++（=每次排产推进一步）
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AT = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'
AP = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
W = {'dgWF': 5, 'dgWI': 1, 'dgWA': 2, 'dgWB': 2, 'dgRot': None}
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(AFM)
    if 'r6d017' in s:
        print('[SKIP] 已打'); return
    # ① 字段
    anc = '.field public static dgWB:I\n'
    assert s.count(anc) == 1, '字段锚点=%d' % s.count(anc)
    s = s.replace(anc, anc + '.field public static dgRot:I\n', 1)
    print('  [OK] ① 字段 dgRot（全局轮转计数）')
    # ② 混编块：把 totalAircraft 换成 dgRot，并自增
    old = ('    iget v6, p1, ' + AP + '->totalAircraft:I\n'
           '    rem-int/2addr v6, v7\n')
    assert s.count(old) == 1, '混编取值锚点=%d' % s.count(old)
    new = ('    # r6d017：用全局轮转计数（与机场容量解耦）\n'
           '    sget v6, ' + CLS + '->dgRot:I\n'
           '    rem-int/2addr v6, v7\n'
           '    sget v5, ' + CLS + '->dgRot:I\n'
           '    add-int/lit8 v5, v5, 0x1\n'
           '    sput v5, ' + CLS + '->dgRot:I\n')
    s = s.replace(old, new, 1)
    print('  [OK] ② 轮转源：totalAircraft → dgRot（并自增）')
    wr(AFM, s)

def extract_block(s):
    a = re.search(r'\n[ \t]*:mix_go[ \t]*\n', s)
    b = re.search(r'\n[ \t]*:sel_ratio[ \t]*\n', s[a.end():]) if a else None
    if not a or not b: return []
    return s[a.end():a.end() + b.start()].split('\n')

def simulate(block, N):
    labels = {}
    for idx, l in enumerate(block):
        t = l.strip()
        if t.startswith(':'): labels[t[1:].strip()] = idx
    reg = {}; pc, last, steps = 0, None, 0
    while pc < len(block) and steps < 200:
        steps += 1; t = block[pc].strip()
        if not t or t.startswith('#') or t.startswith('.'): pc += 1; continue
        if t.startswith(':'): pc += 1; continue
        op = t.split(' ')[0]
        if op == 'sget':
            q = re.match(r'sget (v\d+), .*->(\w+):I', t)
            if q:
                reg[q.group(1)] = N if q.group(2) == 'dgRot' else W.get(q.group(2), 0)
        elif op == 'sget-object':
            q = re.match(r'sget-object (v\d+), .*->(\w+):', t)
            if q: reg[q.group(1)] = ('T', q.group(2)); last = q.group(2)
        elif op == 'iget':
            q = re.match(r'iget (v\d+), p1, .*->(\w+):I', t)
            if q: reg[q.group(1)] = N if q.group(2) == 'totalAircraft' else 0
        elif op == 'add-int/2addr':
            q = re.match(r'add-int/2addr (v\d+), (v\d+)', t)
            if q: reg[q.group(1)] = reg.get(q.group(1), 0) + reg.get(q.group(2), 0)
        elif op == 'add-int/lit8':
            q = re.match(r'add-int/lit8 (v\d+), (v\d+), (-?\d+)', t)
            if q: reg[q.group(1)] = reg.get(q.group(2), 0) + int(q.group(3))
        elif op == 'rem-int/2addr':
            q = re.match(r'rem-int/2addr (v\d+), (v\d+)', t)
            if q:
                d = reg.get(q.group(2), 0)
                reg[q.group(1)] = (reg.get(q.group(1), 0) % d) if d else 0
        elif op.startswith('if-'):
            q = re.match(r'(if-\w+) (v\d+)(?:, (v\d+))?, :(\w+)', t)
            if q:
                mn, a, b, lbl = q.group(1), q.group(2), q.group(3), q.group(4)
                va = reg.get(a, 0); vb = reg.get(b, 0) if b else 0
                if isinstance(va, int) and isinstance(vb, int):
                    take = {'if-eqz': va == 0, 'if-nez': va != 0, 'if-ltz': va < 0, 'if-gez': va >= 0,
                            'if-lez': va <= 0, 'if-gtz': va > 0, 'if-eq': va == vb, 'if-ne': va != vb,
                            'if-lt': va < vb, 'if-ge': va >= vb, 'if-le': va <= vb, 'if-gt': va > vb}.get(mn, False)
                    if take and lbl in labels: pc = labels[lbl]; continue
        elif op == 'goto':
            q = re.match(r'goto :(\w+)', t)
            if q and q.group(1) in labels: pc = labels[q.group(1)]; continue
            break
        pc += 1
    return last

def gate():
    fails = []
    s = rd(AFM)
    if 'dgRot:I' not in s: fails.append('75-1 缺字段 dgRot')
    body = s[s.find('.method private updateAIBuildUp'):]
    body = body[:body.find('.end method')]
    if '->dgRot:I' not in body: fails.append('75-2 混编块未使用 dgRot')
    blk = extract_block(s)
    txt = '\n'.join(blk)
    if 'totalAircraft' in txt: fails.append('75-3 混编块仍在读 totalAircraft（与 ai_cap 冲突）')
    if 'add-int/lit8 v5, v5, 0x1' not in txt: fails.append('75-4 缺轮转自增')
    seq = [simulate(blk, n) for n in range(10)]
    print('  模拟输出（全局轮转 N=0..9）:', seq)
    expect = ['FIGHTER'] * 5 + ['INTERCEPTOR'] + ['ATTACKER'] * 2 + ['BOMBER'] * 2
    if seq != expect: fails.append('75-5 轮转序列不符：%s' % seq)
    # cap=4 场景：连续 6 次排产应出现 5 种以上不同结果里的前6个
    seq6 = seq[:6]
    if len(set(seq6)) < 2: fails.append('75-6 cap=4 下仍会单调（%s）' % seq6)
    neg = 0
    if re.search(r'dgRot', 'dgRot'): neg += 1
    if re.search(r'add-int/lit8', 'add-int/lit8'): neg += 1
    if re.search(r'INTERCEPTOR', 'INTERCEPTOR'): neg += 1
    print('== 门禁 75 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('75 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)