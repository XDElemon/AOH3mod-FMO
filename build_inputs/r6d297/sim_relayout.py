#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# sim_relayout.py（v3 · 国别路由版）—— 行为级模拟器（解释真实 smali）
# 覆盖：relayoutNodes + cxOf；国别组 0..3 × 三栏 全量映射对账
# 断言 A1..A5 + 反转敏感性 M1..M5（改反/删检查必须被抓住）

import re, sys, json

TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
ENT = '/sdcard/GLG/历史23/tech_entries_r6d270.json'

LBL = re.compile(r'^\s*(:[A-Za-z0-9_]+)\s*$')
NUM = re.compile(r'^-?(?:0x[0-9a-fA-F]+|\d+)$')

def load(p):
    return open(p, encoding='utf-8').read()

def body_of(s, decl):
    i = s.find(decl)
    assert i >= 0, ('no-decl', decl)
    j = s.find('.end method', i)
    return s[i:j]

def I(v):
    return v if isinstance(v, int) else 0

def topcat_of(raw):
    if raw == 'air':
        return 'air'
    if raw in ('army', 'government'):
        return 'land'
    return 'civil'

def bucket(t):
    if t < 32 or t > 74:
        return -1
    if t <= 44:
        return 0
    if t <= 54:
        return 3
    if t <= 63:
        return 1
    return 2

def allowed(tid, grp):
    b = bucket(tid)
    return b == -1 or b == grp

class VM:
    def __init__(self, text, registers, nparams, env):
        lines = []
        for ln in text.split('\n'):
            s = ln.strip()
            if s.startswith('.method'):
                continue
            if s.startswith('.registers'):
                continue
            if s.startswith('.end method'):
                break
            lines.append(ln.rstrip())
        self.lines = lines
        self.labels = {}
        for i, ln in enumerate(lines):
            m = LBL.match(ln)
            if m:
                self.labels[m.group(1)] = i
        self.regs = [0] * registers
        self.pbase = registers - nparams
        self.env = env
        self.last = None

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
        content = m.group(1).strip()
        if '..' in content:
            a, b = [x.strip() for x in content.split('..')]
            ra, rb = self.R(a), self.R(b)
            return [self.regs[i] for i in range(ra, rb + 1)]
        return [self.V(x) for x in content.split(',') if x.strip()]

    def field(self, ref):
        return ref.split('->')[-1].split(':')[0]

    def run(self, maxsteps=200000):
        pc = 0
        steps = 0
        while steps < maxsteps:
            steps += 1
            raw = self.lines[pc].split('#', 1)[0].rstrip()
            if not raw.strip():
                pc += 1
                continue
            parts = raw.split(None, 1)
            op = parts[0]
            rest = parts[1].strip() if len(parts) > 1 else ''
            if LBL.match(raw):
                pc += 1
                continue
            if op in ('const/4', 'const/16', 'const', 'const/high16'):
                a, b = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = self.V(b)
            elif op == 'const-string':
                a, b = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = b.strip('"')
            elif op.startswith('move-object') or op in ('move', 'move/from16', 'move/16'):
                a, b = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = self.V(b)
            elif op.startswith('move-result'):
                self.regs[self.R(rest.strip())] = self.last
            elif op in ('sget', 'sget-object', 'sget-boolean'):
                a, f = [x.strip() for x in rest.split(',', 1)]
                self.regs[self.R(a)] = self.env['sf'].get(self.field(f), 0)
            elif op == 'iget':
                a, b, f = [x.strip() for x in rest.split(',')]
                obj = self.regs[self.R(b)]
                self.regs[self.R(a)] = obj.get(self.field(f), 0) if isinstance(obj, dict) else 0
            elif op == 'iget-object':
                a, b, f = [x.strip() for x in rest.split(',')]
                obj = self.regs[self.R(b)]
                self.regs[self.R(a)] = obj.get(self.field(f)) if isinstance(obj, dict) else None
            elif op == 'iput-object':
                a, b, f = [x.strip() for x in rest.split(',')]
                obj = self.regs[self.R(b)]
                if isinstance(obj, dict):
                    obj[self.field(f)] = self.regs[self.R(a)]
            elif op == 'new-array':
                a, b, t = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = [0] * I(self.V(b))
            elif op == 'aput':
                a, b, c = [x.strip() for x in rest.split(',')]
                arr = self.regs[self.R(b)]
                arr[I(self.V(c))] = self.V(a)
            elif op == 'aget':
                a, b, c = [x.strip() for x in rest.split(',')]
                arr = self.regs[self.R(b)]
                self.regs[self.R(a)] = arr[I(self.V(c))]
            elif op in ('add-int/lit8', 'mul-int/lit8'):
                a, b, c = [x.strip() for x in rest.split(',')]
                x, y = I(self.V(b)), I(self.V(c))
                self.regs[self.R(a)] = x + y if op.startswith('add') else x * y
            elif op in ('add-int/2addr', 'mul-int/2addr'):
                a, b = [x.strip() for x in rest.split(',')]
                x, y = I(self.regs[self.R(a)]), I(self.V(b))
                self.regs[self.R(a)] = x + y if op.startswith('add') else x * y
            elif op == 'div-int/lit8':
                a, b, c = [x.strip() for x in rest.split(',')]
                self.regs[self.R(a)] = I(self.V(b)) // I(self.V(c))
            elif op in ('if-eqz', 'if-nez'):
                a, l = [x.strip() for x in rest.split(',')]
                v = I(self.regs[self.R(a)])
                if (v == 0) == (op == 'if-eqz'):
                    pc = self.labels[l]
                    continue
            elif op in ('if-gt', 'if-ge', 'if-lt', 'if-le'):
                a, b, l = [x.strip() for x in rest.split(',')]
                x, y = I(self.regs[self.R(a)]), I(self.V(b))
                cond = {'if-gt': x > y, 'if-ge': x >= y, 'if-lt': x < y, 'if-le': x <= y}[op]
                if cond:
                    pc = self.labels[l]
                    continue
            elif op in ('if-ltz', 'if-gez'):
                a, l = [x.strip() for x in rest.split(',')]
                v = I(self.regs[self.R(a)])
                if (v < 0) == (op == 'if-ltz'):
                    pc = self.labels[l]
                    continue
            elif op == 'goto':
                pc = self.labels[rest.strip()]
                continue
            elif op == 'return-void':
                return 'VOID'
            elif op == 'return':
                return self.regs[self.R(rest.strip())]
            elif op == 'check-cast':
                pass
            elif op == 'instance-of':
                a, b, t = [x.strip() for x in rest.split(',')]
                obj = self.regs[self.R(b)]
                cls = obj.get('cls') if isinstance(obj, dict) else None
                self.regs[self.R(a)] = 1 if cls and t.strip(';').split('/')[-1] == cls else 0
            elif op.startswith('invoke'):
                m = re.search(r'\{([^}]*)\},\s*(\S+)', raw)
                args = self.reglist(raw)
                target = m.group(2)
                self.last = self.env['inv'](self, target, args)
            else:
                raise RuntimeError('unhandled op: ' + raw)
            pc += 1
        raise RuntimeError('maxsteps')

def build_env(grp):
    ent = json.load(open(ENT))
    techs = []
    for e in ent:
        techs.append({'cls': 'Technology', 'TreeColumn': e['col'], 'TreeRow': e['row']})
    menu = []
    for i, e in enumerate(ent):
        if allowed(i, grp):
            menu.append({'cls': 'ButtonTechnology', 'id': i, 'posx': 0, 'width': 400})
    board = {'cls': 'Empty', 'posx': 0, 'posy': 0, 'width': 31100, 'height': 816}
    menu.append(board)

    def inv(vm, target, args):
        name = target.split('->')[-1]
        if 'isTechAllowedForCiv' in name:
            return 1 if allowed(I(args[0]), grp) else 0
        if name == 'size()I':
            return len(args[0])
        if name.startswith('get(I)'):
            return args[0][I(args[1])]
        if 'getTopCategory' in name:
            return [topcat_of(e['cat']) for e in ent][I(args[0])]
        if name.startswith('equals('):
            return 1 if args[0] == args[1] else 0
        if name.startswith('getMenuElementsSize'):
            return len(menu)
        if name.startswith('getMenuElement'):
            return menu[I(args[1])]
        if name.startswith('getCurrent'):
            return args[0]['id']
        if name.startswith('setPosX'):
            args[0]['posx'] = I(args[1])
            return 0
        if name.startswith('setWidth'):
            args[0]['width'] = I(args[1])
            return 0
        raise RuntimeError('inv? ' + target)

    return {'ent': ent, 'techs': techs, 'menu': menu, 'board': board,
            'sf': {'iTechnologyWidth': 400, 'iTechnologyHeight': 120,
                   'lTechnology': techs, 'player': {'cls': 'Player', 'iCivID': 73}},
            'inv': inv}

def run_nodes(text, sel, grp):
    env = build_env(grp)
    b = body_of(text, '.method private relayoutNodes(Ljava/lang/String;)V')
    vm = VM(b, 16, 2, env)
    this = {'cls': 'tree'}
    vm.regs[vm.pbase] = this
    vm.regs[vm.pbase + 1] = sel
    vm.run()
    return env, this

def run_cx(text, sel, tid, this, grp):
    env = build_env(grp)
    b = body_of(text, '.method private cxOf(Ljava/lang/String;I)I')
    vm = VM(b, 10, 3, env)
    vm.regs[vm.pbase] = this
    vm.regs[vm.pbase + 1] = sel
    vm.regs[vm.pbase + 2] = tid
    return vm.run()

def spec_cols(ent, sel, grp):
    return sorted({ent[i]['col'] for i in range(len(ent))
                   if topcat_of(ent[i]['cat']) == sel and allowed(i, grp)})

def spec_x(ent, sel, grp, tid):
    e = ent[tid]
    if sel == 'all':
        return 500 * e['col'] + 100
    if not allowed(tid, grp) or topcat_of(e['cat']) != sel:
        return -2000
    cols = spec_cols(ent, sel, grp)
    return 500 * cols.index(e['col']) + 100

def spec_center(ent, sel, grp, tid):
    x = spec_x(ent, sel, grp, tid)
    return x + 200

def evaluate(text, grp):
    ent = json.load(open(ENT))
    res = {}
    for sel in ('land', 'air', 'civil'):
        env, this = run_nodes(text, sel, grp)
        ids = [m['id'] for m in env['menu'] if m['cls'] == 'ButtonTechnology']
        ok = all(env['menu'][j]['posx'] == spec_x(ent, sel, grp, ids[j]) for j in range(len(ids)))
        res['map_' + sel] = ok
        res['board_' + sel] = env['board']['width']
    env, this = run_nodes(text, 'all', grp)
    ids = [m['id'] for m in env['menu'] if m['cls'] == 'ButtonTechnology']
    res['map_all'] = all(env['menu'][j]['posx'] == spec_x(ent, 'all', grp, ids[j]) for j in range(len(ids)))
    res['board_all'] = env['board']['width']

    # cxOf（复用 air 场景的 this，带 aColRank）
    env2, this2 = run_nodes(text, 'air', grp)
    id_air_ok = next(i for i in range(len(ent)) if topcat_of(ent[i]['cat']) == 'air' and allowed(i, grp))
    id_air_no = next(i for i in range(len(ent)) if topcat_of(ent[i]['cat']) == 'air' and not allowed(i, grp))
    id_land = next(i for i in range(len(ent)) if topcat_of(ent[i]['cat']) == 'land')
    res['cx_ok'] = (run_cx(text, 'air', id_air_ok, this2, grp) == spec_center(ent, 'air', grp, id_air_ok))
    res['cx_no'] = (run_cx(text, 'air', id_air_no, this2, grp) == -1800)
    res['cx_land'] = (run_cx(text, 'air', id_land, this2, grp) == -1800)
    res['cx_all'] = (run_cx(text, 'all', id_air_no, this2, grp) == 500 * ent[id_air_no]['col'] + 300)
    return res

def main():
    text = load(TREE)
    fails = []

    def chk(name, ok):
        if not ok:
            fails.append(name)

    exp_board_air = {0: 4600, 1: 4100, 2: 4600, 3: 4600}
    for grp in range(4):
        r = evaluate(text, grp)
        for sel in ('land', 'air', 'civil'):
            chk('A1 g%d %s map' % (grp, sel), r['map_' + sel])
        chk('A2 g%d map all' % grp, r['map_all'])
        chk('A3 g%d land=6100' % grp, r['board_land'] == 6100)
        chk('A3 g%d air=%d' % (grp, exp_board_air[grp]), r['board_air'] == exp_board_air[grp])
        chk('A3 g%d civil=3600' % grp, r['board_civil'] == 3600)
        chk('A4 g%d all board=31100' % grp, r['board_all'] == 31100)
        chk('A5 g%d cx ok' % grp, r['cx_ok'])
        chk('A5 g%d cx nonallowed=-1800' % grp, r['cx_no'])
        chk('A5 g%d cx land=-1800' % grp, r['cx_land'])
        chk('A5 g%d cx all' % grp, r['cx_all'])

    if fails:
        print('SIM FAIL:', fails[:12], '...' if len(fails) > 12 else '')
        sys.exit(1)
    print('SIM PASS (A1-A5 × groups 0-3)')

    # ---------- 反转敏感性 ----------
    caught = []

    def try_mut(name, m, check):
        try:
            r = evaluate(m, 0)
            ok = check(r)
        except Exception:
            ok = True
        if ok:
            caught.append(name)

    try_mut('M1 loop drops last col',
            text.replace('if-gt v4, v3, :rn_l3e', 'if-ge v4, v3, :rn_l3e', 1),
            lambda r: (not r['map_land']))
    try_mut('M2 park -1000',
            text.replace('const/16 v12, -0x7d0', 'const/16 v12, -0x3e8', 1),
            lambda r: (not r['map_air']))
    try_mut('M3 board mul v13',
            text.replace('mul-int/2addr v12, v3', 'mul-int/2addr v12, v13', 1),
            lambda r: r['board_land'] == 50100)
    try_mut('M4 cx park 0',
            text.replace('const/16 v3, -0x7d0', 'const/16 v3, 0x0', 1),
            lambda r: (not r['cx_no']))
    # M5: 第二遍 allowed 极性反转（非允许列混入 rank）
    idx = text.find('isTechAllowedForCiv(II)Z')
    idx2 = text.find('isTechAllowedForCiv(II)Z', idx + 1)
    seg = text[idx2:]
    seg2 = seg.replace('if-eqz v5, :rn_l2n', 'if-nez v5, :rn_l2n', 1)
    try_mut('M5 allowed polarity (pass2)', text[:idx2] + seg2,
            lambda r: (not r['map_air']) or (r['board_air'] != 4600))

    if len(caught) == 5:
        print('MUTATION SENSITIVITY PASS (M1-M5)')
    else:
        print('MUTATION FAIL:', caught)
        sys.exit(1)

if __name__ == '__main__':
    main()