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
            elif op == 'sget':
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
            elif op == 'aput':
                arr = self.get(a[1]); arr[self.get(a[2])] = self.get(a[0])
            elif op == 'aget':
                arr = self.get(a[1]); self.set(a[0], arr[self.get(a[2])])
            elif op == 'add-int/lit8':
                self.set(a[0], self.get(a[1]) + int(a[2], 16))
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
        ('Ljava/util/Map;', 'get'): h_mapget,
    }

def base_stubs(extra):
    d = mk_list_ops(); d.update(extra); return d

print('== S0 文本断言 ==')
afm = rd(F_AFM); pda = rd(F_PDA)
_si = afm.find('.method private static syncAirModelDivisions')
_sj = afm.find('.end method', _si)
_sbody = afm[_si:_sj]
ok('AFM sync 用 .registers 16（工具链上限；无 v14+）', _sbody.count('.registers 16') == 1 and (' v14' not in _sbody) and (' v15' not in _sbody and 'v15' not in _sbody.replace('airhqKey4', '')))
ok('AFM sync 定义 1 + 调用 1', afm.count('syncAirModelDivisions') == 2)
ok('AFM getBestAidForType 3 处（def+2call…实际 def+stamp+sync=3）', afm.count('getBestAidForType') >= 3)
ok('AFM stampAirUnit 3 处（def+2 站点）', afm.count('stampAirUnit') == 3)
ok('AFM airImgForMission 定义1 + PDA 调用1', afm.count('airImgForMission') == 1 and pda.count('airImgForMission') == 1)
ok('PDA 旧中国三代图已清零', pda.count('airG3_CN_') == 0)
ok('PDA 分支块 4 个', pda.count('invoke-static {v14, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I') == 4)
ok('AU modelAid 字段', rd(F_AU).count('.field public modelAid:I') == 1)
ok('SU ma 字段', rd(F_SU).count('.field public ma:I') == 1)
ok('SG 写 ma', rd(F_SG).count('Save_AirUnit;->ma:I') == 1)
ok('LG 读 ma', rd(F_LG).count('Save_AirUnit;->ma:I') == 1)

mf = split_methods(afm)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== SIM A getBestAidForType ==')
def simA():
    stubs = base_stubs({('Game;', 'getCiv'): lambda sm,a: {'unitsBest':[{'unitID':7,'armyID':5},{'unitID':8,'armyID':9}]}})
    sm = run_named(mf, 'getBestAidForType', stubs, {'p0':1,'p1':8})
    return sm.ret == 9
ok('A1 命中→记录号', simA())
def simA2():
    stubs = base_stubs({('Game;', 'getCiv'): lambda sm,a: {'unitsBest':[{'unitID':7,'armyID':5}]}})
    sm = run_named(mf, 'getBestAidForType', stubs, {'p0':1,'p1':9})
    return sm.ret == -1
ok('A2 未命中→-1', simA2())

print('== SIM B stampAirUnit ==')
def simB(best):
    calls = {}
    stubs = base_stubs({('getBestAidForType'): (lambda sm,a: (calls.setdefault('args',a), best)[1])})
    u = {'modelAid':0}
    sm = run_named(mf, 'stampAirUnit', stubs, {'p0':u,'p1':airtype(3),'p2':1})
    return u['modelAid'], calls.get('args')
ok('B1 盖章=best（ord3→uID10）', simB(4) == (4, [1,10]))
def simB0():
    u = {'modelAid':0}
    stubs = base_stubs({('getBestAidForType'): lambda sm,a: -1})
    sm = run_named(mf, 'stampAirUnit', stubs, {'p0':u,'p1':airtype(1),'p2':1})
    return u['modelAid'] == 0
ok('B2 无最佳→保持 0', simB0())

print('== SIM C airImgForCiv（代感知+回退） ==')
def simC(idx, rec):
    stubs = base_stubs({
        ('artGroupOf'): lambda sm,a: 1,
        ('AirModelTables;', 'bestIdx'): lambda sm,a: idx,
        ('AirModelTables;', 'genOf'): lambda sm,a: 4,
        ('pickAirImage'): lambda sm,a: (rec.append(a), 77)[1],
    })
    sm = run_named(mf, 'airImgForCiv', stubs, {'p0':5,'p1':2})
    return sm.ret
r1 = []; ret1 = simC(7, r1)
ok('C1 命中→按代取图', ret1 == 77 and r1[0] == [4,1,2])
r2 = []; ret2 = simC(-1, r2)
ok('C2 未命中→回退 3 代', ret2 == 77 and r2[0] == [3,1,2])

print('== SIM D 机场分支×4 ==')
blocks = re.findall(r'(iget v14, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I\n\s*const/4 v15, (0x[0-9a-f]+)\n\s*invoke-static \{v14, v15\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv\(II\)I\n\s*move-result v14)', pda)
ok('D0 抓到 4 块', len(blocks) == 4)
got = []
for blk, kk in blocks:
    rec = []
    stubs = base_stubs({('airImgForCiv'): lambda sm,a: (rec.append(a), 99)[1]})
    labels, instr = prep([l for l in blk.split('\n')])
    sm = Sim(labels, instr, stubs, {}, {'v6': {'civID':5}})
    sm.run(); got.append((rec[0][1], sm.get('v14')))
exp = sorted([0x2,0x1,0x0,0x3])
ok('D1 映射 {攻:2,截:1,战:0,轰:3} 各一次', sorted([g[0] for g in got]) == exp)
ok('D2 参数与返回', all(g[1] == 99 for g in got) and all(g[0] == c for g, c in zip(got, [g[0] for g in got])))

print('== SIM E airImgForMission ==')
def simE(ordv, best, empty=False):
    rec = []
    u = {'type': airtype(ordv)}
    m = {'assignedAircraft': [] if empty else [u], 'civID':5}
    stubs = base_stubs({
        ('artGroupOf'): lambda sm,a: 1,
        ('AirModelTables;', 'bestIdx'): lambda sm,a: best,
        ('AirModelTables;', 'genOf'): lambda sm,a: 4,
        ('pickAirImage'): lambda sm,a: (rec.append(a), 77)[1],
    })
    sm = run_named(mf, 'airImgForMission', stubs, {'p0':m}, {'Images;->airFighter:I': 9001})
    return sm.ret, rec
ret, rec = simE(3, 7)
ok('E1 攻击机(ord3)→代图', ret == 77 and rec[0] == [4,1,2])
ret, rec = simE(1, -1)
ok('E2 未研究→回退原版小飞机', ret == 9001 and rec == [])
ret, rec = simE(1, 7, empty=True)
ok('E3 空列表→回退', ret == 9001)

print('== SIM F syncAirModelDivisions ==')
def mk_prov():
    return {'k': {}, 'd': {}, '__next': 1}
def simF(units, preseed=None, in_mission=None, best=5):
    prov = mk_prov()
    if preseed:
        for key, div in preseed.items():
            prov['k'][key] = prov['__next']; prov['d'][prov['__next']] = div; prov['__next'] += 1
    im = in_mission or {}
    u1 = {'modelAid':0}; u2 = {'modelAid':0}; u3 = {'modelAid':9}
    if units is None: units = [u1,u2,u3]
    T = airtype(1)
    ap = {'civID':1, 'provinceID':2, 'aircraft': {T: units}}
    def h_key(sm,a): return 'K%d' % a[3]
    def h_gk(sm,a): return prov['k'].get(a[1], -1)
    def h_ga(sm,a): return prov['d'].get(a[1])
    def h_add(sm,a):
        d = a[1]; prov['k'][d.get('key')] = prov['__next']; prov['d'][prov['__next']] = d; prov['__next'] += 1
        return d.get('key')
    def h_rm(sm,a):
        i = prov['k'].pop(a[1], None)
        if i is not None: prov['d'].pop(i, None)
        return None
    stubs = base_stubs({
        ('getBestAidForType'): lambda sm,a: best,
        ('Game;','getProvince'): lambda sm,a: prov,
        ('airhqKey4'): h_key,
        ('airhqKeyInMission'): lambda sm,a: 1 if im.get(a[0]) else 0,
        ('Province;','getArmyKeyID'): h_gk,
        ('Province;','getArmy'): h_ga,
        ('Province;','addArmy'): h_add,
        ('Province;','removeArmy'): h_rm,
    })
    sm = run_named(mf, 'syncAirModelDivisions', stubs, {'p0':ap,'p1':T})
    return prov, (u1,u2,u3)

prov, (u1,u2,u3) = simF(None)
divs = sorted([d for d in prov['d'].values()], key=lambda d: d.get('key',''))
ok('F1 老机补章=bestA', u1['modelAid'] == 5 and u2['modelAid'] == 5 and u3['modelAid'] == 9)
ok('F2 两桶→两组编制', len(divs) == 2)
if len(divs) == 2:
    d1, d2 = divs
    r1 = d1['regiments'][0]; r2 = d2['regiments'][0]
    ok('F3 机型记录号=桶', (r1['aID'], r2['aID']) == (5, 9) and (d1['key'], d2['key']) == ('K1','K2'))
    ok('F4 数量=桶计数', (r1['num'], r2['num']) == (2, 1))
    ok('F5 uID=机型+7', (r1['uID'], r2['uID']) == (8, 8))

# F6 更新既有
div0 = {'key':'K1', 'regiments':[{'uID':0,'aID':0,'num':0}], 'iArmyRegimentSize':1, 'fMorale':0}
prov, _ = simF(None, preseed={'K1': div0})
ok('F6 既有编制被就地更新', prov['d'][1]['regiments'][0]['aID'] == 5 and prov['d'][1]['regiments'][0]['num'] == 2)

# F7 删除多余（不在任务）
stale = {'key':'K9','regiments':[{'uID':8,'aID':5,'num':1}]}
prov, _ = simF(None, preseed={'K9': stale}, in_mission={'K9': False})
ok('F7 多余编制被删', all(d.get('key') != 'K9' for d in prov['d'].values()))
# F8 任务中不删
prov, _ = simF(None, preseed={'K9': stale}, in_mission={'K9': True})
ok('F8 任务中保留', any(d.get('key') == 'K9' for d in prov['d'].values()))

print('== 负样本 ==')
def negC():
    t = afm.replace('if-ltz v1, :r6d265_aic_old', 'if-gez v1, :r6d265_aic_old')
    m2 = split_methods(t); rec=[]
    stubs = base_stubs({('artGroupOf'): lambda sm,a:1,('AirModelTables;','bestIdx'): lambda sm,a:7,('AirModelTables;','genOf'): lambda sm,a:4,('pickAirImage'): lambda sm,a:(rec.append(a),77)[1]})
    sm = run_named(m2, 'airImgForCiv', stubs, {'p0':5,'p1':2})
    return not (sm.ret == 77 and rec and rec[0] == [4,1,2])
ok('N1 airImgForCiv 极性翻转→红', negC())
def negD():
    t = pda.replace('const/4 v15, 0x2\n    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I', 'const/4 v15, 0x1\n    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I', 1)
    blocks2 = sorted([int(k,16) for k in re.findall(r'const/4 v15, (0x[0-9a-f]+)\n\s*invoke-static \{v14, v15\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv\(II\)I', t)])
    return blocks2 != sorted([0x2,0x1,0x0,0x3])
ok('N2 分支映射错→红', negD())
def negB():
    t = afm.replace('if-ltz v3, :r6d265_astamped', 'if-gez v3, :r6d265_astamped', 1)
    m2 = split_methods(t)
    T = airtype(1); u = {'modelAid':0}
    ap = {'civID':1,'provinceID':2,'aircraft':{T:[u]}}
    prov = mk_prov()
    stubs = base_stubs({('getBestAidForType'): lambda sm,a:-1,('Game;','getProvince'): lambda sm,a:prov,('airhqKey4'): lambda sm,a:'K%d'%a[3],('Province;','getArmyKeyID'): lambda sm,a:-1,('Province;','getArmy'): lambda sm,a:None,('Province;','addArmy'): lambda sm,a:None,('airhqKeyInMission'): lambda sm,a:0})
    sm = run_named(m2, 'syncAirModelDivisions', stubs, {'p0':ap,'p1':T})
    return u['modelAid'] == -1  # 正确版必须保持 0；突变为 -1 ⇒ 红条件成立
ok('N3 补章守卫翻转→红', negB())
def negE():
    t = afm.replace('const/4 v2, 0x1\n    xor-int/2addr v1, v2', 'const/4 v2, 0x0\n    xor-int/2addr v1, v2', 1)
    m2 = split_methods(t); rec=[]
    u = {'type':airtype(3)}; m = {'assignedAircraft':[u],'civID':5}
    stubs = base_stubs({('artGroupOf'): lambda sm,a:1,('AirModelTables;','bestIdx'): lambda sm,a:7,('AirModelTables;','genOf'): lambda sm,a:4,('pickAirImage'): lambda sm,a:(rec.append(a),77)[1]})
    sm = run_named(m2, 'airImgForMission', stubs, {'p0':m}, {'Images;->airFighter:I':9001})
    return not (rec and rec[0] == [4,1,2])
ok('N4 xor 映射翻车→红', negE())
def negUpdate():
    t = afm.replace('if-ltz v3, :r6d265_bcreate', 'if-gez v3, :r6d265_bcreate', 1)
    m2 = split_methods(t)
    prov = mk_prov()
    div0 = {'key':'K1','regiments':[{'uID':0,'aID':0,'num':0}]}
    prov['k']['K1'] = 1; prov['d'][1] = div0; prov['__next'] = 2
    T=airtype(1); ap = {'civID':1,'provinceID':2,'aircraft':{T:[{'modelAid':5}]}}
    def h_add2(sm,a):
        d=a[1]; prov['k'][d.get('key')]=prov['__next']; prov['d'][prov['__next']]=d; prov['__next']+=1; return d.get('key')
    stubs = base_stubs({('getBestAidForType'): lambda sm,a:5,('Game;','getProvince'): lambda sm,a:prov,('airhqKey4'): lambda sm,a:'K%d'%a[3],('airhqKeyInMission'): lambda sm,a:0,('Province;','getArmyKeyID'): lambda sm,a: prov['k'].get(a[1],-1),('Province;','getArmy'): lambda sm,a: prov['d'].get(a[1]),('Province;','addArmy'): h_add2,('Province;','removeArmy'): lambda sm,a: None})
    sm = run_named(m2, 'syncAirModelDivisions', stubs, {'p0':ap,'p1':T})
    return not (div0['regiments'][0]['aID'] == 5)
ok('N5 建/更分叉翻转→红', negUpdate())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d265 全部通过（S0 + A-F + N1-N5）')