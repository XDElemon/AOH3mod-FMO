#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d061 门禁：解释执行 AirForceManager.cfgFix()V 的【真实 smali】，跑真值表 + 负样本 + 反转敏感性自检。
不另写"规则函数"：cfgExtractInt / cfgReadText / dWrite / StringBuilder 全部按真实语义实现，
被测对象是从 .smali 文本解析出来的指令流。
用法：
  python3 check_r6d061_cfgfix.py <AirForceManager.smali> [--expect-fail]
"""
import re, sys, io

PATH = sys.argv[1]
EXPECT_FAIL = '--expect-fail' in sys.argv

SRC = io.open(PATH, encoding='utf-8').read()
m = re.search(r'^\.method public static cfgFix\(\)V$(.*?)^\.end method$', SRC, re.S | re.M)
assert m, '找不到 cfgFix 方法'
BODY = m.group(1)
REG_TOP = int(re.search(r'\.registers (\d+)', BODY).group(1))

# ---------- 解析指令 ----------
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
            tgt = head.split('->')[1] if '->' in head else ''
            owner = head.split('},')[1].split('->')[0].strip()
            ins.append((op, tgt, (regs, owner)))
            continue
        parts = s.split(None, 1)
        op = parts[0]
        args = parts[1] if len(parts) > 1 else ''
        ins.append((op, args, None))
    return ins

INS = parse(BODY)
LABELS = {a: i for i, (op, a, _) in enumerate(INS) if op == 'label'}

# ---------- 语义替身 ----------
def smali_unescape(x):
    return x.replace('\\n', '\n').replace('\\t', '\t').replace('\\"', '"')

def cfgExtractInt(text, key, default):
    """真实算法：找 "key" → 找 : → 跳空格/tab → 负号 → 数字；位数0 ⇒ 返回 default"""
    if text is None:
        return default
    idx = text.find('"%s"' % key)
    if idx < 0:
        return default
    idx = text.find(':', idx)
    if idx < 0:
        return default
    i, n = idx + 1, len(text)
    while i < n and text[i] in (' ', '\t'):
        i += 1
    neg = False
    if i < n and text[i] == '-':
        neg = True
        i += 1
    val, digits = 0, 0
    while i < n and '0' <= text[i] <= '9':
        val = val * 10 + (ord(text[i]) - 48)
        digits += 1
        i += 1
    if digits == 0:
        return default
    return -val if neg else val

class SB:
    def __init__(self):
        self.buf = []
    def append(self, x):
        self.buf.append(str(x))
        return self
    def toString(self):
        return ''.join(self.buf)

FIELDS = {}

class Ctx:
    def __init__(self, text):
        self.reg = [0] * REG_TOP
        self.text = text
        self.lines = []
        self.fields = dict(FIELDS)
        self.ret = None

def run(text, all_keys=True):
    c = Ctx(text)
    c.fields['cfgFixStage'] = 0
    pc = 0
    steps = 0
    while pc < len(INS):
        steps += 1
        if steps > 5000:
            raise RuntimeError('执行步数超限（疑似死循环）')
        op, a, ex = INS[pc]
        pc += 1
        if op == 'label':
            continue
        if op == 'const-string':
            r, lit = a.split(',', 1)
            c.reg[int(r.strip()[1:])] = smali_unescape(lit.strip()[1:-1])
        elif op == 'const/4' or op == 'const/16':
            r, lit = a.split(',', 1)
            lt = lit.strip()
            neg = lt.startswith('-')
            bd = lt.lstrip('-')
            val = int(bd, 16) if bd.startswith('0x') else int(bd, 10)
            c.reg[int(r.strip()[1:])] = -val if neg else val
        elif op == 'new-instance':
            r = a.split(',')[0].strip()
            c.reg[int(r[1:])] = SB()
        elif op == 'invoke-direct':
            pass  # StringBuilder.<init>
        elif op == 'invoke-virtual':
            regs, owner = ex
            name = a.split('(')[0]
            o = c.reg[regs[0]]
            if name == 'append':
                arg = c.reg[regs[1]]
                o.append(arg)
                c.ret = o
            elif name == 'toString':
                c.ret = o.toString()
            elif owner.strip().rstrip(';').endswith('String') and name == 'length':
                c.ret = len(o)
            else:
                raise RuntimeError('未实现 invoke-virtual: %s %s' % (owner, name))
        elif op == 'invoke-static':
            regs, owner = ex
            name = a.split('(')[0]
            if name == 'cfgExtractInt':
                c.ret = cfgExtractInt(c.reg[regs[0]], c.reg[regs[1]], c.reg[regs[2]])
            elif name == 'cfgReadText':
                c.ret = c.text
            elif name == 'dWrite':
                c.lines.append(c.reg[regs[0]])
            else:
                raise RuntimeError('未实现 invoke-static: %s' % name)
        elif op == 'move-result':
            r = a.strip()
            c.reg[int(r[1:])] = c.ret
        elif op == 'move-result-object':
            r = a.strip()
            c.reg[int(r[1:])] = c.ret
        elif op in ('if-eqz', 'if-nez'):
            r, lab = a.split(',')
            v = c.reg[int(r.strip()[1:])]
            isz = (v == 0) if isinstance(v, int) else (v is None)
            take = isz if op == 'if-eqz' else (not isz)
            if take:
                pc = LABELS[lab.strip()[1:]]
        elif op == 'if-ltz':
            r, lab = a.split(',')
            if c.reg[int(r.strip()[1:])] < 0:
                pc = LABELS[lab.strip()[1:]]
        elif op == 'if-gez':
            r, lab = a.split(',')
            if c.reg[int(r.strip()[1:])] >= 0:
                pc = LABELS[lab.strip()[1:]]
        elif op == 'if-gtz':
            r, lab = a.split(',')
            if c.reg[int(r.strip()[1:])] > 0:
                pc = LABELS[lab.strip()[1:]]
        elif op == 'if-lez':
            r, lab = a.split(',')
            if c.reg[int(r.strip()[1:])] <= 0:
                pc = LABELS[lab.strip()[1:]]
        elif op == 'if-le':
            r1, r2, lab = [x.strip() for x in a.split(',')]
            if c.reg[int(r1[1:])] <= c.reg[int(r2[1:])]:
                pc = LABELS[lab[1:]]
        elif op == 'if-ne':
            r1, r2, lab = [x.strip() for x in a.split(',')]
            if c.reg[int(r1[1:])] != c.reg[int(r2[1:])]:
                pc = LABELS[lab[1:]]
        elif op == 'goto':
            pc = LABELS[a.strip()[1:]]
        elif op.startswith('sget'):
            _, fld = a.split(';->')
            c.reg[int(a.split()[0].strip().rstrip(',')[1:])] = c.fields.get(fld.split(':')[0], 0)
        elif op.startswith('sput'):
            fld = a.split(';->')[1].split(':')[0]
            c.fields[fld] = c.reg[int(a.split()[0].strip().rstrip(',')[1:])]
        elif op == 'return-void':
            break
        else:
            raise RuntimeError('未实现指令: %s %s' % (op, a))
    out = {}
    for k in ('dgProb', 'dgIntel', 'dgPin', 'dgDebug', 'dgAiBuild', 'dgAiWar', 'dgAiCap', 'dgAiType', 'dgWF', 'dgWI', 'dgWA', 'dgWB', 'cfgFixStage'):
        out[k] = c.fields.get(k, 0)
    return out, c.lines

# ---------- 真值表 ----------
def cfgstr(**kw):
    order = ['prob', 'intel', 'pin', 'debug', 'ai_build', 'ai_wartime', 'ai_cap', 'ai_type',
             'ai_w_fighter', 'ai_w_inter', 'ai_w_attacker', 'ai_w_bomber']
    items = [' "%s":%s' % (k, kw[k]) for k in order if k in kw]
    return '{\n' + ',\n'.join(items) + '\n}\n'

DEFAULT_ALL = dict(dgProb=80, dgIntel=1, dgPin=-1, dgDebug=0, dgAiBuild=1, dgAiWar=1,
                   dgAiCap=4, dgAiType=0, dgWF=5, dgWI=1, dgWA=2, dgWB=2)

CASES = [
    # 名称, 文本, 期望字段, 期望 CFGT 的 s= 片段
    ('全键', cfgstr(prob=33, intel=0, pin=12345, debug=1, ai_build=0, ai_wartime=0, ai_cap=7,
                    ai_type=1, ai_w_fighter=1, ai_w_inter=1, ai_w_attacker=1, ai_w_bomber=1),
     dict(dgProb=33, dgIntel=0, dgPin=12345, dgDebug=1, dgAiBuild=0, dgAiWar=0, dgAiCap=7, dgAiType=1,
          dgWF=1, dgWI=1, dgWA=1, dgWB=1), '33,12345,1,7,0'),
    ('缺pin/debug', cfgstr(prob=80, intel=1, ai_build=1, ai_wartime=1, ai_cap=4, ai_type=0,
                          ai_w_fighter=5, ai_w_inter=1, ai_w_attacker=2, ai_w_bomber=2),
     dict(dgProb=80, dgPin=-1, dgDebug=0), '80,-7,-7,4,1'),
    ('空文本', '', dict(DEFAULT_ALL, dgProb=80, dgPin=-1, dgDebug=0), '-7,-7,-7,-7,-7'),
    ('text=null', None, dict(DEFAULT_ALL, dgProb=80, dgPin=-1, dgDebug=0), '-7,-7,-7,-7,-7'),
    ('prob=-5(钳0)', cfgstr(prob=-5), dict(dgProb=0), ''),
    ('prob=250(钳100)', cfgstr(prob=250), dict(dgProb=100), ''),
]

def check(tree_path, verbose=False):
    """返回 (通过数, 失败列表)"""
    ok, bad = 0, []
    for name, text, want, cfgt in CASES:
        f, lines = run(text)
        errs = []
        for k, v in want.items():
            if f.get(k) != v:
                errs.append('%s=%s 期望%s' % (k, f.get(k), v))
        cfgt_line = [l for l in lines if l.startswith('CFGT r6d061')]
        cfgt3_line = [l for l in lines if l.startswith('CFGT3 r6d061')]
        if not cfgt_line:
            errs.append('缺 CFGT 行')
        else:
            body = cfgt_line[0].split(' s=')[-1]
            if cfgt and cfgt not in body:
                errs.append('CFGT s=%s 不含 %s' % (body, cfgt))
            exp_tlen = -1 if text is None else len(text)
            if ('tlen=%d' % exp_tlen) not in cfgt_line[0]:
                errs.append('CFGT tlen 错: %s (期望 %d)' % (cfgt_line[0], exp_tlen))
        if cfgt3_line and want.get('dgProb') is not None and ('fp=%d' % want['dgProb']) not in cfgt3_line[0]:
            errs.append('CFGT3 与字段不一致: %s' % cfgt3_line[0])
        if errs:
            bad.append((name, errs))
        else:
            ok += 1
    return ok, bad

if __name__ == '__main__':
    total = len(CASES)
    ok, bad = check(PATH)
    for n, e in bad:
        print('❌ %s: %s' % (n, '; '.join(e)))
    print('真值表: %d/%d 通过' % (ok, total))

    # ---------- 负样本（把 smali 改坏，门禁必须抓出来）----------
    muts = [
        ('哨兵默认 -7→0', lambda t: t.replace('const/4 v4, -0x7', 'const/4 v4, 0x0')),
        ('钳位极性 if-ltz→if-gez(不存在则换成 if-le 反向)', lambda t: t.replace('if-gez v2, :cf_p1', 'if-ltz v2, :cf_p1')),
        ('sput 目标 pin→intel', lambda t: t.replace('->dgPin:I', '->dgIntel:I')),
    ]
    neg_ok = 0
    for label, fn in muts:
        mut = fn(io.open(PATH, encoding='utf-8').read())
        if mut == io.open(PATH, encoding='utf-8').read():
            print('⚠️  负样本 %s 未改变文本（替换未命中）' % label)
            continue
        tmp = '/tmp/_neg_r6d061.smali'
        io.open(tmp, 'w', encoding='utf-8').write(mut)
        # 用同一个解释器重新加载
        SRC = mut
        BODY = re.search(r'^\.method public static cfgFix\(\)V$(.*?)^\.end method$', SRC, re.S | re.M).group(1)
        INS = parse(BODY)
        LABELS = {a: i for i, (op, a, _) in enumerate(INS) if op == 'label'}
        o2, b2 = check(tmp)
        if b2:
            neg_ok += 1
            print('✅ 负样本被抓: %s (%d/%d 通过)' % (label, o2, total))
        else:
            print('❌ 负样本漏抓: %s — 门禁无效！' % label)
    print('负样本: %d/%d 被抓（反转敏感性）' % (neg_ok, len(muts)))

    passed = (ok == total) and (neg_ok == len(muts))
    if EXPECT_FAIL:
        print('== 预期失败模式：%s ==' % ('通过（异常！）' if passed else '失败（符合预期）'))
    print('== 门禁结论：%s ==' % ('PASS 120' if passed else 'FAIL'))
    sys.exit(0 if passed else 1)