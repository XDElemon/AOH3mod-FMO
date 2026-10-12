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

# ===== r6d267 用例（接在解释器后）：哨兵 0 撞车修复 =====
import re as _re

afm = rd(F_AFM); au = rd(F_AU)
mf = split_methods(afm)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== S0 文本断言 ==')
ok('AirUnit 构造器默认 -1', au.count('const/4 v0, -0x1\n\n    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I') == 1)
ok('补章守卫已改 if-ltz（且无 if-gtz）', afm.count('if-gez v5, :r6d265_astamped') == 1 and afm.count('if-gtz v5, :r6d265_astamped') == 0)
ok('两处钳位齐（各 1 标签+1 跳）', afm.count('r6d267_u_ok') == 2 and afm.count('r6d267_c_ok') == 2)

def mk_prov():
    return {'k': {}, 'd': {}, '__next': 1}

def simS(models, best, preseed=None, in_mission=None, methods=None):
    m2 = methods or mf
    prov = mk_prov()
    if preseed:
        for key, div in preseed.items():
            prov['k'][key] = prov['__next']; prov['d'][prov['__next']] = div; prov['__next'] += 1
    im = in_mission or {}
    T = airtype(1)
    units = [{'modelAid': m} for m in models]
    ap = {'civID': 1, 'provinceID': 2, 'aircraft': {T: units}}
    def h_key(sm, a): return 'K%d' % a[3]
    def h_gk(sm, a): return prov['k'].get(a[1], -1)
    def h_ga(sm, a): return prov['d'].get(a[1])
    def h_add(sm, a):
        d = a[1]; prov['k'][d.get('key')] = prov['__next']; prov['d'][prov['__next']] = d; prov['__next'] += 1
        return d.get('key')
    def h_rm(sm, a):
        i = prov['k'].pop(a[1], None)
        if i is not None: prov['d'].pop(i, None)
        return None
    stubs = base_stubs({
        ('getBestAidForType'): lambda sm, a: best,
        ('Game;', 'getProvince'): lambda sm, a: prov,
        ('airhqKey4'): h_key,
        ('airhqKeyInMission'): lambda sm, a: 1 if im.get(a[0]) else 0,
        ('Province;', 'getArmyKeyID'): h_gk,
        ('Province;', 'getArmy'): h_ga,
        ('Province;', 'addArmy'): h_add,
        ('Province;', 'removeArmy'): h_rm,
    })
    run_named(m2, 'syncAirModelDivisions', stubs, {'p0': ap, 'p1': T})
    return units, prov

print('== SIM S 盖章哨兵 ==')
u, prov = simS([0], 9)
ok('S1 合法 0 不被重盖', u[0]['modelAid'] == 0 and prov['d'][1]['regiments'][0]['aID'] == 0)
u, prov = simS([-1], 9), [(d.get('key'), d.get('regiments', [{}])[0].get('aID')) for d in prov['d'].values()])
ok('S2 -1 正常补章到 best', u[0]['modelAid'] == 9 and prov['d'][1]['regiments'][0]['aID'] == 9)
u, prov = simS([-1], -1), [(d.get('key'), d.get('regiments', [{}])[0].get('aID')) for d in prov['d'].values()])
ok('S3 无 best：留 -1 且编制 aID 钳 0', u[0]['modelAid'] == -1 and prov['d'][1]['regiments'][0]['aID'] == 0)

print('== 负样本 ==')
def negGuard():
    t = afm.replace('if-gez v5, :r6d265_astamped', 'if-gtz v5, :r6d265_astamped', 1)
    m2 = split_methods(t)
    u, prov = simS([0], 9, methods=m2)
    return u[0]['modelAid'] != 0  # 0 被重盖 ⇒ 红
ok('N1 守卫回翻→红', negGuard())
def negClampC():
    t = afm.replace('\n    if-gez v12, :r6d267_c_ok\n    const/4 v12, 0x0\n    :r6d267_c_ok\n', '\n', 1)
    m2 = split_methods(t)
    u, prov = simS([-1], -1, methods=m2)
    return prov['d'][1]['regiments'][0]['aID'] != 0  # aID=-1 ⇒ 红
ok('N2 去创建钳→红', negClampC())
def negClampU():
    t = afm.replace('    if-gez v12, :r6d267_u_ok\n    const/4 v12, 0x0\n    :r6d267_u_ok\n', '', 1)
    m2 = split_methods(t)
    div0 = {'key': 'K1', 'regiments': [{'uID': 0, 'aID': 0, 'num': 0}]}
    u, prov = simS([-1], -1, preseed={'K1': div0}, methods=m2)
    return prov['d'][1]['regiments'][0]['aID'] != 0  # aID=-1 ⇒ 红
ok('N3 去更新钳→红', negClampU())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d267 全部通过')