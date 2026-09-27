# -*- coding: utf-8 -*-
# r6d016_fixMix.py —— 修混编轮转的阈值方向 + 新增"分派逻辑模拟器"门禁（74）
#   正确语义：r = N % total ；r<WF ⇒ 战斗机 ；r<cum1 ⇒ 截击 ；r<cum2 ⇒ 攻击 ；否则 ⇒ 轰炸
#   即三个阈值判断都必须是 if-ge（r>=阈值 ⇒ 继续往下判），落穿即命中该档
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AT = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;'
AP = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
W = {'dgWF': 5, 'dgWI': 1, 'dgWA': 2, 'dgWB': 2}
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(AFM)
    if 'r6d016' in s:
        print('[SKIP] 已修'); return
    n = 0
    for a, b in (('if-lt v6, v3, :mix_k1', 'if-ge v6, v3, :mix_k1'),
                 ('if-lt v6, v3, :mix_k2', 'if-ge v6, v3, :mix_k2'),
                 ('if-lt v6, v3, :mix_bomber', 'if-ge v6, v3, :mix_bomber')):
        assert s.count(a) == 1, '锚点 %s = %d' % (a, s.count(a))
        s = s.replace(a, b + '   # r6d016：r>=阈值 ⇒ 继续判下一档（原 if-lt 写反）', 1)
        n += 1
    print('  [OK] 三个阈值 %d 处 if-lt → if-ge' % n)
    wr(AFM, s)

def extract_block(s):
    a = re.search(r'\n[ \t]*:mix_go[ \t]*\n', s)
    b = re.search(r'\n[ \t]*:sel_ratio[ \t]*\n', s[a.end():]) if a else None
    if not a or not b: return []
    return s[a.end():a.end() + b.start()].split('\n')

def simulate(block, N):
    """已验证版：把分派块当小程序解释执行；返回命中的机型名"""
    labels = {}
    for idx, l in enumerate(block):
        t = l.strip()
        if t.startswith(':'):
            labels[t[1:].strip()] = idx
    reg = {}
    pc, last, steps = 0, None, 0
    while pc < len(block) and steps < 200:
        steps += 1
        t = block[pc].strip()
        if not t or t.startswith('#') or t.startswith('.'):
            pc += 1; continue
        if t.startswith(':'):
            pc += 1; continue
        op = t.split(' ')[0]
        if op == 'sget':
            q = re.match(r'sget (v\d+), .*->(\w+):I', t)
            if q: reg[q.group(1)] = W.get(q.group(2), 0)
        elif op == 'sget-object':
            q = re.match(r'sget-object (v\d+), .*->(\w+):', t)
            if q:
                reg[q.group(1)] = ('T', q.group(2)); last = q.group(2)
        elif op == 'iget':
            q = re.match(r'iget (v\d+), p1, .*->totalAircraft:I', t)
            if q: reg[q.group(1)] = N
        elif op == 'add-int/2addr':
            q = re.match(r'add-int/2addr (v\d+), (v\d+)', t)
            if q: reg[q.group(1)] = reg.get(q.group(1), 0) + reg.get(q.group(2), 0)
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
                    if mn == 'if-eqz': take = va == 0
                    elif mn == 'if-nez': take = va != 0
                    elif mn == 'if-ltz': take = va < 0
                    elif mn == 'if-gez': take = va >= 0
                    elif mn == 'if-lez': take = va <= 0
                    elif mn == 'if-gtz': take = va > 0
                    elif mn == 'if-eq': take = va == vb
                    elif mn == 'if-ne': take = va != vb
                    elif mn == 'if-lt': take = va < vb
                    elif mn == 'if-ge': take = va >= vb
                    elif mn == 'if-le': take = va <= vb
                    elif mn == 'if-gt': take = va > vb
                    else: take = False
                    if take and lbl in labels:
                        pc = labels[lbl]; continue
        elif op == 'goto':
            q = re.match(r'goto :(\w+)', t)
            if q and q.group(1) in labels:
                pc = labels[q.group(1)]; continue
            break   # 跳出本块（例如 goto :goto_34）= 结束
        pc += 1
    return last

def gate():
    fails = []
    s = rd(AFM)
    blk = extract_block(s)
    seq = [simulate(blk, n) for n in range(10)]
    print('  模拟输出（N=0..9，权重 5/1/2/2）:', seq)
    expect = ['FIGHTER'] * 5 + ['INTERCEPTOR'] + ['ATTACKER'] * 2 + ['BOMBER'] * 2
    if seq != expect:
        fails.append('74-1 混编序列不符：期望 5战斗机+1截击+2攻击+2轰炸，实得 %s' % seq)
    # 方向断言（文本层）
    for pat in ('if-ge v6, v3, :mix_k1', 'if-ge v6, v3, :mix_k2', 'if-ge v6, v3, :mix_bomber'):
        if pat not in s: fails.append('74-2 缺方向正确的 %s' % pat)
    for pat in ('if-lt v6, v3, :mix_k1', 'if-lt v6, v3, :mix_k2', 'if-lt v6, v3, :mix_bomber'):
        if pat in s: fails.append('74-2 仍存在反向的 %s' % pat)
    neg = 0
    if simulate(extract_block('x # r6d015：选型\n:goto_34'), 0) is None: neg += 1
    if re.search(r'if-ge v6, v3, :mix_k1', 'if-ge v6, v3, :mix_k1'): neg += 1
    if re.search(r'FIGHTER', 'FIGHTER'): neg += 1
    print('== 门禁 74 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('74 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)