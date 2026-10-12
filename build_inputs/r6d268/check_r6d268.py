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
                if isinstance(a[1], str) and a[1].startswith(('0x', '-0x')): y = int(a[1], 16)
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

# ===== r6d268 用例：贴图补中间层（编制记录链 + 机场反向扫描） =====
afm = rd(F_AFM); pda = rd(F_PDA)
mf = split_methods(afm)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

# ===== r6d268 用例：贴图补中间层（编制记录链 + 机场反向扫描） =====
afm = rd(F_AFM); pda = rd(F_PDA)
mf = split_methods(afm)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

# ===== r6d268 用例：贴图补中间层（编制记录链 + 机场反向扫描） =====
afm = rd(F_AFM); pda = rd(F_PDA)
mf = split_methods(afm)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== S0 文本断言 ==')
ok('AFM airImgForRec 定义1', afm.count('.method public static airImgForRec(III)I') == 1)
ok('AFM airImgForDivKey 定义1', afm.count('.method public static airImgForDivKey(Ljava/lang/String;)I') == 1)
ok('机场反向扫描 2 处（1标签+1跳）', afm.count('r6d268_apo_scan') == 2)
ok('mission 编制链注释1', afm.count('# r6d268:无飞机章→按任务编制记录取图') == 1)
ok('PDA getKeyProv 定义1', pda.count('.method public static getKeyProv(Ljava/lang/String;)I') == 1)
ok('PDA forKey→DivKey 调用1', pda.count('airImgForDivKey(Ljava/lang/String;)I') == 1)

def mk_larmy2():
    L = [None] * 12
    L[6] = [{'ImageID': 70}]
    L[8] = [{'ImageID': 70}, {'ImageID': 86}]
    L[9] = [{'ImageID': 78}]
    L[10] = [{'ImageID': 82}]
    return L

print('== SIM R airImgForRec ==')
def simR(civ, uID, aID, img86=True, L=None):
    L = L or mk_larmy2()
    rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': L}
    sm = run_named(mf, 'airImgForRec', stubs, {'p0': civ, 'p1': uID, 'p2': aID}, sf)
    return sm.ret, rec
r, rec = simR(5, 8, 1)
ok('R1 命中→按代取图(4,1,0)', r == 77 and rec == [[4, 1, 0]])
ok('R2 uID<7→-1', simR(5, 6, 0)[0] == -1)
ok('R3 uID>10→-1', simR(5, 11, 0)[0] == -1)
ok('R4 aID 越界→-1', simR(5, 8, 5)[0] == -1)
L2 = mk_larmy2(); L2[8] = [{'ImageID': 0}, {'ImageID': 86}]
ok('R5 图号≤0→-1', simR(5, 8, 0, L=L2)[0] == -1)

print('== SIM D airImgForDivKey ==')
def simD(key, civ=7, prov=2, army_id=10, div=True, rec_miss=False):
    rec = []
    divobj = {'regiments': [{'uID': 8, 'aID': 1}]}
    stubs = base_stubs({
        ('getKeyCiv'): lambda sm, a: civ,
        ('getKeyProv'): lambda sm, a: prov,
        ('Game;', 'getProvince'): lambda sm, a: {'p': prov},
        ('Province;', 'getArmyKeyID'): lambda sm, a: army_id,
        ('Province;', 'getArmy'): lambda sm, a: (divobj if div else None),
        ('airImgForRec'): lambda sm, a: (rec.append(a), (77 if not rec_miss else -1))[1],
    })
    sm = run_named(mf, 'airImgForDivKey', stubs, {'p0': key})
    return sm.ret, rec
r, rec = simD('airhq_7_2')
ok('D1 命中→核心参数(civ,uID,aID)', r == 77 and rec == [[7, 8, 1]])
ok('D2 key 空→-1', simD(None)[0] == -1)
ok('D3 civ 失败→-1', simD('airhq_7_2', civ=-1)[0] == -1)
ok('D4 编制缺失→-1', simD('airhq_7_2', div=False)[0] == -1)

print('== SIM K airImgForKey（用户场景：无任务+编制在） ==')
def simK(mission=False, divkey=77):
    rec = []
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: ({'assignedAircraft': [], 'civID': 5} if mission else None),
        ('airImgForDivKey'): lambda sm, a: (rec.append(('div', a)), divkey)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 7, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None,
    })
    sf = {'ProvinceDrawArmy;->artCiv:I': -1}
    sm = run_named(pf, 'airImgForKey', stubs, {'p0': 3, 'p1': 'airhq_7_2'}, sf)
    return sm.ret, rec
r, rec = simK(False, 77)
ok('K1 无任务→DivKey 记录链(77)', r == 77 and rec and rec[0][0] == 'div')
r, rec = simK(False, -1)
ok('K2 DivKey 失败→国最佳回退(66)', r == 66 and rec and rec[-1][0] == 'civ')

print('== SIM A 机场反向扫描 ==')
TS = [airtype(0), airtype(1), airtype(2), airtype(3)]
def simA(units):
    rec = []
    stubs = base_stubs({
        ('values'): lambda sm, a: TS,
        ('airImgForUnit'): lambda sm, a: (rec.append(a), (77 if a[0].get('ok') else -1))[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 88)[1],
    })
    ap = {'civID': 1, 'aircraft': {TS[1]: units}}
    sf = {'Images;->airFighter:I': 9009, 'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy2()}
    sm = run_named(mf, 'airImgForAirportOrd', stubs, {'p0': ap, 'p1': 1, 'p2': 2}, sf)
    return sm.ret, rec
r, rec = simA([{'ok': 1}, {'ok': 0}])
ok('A1 末架坏章→扫描到前一架(77)', r == 77 and len(rec) == 2 and rec[0][0] == {'ok': 0} and rec[1][0] == {'ok': 1})
r, rec = simA([{'ok': 1}])
ok('A2 单架→77', r == 77)
r, rec = simA([{'ok': 0}])
ok('A3 全坏→回退(88)', r == 88 and rec and rec[-1][0] == 'civ')

print('== SIM M mission 编制链 ==')
def simM(kind):
    rec = []
    if kind == 'badunit':
        m = {'assignedAircraft': [{'modelAid': 0, 'type': airtype(1)}], 'airhqDivision': {'regiments': [{'uID': 8, 'aID': 1}]}, 'civID': 5}
    elif kind == 'nodiv':
        m = {'assignedAircraft': [{'modelAid': 0, 'type': airtype(1)}], 'airhqDivision': None, 'civID': 5}
    else:
        m = {'assignedAircraft': [], 'airhqDivision': {'regiments': [{'uID': 8, 'aID': 1}]}, 'civID': 5}
    stubs = base_stubs({
        ('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: 55,
        ('AirModelTables;', 'bestIdx'): lambda sm, a: 7, ('AirModelTables;', 'genOf'): lambda sm, a: 4,
        ('airImgForUnit'): lambda sm, a: -1,
        ('airImgForRec'): lambda sm, a: (rec.append(a), 77)[1],
    })
    sf = {'Images;->airFighter:I': 9009}
    sm = run_named(mf, 'airImgForMission', stubs, {'p0': m}, sf)
    return sm.ret, rec
r, rec = simM('badunit')
ok('M1 坏章→编制记录链(5,8,1)', r == 77 and rec == [[5, 8, 1]])
ok('M2 无编制→旧链(55)', simM('nodiv')[0] == 55)
ok('M3 空列表→原版小飞机（既定口径）', simM('empty')[0] == 9009)

print('== 负样本 ==')
def negR():
    t = afm.replace('if-lt p1, v0, :r6d268_rec_m1', 'if-ge p1, v0, :r6d268_rec_m1', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy2()}
    sm = run_named(m2, 'airImgForRec', stubs, {'p0': 5, 'p1': 6, 'p2': 0}, sf)
    return sm.ret != -1
ok('N1 Rec 型守卫翻转→红', negR())
def negScan():
    t = afm.replace('    :r6d268_apo_scan\n    if-ltz v1, :r6d266_apo_fb\n', '    :r6d268_apo_scan\n    if-gez v1, :r6d266_apo_fb\n', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({('values'): lambda sm, a: [airtype(0), airtype(1), airtype(2), airtype(3)],
                        ('airImgForUnit'): lambda sm, a: (rec.append(a), (77 if a[0].get('ok') else -1))[1],
                        ('airImgForCiv'): lambda sm, a: 88})
    ap = {'civID': 1, 'aircraft': {airtype(1): [{'ok': 1}, {'ok': 0}]}}
    sm = run_named(m2, 'airImgForAirportOrd', stubs, {'p0': ap, 'p1': 1, 'p2': 2}, {'Images;->airFighter:I': 9009})
    return sm.ret != 77
ok('N2 扫描守卫翻转→红', negScan())
def negK():
    t = pda.replace('    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForDivKey(Ljava/lang/String;)I\n    move-result v4\n    if-ltz v4, :r6d266_ak_old',
                    '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForDivKey(Ljava/lang/String;)I\n    move-result v4\n    if-gez v4, :r6d266_ak_old', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: None,
        ('airImgForDivKey'): lambda sm, a: (rec.append(('div', a)), 77)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 7, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None})
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'airhq_7_2'}, {'ProvinceDrawArmy;->artCiv:I': -1})
    return sm.ret != 77
ok('N3 forKey-DivKey 极性翻转→红', negK())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d268 全部通过')