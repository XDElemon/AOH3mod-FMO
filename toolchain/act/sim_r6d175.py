#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sim_r6d175.py —— 行为级模拟器（解释真实 smali）
核心命题（r6d175 口径）：
    判定 calcInEllipse(dx,dy,AirLat.r(R,y),calcCosK(y))
    ⇔  (dx/R)^2 + (dy/(R*f))^2 <= 1     ，f=clamp(cos(lat),0.25,1)
即：判定范围 == 渲染画出的椭圆 (Rx,Ry)=(R, R*f)   “圈 = 判定范围”
"""
import re, sys, struct, math

SM = "/tmp/w3a/smali"
F_AIRLAT = SM + "/aoc/kingdoms/lukasz/map/battles/AirLat.smali"
F_FOG    = SM + "/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali"

def f2b(x):  # float -> bits
    return struct.unpack('<I', struct.pack('<f', x))[0]
def b2f(b):  # bits -> float
    return struct.unpack('<f', struct.pack('<I', b & 0xFFFFFFFF))[0]
def d2b(x):
    return struct.unpack('<Q', struct.pack('<d', x))[0]
def b2d(b):
    return struct.unpack('<d', struct.pack('<Q', b & 0xFFFFFFFFFFFFFFFF))[0]

class VM(object):
    def __init__(self, text, sig, reg=None):
        m = re.search(r'\.method[^\n]*?' + re.escape(sig) + r'[^\n]*\n(.*?)\.end method', text, re.S)
        if not m:
            raise SystemExit("找不到方法 " + sig)
        self.ins = []
        self.labels = {}
        self.nreg = 0
        for raw in m.group(1).splitlines():
            s = raw.strip()
            if not s or s.startswith('#') or s.startswith('.param') or s.startswith('.line'):
                continue
            if s.startswith('.registers'):
                self.nreg = int(s.split()[1]); continue
            if s.startswith(':'):
                self.labels[s[1:]] = len(self.ins); continue
            self.ins.append(s)
        self.reg = reg or {}

    def call(self, args):
        v = {}
        base = self.nreg - len(args)
        for i, a in enumerate(args):
            v[base + i] = a
        pc, pend, res = 0, None, None
        while pc < len(self.ins):
            s = self.ins[pc]; pc += 1
            s = re.sub(r'\bp(\d+)\b', lambda m: 'v%d' % (base + int(m.group(1))), s)
            p = s.split()
            op = p[0]
            if op.startswith('const'):
                mx = re.match(r'const[^ ]* v(\d+), (0x[0-9a-fA-F]+|-?\d+)', s)
                if mx: v[int(mx.group(1))] = int(mx.group(2), 16) if mx.group(2).startswith('0x') else int(mx.group(2))
            elif op == 'move':
                mx = re.match(r'move v(\d+), v(\d+)', s); v[int(mx.group(1))] = v.get(int(mx.group(2)))
            elif op == 'move-result':
                mx = re.match(r'move-result v(\d+)', s); v[int(mx.group(1))] = res
            elif op == 'move-result-wide':
                mx = re.match(r'move-result-wide v(\d+)', s); v[int(mx.group(1))] = res
            elif op == 'int-to-float':
                mx = re.match(r'int-to-float v(\d+), v(\d+)', s); v[int(mx.group(1))] = f2b(float(v.get(int(mx.group(2)), 0)))
            elif op == 'float-to-int':
                mx = re.match(r'float-to-int v(\d+), v(\d+)', s); v[int(mx.group(1))] = int(math.trunc(b2f(v.get(int(mx.group(2)), 0))))
            elif op == 'float-to-double':
                mx = re.match(r'float-to-double v(\d+), v(\d+)', s); v[int(mx.group(1))] = d2b(b2f(v.get(int(mx.group(2)), 0)))
            elif op == 'double-to-float':
                mx = re.match(r'double-to-float v(\d+), v(\d+)', s); v[int(mx.group(1))] = f2b(b2d(v.get(int(mx.group(2)), 0)))
            elif re.match(r'(add|sub|mul|div)-float', s):
                mx = re.match(r'(\w+)-float v(\d+), v(\d+), v(\d+)', s)
                a, b = b2f(v.get(int(mx.group(3)), 0)), b2f(v.get(int(mx.group(4)), 0))
                o = mx.group(1)
                if o == 'add': r = a + b
                elif o == 'sub': r = a - b
                elif o == 'mul': r = a * b
                else: r = (a / b) if b != 0.0 else 0.0
                v[int(mx.group(2))] = f2b(r)
            elif op == 'cmpl-float':
                mx = re.match(r'cmpl-float v(\d+), v(\d+), v(\d+)', s)
                a, b = b2f(v.get(int(mx.group(2)), 0)), b2f(v.get(int(mx.group(3)), 0))
                r = -1 if (math.isnan(a) or math.isnan(b) or a < b) else (0 if a == b else 1)
                v[int(mx.group(1))] = r
            elif re.match(r'(mul|add|sub)-int', s):
                mx = re.match(r'(\w+)-int v(\d+), v(\d+), v(\d+)', s)
                a, b = v.get(int(mx.group(3)), 0), v.get(int(mx.group(4)), 0)
                o2 = mx.group(1)
                v[int(mx.group(2))] = (a*b) if o2 == 'mul' else ((a+b) if o2 == 'add' else (a-b))
            elif op.startswith('invoke-static'):
                mx = re.match(r'invoke-static \{([^}]*)\}, ([^;]+;)->(\w+)\(([^)]*)\)(\w+)', s)
                regs = [int(x.strip()[1:]) for x in mx.group(1).split(',') if x.strip()]
                cls, name, ret = mx.group(2), mx.group(3), mx.group(5)
                args = [v.get(r) for r in regs]
                if name == 'cos' and 'Math' in cls:
                    res = d2b(math.cos(b2d(args[0])))
                else:
                    fn = self.reg.get(name)
                    if fn is None: raise SystemExit('未注册方法 ' + name)
                    res = fn(args)
            elif op.startswith('if-'):
                mx = re.match(r'(if-[a-z]+) v(\d+)(?:, v(\d+))?, :(\w+)', s)
                mn, a = mx.group(1), v.get(int(mx.group(2)), 0)
                b = v.get(int(mx.group(3))) if mx.group(3) else None
                if mn.endswith('z'):
                    Z = {'if-eqz': a == 0, 'if-nez': a != 0, 'if-ltz': a < 0,
                         'if-gez': a >= 0, 'if-lez': a <= 0, 'if-gtz': a > 0}
                    c = Z[mn]
                else:
                    c = {'if-eq': a == b, 'if-ne': a != b, 'if-lt': a < b, 'if-gt': a > b, 'if-le': a <= b, 'if-ge': a >= b}[mn]
                if c: pc = self.labels[mx.group(4)]
            elif op in ('goto', 'goto/16'):
                pc = self.labels[p[-1][1:]]
            elif op == 'return':
                return v.get(int(p[1][1:]))
            elif op == 'return-void':
                return None
        return None

def load(air_path=None):
    air = open(air_path or F_AIRLAT, encoding='utf-8').read()
    fog = open(F_FOG, encoding='utf-8').read()
    vm_cache = {}
    def mk(txt, sig):
        vm = VM(txt, sig, vm_cache); vm_cache[sig.split('(')[0]] = vm.call; return vm
    fa = mk(air, 'f(I)F'); ra = mk(air, 'r(II)I')
    ck = mk(fog, 'calcCosK(I)I'); ie = mk(fog, 'calcInEllipse(IIII)Z')
    return fa, ra, ck, ie

def main():
    fa, ra, ck, ie = load()
    ok = True
    def chk(name, cond, extra=''):
        global ok
        print(('  ✅ ' if cond else '  ❌ ') + name + (('  ' + extra) if extra else ''))
        if not cond: ok = False

    print('=== T1 AirLat.f 基本值 ===')
    chk('f(4300)=1.0', abs(b2f(fa.call([4300])) - 1.0) < 1e-6, '%.6f' % b2f(fa.call([4300])))
    chk('f(0)=0.25',  abs(b2f(fa.call([0])) - 0.25) < 1e-6, '%.6f' % b2f(fa.call([0])))
    chk('f(8600)=0.25', abs(b2f(fa.call([8600])) - 0.25) < 1e-6)
    chk('f(2150)=cos(pi/4)', abs(b2f(fa.call([2150])) - math.cos(math.pi/4)) < 1e-5, '%.6f' % b2f(fa.call([2150])))

    print('=== T2 AirLat.r = R x f ===')
    chk('r(300,4300)=300', ra.call([300, 4300]) == 300)
    chk('r(300,0)=75',     ra.call([300, 0]) == 75)
    chk('r(2400,2150)≈1697', abs(ra.call([2400, 2150]) - 1697) <= 1)

    print('=== T3 判定 == 渲染椭圆（圈=判定范围）===')
    for y in (4300, 2150, 600, 0):
        f = b2f(fa.call([y])); R = 1000
        Rp = ra.call([R, y]); ckv = ck.call([y]) if False else None
        cosk = v_calcCosK(ck, y)
        bad = 0
        for dx in (-1200, -999, -500, 0, 500, 999, 1200):
            for dy in (-400, -250, -249, 0, 249, 250, 400):
                got = bool(ie.call([dx, dy, Rp, cosk]))
                want = (dx*dx + (dy/f)**2) <= (R*R)
                if got != want: bad += 1
        chk('y=%d f=%.4f R\'=%d : 全网格(%d点)一致' % (y, f, Rp, 49), bad == 0, '不一致=%d' % bad)

    print('=== T4 高纬收缩（f 越小圈越小）===')
    dy_max_hi = 1000 * b2f(fa.call([4300]))
    dy_max_lo = 1000 * b2f(fa.call([0]))
    chk('南北半轴 f=1 -> 1000', abs(dy_max_hi - 1000) < 1)
    chk('南北半轴 f=0.25 -> 250', abs(dy_max_lo - 250) < 1)

    print('=== T5 反转敏感性（改坏必须失败）===')
    txt = open(F_AIRLAT, encoding='utf-8').read()
    bad_txt = txt.replace('    mul-float v0, v0, v1', '    div-float v0, v0, v1', 1)
    open('/tmp/_airlat_bad.smali', 'w', encoding='utf-8').write(bad_txt)
    
    try:
        fa2, ra2, _, _ = load(air_path='/tmp/_airlat_bad.smali')
        chk('把 mul-float 改成 div-float 后 r(300,0) != 75', ra2.call([300, 0]) != 75, 'r=%d' % ra2.call([300, 0]))
    finally:
        pass

    print()
    print('\u2705 全部通过' if ok else '\u274c 有失败项')
    sys.exit(0 if ok else 1)

def v_calcCosK(ck, y):
    return ck.call([y])

if __name__ == '__main__':
    main()
