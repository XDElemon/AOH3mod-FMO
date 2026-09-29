#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d062 门禁 v2：真解释执行 AirForceManager 的【cfgFix + cfgExtractInt 真实 smali】
- 不另写规则函数：cfgExtractInt 用文件里的真实指令流解释执行
- 真值表 ≥6 条（键全在/部分缺/全缺/text=null/prob=-5钳0/prob=250钳100）
- 负样本 ≥3（哨兵默认、钳位极性、sput 目标）
- 反转自检：把 if-ltz 两处守卫还原成原始 bug（if-gez）⇒ 门禁必须判 FAIL
用法: python3 check_r6d062_cfg.py <AirForceManager.smali>
"""
import re, sys, io

def num(x):
    x = x.strip()
    neg = x.startswith('-')
    b = x.lstrip('-')
    v = int(b, 16) if b.startswith('0x') else int(b, 10)
    return -v if neg else v

PATH = sys.argv[1]
SRC = io.open(PATH, encoding='utf-8').read()

def grab(name, sig):
    m = re.search(r'^\.method public static %s%s$(.*?)^\.end method$' % (re.escape(name), re.escape(sig)), SRC, re.S | re.M)
    assert m, '找不到方法 %s' % name
    return m.group(1)

def parse(body):
    ins = []
    for raw in body.split('\n'):
        s = raw.strip()
        if not s or s.startswith('.') or s.startswith('#'):
            continue
        if s.startswith(':'):
            ins.append(('label', s[1:], None))
            continue
        if s.startswith('invoke-'):
            head = s.split(' #')[0]
            op = head.split()[0]
            regs = [int(x) for x in re.findall(r'[vp](\d+)', head[head.index('{') + 1:head.index('}')])]
            tgt = head.split('->')[1].split('(')[0] if '->' in head else ''
            owner = head.split('},')[1].split('->')[0].strip().rstrip(';') if '},' in head else ''
            ins.append((op, tgt, (regs, owner)))
            continue
        parts = s.split(None, 1)
        ins.append((parts[0], parts[1] if len(parts) > 1 else '', None))
    return ins

class Method:
    def __init__(self, body, nparams):
        nreg = int(re.search(r'\.registers (\d+)', body).group(1))
        base = nreg - nparams
        body = re.sub(r'\bp(\d+)\b', lambda m: 'v%d' % (base + int(m.group(1))), body)
        self.ins = parse(body)
        self.labels = {a: i for i, (op, a, _) in enumerate(self.ins) if op == 'label'}
        self.nreg = int(re.search(r'\.registers (\d+)', body).group(1))
        self.nparams = nparams

class SB:
    def __init__(self):
        self.b = []
    def append(self, x):
        self.b.append(str(x)); return self
    def toString(self):
        return ''.join(self.b)

class VM:
    def __init__(self, methods):
        self.m = methods
        self.dwrite = []
        self.fields = {'cfgFixStage': 0}
        self.text_in = None

    def call(self, meth, args):
        """解释执行一个静态方法；args 依参数顺序（v-register 从末尾往前映射）"""
        reg = [0] * meth.nreg
        base = meth.nreg - meth.nparams
        for i, a in enumerate(args):
            reg[base + i] = a
        pc, steps, ret = 0, 0, None
        while pc < len(meth.ins):
            steps += 1
            assert steps < 20000, '执行步数超限'
            op, a, ex = meth.ins[pc]
            pc += 1
            if op == 'label':
                continue
            if op == 'const-string':
                r, lit = a.split(',', 1)
                reg[int(r.strip()[1:])] = lit.strip()[1:-1].replace('\\"', '"').replace('\\n', '\n')
            elif op in ('const/4', 'const/16'):
                r, lit = a.split(',', 1)
                lt = lit.strip(); neg = lt.startswith('-'); bd = lt.lstrip('-')
                val = int(bd, 16) if bd.startswith('0x') else int(bd, 10)
                reg[int(r.strip()[1:])] = -val if neg else val
            elif op == 'new-instance':
                reg[int(a.split(',')[0].strip()[1:])] = SB()
            elif op == 'new-array':
                reg[int(a.split(',')[0].strip()[1:])] = bytearray(4096)
            elif op == 'invoke-direct':
                pass
            elif op in ('invoke-virtual', 'invoke-static'):
                regs, owner = ex
                nm = a.split('(')[0]
                if op == 'invoke-static':
                    if nm == 'cfgExtractInt':
                        ret = self.call(self.m['cfgExtractInt'], [reg[regs[0]], reg[regs[1]], reg[regs[2]]])
                    elif nm == 'cfgReadText':
                        ret = self.text_in
                    elif nm == 'dWrite':
                        self.dwrite.append(reg[regs[0]])
                    else:
                        raise RuntimeError('未实现 static: %s' % nm)
                else:
                    o = reg[regs[0]]
                    if nm == 'append':
                        o.append(reg[regs[1]]); ret = o
                    elif nm == 'toString':
                        ret = o.toString()
                    elif nm == 'length':
                        ret = len(o) if not isinstance(o, bytearray) else len(o)
                    elif nm == 'indexOf':
                        if len(regs) == 2:
                            ret = o.find(reg[regs[1]])
                        else:
                            ret = o.find(reg[regs[1]], reg[regs[2]])
                    elif nm == 'charAt':
                        ret = ord(o[reg[regs[1]]])
                    elif nm == 'substring':
                        ret = o[reg[regs[1]]:reg[regs[2]]]
                    elif nm == 'write':
                        pass
                    elif nm == 'close':
                        pass
                    else:
                        raise RuntimeError('未实现 virtual: %s' % nm)
            elif op == 'move-result':
                reg[int(a.strip()[1:])] = ret
            elif op == 'move-result-object':
                reg[int(a.strip()[1:])] = ret
            elif op == 'move':
                r1, r2 = [x.strip() for x in a.split(',')]
                reg[int(r1[1:])] = reg[int(r2[1:])]
            elif op in ('if-eqz', 'if-nez'):
                r, lab = a.split(',')
                v = reg[int(r.strip()[1:])]
                isz = (v == 0) if isinstance(v, int) else (v is None)
                if (isz if op == 'if-eqz' else not isz):
                    pc = meth.labels[lab.strip()[1:]]
            elif op in ('if-ltz', 'if-gez', 'if-gtz', 'if-lez'):
                r, lab = a.split(',')
                v = reg[int(r.strip()[1:])]
                hit = {'if-ltz': v < 0, 'if-gez': v >= 0, 'if-gtz': v > 0, 'if-lez': v <= 0}[op]
                if hit:
                    pc = meth.labels[lab.strip()[1:]]
            elif op in ('if-eq', 'if-ne', 'if-lt', 'if-ge', 'if-gt', 'if-le'):
                r1, r2, lab = [x.strip() for x in a.split(',')]
                x, y = reg[int(r1[1:])], reg[int(r2[1:])]
                hit = {'if-eq': x == y, 'if-ne': x != y, 'if-lt': x < y, 'if-ge': x >= y,
                       'if-gt': x > y, 'if-le': x <= y}[op]
                if hit:
                    pc = meth.labels[lab[1:]]
            elif op == 'goto':
                pc = meth.labels[a.strip()[1:]]
            elif op == 'add-int/lit8':
                r, s2, x = [t.strip() for t in a.split(',')]
                d = int(r[1:]); src = int(s2[1:])
                reg[d] = reg[src] + num(x)
            elif op == 'add-int/lit16':
                r, x = [t.strip() for t in a.split(',')]
                reg[int(r[1:])] = reg[int(r[1:])] + num(x)
            elif op == 'add-int/2addr' or op == 'sub-int/2addr':
                r1, r2 = [t.strip() for t in a.split(',')]
                v = reg[int(r1[1:])] + reg[int(r2[1:])] if 'add' in op else reg[int(r1[1:])] - reg[int(r2[1:])]
                reg[int(r1[1:])] = v
            elif op == 'mul-int/lit8':
                r, s2, x = [t.strip() for t in a.split(',')]
                reg[int(r[1:])] = reg[int(s2[1:])] * num(x)
            elif op == 'neg-int':
                r1, r2 = [t.strip() for t in a.split(',')]
                reg[int(r1[1:])] = -reg[int(r2[1:])]
            elif op.startswith('sget'):
                fld = a.split(';->')[1].split(':')[0]
                reg[int(a.split()[0].strip().rstrip(',')[1:])] = self.fields.get(fld, 0)
            elif op.startswith('sput'):
                fld = a.split(';->')[1].split(':')[0]
                self.fields[fld] = reg[int(a.split()[0].strip().rstrip(',')[1:])]
            elif op == 'return-void':
                return None
            elif op == 'return':
                return reg[int(a.strip()[1:])]
            elif op == 'return-object':
                return reg[int(a.strip()[1:])]
            else:
                raise RuntimeError('未实现指令: %s %s' % (op, a))
        return None

def build(src=None):
    global SRC
    if src is not None:
        SRC = src
    bf = grab('cfgFix', '()V')
    be = grab('cfgExtractInt', '(Ljava/lang/String;Ljava/lang/String;I)I')
    return {'cfgFix': Method(bf, 0), 'cfgExtractInt': Method(be, 3)}

def cfgstr(**kw):
    order = ['prob', 'intel', 'pin', 'debug', 'ai_build', 'ai_wartime', 'ai_cap', 'ai_type',
             'ai_w_fighter', 'ai_w_inter', 'ai_w_attacker', 'ai_w_bomber']
    return '{\n' + ',\n'.join(' "%s":%s' % (k, kw[k]) for k in order if k in kw) + '\n}\n'

D = dict(dgProb=80, dgIntel=1, dgPin=-1, dgDebug=0, dgAiBuild=1, dgAiWar=1, dgAiCap=4,
         dgAiType=0, dgWF=5, dgWI=1, dgWA=2, dgWB=2)

CASES = [
    ('全键', cfgstr(prob=33, intel=0, pin=12345, debug=1, ai_build=0, ai_wartime=0, ai_cap=7,
                    ai_type=1, ai_w_fighter=1, ai_w_inter=1, ai_w_attacker=1, ai_w_bomber=1),
     dict(dgProb=33, dgIntel=0, dgPin=12345, dgDebug=1, dgAiBuild=0, dgAiWar=0, dgAiCap=7, dgAiType=1,
          dgWF=1, dgWI=1, dgWA=1, dgWB=1), '33,12345,1,7,0'),
    ('缺pin/debug', cfgstr(prob=80, intel=1, ai_build=1, ai_wartime=1, ai_cap=4, ai_type=0,
                           ai_w_fighter=5, ai_w_inter=1, ai_w_attacker=2, ai_w_bomber=2),
     dict(dgProb=80, dgPin=-1, dgDebug=0), '80,-7,-7,4,1'),
    ('空文本', '', dict(D, dgProb=80, dgPin=-1, dgDebug=0), '-7,-7,-7,-7,-7'),
    ('text=null', None, dict(D, dgProb=80, dgPin=-1, dgDebug=0), '-7,-7,-7,-7,-7'),
    ('prob=-5(钳0)', cfgstr(prob=-5), dict(dgProb=0), '-5'),
    ('prob=250(钳100)', cfgstr(prob=250), dict(dgProb=100), '250'),
]

def run_case(meths, text):
    vm = VM(meths)
    vm.call(meths['cfgFix'], [])
    vm.fields['__text'] = text
    f, lines = {}, vm.dwrite
    for k in ('dgProb', 'dgIntel', 'dgPin', 'dgDebug', 'dgAiBuild', 'dgAiWar', 'dgAiCap',
              'dgAiType', 'dgWF', 'dgWI', 'dgWA', 'dgWB'):
        f[k] = vm.fields.get(k, 0)
    return f, lines

def check(meths, quiet=False):
    ok, bad = 0, []
    for name, text, want, cfgt in CASES:
        # cfgReadText 替身：把文本注入 fields，cfgFix 内 cfgReadText 返回 p0（即路径）——改用注入式：
        vm_text = text
        f, lines = run_with_text(meths, vm_text)
        errs = []
        for k, v in want.items():
            if f.get(k) != v:
                errs.append('%s=%s期望%s' % (k, f.get(k), v))
        cfgt_line = [l for l in lines if l.startswith('CFGT ') and 'tlen=' in l]
        cfgt3 = [l for l in lines if l.startswith('CFGT3 ')]
        if not cfgt_line:
            errs.append('缺CFGT')
        else:
            exp_tlen = -1 if text is None else len(text)
            if ('tlen=%d' % exp_tlen) not in cfgt_line[0]:
                errs.append('tlen错(%s 期望%d)' % (cfgt_line[0], exp_tlen))
            if cfgt and ('s=%s' % cfgt) not in cfgt_line[0]:
                errs.append('s=错(%s 期望 s=%s)' % (cfgt_line[0], cfgt))
        if cfgt3 and ('fp=%d' % want.get('dgProb', -999)) not in cfgt3[0]:
            errs.append('CFGT3错(%s)' % cfgt3[0])
        if errs:
            bad.append((name, errs))
        else:
            ok += 1
    return ok, bad

def run_with_text(meths, text):
    vm = VM(meths)
    vm.text_in = text          # cfgReadText 替身
    vm.call(meths['cfgFix'], [])
    f = {k: vm.fields.get(k, 0) for k in
         ('dgProb', 'dgIntel', 'dgPin', 'dgDebug', 'dgAiBuild', 'dgAiWar', 'dgAiCap',
          'dgAiType', 'dgWF', 'dgWI', 'dgWA', 'dgWB')}
    return f, vm.dwrite

if __name__ == '__main__':
    meths = build()
    ok, bad = check(meths)
    print('真值表: %d/%d 通过' % (ok, len(CASES)))
    for n, e in bad:
        print('  ❌ %s: %s' % (n, '; '.join(e)))

    # 负样本 1/2/3：改坏 cfgFix
    neg = []
    def mut1(t):  # 哨兵 -7 → 0
        return t.replace('const/4 v4, -0x7', 'const/4 v4, 0x0')
    def mut2(t):  # 钳位极性回退
        return t.replace('if-gez v2, :cf_p1', 'if-ltz v2, :cf_p1')
    def mut3(t):  # sput 目标串台
        return t.replace('->dgPin:I', '->dgIntel:I')
    def mut4(t):  # 原始 bug 复现：两处 indexOf 守卫还原成 if-gez
        return t.replace('if-ltz v2, :cond_6e', 'if-gez v2, :cond_6e').replace('if-ltz v3, :cond_6e', 'if-gez v3, :cond_6e')
    for label, fn in [('哨兵-7→0', mut1), ('钳位极性回退', mut2), ('sput串台', mut3), ('原始bug复现(indexOf守卫)', mut4)]:
        t2 = fn(io.open(PATH, encoding='utf-8').read())
        if t2 == io.open(PATH, encoding='utf-8').read():
            print('⚠️ 负样本 %s 未命中（文本未变）' % label); continue
        m2 = build(t2)
        o2, b2 = check(m2)
        if b2:
            neg.append(label)
            print('✅ 负样本被抓: %s (%d/%d)' % (label, o2, len(CASES)))
        else:
            print('❌ 负样本漏抓: %s —— 门禁无效！' % label)
    passed = (ok == len(CASES)) and (len(neg) == 4)
    print('== 门禁结论：%s ==' % ('PASS 121' if passed else 'FAIL'))
    sys.exit(0 if passed else 1)