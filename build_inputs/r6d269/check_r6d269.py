# -*- coding: utf-8 -*-
# check_r6d265.py —— 判定点行为级模拟 + 负样本
# 覆盖：getBestAidForType / stampAirUnit / airImgForCiv(代感知+回退) / 机场分支×4 /
#       airImgForMission / syncAirModelDivisions（盖章+分桶+建/更/删）
import re, sys, os
DBG = os.environ.get('SIMDBG') == '1'

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
B = 'aoc/kingdoms/lukasz/'
F_AFM = os.path.join(ROOT, B + 'map/battles/AirForceManager.smali')
F_PDA = os.path.join(ROOT, B + 'map/province/ProvinceDrawArmy.smali')
F_SU  = os.path.join(ROOT, B + 'jakowski/SaveLoad/SaveGameManager$Save_AirUnit.smali')
F_SG  = os.path.join(ROOT, B + 'jakowski/SaveLoad/SaveGameManager.smali')
F_LG  = os.path.join(ROOT, B + 'jakowski/SaveLoad/LoadSavedGameManager.smali')
F_AU  = os.path.join(ROOT, B + 'map/battles/AirUnit.smali')

def rd(p):
    with open(p, encoding='utf-8') as f: return f.read()

errs = []
def ok(tag, cond):
    if not cond: errs.append(tag)
    print(('PASS ' if cond else 'FAIL ') + tag)

# ---------------- 迷你解释器 ----------------
class Lbl: pass
class Div: pass

def split_methods(text):
    out = {}
    cur = None; buf = None
    for ln in text.split('\n'):
        t = ln.strip()
        if t.startswith('.method '):
            sig = t[len('.method '):]
            cur = sig; buf = []
            out[sig] = buf
        elif t.startswith('.end method'):
            cur = None
        elif cur is not None:
            buf.append(ln)
    return out

def prep(lines):
    labels = {}; instr = []
    for ln in lines:
        code = ln.split('#')[0].strip()
        if not code: continue
        if code.endswith(':') or (code.startswith(':') and ' ' not in code):
            labels[code.rstrip(':').strip() if False else code] = len(instr)
            continue
        if code.startswith(':'):
            labels[code] = len(instr); continue
        if code.startswith('.'):  # .registers 等指令行
            continue
        parts = code.split(' ', 1)
        op = parts[0]; rest = parts[1] if len(parts) > 1 else ''
        instr.append((op, rest))
    return labels, instr

RENAME = {}
def R(rs):
    rs = rs.strip()
    if not rs: return []
    return [x.strip() for x in rs.split(',')]

class Sim:
    def __init__(self, labels, instr, stubs, sfields=None, regs=None):
        self.labels = labels; self.instr = instr; self.stubs = stubs
        self.sf = sfields or {}; self.regs = regs or {}
        self.res = None; self.ret = None; self.steps = 0
    def get(self, r): return self.regs.get(r, 0)
    def set(self, r, v): self.regs[r] = v
    def run(self):
        pc = 0
        n = len(self.instr)
        while pc < n:
            self.steps += 1
            if self.steps > 60000: raise RuntimeError('step overflow')
            op, rest = self.instr[pc]
            a = R(rest)
            jumped = False
            def go(label): 
                return self.labels[label]
            if DBG: print('  [%3d] %s %s | %s' % (pc, op, rest, {k: (v if not isinstance(v, (dict, list)) else type(v).__name__) for k, v in sorted(self.regs.items())}))
            if op in ('const/4', 'const/16', 'const/high16'):
                v = a[0]; x = int(a[1], 16)
                if op == 'const/4' and x >= 8: x -= 16
                if op == 'const/16' and x >= 0x8000: x -= 0x10000
                self.set(v, x)
            elif op == 'move': self.set(a[0], self.get(a[1]))
            elif op == 'move-result': self.set(a[0], self.res)
            elif op == 'move-result-object': self.set(a[0], self.res)
            elif op == 'move-object': self.set(a[0], self.get(a[1])) if False else self.set(a[0], self.get(a[1]))
            elif op in ('iget', 'iget-object'):
                obj = self.get(a[1]); fld = a[2].split('->')[-1]
                fname = fld.split(':')[0]
                if fname == 'lArmyRegiment' and isinstance(obj, dict) and 'lArmyRegiment' not in obj and 'regiments' in obj:
                    fname = 'regiments'
                val = obj.get(fname, 0) if isinstance(obj, dict) else 0
                self.set(a[0], val)
            elif op in ('iput', 'iput-object'):
                obj = self.get(a[1]); fld = a[2].split('->')[-1]; fname = fld.split(':')[0]
                if isinstance(obj, dict): obj[fname] = self.get(a[0])
            elif op in ('sget', 'sget-object'):
                val = 0
                for k, v in self.sf.items():
                    if a[1].endswith(k): val = v; break
                self.set(a[0], val)
            elif op == 'sput':
                self.sf[a[1]] = self.get(a[0])
            elif op == 'new-instance':
                c = a[1]
                self.set(a[0], [] if 'ArrayList' in c else {'__class__': c})
            elif op == 'new-array':
                self.set(a[0], [None] * self.get(a[1]))
            elif op == 'array-length':
                self.set(a[0], len(self.get(a[1])))
            elif op == 'aput':
                arr = self.get(a[1]); arr[self.get(a[2])] = self.get(a[0])
            elif op in ('aget', 'aget-object'):
                arr = self.get(a[1]); self.set(a[0], arr[self.get(a[2])])
            elif op == 'add-int/lit8':
                self.set(a[0], self.get(a[1]) + int(a[2], 16))
            elif op == 'ushr-int/lit8':
                self.set(a[0], self.get(a[1]) >> int(a[2], 16))
            elif op == 'sub-int/2addr':
                self.set(a[0], self.get(a[0]) - self.get(a[1]))
            elif op == 'xor-int/2addr':
                self.set(a[0], self.get(a[0]) ^ self.get(a[1]))
            elif op == 'check-cast':
                pass
            elif op == 'goto':
                pc = go(a[0]); jumped = True
            elif op in ('if-eqz','if-nez','if-ltz','if-gez','if-gtz','if-lez'):
                v = self.get(a[0]); tgt = a[1]
                if v is None: v = 0
                cond = False
                if op == 'if-eqz': cond = (v == 0)
                elif op == 'if-nez': cond = (v != 0)
                elif op == 'if-ltz': cond = (v < 0)
                elif op == 'if-gez': cond = (v >= 0)
                elif op == 'if-gtz': cond = (v > 0)
                elif op == 'if-lez': cond = (v <= 0)
                if cond: pc = go(tgt); jumped = True
            elif op in ('if-eq','if-ne','if-lt','if-ge','if-gt','if-le'):
                x = self.get(a[0]); y = self.get(a[1]); tgt = a[2]
                if x is None: x = 0
                if y is None: y = 0
                cond = False
                if op == 'if-eq': cond = (x == y)
                elif op == 'if-ne': cond = (x != y)
                elif op == 'if-lt': cond = (x < y)
                elif op == 'if-ge': cond = (x >= y)
                elif op == 'if-gt': cond = (x > y)
                elif op == 'if-le': cond = (x <= y)
                if cond: pc = go(tgt); jumped = True
            elif op in ('invoke-static','invoke-virtual','invoke-interface','invoke-direct'):
                m = re.search(r'\{(.*?)\},\s*(.*)', rest)
                args = [self.get(x.strip()) for x in R(m.group(1)) if x.strip()] if m else []
                tgt = m.group(2)
                cls, rest2 = tgt.split('->', 1)
                name = rest2.split('(')[0]
                self.res = self.dispatch(op, cls, name, args)
            elif op == 'return':
                self.ret = self.get(a[0]); return
            elif op == 'return-void':
                self.ret = None; return
            else:
                raise RuntimeError('unsupported op: ' + op)
            if not jumped:
                pc += 1
    def dispatch(self, op, cls, name, args):
        if name == '<init>':
            if 'ArmyRegiment' in cls:
                args[0].update({'uID': args[1] if len(args) > 1 else 0, 'aID': args[2] if len(args) > 2 else 0, 'num': 0})
                return None
            if 'ArmyDivision' in cls:
                args[0].update({'key': None, 'regiments': args[3] if len(args) > 3 else [], 'iArmyRegimentSize': 0, 'fMorale': 0})
                return None
            return None
        if name == 'ordinal' and args and hasattr(args[0], 'ord'):
            return args[0].ord
        for key, fn in self.stubs.items():
            if isinstance(key, str):
                if key in name:
                    return fn(self, args)
            else:
                cc, nn = key
                if cc in cls and nn == name:
                    return fn(self, args)
        raise RuntimeError('no stub for %s %s->%s' % (op, cls, name))

def airtype(ordv):
    class T:
        def __init__(s, o): s.ord = o
        def __repr__(s): return 'AirType(%d)' % s.ord
    return T(ordv)

def mk_list_ops():
    class It:
        def __init__(s, lst):
            s.lst = lst; s.i = 0
        def __repr__(s): return 'It(%d/%d)' % (s.i, len(s.lst))
    def h_size(sm, a): return len(a[0])
    def h_get(sm, a): return a[0][a[1]]
    def h_it(sm, a): return It(a[0])
    def h_hn(sm, a): return 1 if a[0].i < len(a[0].lst) else 0
    def h_next(sm, a): v = a[0].lst[a[0].i]; a[0].i += 1; return v
    def h_add(sm, a): a[0].append(a[1]); return 1
    def h_mapget(sm, a): return a[0].get(a[1]) if isinstance(a[0], dict) else None
    return {
        ('Ljava/util/List;', 'size'): h_size,
        ('Ljava/util/List;', 'get'): h_get,
        ('Ljava/util/List;', 'iterator'): h_it,
        ('Ljava/util/List;', 'add'): h_add,
        ('Ljava/util/Iterator;', 'hasNext'): h_hn,
        ('Ljava/util/Iterator;', 'next'): h_next,
        ('Ljava/util/ArrayList;', 'size'): h_size,
        ('Ljava/util/ArrayList;', 'get'): h_get,
        ('Ljava/util/ArrayList;', 'iterator'): h_it,
        ('Ljava/util/ArrayList;', 'add'): h_add,
        ('Ljava/util/Map;', 'get'): h_mapget,
    }

def base_stubs(extra):
    d = mk_list_ops(); d.update(extra); return d

# ===== r6d266 用例（接在解释器后） =====
import re as _re

afm = rd(F_AFM); pda = rd(F_PDA)
mf = split_methods(afm)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

# ===== r6d269 用例：绘制入口注入"编队机型记录"，取图优先 =====
afm = rd(F_AFM); pda = rd(F_PDA)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

# ===== r6d269 用例：绘制入口注入"编队机型记录"，取图优先 =====
afm = rd(F_AFM); pda = rd(F_PDA)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

# ===== r6d269 用例：绘制入口注入"编队机型记录"，取图优先 =====
afm = rd(F_AFM); pda = rd(F_PDA)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== S0 文本断言 ==')
ok('AFM 字段三件齐', afm.count('dgAirUid') == 1 and afm.count('dgAirAid') == 1 and afm.count('dgAirCiv') == 1)
ok('PDA 注入+读取齐（uid/aid 各3、civ2）', pda.count('dgAirUid') == 3 and pda.count('dgAirAid') == 3 and pda.count('dgAirCiv') == 2)
ok('注入标签 3 处', pda.count('r6d269_rs') == 3)
ok('forKey 优先块 5 处', pda.count('r6d269_ak_skip') == 5)
ok('优先/记录注释各1', pda.count('# r6d269:优先') == 1 and pda.count('# r6d269:记录') == 1)

def simG(u, a, c):
    rec = []
    stubs = base_stubs({
        ('airImgForRec'): lambda sm, x: (rec.append(('rec', x)), 77)[1],
        ('airImgForDivKey'): lambda sm, x: (rec.append(('div', x)), 66)[1],
        ('getAirMissionByKey'): lambda sm, x: None,
        ('airImgForCiv'): lambda sm, x: (rec.append(('civ', x)), 55)[1],
        ('getKeyCiv'): lambda sm, x: 7, ('aif'): lambda sm, x: None, ('artD'): lambda sm, x: None,
    })
    sf = {'AirForceManager;->dgAirUid:I': u, 'AirForceManager;->dgAirAid:I': a,
          'AirForceManager;->dgAirCiv:I': c, 'ProvinceDrawArmy;->artCiv:I': -1}
    sm = run_named(pf, 'airImgForKey', stubs, {'p0': 3, 'p1': 'airhq_7_2'}, sf)
    return sm.ret, rec

print('== SIM G 优先块 ==')
r, rec = simG(8, 1, 5)
ok('G1 注入命中→记录链(5,8,1)', r == 77 and rec == [('rec', [5, 8, 1])])
r, rec = simG(-1, -1, -1)
ok('G2 无注入→DivKey 后备(66)', r == 66 and rec and rec[0][0] == 'div')
r, rec = simG(6, 1, 5)
ok('G3 uID=6 非法→后备(66)', r == 66)
r, rec = simG(8, -1, 5)
ok('G4 aid=-1 非法→后备(66)', r == 66)

print('== 负样本 ==')
def mk_neg(pat_old, pat_new):
    t = pda.replace(pat_old, pat_new, 1)
    return split_methods(t)
def negN1():
    m2 = mk_neg('if-lt v4, v5, :r6d269_ak_skip', 'if-ge v4, v5, :r6d269_ak_skip')
    rec = []
    stubs = base_stubs({('airImgForRec'): lambda sm, x: (rec.append(('rec', x)), 77)[1],
                        ('airImgForDivKey'): lambda sm, x: 66, ('getAirMissionByKey'): lambda sm, x: None})
    sf = {'AirForceManager;->dgAirUid:I': 6, 'AirForceManager;->dgAirAid:I': 1, 'AirForceManager;->dgAirCiv:I': 5}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K'}, sf)
    return sm.ret != 66
ok('N1 uID<7 守卫翻→红', negN1())
def negN2():
    m2 = mk_neg('if-ltz v5, :r6d269_ak_skip', 'if-gez v5, :r6d269_ak_skip')
    rec = []
    stubs = base_stubs({('airImgForRec'): lambda sm, x: (rec.append(('rec', x)), 77)[1],
                        ('airImgForDivKey'): lambda sm, x: 66, ('getAirMissionByKey'): lambda sm, x: None})
    sf = {'AirForceManager;->dgAirUid:I': 8, 'AirForceManager;->dgAirAid:I': -1, 'AirForceManager;->dgAirCiv:I': 5}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K'}, sf)
    return sm.ret != 66
ok('N2 aid<0 守卫翻→红', negN2())
def negN3():
    m2 = mk_neg('if-ltz v4, :r6d269_ak_skip\n    return v4\n    :r6d269_ak_skip', 'if-gez v4, :r6d269_ak_skip\n    return v4\n    :r6d269_ak_skip')
    stubs = base_stubs({('airImgForRec'): lambda sm, x: 77,
                        ('airImgForDivKey'): lambda sm, x: 66, ('getAirMissionByKey'): lambda sm, x: None})
    sf = {'AirForceManager;->dgAirUid:I': 8, 'AirForceManager;->dgAirAid:I': 1, 'AirForceManager;->dgAirCiv:I': 5}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K'}, sf)
    return sm.ret != 77
ok('N3 结果极性翻→红', negN3())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d269 全部通过')