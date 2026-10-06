#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
check_castorder.py —— 类型流静态检查（专抓 r6d161 那次 VerifyError）

血案：
  Province.updateArmyPosY() 里我插的块跑到了 `check-cast v2, ArmyDivision;` **之前**，
  此时 v2 由 `lArmies.get(i)` 得到（静态类型 Object）⇒
  ART 报：cannot access instance field ArmyDivision.key from object of type Reference: java.lang.Object
  ⇒ 整个 Province 类被 Verifier 拒绝，开局闪退。

规则（启发式，够抓这类错、误报少）：
  维护每个寄存器"上一次被赋予的类型"（type-def）。
    - `invoke-* ...)->Lcls;` + `move-result-object vX`  → vX : cls
    - `move-result-object vX`（返回类型是 Object/未知）      → vX : java.lang.Object
    - `check-cast vX, Lcls;`                              → vX : cls
    - `new-instance vX, Lcls;`                            → vX : cls
    - `iget-object vX, vY, Lcls;->f:Lfoo;`                → vX : foo 的类型
    - `move-object vX, vY`                                → 复制 vY 的类型
    - 其它写 vX（const/move-result int 等）               → vX : 数值（不参与判定）
  遇到字段访问 `iget*/iput*  vA, vB, Lcls;->f` 时：
    - 若 vB 的当前类型是某类 C 且 C != Lcls ⇒ 报「字段访问的类型不符/未先 check-cast」。
      其中 C == java.lang.Object 正是本血案。

用法：python3 check_castorder.py <file.smali> [...]   （打印问题列表；有则 exit 1）
"""
import re
import sys

RE_FIELD = re.compile(r'^\s*(i|s)get(-object)?(-boolean|-byte|-char|-short)?\s+v(\d+),\s*v(\d+),\s*(L[^;]+;)->')
RE_PUTFIELD = re.compile(r'^\s*(i|s)put(-object)?(-boolean|-byte|-char|-short)?\s+v(\d+),\s*v(\d+),\s*(L[^;]+;)->')
RE_CHECKCAST = re.compile(r'^\s*check-cast\s+v(\d+),\s*(L[^;]+);')
RE_NEWINST = re.compile(r'^\s*new-instance\s+v(\d+),\s*(L[^;]+);')
RE_MOVERESOBJ = re.compile(r'^\s*move-result-object\s+v(\d+)')
RE_MOVERES = re.compile(r'^\s*move-result\s+v(\d+)')
RE_MOVEOBJ = re.compile(r'^\s*move-object(?:/from16)?\s+v(\d+),\s*v(\d+)')
RE_INVOKE = re.compile(r'^\s*invoke-\S+.*')
RE_IGETOBJ_DEF = re.compile(r'^\s*iget-object\s+v(\d+),\s*v\d+,\s*L([^;]+);->\w+:(L[^;]+;|\[?\w+)')
RE_METHOD = re.compile(r'^\s*\.method\s+(.*)')


def src_of_descriptor(d):
    d = d.strip()
    if d.startswith('['):
        return 'java.lang.Object'
    if d.startswith('L'):
        return d[1:-1].replace('/', '.')
    return '«num»'


def scan(path):
    issues = []
    cur = '?'
    td = {}          # reg -> (kind, cls, line)
    last_invoke = None
    lines = open(path, encoding='utf-8').read().split('\n')
    for i, ln in enumerate(lines, 1):
        m = RE_METHOD.match(ln)
        if m:
            cur = m.group(1)[:80]
            td = {}
            continue
        if ln.strip().startswith('.end method'):
            continue
        if RE_INVOKE.match(ln):
            last_invoke = ln
            continue
        m = RE_MOVERESOBJ.match(ln)
        if m:
            r = 'v' + m.group(1)
            cls = 'java.lang.Object'
            if last_invoke:
                mm = re.search(r'\)(\S+)$', last_invoke.strip())
                if mm:
                    cls = src_of_descriptor(mm.group(1))
            td[r] = ('cls', cls, i)
            continue
        m = RE_MOVERES.match(ln)
        if m:
            td['v' + m.group(1)] = ('num', None, i)
            continue
        m = RE_CHECKCAST.match(ln)
        if m:
            td['v' + m.group(1)] = ('cls', m.group(2)[1:].replace('/', '.'), i)
            continue
        m = RE_NEWINST.match(ln)
        if m:
            td['v' + m.group(1)] = ('cls', m.group(2)[1:].replace('/', '.'), i)
            continue
        m = RE_IGETOBJ_DEF.match(ln)
        if m:
            td['v' + m.group(1)] = ('cls', src_of_descriptor(m.group(3)), i)
            continue
        m = RE_MOVEOBJ.match(ln)
        if m:
            td['v' + m.group(1)] = td.get('v' + m.group(2), ('unknown', None, i))
            continue
        for rx in (RE_FIELD, RE_PUTFIELD):
            m = rx.match(ln)
            if not m:
                continue
            objreg = 'v' + m.group(5)
            cls = m.group(6)[1:-1].replace('/', '.')
            k = td.get(objreg)
            if k and k[0] == 'cls' and k[1] != cls:
                issues.append((cur, i, objreg, k[1], cls,
                               '第 %d 行把 %s 定成 %s，这里却按 %s 访问字段（疑似缺 check-cast 或顺序颠倒）'
                               % (k[2], objreg, k[1], cls)))
            break
        if ln.strip().startswith(('const', 'move ', 'move/', 'sget', 'move-exception')):
            m2 = re.match(r'^\s*(?:const\S*|move\S*|sget\S*)\s+v(\d+)', ln)
            if m2:
                td['v' + m2.group(1)] = ('num', None, i)
    return issues


def main():
    total = 0
    for p in sys.argv[1:]:
        iss = scan(p)
        print('--- %s：%d 处' % (p, len(iss)))
        for it in iss[:12]:
            print('    [%s] line %d: %s' % (it[0], it[1], it[5]))
        total += len(iss)
    if total:
        print('❌ 共 %d 处类型流可疑点' % total)
        return 1
    print('✅ CASTORDER OK：未发现"未 check-cast 就访问字段"的类型流问题')
    return 0


if __name__ == '__main__':
    sys.exit(main())