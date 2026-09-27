# -*- coding: utf-8 -*-
"""incr_audit.py —— 「只审增量」的本地确定性审查器（不扫全树、不反编译）

用法：
  python3 incr_audit.py <file.smali> <blkStart> <blkEnd> [<file> <n1> <n2> ...]

对每个「新增块」做 4 项检查（行号 1-based，含首含尾）：
  Q2/Q3 寄存器活性：块内用到的每个寄存器，向前扫首个提及点——
          若为「写」⇒ 该点空闲（OK）；若为「读」⇒ 破坏活值（BAD）。
          再向后扫首个提及点——若为「读」⇒ 我们把它清掉了（BAD）。
  Q4 极性：块内形如 `if-eqz X, :L`，若 [if, L) 之间解引用 X（invoke/iget 接收者）
         ⇒ 极性正确（null 跳过）；若写成 if-nez/if-gtz 等 ⇒ BAD。
  Q5 invoke/move-result：块内 invoke 与其 move-result 之间是否被插入其它指令 ⇒ BAD。
"""
import io, re, sys

RW = {  # 首个寄存器操作数是「写」的 opcode（其余按「读」处理）
    'iget', 'iget-object', 'iget-boolean', 'iget-byte', 'iget-char', 'iget-short', 'iget-wide',
    'sget', 'sget-object', 'sget-boolean', 'sget-byte', 'sget-char', 'sget-short', 'sget-wide',
    'const', 'const/4', 'const/16', 'const/high16', 'const-string', 'const-class', 'const-wide',
    'move', 'move-object', 'move/from16', 'move/16', 'move-result', 'move-result-object',
    'move-result-wide', 'move-exception', 'new-instance', 'new-array', 'array-length',
    'add-int', 'sub-int', 'mul-int', 'div-int', 'rem-int', 'add-int/lit8', 'sub-int/lit8',
    'xor-int', 'and-int', 'or-int', 'shl-int', 'shr-int', 'neg-int', 'not-int',
    'int-to-long', 'long-to-int', 'int-to-float', 'float-to-int', 'aget', 'aget-object',
    'instance-of', 'check-cast', 'cmp-long', 'cmpg-float', 'cmpl-float',
}
ALLREAD = ('invoke-', 'if-', 'iput', 'sput', 'return', 'throw', 'goto', 'cmp')

def ins_op(s):
    return s.split()[0]

def regs(s):
    return re.findall(r'\bv\d+\b', s)

def is_code(line):
    t = line.strip()
    return bool(t) and not t.startswith(('.', '#', ':'))

def locate(path):
    """返回 [(行号, 原文)]，仅代码行"""
    out = []
    for i, line in enumerate(io.open(path, encoding='utf-8', errors='replace'), 1):
        if is_code(line):
            out.append((i, line.strip()))
    return out

def label_line(path, label):
    for i, line in enumerate(io.open(path, encoding='utf-8', errors='replace'), 1):
        if line.strip().startswith(label):
            return i
    return None

LONG_OPS = ('add-long', 'sub-long', 'mul-long', 'div-long', 'rem-long', 'and-long', 'or-long',
            'xor-long', 'shl-long', 'shr-long', 'ushr-long', 'neg-long', 'not-long')

def w_r(op, s):
    """该指令：写的寄存器集合 / 读的寄存器集合（含 -wide 双寄存器建模）"""
    rs = regs(s)
    if not rs:
        return set(), set()
    if op.startswith(ALLREAD) or op.startswith('invoke') or op.startswith('goto'):
        return set(), set(rs)
    w, r = {rs[0]}, set(rs[1:])
    if ('wide' in op) or (op in LONG_OPS):          # 宽指令：dst 占 vN/vN+1 两个
        w.add('v%d' % (int(rs[0][1:]) + 1))
    return w, r

def audit(path, a, b):
    code = locate(path)
    blk = [(n, s) for n, s in code if a <= n <= b]
    bad, ok = [], []
    # ---- Q2/Q3 寄存器活性（正确判据：只有「块内写入」的寄存器才可能破坏活值）----
    bw = set()
    for _, s in blk:
        w, _ = w_r(ins_op(s), s)
        bw |= w
    used = sorted({r for _, s in blk for r in regs(s)}, key=lambda x: int(x[1:]))

    def hits(r):
        """所有「提及 r」的代码行（含宽指令隐含的伙伴寄存器）"""
        out = []
        for n, s in code:
            w, rd = w_r(ins_op(s), s)
            if r in w or r in rd:
                out.append((n, s, w))
        return out

    for r in used:
        H = hits(r)
        prev = [x for x in H if x[0] < a]
        nxt = [x for x in H if x[0] > b]
        if r not in bw:                      # 块内只读 ⇒ 不会破坏任何东西
            if not prev:
                bad.append('    %s: 块内读取但全方法此前未定义 ⇒ **未定义寄存器**' % r)
            else:
                w0 = prev[-1][2]
                ok.append('    %s: 块内只读；值来源＝%s(%d) ⇒ 安全'
                          % (r, '写入' if r in w0 else '读取', prev[-1][0]))
            continue
        # 块内写入 ⇒ 必须确认「块前已死」与「块后不被读」
        if prev:
            w0 = prev[-1][2]
            if r in w0:
                ok.append('    %s: 块前最近提及＝写入(%d) ⇒ 空闲' % (r, prev[-1][0]))
            else:
                ok.append('    %s: 块内写；块前是读取(%d)，其后无读取 ⇒ 视为已死'
                          % (r, prev[-1][0]))
        else:
            ok.append('    %s: 块内写且此前未出现 ⇒ 安全' % r)
        if nxt:
            w1 = nxt[0][2]
            if r not in w1:
                bad.append('    %s: 块写入后 %d 行处仍被读取 ⇒ **清掉了后续要用的值** | %s'
                           % (r, nxt[0][0], nxt[0][1][:70]))
    # ---- Q4 极性 ----
    for n, s in blk:
        m = re.match(r'(if-\w+) (v\d+), (:\S+)', s)
        if not m:
            continue
        op, rg, lb = m.group(1), m.group(2), m.group(3)
        el = label_line(path, lb)
        if el is None:
            bad.append('    %d: %s 的目标标签 %s 不存在' % (n, s, lb))
            continue
        inner = [(x, y) for x, y in code if n < x < el]
        deref = [x for x, y in inner
                 if y.startswith(('invoke-', 'iget', 'iput')) and y.split(',')[-2:].
                 __str__().find(rg) >= 0 or (rg in y and y.startswith(('invoke-', 'iget')))]
        if not deref:
            ok.append('    %d: %s 守卫块内未解引用 %s（普通分支，不判）' % (n, op, rg))
        elif op == 'if-eqz':
            ok.append('    %d: %s 极性正确（%s==0/null ⇒ 跳过解引用块）' % (n, op, rg))
        else:
            bad.append('    %d: **极性可疑** %s （块内解引用 %s，应为 if-eqz）' % (n, s, rg))
    # ---- Q5 invoke / move-result ----
    for idx in range(len(blk) - 1):
        n, s = blk[idx]
        if not ins_op(s).startswith('invoke'):
            continue
        n2, s2 = blk[idx + 1]
        if not s2.startswith('move-result') and '->' not in s2 and not s2.startswith('goto'):
            # 只有当前 invoke 的结果确实被消费时才算真错：向下 1 行内出现 move-result 才说明被插队
            look = [y for _, y in blk[idx + 1:idx + 3] if y.startswith('move-result')]
            if look:
                bad.append('    %d→%d: **invoke 与 move-result 之间被插入指令** | %s' % (n, n2, s2[:60]))
    print('== %s 块 %d-%d：寄存器活性/极性/invoke 检查' % (path.split('/')[-1], a, b))
    for x in ok:
        print(x)
    for x in bad:
        print('  ❌' + x)
    print('   小结：OK=%d  BAD=%d' % (len(ok), len(bad)))
    return len(bad)

if __name__ == '__main__':
    args = sys.argv[1:]
    assert len(args) % 3 == 0 and args, '用法: file start end 三元组成组传入'
    t = 0
    for i in range(0, len(args), 3):
        t += audit(args[i], int(args[i + 1]), int(args[i + 2]))
    print('\n总计 BAD = %d' % t)
