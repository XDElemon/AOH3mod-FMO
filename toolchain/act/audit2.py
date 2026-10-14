# -*- coding: utf-8 -*-
"""audit2.py —— Verifier 风险审计 v2
A/B：全量扫描所有 smali（模式级，绝对规则）
C/D：增量扫描（对比最早 .pre_* 备份的新增/修改行），参数槽数学修正版
用法：
 python3 audit2.py full <dir>             # A/B 全量
 python3 audit2.py inc  <dir>              # 对所有有备份的文件做 C/D（并顺带 A/B 只报新增行）
"""
import sys, os, glob, re, difflib

RE_METHOD = re.compile(r'^\.method\s+(.*)$')
RE_REG = re.compile(r'\.registers\s+(\d+)')

def desc_slots(desc):
    """正确解析方法参数槽数（含数组与对象类型）。desc 形如 (Ljava/lang/String;[FI)V"""
    i = desc.find('(')
    if i < 0:
        return 0
    i += 1
    slots = 0
    while i < len(desc) and desc[i] != ')':
        c = desc[i]
        if c == '[':
            # 数组：跳过一个元素类型，计 1 槽
            j = i + 1
            while j < len(desc) and desc[j] == '[':
                j += 1
            if j < len(desc) and desc[j] == 'L':
                k = desc.find(';', j)
                j = (k + 1) if k >= 0 else j + 1
            else:
                j = j + 1
            slots += 1
            i = j
        elif c == 'L':
            k = desc.find(';', i)
            i = (k + 1) if k >= 0 else i + 1
            slots += 1
        elif c in 'JDL':
            slots += 2; i += 1
        elif c in 'IFBCSZ':
            slots += 1; i += 1
        else:
            i += 1
    return slots

def parse_methods(lines):
    methods = []
    cur = None
    for i, ln in enumerate(lines):
        m = RE_METHOD.match(ln)
        if m:
            cur = {'start': i, 'hdr': ln, 'regs': None, 'end': None}
            methods.append(cur)
            continue
        if cur is not None:
            r = RE_REG.search(ln)
            if r and cur['regs'] is None:
                cur['regs'] = int(r.group(1))
            if ln.strip() == '.end method':
                cur['end'] = i
                cur = None
    out = []
    for m in methods:
        if m['regs'] is None or m['end'] is None:
            continue
        hdr = m['hdr']
        static = ' static ' in hdr
        desc = hdr[hdr.find('('):] if '(' in hdr else ''
        slots = desc_slots(desc)
        if not static:
            slots += 1
        out.append((m['start'] + 1, m['end'], m['regs'], m['regs'] - slots, hdr.strip()))
    return out

RE_ASSIGN = re.compile(
    r'^(const(?:/[a-z0-9]+)?|move(?:/[a-z0-9]+)?|move-result(?:-wide|-object)?|'
    r'iget(?:/[a-z0-9]+)?|sget(?:/[a-z0-9]+)?|new-instance|check-cast|instance-of|move-exception|'
    r'aget(?:/[a-z0-9]+)?|neg-int|not-int|int-to-[a-z]+|long-to-[a-z]+|float-to-[a-z]+|double-to-[a-z]+|'
    r'(?:add|sub|mul|div|rem)-int(?:/lit8|/lit16)?|(?:add|sub|mul|div|rem)-long(?:/lit8)?|'
    r'and-int|or-int|xor-int|shl-int|shr-int|ushr-int|'
    r'add-int/lit8|rsub-int|add-int/lit16|f2i|i2f|f2l|l2f)\s+(v\d+)'
)

def next_real(lines, i, step):
    j = i + step
    while 0 <= j < len(lines):
        s = lines[j].strip()
        if s and not s.startswith('.') and not s.startswith('#'):
            return j
        j += step
    return -1

def check_AB(path, lines, only=None):
    out = []
    for i, ln in enumerate(lines):
        s = ln.strip()
        if not s or s.startswith('.') or s.startswith('#'):
            continue
        if only is not None and i not in only:
            continue
        if s.startswith('instance-of'):
            j = next_real(lines, i, +1)
            if j >= 0 and lines[j].strip().startswith('move-result'):
                out.append("A) %s:%d instance-of 后跟 move-result：%s | %s" % (path, i + 1, s, lines[j].strip()))
        if s.startswith('move-result'):
            j = next_real(lines, i, -1)
            if j >= 0:
                p = lines[j].strip()
                ok_pred = p.startswith('invoke') or p.startswith('filled-new-array')
                if not ok_pred:
                    out.append("B) %s:%d move-result 前非 invoke/filled-new-array：%s | 前=%s" % (path, i + 1, s, p))
    return out

def check_CD(path, lines, added):
    out = []
    meths = parse_methods(lines)
    def method_of(idx):
        for s, e, regs, ps, hdr in meths:
            if s <= idx < e:
                return (regs, ps, hdr)
        return None
    for idx in sorted(added):
        s = lines[idx].strip()
        if not s or s.startswith('.') or s.startswith('#'):
            continue
        m = re.match(r'move-exception\s+v(\d+)', s)
        if m:
            mo = method_of(idx)
            if mo and int(m.group(1)) >= mo[1]:
                out.append("C) %s:%d move-exception 落参数槽 v%s (paramStart=%d)：%s" % (path, idx + 1, m.group(1), mo[1], mo[2]))

        # F) catch 标签后首条指令必须是 move-exception（r6d311→312 血案）
        if s.startswith(':catch') or s.startswith(':catch_'):
            j = idx + 1
            while j < len(lines) and (not lines[j].strip() or lines[j].strip().startswith('.') or lines[j].strip().startswith('#')):
                j += 1
            if j < len(lines) and not lines[j].strip().startswith('move-exception'):
                out.append("F) %s:%d catch 首指令非 move-exception：%s" % (path, idx + 1, lines[j].strip()))

        me = re.match(r'(sget|sput|iget|iput)\s+(?:v\d+|p\d+),\s*.*->[^:]+:Z\s*$', s)
        if me:
            out.append("E) %s:%d Z 字段用了普通 %s（应 -boolean）：%s" % (path, idx + 1, me.group(1), s))
        mm = RE_ASSIGN.match(s)
        if mm:
            r = int(mm.group(2)[1:])
            mo = method_of(idx)
            if mo and r >= mo[1]:
                out.append("D) %s:%d 写参数槽 v%d (paramStart=%d)：%s" % (path, idx + 1, r, mo[1], s))
    return out

def baselines(path):
    d = os.path.dirname(path); b = os.path.basename(path)
    baks = sorted(glob.glob(os.path.join(d, b + '.pre_*')), key=os.path.getmtime)
    return baks[0] if baks else None

def main():
    mode, root = sys.argv[1], sys.argv[2]
    files = [p for p in glob.glob(root + '/**/*.smali', recursive=True) if '.pre_' not in p and not p.endswith('.deleted_')]
    nA = nB = nC = nD = 0
    if mode == 'full':
        for p in files:
            try:
                lines = open(p, encoding='utf-8', errors='replace').read().splitlines()
            except Exception:
                continue
            for f in check_AB(p, lines):
                print(f); nA += 1
        print("==== A/B FINDINGS:", nA)
        return
    # inc
    for p in files:
        bak = baselines(p)
        if not bak:
            continue
        try:
            orig = open(bak, encoding='utf-8', errors='replace').read().splitlines()
            cur = open(p, encoding='utf-8', errors='replace').read().splitlines()
        except Exception:
            continue
        sm = difflib.SequenceMatcher(None, orig, cur, autojunk=False)
        added = set()
        for tag, i1, i2, j1, j2 in sm.get_opcodes():
            if tag in ('insert', 'replace'):
                added.update(range(j1, j2))
        for f in check_AB(p, cur, only=added):
            print(f); nA += 1
        for f in check_CD(p, cur, added):
            if f.startswith('C)'):
                nC += 1
            else:
                nD += 1
            print(f)
    print("==== INC FINDINGS: A=%d B=%d C=%d D=%d" % (nA, 0, nC, nD))

if __name__ == '__main__':
    main()