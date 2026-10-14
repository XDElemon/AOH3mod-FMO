#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# sim_r6d287.py —— 行为级模拟器（解释真实 smali）
# 覆盖三个判定点：
#   A) TechTopTab.drawButtonBG 的 nTTD 守卫（if-lt v7,v8,:dbg_go → 前3次打印）
#   B) InGame_TechnologyTree.applyNodeVisibility 的 nTTV 守卫 + off/vis 计数
#   C) InGame_TechnologyTree.actionElement(I) 的 nTTAE 守卫（前16次打印、总是转 super）
# 含反转敏感性自检：把关键助记符改反后，预期行为必须改变（否则算模拟器失效）
import re, sys

TAB  = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'

def load(p):
    return open(p, encoding='utf-8').read()

def body_of(s, decl):
    i = s.find(decl)
    assert i >= 0, ('no-decl', decl)
    j = s.find('.end method', i)
    return s[i:j]

class Obj:
    def __init__(self, cls, **kw):
        self.cls = cls
        self.__dict__.update(kw)

NUM = re.compile(r'^-?(?:0x[0-9a-fA-F]+|\d+)$')
LBL = re.compile(r'^\s*(:[A-Za-z0-9_]+)\s*$')
REG = re.compile(r'^[vp]\d+$')

def I(v):
    return v if isinstance(v, int) else 0

class VM:
    def __init__(self, text, registers, nparams, handlers=None):
        self.lines = [ln.rstrip() for ln in text.split('\n')]
        self.labels = {}
        for i, ln in enumerate(self.lines):
            m = LBL.match(ln)
            if m:
                self.labels[m.group(1)] = i
        self.regs = [0] * registers
        self.pbase = registers - nparams
        self.handlers = handlers or {}
        self.fields = {}
        self.log = []
        self.calls = []
        self.last = None
        self.executed = set()

    def R(self, tok):
        tok = tok.strip()
        if tok.startswith('v'):
            return int(tok[1:])
        if tok.startswith('p'):
            return self.pbase + int(tok[1:])
        raise ValueError('reg? ' + tok)

    def V(self, tok):
        tok = tok.strip()
        if NUM.match(tok):
            return int(tok, 16) if '0x' in tok.lower() else int(tok)
        if tok.startswith('"'):
            return tok.strip('"')
        return self.regs[self.R(tok)]

    def reglist(self, s):
        m = re.search(r'\{([^}]*)\}', s)
        assert m, ('bad reglist', s)
        content = m.group(1).strip()
        if '..' in content:
            a, b = [x.strip() for x in content.split('..')]
            ra, rb = self.R(a), self.R(b)
            return [self.regs[i] for i in range(ra, rb + 1)]
        return [self.V(x) for x in content.split(',') if x.strip()]

    def run(self, entry, stop_at=None, maxsteps=200000):
        pc = entry if isinstance(entry, int) else self.labels[entry]
        steps = 0
        while steps < maxsteps:
            steps += 1
            if stop_at is not None and pc == stop_at:
                return 'STOP'
            ln = self.lines[pc]
            raw = ln.split('#', 1)[0].rstrip()
            if not raw.strip():
                pc += 1
                continue
            self.executed.add(pc)
            parts = raw.split(None, 1)
            op = parts[0]
            rest = parts[1] if len(parts) > 1 else ''
            m = LBL.match(raw)
            if m:
                pc += 1
                continue

            if op in ('const/4', 'const/16', 'const'):
                a, b = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = self.V(b)
            elif op == 'const-string':
                a, b = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = b.strip('"')
            elif op in ('move', 'move-object', 'move/from16', 'move-object/from16', 'move/16', 'move-object/16'):
                a, b = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = self.V(b)
            elif op in ('move-result', 'move-result-object', 'move-result-wide', 'move-result-object/16'):
                self.regs[self.R(rest.strip())] = self.last
            elif op in ('sget', 'sget-object', 'sget-boolean'):
                a, f = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = self.fields.get(f, 0)
            elif op in ('sput', 'sput-object', 'sput-boolean'):
                a, f = [x.strip() for x in rest.split(',', 1)]
                self.fields[f] = self.V(a)
            elif op == 'add-int/lit8':
                a, b, c = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = I(self.V(b)) + I(self.V(c))
            elif op == 'add-int/2addr':
                a, b = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = I(self.V(a)) + I(self.V(b))
            elif op == 'sub-int/2addr':
                a, b = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = I(self.V(a)) - I(self.V(b))
            elif op == 'mul-int/lit8':
                a, b, c = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = I(self.V(b)) * I(self.V(c))
            elif op == 'div-int/lit8':
                a, b, c = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = I(self.V(b)) // I(self.V(c))
            elif op == 'neg-int':
                a, b = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = -I(self.V(b))
            elif op in ('if-eqz', 'if-nez', 'if-ltz', 'if-gez', 'if-gtz', 'if-lez'):
                a, lab = [x.strip() for x in rest.split(',')]
                v = I(self.V(a))
                cond = {'if-eqz': v == 0, 'if-nez': v != 0, 'if-ltz': v < 0,
                        'if-gez': v >= 0, 'if-gtz': v > 0, 'if-lez': v <= 0}[op]
                if cond:
                    pc = self.labels[lab]
                    continue
            elif op in ('if-lt', 'if-ge', 'if-gt', 'if-le', 'if-eq', 'if-ne'):
                a, b, lab = [x.strip() for x in rest.split(',')]
                va, vb = I(self.V(a)), I(self.V(b))
                cond = {'if-lt': va < vb, 'if-ge': va >= vb, 'if-gt': va > vb,
                        'if-le': va <= vb, 'if-eq': va == vb, 'if-ne': va != vb}[op]
                if cond:
                    pc = self.labels[lab]
                    continue
            elif op in ('goto', 'goto/16'):
                pc = self.labels[rest.strip()]
                continue
            elif op == 'return-void':
                self.ret = None
                return 'RET'
            elif op == 'return':
                self.ret = self.V(rest.strip())
                return 'RET'
            elif op == 'instance-of':
                a, b, cls = [x.strip() for x in rest.split(',', 2)]
                obj = self.V(b)
                self.regs[self.R(a)] = 1 if (isinstance(obj, Obj) and obj.cls == cls) else 0
            elif op == 'new-instance':
                a, cls = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = Obj(cls)
            elif op in ('check-cast',):
                pass
            elif op.startswith('invoke-'):
                m2 = re.search(r'\{[^}]*\},\s*(\S+)->([^\(]+)\((.*?)\)(\S+)', rest)
                assert m2, ('bad invoke', raw)
                owner, name, desc, ret = m2.group(1), m2.group(2), m2.group(3), m2.group(4)
                args = self.reglist(rest)
                key = '%s->%s' % (owner, name)
                self.calls.append((key, list(args)))
                h = self.handlers.get(key)
                self.last = h(self, args) if h else None
            else:
                pass  # 其它指令按空操作
            pc += 1
        raise RuntimeError('maxsteps exceeded')

def runner_stub(fn):
    return fn

# ---------------- A) nTTD 守卫 ----------------
def sim_ttd(text, counter):
    body = body_of(text, '.method protected drawButtonBG(')
    vm = VM(body, 16, 4)
    vm.fields['Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgTBG:I'] = counter
    entry = None
    for i, ln in enumerate(vm.lines):
        if 'sget v7' in ln and 'dbgTBG' in ln:
            entry = i
            break
    assert entry is not None
    stop = vm.labels.get(':dbg_skip')
    vm.run(entry, stop_at=stop)
    logged = any('"nTTD id="' in vm.lines[i] for i in vm.executed)
    final = vm.fields.get('Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgTBG:I')
    return logged, final

# ---------------- B) nTTV 守卫 + 计数 ----------------
def sim_vis(text, sel, techs, cats, dbgvis=0, call_no=1):
    body = body_of(text, '.method private applyNodeVisibility(')
    els = [Obj('Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;', techid=t) for t in techs]
    tops = dict(zip(techs, cats))
    h = {
        'Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize': lambda vm, a: len(els),
        'Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement': lambda vm, a: els[a[1]] if 0 <= a[1] < len(els) else None,
        'Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getCurrent': lambda vm, a: a[0].techid,
        'Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTopCategory': lambda vm, a: tops.get(a[0], 'land'),
        'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->topVisible':
            lambda vm, a: True if a[1] == 'all' else (a[0] == a[1]),
        'Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible': lambda vm, a: None,
        'Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable': lambda vm, a: None,
        'Ljava/lang/String;->valueOf': lambda vm, a: str(a[0]),
        'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite': lambda vm, a: vm.log.append(str(a[0])),
    }
    vm = VM(body, 12, 2, h)
    vm.fields['Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgVIS:I'] = dbgvis
    vm.regs[vm.pbase + 1] = sel   # p1 = 当前筛选栏
    vm.run(0)
    vis_calls = [c for c in vm.calls if c[0].endswith('setVisible')]
    off = None
    vis = None
    if 'nTTV off' in vm.log:
        i = vm.log.index('nTTV off')
        off = int(vm.log[i + 1])
        j = vm.log.index('nTTV vis')
        vis = int(vm.log[j + 1])
    return {'logged': 'nTTV off' in vm.log, 'off': off, 'vis': vis,
            'field': vm.fields.get('Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgVIS:I')}

# ---------------- C) actionElement 守卫 ----------------
def sim_ae(text, dbgAE):
    body = body_of(text, '.method public actionElement(I)V')
    h = {
        'Ljava/lang/String;->valueOf': lambda vm, a: str(a[0]),
        'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite': lambda vm, a: vm.log.append(str(a[0])),
        'Laoc/kingdoms/lukasz/menu/Menu;->actionElement': lambda vm, a: 'SUPER',
    }
    vm = VM(body, 6, 2, h)
    vm.fields['Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgAE:I'] = dbgAE
    vm.regs[vm.pbase + 1] = 7  # p1 = 索引示例
    vm.run(0)
    logged = 'nTTAE i=' in vm.log
    super_called = any(c[0].endswith('Menu;->actionElement') for c in vm.calls)
    final = vm.fields.get('Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgAE:I')
    return logged, super_called, final

fails = []
def chk(name, cond):
    print(('✅ ' if cond else '❌ ') + name)
    if not cond:
        fails.append(name)

tab = load(TAB)
tree = load(TREE)

# A 场景
for c, want_log in [(0, True), (1, True), (3, False)]:
    lg, fin = sim_ttd(tab, c)
    chk('A nTTD c=%d log=%s (counter→%s)' % (c, lg, fin), lg == want_log)
# A 反转
bad = tab.replace('if-lt v7, v8, :dbg_go', 'if-ge v7, v8, :dbg_go', 1)
lg0 = sim_ttd(bad, 0)[0]
chk('A 反转敏感性（改反后 c=0 不再打印）', lg0 is False)

# B 场景：sel=land，5 个节点 [land,air,civil,land,air] ⇒ off=3 vis=2
techs = [10, 11, 12, 13, 14]
cats = ['land', 'air', 'civil', 'land', 'air']
r1 = sim_vis(tree, 'land', techs, cats, dbgvis=0)
chk('B nTTV 第1次调用打印', r1['logged'])
chk('B off=3', r1['off'] == 3)
chk('B vis=2', r1['vis'] == 2)
r4 = sim_vis(tree, 'land', techs, cats, dbgvis=3)
chk('B 第4次调用不再打印（守卫生效）', r4['logged'] is False)
# B 反转
bad = tree.replace('if-ge v3, v5, :vis_skip', 'if-lt v3, v5, :vis_skip', 1)
r1b = sim_vis(bad, 'land', techs, cats, dbgvis=0)
chk('B 反转敏感性（改反后第1次不打印）', r1b['logged'] is False)

# C 场景
for c, want in [(0, True), (15, True), (16, False)]:
    lg, sup, fin = sim_ae(tree, c)
    chk('C nTTAE c=%d log=%s super=%s' % (c, lg, sup), lg == want and sup)
# C 反转
bad = tree.replace('if-ge v0, v1, :ae_skip', 'if-lt v0, v1, :ae_skip', 1)
lg0, sup0, _ = sim_ae(bad, 0)
chk('C 反转敏感性（改反后 c=0 不打印）', lg0 is False)

# ---------------- D) topVisible 真机字节码行为 ----------------
def sim_topvis(text, top, sel):
    body = body_of(text, '.method public static topVisible(')
    h = {'Ljava/lang/String;->equals': lambda vm, a: 1 if a[0] == a[1] else 0}
    vm = VM(body, 5, 2, h)
    vm.regs[3] = top   # p0
    vm.regs[4] = sel   # p1
    vm.run(0)
    # 返回值：最后一个 return v2 执行时的 v2
    # VM.run 返回 RET；v2 是返回槽（实现固定用 v2）
    return vm.regs[2]

def sim_topvis_cases(text):
    cases = [(('land', 'land'), True), (('air', 'land'), False),
             (('land', 'air'), False), (('x', 'all'), True),
             (('air', 'all'), True)]
    res = []
    for (top, sel), want in cases:
        got = sim_topvis(text, top, sel)
        res.append((top, sel, got, want, got == want))
    return res

tv_res = sim_topvis_cases(tree)
for top, sel, got, want, ok in tv_res:
    chk('D topVisible(%s,%s)⇒%s want %s' % (top, sel, got, want), ok)

_bad_tv = tree.replace('if-eqz v1, :tv_chk', 'if-nez v1, :tv_chk', 1)
chk('D反转敏感性（首守卫改反⇒(land,air)变1）', sim_topvis(_bad_tv, 'land', 'air') == 1)

print()
if fails:
    print('SIM FAIL:', len(fails))
    sys.exit(1)
print('SIM PASS')