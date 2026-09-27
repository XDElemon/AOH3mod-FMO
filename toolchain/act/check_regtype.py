#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ============================================================
# check_regtype.py —— 新增门禁㉙：寄存器"对象引用 ↔ 数值"混用检查
#
# 为什么需要它（本项目 2026-09-25 r5c046 血案）：
#   我们在 a1Scan 的候选循环里，把一个原本存 AirUnit$AirType（对象引用）的 v3
#   当整数用（存 score），又在 v7（a1Known 数组引用）里塞了常量 0x64。
#   本地 arity / 八件套 / ㉘(invoke-target) / 悬空引用 **全部通过**，
#   装机后 ART 直接 VerifyError 闪退：
#     "register v3 has type Conflict but expected Precise Reference: AirUnit$AirType"
#   ⇒ 根因是**循环回边处两种类型合并**。这类错只有 ART 的 verifier 会抓，静态冒烟抓不到。
#
# 判据（启发式，输出 WARN 供人工确认）：
#   同一方法内，某寄存器既被"数值类"指令写过、又被"对象类"指令写过 ⇒ 报 WARN。
#   若该寄存器在**标签合并点之后**仍被当对象读（保守：只要方法里有 label 就认为可能），
#   就有 VerifyError 风险 ⇒ 建议改用**新寄存器**（提升 .registers）而不是复用。
#
# 用法: python3 check_regtype.py <smali文件> [<smali文件> ...]
# 退出码: 有 WARN 时 1（供 CI 用），无 0
# ============================================================
import re, sys, os

OBJ_WRITE = [
    r'\bmove-result-object\s+(v\d+|p\d+)',
    r'\b(iget|sget)-object\s+(v\d+|p\d+)\s*,',
    r'\bnew-instance\s+(v\d+|p\d+)\s*,',
    r'\bcheck-cast\s+(v\d+|p\d+)\s*,',
    r'\bconst-string(?:/jumbo)?\s+(v\d+|p\d+)\s*,',
    r'\baget-object\s+(v\d+|p\d+)\s*,',
    r'\bnew-array\s+(v\d+|p\d+)\s*,',
]
NUM_WRITE = [
    r'\bmove-result\s+(v\d+|p\d+)',
    r'\bconst(?:/4|/16|/high16|/wide|/wide16|/wide32)?\s+(v\d+|p\d+)\s*,',
    r'\b(iget|sget)(?:-boolean|-byte|-char|-short|-wide)?\s+(v\d+|p\d+)\s*,',
    r'\b(move|move-object|move-wide|move-from16|move-to16)\s+(v\d+|p\d+)\s*,',
    r'\b(add|sub|mul|div|rem|and|or|xor|shl|shr|ushr)-int(?:/2addr|/lit8|/lit16)?\s+(v\d+|p\d+)',
    r'\b(add|sub|mul|div|rem)-float(?:/2addr)?\s+(v\d+|p\d+)',
    r'\b(float|double|int|long|byte|char|short)-to-(float|double|int|long|byte|char|short)\s+(v\d+|p\d+)',
    r'\b(array-length|instance-of)\s+(v\d+|p\d+)',
    r'\baget(?:-boolean|-byte|-char|-short|-wide)?\s+(v\d+|p\d+)\s*,',
    r'\bmove-exception\s+(v\d+|p\d+)',
    r'\bneg-(int|float|long|double)\s+(v\d+|p\d+)',
]
# 「sput-object X,」是把寄存器写进静态字段（读，不是写）⇒ 不参与
SKIP = re.compile(r'\bsput-object\s+v\d+\s*,|\bsput\s+v\d+\s*,')

def regs_of(method_body):
    obj, num, labels = {}, {}, []
    for i, line in enumerate(method_body.splitlines(), 1):
        s = line.strip()
        if not s or s.startswith('#'):
            continue
        if s.startswith(':'):
            labels.append(i); continue
        for pat in OBJ_WRITE:
            m = re.search(pat, s)
            if m:
                r = m.groups()[-1]
                obj.setdefault(r, i)
        for pat in NUM_WRITE:
            m = re.search(pat, s)
            if m:
                r = m.groups()[-1]
                num.setdefault(r, i)
    return obj, num, labels

def main():
    files = sys.argv[1:]
    if not files:
        print('用法: check_regtype.py <smali文件> [...]'); sys.exit(2)
    total = 0
    for f in files:
        if not os.path.isfile(f):
            print('⚠️  跳过（不是文件）:', f); continue
        txt = open(f, encoding='utf-8', errors='replace').read()
        methods = re.findall(r'(\.method[^\n]*\n.*?\n\.end method)', txt, re.S)
        for mb in methods:
            name = mb.split('\n', 1)[0].strip()
            if 'regtype-ok' in mb:
                continue
            obj, num, labels = regs_of(mb)
            hits = []
            for r in set(obj) & set(num):
                a, b = obj[r], num[r]          # 首次对象写 / 首次数值写
                # 危险序：先被当对象，后被当数值，且中间有标签（合并点/循环头）
                if a < b and any(a < L < b for L in labels):
                    hits.append((r, a, b))
            if hits:
                total += len(hits)
                print('WARN %s:%s' % (os.path.basename(f), name))
                for r, a, b in sorted(hits):
                    print('     寄存器 %s：先当对象用(第%d行) 后被数值写(第%d行)，中间有标签合并点 ⇒ ART VerifyError 高危；请改用新寄存器（提升 .registers）' % (r, a, b))
    if total == 0:
        print('✅ REGTYPE OK：未发现"对象→数值"跨合并点的寄存器复用')
        return 0
    print('❌ 共 %d 处高危（历史血案：a1Scan v3/v7 导致 ART VerifyError 闪退）' % total)
    return 1

if __name__ == '__main__':
    sys.exit(main())