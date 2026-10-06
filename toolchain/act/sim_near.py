#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d173 行为级模拟器 · nearX（解释执行真实 smali 控制流）
=========================================================
对 Game / AirForceManager / List / AirMission / Province / live / isq 用**假值表打桩**，
但**分支与算术全部按真实 smali 指令执行**（含标签跳转）。
断言（d = 打包 % 100000，w = 打包 // 100000）：
  A1 同省敌机 + 500px 敌机 + 1500px 敌机 ⇒ d=0, w=2
  A2 无敌机 ⇒ d=0, w=0
  A3 只有 1500px 敌机 ⇒ d=1500, w=0
  A4 未部署/友军/无编队 一律不算 ⇒ d=0, w=0
自检：把 `if-le v12, v11, :next173`（更近才替换）反转 ⇒ A3 必须失败。
"""
import math
import re
import sys

DIAG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
SIG = '.method private static nearX(Laoc/kingdoms/lukasz/map/province/Province;I)I'

# ---------------- 假世界 ----------------
PROV = {   # pid -> {civ, x, y}
    10: {'civ': 73, 'x': 100, 'y': 100},
    11: {'civ': 99, 'x': 600, 'y': 100},    # 距 10 号省中心 500px
    12: {'civ': 99, 'x': 1600, 'y': 100},   # 距 1500px
}
SIZE = 13892
MISSIONS = []


def mk(apid, civ, live=True):
    return {'apid': apid, 'civ': civ, 'live': live}


def ceilsqrt(n):
    if n <= 0:
        return 0
    r = int(math.isqrt(n))
    return r if r * r == n else r + 1


# ---------------- 解释器 ----------------
def parse(sig=SIG, text=None):
    s = text if text is not None else open(DIAG, encoding='utf-8').read()
    i = s.index(sig)
    j = s.index('.end method', i)
    ins = []
    for ln in s[i:j].splitlines():
        t = ln.strip()
        if not t or t.startswith(('.method', '.registers', '.catch', '.param', '.line')):
            continue
        m = re.match(r'^(:[\w]+)$', t)
        if m:
            ins.append(('label', m.group(1)))
            continue
        ins.append(('ins', t))
    labels = {op[1]: k for k, op in enumerate(ins) if op[0] == 'label'}
    return ins, labels


def do_invoke(t, regs):
    a = regs
    if 'Province;->getProvinceID()I' in t:
        return a['p0']['pid']
    if 'Province;->getCivID()I' in t:
        return a['p0']['civ']
    if 'Province;->getCenterX_Real()I' in t:
        o = a['v9'] if 'v9' in t else a['p0']
        return o['x']
    if 'Province;->getCenterY_Real()I' in t:
        o = a['v9'] if 'v9' in t else a['p0']
        return o['y']
    if 'AirForceManager;->getInstance()' in t:
        return {'missions': MISSIONS}
    if 'AirDefDiag;->live(Laoc' in t:
        arg = list(a.values())
        m = [v for v in a.values() if isinstance(v, dict) and 'live' in v]
        return 1 if (m and m[0]['live']) else 0
    if 'Game;->getProvince(I)' in t:
        idx = [v for v in a.values() if isinstance(v, int)]
        return None  # 由具体调用点下面覆盖（见 run 的特判）
    if 'AirDefDiag;->isq(I)I' in t:
        vals = [v for v in a.values() if isinstance(v, int) and v >= -1]
        return ceilsqrt(a.get('v11', 0))
    if 'List;->size()I' in t:
        return len(a['v1'])
    if 'List;->get(I)' in t:
        return a['v1'][a['v2']]
    raise RuntimeError('未打桩的调用: ' + t)


def run(ins, labels, prov_pid, missions):
    global MISSIONS
    MISSIONS = missions
    r = {'p0': dict(PROV[prov_pid], pid=prov_pid), 'p1': 0}
    pc, steps, pending = 0, 0, None
    while 0 <= pc < len(ins):
        steps += 1
        if steps > 5000:
            raise RuntimeError('死循环')
        kind, t = ins[pc]
        if kind == 'label':
            pc += 1
            continue
        if t.startswith('const/4'):
            m = re.match(r'const/4 (v\d+), (-?0x[0-9a-fA-F]+|-?\d+)', t)
            r[m.group(1)] = int(m.group(2), 0)
            pc += 1
        elif t.startswith('const/16'):
            m = re.match(r'const/16 (v\d+), (-?0x[0-9a-fA-F]+|-?\d+)', t)
            r[m.group(1)] = int(m.group(2), 0)
            pc += 1
        elif t.startswith('const '):
            m = re.match(r'const (v\d+), (-?0x[0-9a-fA-F]+|-?\d+)', t)
            r[m.group(1)] = int(m.group(2), 0)
            pc += 1
        elif t.startswith('move-object') or t.startswith('move-result-object'):
            m = re.match(r'move(?:-result)?-object (v\d+)(?:, (v\d+))?', t)
            r[m.group(1)] = pending if m.group(2) is None else r[m.group(2)]
            pc += 1
        elif t.startswith('move-result'):
            m = re.match(r'move-result (v\d+)', t)
            r[m.group(1)] = pending
            pc += 1
        elif t.startswith('move '):
            m = re.match(r'move (v\d+), (v\d+)', t)
            r[m.group(1)] = r[m.group(2)]
            pc += 1
        elif t.startswith('add-int/lit8'):
            m = re.match(r'add-int/lit8 (v\d+), (v\d+), (-?0x[0-9a-fA-F]+|-?\d+)', t)
            r[m.group(1)] = r[m.group(2)] + int(m.group(3), 0)
            pc += 1
        elif t.startswith('sub-int/2addr'):
            a_, b_ = re.match(r'sub-int/2addr (v\d+), (v\d+)', t).groups()
            r[a_] = r[a_] - r[b_]
            pc += 1
        elif t.startswith('add-int/2addr'):
            a_, b_ = re.match(r'add-int/2addr (v\d+), (v\d+)', t).groups()
            r[a_] = r[a_] + r[b_]
            pc += 1
        elif t.startswith('mul-int/2addr'):
            a_, b_ = re.match(r'mul-int/2addr (v\d+), (v\d+)', t).groups()
            r[a_] = r[a_] * r[b_]
            pc += 1
        elif t.startswith('mul-int ') or t.startswith('rem-int ') or t.startswith('div-int '):
            op = t.split()[0]
            a_, b_, c_ = re.match(r'\S+ (v\d+), (v\d+), (v\d+)', t).groups()
            if op == 'mul-int':
                r[a_] = r[b_] * r[c_]
            elif op == 'rem-int':
                r[a_] = r[b_] % r[c_]
            else:
                r[a_] = r[b_] // r[c_]
            pc += 1
        elif t.startswith('iget'):
            m = re.match(r'iget(?:-object)? (v\d+), (v\d+), \S+;->(\w+):', t)
            dst, src, fld = m.group(1), m.group(2), m.group(3)
            o = r[src]
            if fld == 'activeMissions':
                r[dst] = o['missions']
            elif fld == 'airDivisionAtProvinceID':
                r[dst] = o['apid']
            elif fld == 'civID':
                r[dst] = o['civ']
            else:
                raise RuntimeError('未打桩字段 ' + fld)
            pc += 1
        elif t.startswith('sget'):
            r[re.match(r'sget (v\d+)', t).group(1)] = SIZE
            pc += 1
        elif t.startswith('invoke'):
            if 'Game;->getProvince(I)' in t:
                regs = re.findall(r'v\d+', t.split('},')[0])
                # 唯一 int 参数即 apid
                apid = r[regs[0]]
                r['__gp'] = PROV.get(apid)
                pending = PROV.get(apid)
            else:
                pending = do_invoke(t, r)
            pc += 1
        elif t.startswith('if-'):
            op = t.split()[0]
            m = re.match(r'if-(\w+) (v\d+)(?:, (v\d+))?, (:\w+)', t)
            cond, r1, r2, lbl = m.groups()
            a_ = r.get(r1)
            b_ = r.get(r2) if r2 else None
            # 惰性求值（对象与 int 不能盲目比较）
            def isnull(x):
                return (x is None) or (isinstance(x, int) and x == 0)
            def ai(x):
                return 0 if x is None else x
            if cond == 'eq':
                take = (a_ == b_) if r2 else isnull(a_)
            elif cond == 'ne':
                take = (a_ != b_) if r2 else (not isnull(a_))
            elif cond in ('eqz', 'nez'):
                take = isnull(a_) if cond == 'eqz' else (not isnull(a_))
            elif cond == 'ltz':
                take = ai(a_) < 0
            elif cond == 'gez':
                take = ai(a_) >= 0
            elif cond == 'gtz':
                take = ai(a_) > 0
            elif cond == 'lez':
                take = ai(a_) <= 0
            elif cond == 'lt':
                take = ai(a_) < ai(b_)
            elif cond == 'ge':
                take = ai(a_) >= ai(b_)
            elif cond == 'gt':
                take = ai(a_) > ai(b_)
            elif cond == 'le':
                take = ai(a_) <= ai(b_)
            else:
                raise RuntimeError('未知条件 ' + cond)
            pc = labels[lbl] if take else pc + 1
        elif t.startswith('goto'):
            pc = labels[t.split()[1]]
        elif t.startswith('return '):
            m = re.match(r'return (v\d+)', t)
            v = r[m.group(1)]
            return (v // 100000, v % 100000)   # (w, d)
        elif t.startswith('return-void'):
            return None
        else:
            pc += 1
    return None


def main():
    text = open(DIAG, encoding='utf-8').read()
    ins, labels = parse(text=text)
    cases = [
        ('A1 同省+500px+1500px', [mk(10, 99), mk(11, 99), mk(12, 99)], (2, 0)),
        ('A2 无敌机', [], (0, 0)),
        ('A3 只有1500px', [mk(12, 99)], (0, 1500)),
        ('A4 未部署/友军/无编队', [mk(-1, 99), mk(11, 73), mk(11, 99, live=False)], (0, 0)),
    ]
    print('=== 解释执行 nearX（指令 %d，标签 %d）===' % (len(ins), len(labels)))
    ok = True
    for name, ms, exp in cases:
        got = run(ins, labels, 10, ms)
        good = (got == exp)
        ok &= good
        print('  %s %-24s ⇒ w=%s d=%s（期望 w=%s d=%s）' % ('✅' if good else '❌', name, got[0], got[1], exp[0], exp[1]))

    print()
    print('=== 反转敏感性自检（更近才替换 反转 ⇒ 必须失败）===')
    mut = text.replace('if-ge v12, v11, :next173', 'if-le v12, v11, :next173', 1)
    if mut == text:
        print('  ⚠️ 找不到目标分支')
        ok = False
    else:
        ins2, labels2 = parse(text=mut)
        got2 = run(ins2, labels2, 10, [mk(11, 99), mk(10, 99)])   # 先500px 后同省
        print('  %s 反转后（500px→同省）⇒ w=%s d=%s（正确应 w=2 d=0）' % ('✅' if got2 != (2, 0) else '❌', got2[0], got2[1]))
        ok &= (got2 != (2, 0))

    print()
    print('=== 模拟器结果：%s ===' % ('全过 ✅' if ok else '不通过 ❌'))
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())