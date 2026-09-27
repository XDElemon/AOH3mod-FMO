#!/usr/bin/env python3
# ============================================================
# check_arity.py —— 本地 arity 自检（补八件套的盲区）
# 用途：扫描 smali 树里所有 invoke 的寄存器个数，与"树内声明的"方法签名参数个数比对。
#       专抓 ART 级 VerifyError「expected N argument registers, method signature has M」
#       —— 这类错误八件套（CheckInvoke/CheckRegs/CheckRange）抓不到，只能真机才炸。
# 用法: python3 check_arity.py <smali根目录>
#
# v2（性能修复）：v1 对每个"树外方法"的 invoke 都做一次 decl 全表线性扫描
#   （decl ≈ 13.4 万条），而绝大多数 invoke 都是树外方法（JDK/LibGDX）
#   => ≈ 几十万 × 13 万 次 Python 循环 => 实测 20 分钟。
#   v2 预建 (类,名) -> [参数个数...] 索引，O(1) 查 => 秒级。
#   判据、输出格式与退出码与 v1 完全一致（旧版留档 check_arity.py.slow_bak）。
# ============================================================
import os, re, sys, collections

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
METHOD_RE = re.compile(r'^\.method\s+(?P<mods>.*?)(?P<name>[^\s(]+)\((?P<params>[^)]*)\)')
INVOKE_RE = re.compile(r'^\s*invoke-(?P<kind>static|virtual|direct|super|interface|polymorphic|custom)(?:/range)?\s+\{(?P<regs>[^}]*)\},\s*(?P<cls>L[^;]+;)->(?P<mname>[^\s(]+)\((?P<mparams>[^)]*)\)')


def reg_count(params):
    """J/D 占 2 个寄存器，其余 1 个"""
    n = 0
    i = 0
    while i < len(params):
        c = params[i]
        if c in 'JD':
            n += 2; i += 1
        elif c in 'L':
            n += 1; i = params.index(';', i) + 1
        elif c == '[':
            while i < len(params) and params[i] == '[':
                i += 1
            if i < len(params) and params[i] == 'L':
                i = params.index(';', i) + 1
            else:
                i += 1
            n += 1
        else:
            n += 1; i += 1
    return n


def count_regs(spec):
    spec = spec.strip()
    if '..' in spec:                      # range 形式 {v0 .. v5}
        a, b = [s.strip() for s in spec.split('..')]
        try:
            return abs(int(b.lstrip('vp')) - int(a.lstrip('vp'))) + 1
        except ValueError:
            return -1
    return len([x for x in spec.split(',') if x.strip()])


# 1) 收集树内声明的方法：(类, 名, 参数个数) -> 期望寄存器数；并建 (类,名) 索引
decl = {}
by_class_name = collections.defaultdict(list)
for dirpath, _, files in os.walk(ROOT):
    for fn in files:
        if not fn.endswith('.smali'):
            continue
        p = os.path.join(dirpath, fn)
        cls = 'L' + os.path.relpath(p, ROOT)[:-len('.smali')] + ';'
        for line in open(p, encoding='utf-8', errors='replace'):
            m = METHOD_RE.match(line)
            if m:
                mods = m.group('mods') or ''
                n = reg_count(m.group('params'))
                is_static = 'static' in mods
                decl[(cls, m.group('name'), n)] = n + (0 if is_static else 1)
                by_class_name[(cls, m.group('name'))].append(n)

# 2) 扫描所有 invoke
bad = 0
warn = 0
checked = 0
for dirpath, _, files in os.walk(ROOT):
    for fn in files:
        if not fn.endswith('.smali'):
            continue
        p = os.path.join(dirpath, fn)
        for ln, line in enumerate(open(p, encoding='utf-8', errors='replace'), 1):
            m = INVOKE_RE.match(line)
            if not m:
                continue
            key = (m.group('cls'), m.group('mname'), reg_count(m.group('mparams')))
            expect = decl.get(key)
            if expect is None:
                # 盲区修补：按"类+名"找找看 —— 名字在树内但参数个数对不上 = 引用了一个不存在的方法
                same_name = by_class_name.get((key[0], key[1]))   # v2: O(1)
                if same_name:
                    warn += 1
                    if warn <= 25:
                        print(f'ARITY/SIG WARN(供参考，硬门是八件套 MISSING): {p}:{ln}\n    树内同名方法参数个数={same_name}，但此 invoke 写的是 {key[2]}\n    {line.strip()}')
                continue                     # 树外方法（框架/库）不检查
            got = count_regs(m.group('regs'))
            checked += 1
            if got != expect:
                bad += 1
                if bad <= 25:
                    print(f'ARITY BAD: {p}:{ln}\n    {m.group("cls")}->{m.group("mname")} 期望 {expect} 个寄存器，实际 {got}\n    {line.strip()}')
print(f'ARITY CHECKS: {checked}  BAD: {bad}  WARN: {warn}')
sys.exit(1 if bad else 0)