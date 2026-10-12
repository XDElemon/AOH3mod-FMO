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

print('== S0 文本断言 ==')
ok('AFM airImgForUnit(单位) 定义1', afm.count('.method public static airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I') == 1)
ok('AFM airImgForAirportOrd 定义1', afm.count('.method public static airImgForAirportOrd') == 1)
ok('AFM mission 新链（1标签+1跳=2）', afm.count(':r6d266_aim_old') == 2)
ok('PDA forKey 新链 6 处（1标签+5跳）', pda.count('r6d266_ak_old') == 6)
ok('PDA 分支 4 处新调用', pda.count('airImgForAirportOrd(Laoc/kingdoms/lukasz/map/battles/Airport;II)I') == 4)
ok('PDA 旧读科技树注释清零', pda.count('# r6d265:按机场国×已研究最高代取图') == 0)
ok('PDA airImgForCiv 仅剩回退 1 处', pda.count('airImgForCiv(II)I') == 1)

def mk_larmy():
    L = [None] * 11
    L[8] = [{'ImageID': 70}, {'ImageID': 86}, {'ImageID': 118}, {'ImageID': 130}]
    L[9] = [{'ImageID': 78}]
    L[10] = [{'ImageID': 82}]
    return L

print('== SIM U airImgForUnit ==')
def simU(aid, ordv=1, img=86):
    L = mk_larmy()
    if img is not None and ordv + 7 < len(L):
        L[ordv + 7] = [{'ImageID': 70}, {'ImageID': img}, {'ImageID': img}, {'ImageID': img}]
    rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    u = {'modelAid': aid, 'type': airtype(ordv), 'civID': 1}
    sm = run_named(mf, 'airImgForUnit', stubs, {'p0': u}, {'ArmyManager;->lArmy:Ljava/util/ArrayList;': L})
    return sm.ret, rec
r, rec = simU(1)
print('   [U1 debug]', r, rec)
ok('U1 命中→按代取图 (4,1,0)', r == 77 and rec == [[4, 1, 0]])
ok('U2 无章→-1', simU(-1)[0] == -1)
ok('U3 图号<=0→-1', simU(1, img=0)[0] == -1)
ok('U4 越界→-1', simU(9)[0] == -1)

print('== SIM A airImgForAirportOrd ==')
TS = [airtype(0), airtype(1), airtype(2), airtype(3)]
def simA_case(ordv, aircraft, nullAirport=False):
    rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1],
                        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 88)[1],
                        ('airImgForUnit'): lambda sm, a: (rec.append(('unit', a)), 77)[1],
                        ('values'): lambda sm, a: TS})
    ap = None if nullAirport else {'civID': 1, 'aircraft': aircraft}
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy(), 'Images;->airFighter:I': 9009}
    sm = run_named(mf, 'airImgForAirportOrd', stubs, {'p0': ap, 'p1': ordv, 'p2': 2}, sf)
    return sm.ret, rec
u1 = {'modelAid': 1, 'type': TS[1], 'civID': 1}
r, rec = simA_case(1, {TS[1]: [u1]})
ok('A1 末架→单位机型图(77)', r == 77 and rec and rec[0][0] == 'unit' and rec[0][1][0] is u1)
r, rec = simA_case(1, {})
ok('A2 空表→回退国最佳(参数必须为 civID 数值!)', r == 88 and rec and rec[-1][0] == 'civ' and rec[-1][1] == [1, 2])
r, rec = simA_case(1, None, nullAirport=True)
ok('A3 机场空→原版小飞机(9009)', r == 9009)

print('== SIM M airImgForMission ==')
def simM(unitAid, empty=False):
    rec = []; b = []; uc = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1],
                        ('AirModelTables;', 'bestIdx'): lambda sm, a: (b.append(1), 7)[1],
                        ('AirModelTables;', 'genOf'): lambda sm, a: 4,
                        ('airImgForUnit'): lambda sm, a: (uc.append(a), (77 if a[0].get('modelAid', -1) >= 0 else -1))[1]})
    u = {'modelAid': unitAid, 'type': airtype(1), 'civID': 5}
    m = {'assignedAircraft': [] if empty else [u], 'civID': 5}
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy(), 'Images;->airFighter:I': 9009}
    sm = run_named(mf, 'airImgForMission', stubs, {'p0': m}, sf)
    return sm.ret, len(b), rec, uc
r, b, rec, uc = simM(1)
ok('M1 单位链命中→不再走科技树', r == 77 and b == 0 and len(uc) == 1 and rec == [])
r, b, rec, uc = simM(-1)
ok('M2 无章→回退旧链(bestIdx 1 次)', r == 77 and b == 1)
ok('M3 空列表→原版小飞机', simM(1, empty=True)[0] == 9009)

print('== SIM K airImgForKey ==')
pf = split_methods(pda)
def simK(mission):
    rec = []
    m = None if not mission else {'assignedAircraft': [{'modelAid': 1, 'type': airtype(1), 'civID': 5}]}
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: m,
        ('airImgForUnit'): lambda sm, a: (rec.append(('unit', a)), 77)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 5, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None})
    sf = {'ProvinceDrawArmy;->artCiv:I': -1, 'Images;->airFighter:I': 9009}
    sm = run_named(pf, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K1'}, sf)
    return sm.ret, rec
r, rec = simK(True)
ok('K1 任务链命中→单位机型图', r == 77 and rec and rec[0][0] == 'unit')
r, rec = simK(False)
ok('K2 无任务→回退旧链(66)', r == 66 and rec and rec[-1][0] == 'civ')

print('== SIM B 分支×4 ==')
blocks = _re.findall(r'(const/4 v15, (0x[0-9a-f]+)\n\s*invoke-static \{v6, v0, v15\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd\(Laoc/kingdoms/lukasz/map/battles/Airport;II\)I\n\s*move-result v14)', pda)
ok('B0 抓到 4 块', len(blocks) == 4)
got = []
for blk, kk in blocks:
    rec = []
    stubs = base_stubs({('airImgForAirportOrd'): lambda sm, a: (rec.append(a), 99)[1]})
    labels, instr = prep([l for l in blk.split('\n')])
    sm = Sim(labels, instr, stubs, {}, {'v6': {'civID': 1}, 'v0': 0})
    sm.run(); got.append((rec[0][2], int(kk, 16), sm.get('v14')))
ok('B1 参数={机场,型序,imgType} 齐全', all(g[2] == 99 for g in got))
ok('B2 imgType={0,1,2,3} 各一次', sorted([g[0] for g in got]) == [0, 1, 2, 3] and sorted([g[1] for g in got]) == [0, 1, 2, 3])

print('== 负样本 ==')
def negU():
    t = afm.replace('if-ltz v0, :r6d266_iu_m1', 'if-gez v0, :r6d266_iu_m1', 1)
    m2 = split_methods(t)
    L = mk_larmy(); rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    u = {'modelAid': -1, 'type': airtype(1), 'civID': 1}
    sm = run_named(m2, 'airImgForUnit', stubs, {'p0': u}, {'ArmyManager;->lArmy:Ljava/util/ArrayList;': L})
    return sm.ret != -1
ok('N1 单位守卫翻转→红', negU())
def negB():
    t = pda.replace('const/4 v15, 0x2\n    invoke-static {v6, v0, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd', 'const/4 v15, 0x1\n    invoke-static {v6, v0, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd', 1)
    ks = sorted([int(k, 16) for k in _re.findall(r'const/4 v15, (0x[0-9a-f]+)\n\s*invoke-static \{v6, v0, v15\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd', t)])
    return ks != [0, 1, 2, 3]
ok('N2 分支常量错→红', negB())
def negM():
    t = afm.replace('if-ltz v1, :r6d266_aim_old', 'if-gez v1, :r6d266_aim_old', 1)
    m2 = split_methods(t); rec = []; b = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1],
                        ('AirModelTables;', 'bestIdx'): lambda sm, a: (b.append(1), 7)[1],
                        ('AirModelTables;', 'genOf'): lambda sm, a: 4,
                        ('airImgForUnit'): lambda sm, a: 77})
    u = {'modelAid': 1, 'type': airtype(1), 'civID': 5}
    m = {'assignedAircraft': [u], 'civID': 5}
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy(), 'Images;->airFighter:I': 9009}
    sm = run_named(m2, 'airImgForMission', stubs, {'p0': m}, sf)
    return len(b) == 1
ok('N3 mission 极性翻转→红', negM())
def negK():
    t = pda.replace('if-ltz v4, :r6d266_ak_old', 'if-gez v4, :r6d266_ak_old', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: {'assignedAircraft': [{'modelAid': 1, 'type': airtype(1), 'civID': 5}]},
        ('airImgForUnit'): lambda sm, a: (rec.append(('unit', a)), 77)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 5, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None})
    sf = {'ProvinceDrawArmy;->artCiv:I': -1}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K1'}, sf)
    return sm.ret != 77
ok('N4 forKey 极性翻转→红', negK())
def negA():
    # 把回退调用改回“p0 当 civID 传”（真机 VerifyError 的复现形态）→ 必须变红
    t = afm.replace('    :r6d266_apo_fb\n    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I\n    invoke-static {v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I',
                    '    :r6d266_apo_fb\n    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I', 1)
    m2 = split_methods(t)
    rec = []
    stubs = base_stubs({('airImgForCiv'): lambda sm, a: (rec.append(a), 88)[1],
                        ('values'): lambda sm, a: [airtype(0), airtype(1)]})
    ap = {'civID': 1, 'aircraft': {}}
    sm = run_named(m2, 'airImgForAirportOrd', stubs, {'p0': ap, 'p1': 1, 'p2': 2}, {})
    return not (rec and rec[0] == [1, 2])
ok('N5 回退传p0当civID→红', negA())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d266 全部通过')