#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 122 · r6d066：加载页背景轮换 InitGame.loadingRotateTick()V
- 真解释执行真实 smali（不另写规则函数）
- 真值表 5 条：关闭(<=0) / 首帧只初始化 / 未到间隔 / 恰好到间隔 / 超过间隔
- 负样本 3 条（必须全部被抓）：if-lez→if-ltz（关闭失效）/ if-ltz→if-eqz（恰好到不换）/ if-nez→if-eqz（首图立即被换）
- 关键：负样本①必须用【两帧序列】才能暴露（单帧看不出）
用法: python3 check_r6d066_loading_rotate.py <InitGame.smali>
"""
import io, re, sys

PATH = sys.argv[1]
SRC = io.open(PATH, encoding='utf-8').read()
BODY = re.search(r'\.method public static loadingRotateTick\(\)V\n(.*?)\n\.end method', SRC, re.S).group(1)

def parse(b):
    ins = [l.strip() for l in b.split('\n') if l.strip() and not l.strip().startswith(('.', '#'))]
    return ins, {t[1:]: i for i, t in enumerate(ins) if t.startswith(':')}

def run(b, swap, last, now):
    """解释执行一帧；返回 (字段状态, 调用列表)"""
    ins, L = parse(b)
    R = dict.fromkeys(['v0', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7'], 0)
    F = {'dgLoadSwapMs': swap, 'lastSwapMs': last}
    calls, pc, n = [], 0, 0
    while pc < len(ins):
        n += 1
        assert n < 500, '执行步数超限'
        t = ins[pc]; pc += 1
        if t.startswith(':'):
            continue
        op = t.split()[0]; a = t[len(op):].strip()
        if op in ('sget', 'sget-wide'):
            r, f = [z.strip() for z in a.split(',', 1)]
            R[r] = {'currentTimeMillis': now, 'lastSwapMs': F['lastSwapMs'],
                    'dgLoadSwapMs': F['dgLoadSwapMs']}[f.split('->')[1].split(':')[0]]
        elif op in ('sput', 'sput-wide'):
            r, f = [z.strip() for z in a.split(',', 1)]
            F[f.split('->')[1].split(':')[0]] = R[r]
        elif op in ('const/4', 'const/16', 'const-wide/16'):
            r, v = a.split(','); R[r.strip()] = int(v.strip(), 0)
        elif op == 'cmp-long':
            r, x, y = [z.strip() for z in a.split(',')]
            R[r] = -1 if R[x] < R[y] else (0 if R[x] == R[y] else 1)
        elif op == 'int-to-long':
            r, x = [z.strip() for z in a.split(',')]; R[r] = int(R[x])
        elif op == 'sub-long/2addr':
            x, y = [z.strip() for z in a.split(',')]; R[x] = int(R[x]) - int(R[y])
        elif op in ('if-lez', 'if-ltz', 'if-eqz', 'if-nez'):
            r, lab = [z.strip() for z in a.split(',')]; v = R[r]
            if {'if-lez': v <= 0, 'if-ltz': v < 0, 'if-eqz': v == 0, 'if-nez': v != 0}[op]:
                pc = L[lab[1:]]
        elif op == 'return-void':
            break
        elif op == 'invoke-static':
            if 'loadBackground' in a:
                calls.append('SWAP')
        else:
            raise RuntimeError('未实现指令: ' + t)
    return F, calls

def swapped_two_frames(b, swap):
    """两帧序列：帧1（lastSwap=0）→ 帧2（now = 帧1时间 + 1ms）"""
    f1, _ = run(b, swap, 0, 1000000)
    _, c2 = run(b, swap, f1['lastSwapMs'], f1['lastSwapMs'] + 1)
    return 'SWAP' in c2

T = 1000000
table = [
    ('关闭: 两帧均不换', swapped_two_frames(BODY, 0), False),
    ('首帧只初始化（不换）', 'SWAP' in run(BODY, 3000, 0, T)[1], False),
    ('未到间隔（1ms）不换', swapped_two_frames(BODY, 3000), False),
    ('恰好到间隔 ⇒ 换', 'SWAP' in run(BODY, 3000, T - 3000, T)[1], True),
    ('超过间隔 ⇒ 换', 'SWAP' in run(BODY, 3000, T - 9000, T)[1], True),
]
ok = 0
for name, got, exp in table:
    good = (got == exp); ok += good
    print('%s %-22s 换图=%s' % ('✅' if good else '❌', name, got))

muts = [
    ('if-lez→if-ltz（关闭失效）', BODY.replace('if-lez v0, :lrt_ret', 'if-ltz v0, :lrt_ret')),
    ('if-ltz→if-eqz（恰好到不换）', BODY.replace('if-ltz v0, :lrt_ret', 'if-eqz v0, :lrt_ret')),
    ('if-nez→if-eqz（首图立即被换）', BODY.replace('if-nez v0, :lrt_chk', 'if-eqz v0, :lrt_chk')),
]
caught = 0
for label, mb in muts:
    if mb == BODY:
        print('⚠️ 负样本未命中（文本未变）:', label); continue
    bad = swapped_two_frames(mb, 0) or (not ('SWAP' in run(mb, 3000, T - 3000, T)[1])) or swapped_two_frames(mb, 3000)
    caught += bad
    print('%s 负样本: %s' % ('✅被抓' if bad else '❌漏抓', label))

print('== 门禁 122：真值表 %d/5，负样本 %d/3 ⇒ %s ==' % (ok, caught, 'PASS' if ok == 5 and caught == 3 else 'FAIL'))
print('（极性文本断言：%s）' % all(k in BODY for k in ['if-lez v0, :lrt_ret', 'if-nez v0, :lrt_chk', 'if-ltz v0, :lrt_ret']))
sys.exit(0 if ok == 5 and caught == 3 else 1)