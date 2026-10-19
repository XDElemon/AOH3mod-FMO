#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""lint_verifier.py —— 轻量校验器闸门：抓"寄存器被写成非引用类型后又被当对象用"

为什么要有它：
  smali 汇编器**不做校验**，d8 也不会跑 ART 的校验器。于是
  `iget v2, p0, X;->maxHp:F`（p0 恰好就是 v2）把参数寄存器覆盖成 float，
  紧接着 `iput v2, p0` 的写法能一路打包签名为止，直到装机启动才
  `VerifyError: instance field access on object that has non-reference type Float`
  —— 真机直接闪退，还以为是游戏坏了。

范围：只做**直线段**内的类型追踪，遇到标签就清空已知表。
      因此**只会漏、不会误报**（ART 的验证器做完整数据流合并，比我们严）。

用法：
  python3 tools/lint_verifier.py                             # 扫全树
  python3 tools/lint_verifier.py 文件1.smali 文件2.smali      # 扫指定文件
退出码：发现问题返回 1。
"""
import glob
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SMALI = os.path.join(ROOT, "src", "smali")

NONREF = {"F": "float", "D": "wide", "J": "wide",
          "I": "int", "Z": "int", "B": "int", "S": "int", "C": "int"}


def type_of_desc(desc):
    d = desc.strip()
    if d and len(d) == 1 and d in NONREF:
        return NONREF[d]
    return "ref"


def param_slots(params):
    n, i = 0, 0
    while i < len(params):
        c = params[i]
        if c == "L":
            i = params.index(";", i) + 1
            n += 1
        elif c == "[":
            j = i
            while params[j] == "[":
                j += 1
            i = (params.index(";", j) + 1) if params[j] == "L" else (j + 1)
            n += 1
        else:
            n += 2 if c in "JD" else 1
            i += 1
    return n


def regs_in(txt):
    return [int(x) for x in re.findall(r"v(\d+)", txt)]


def straight_runs(body):
    out, cur = [], []
    for ln in body.split("\n"):
        if re.fullmatch(r":\w+", ln.strip()):
            cur.append(ln)
            out.append(cur)
            cur = []
        else:
            cur.append(ln)
    if cur:
        out.append(cur)
    return out


def check_method(fname, mname, body_lines):
    errs = []
    hdr = body_lines[0]
    pm = re.search(r"\(([^)]*)\)(\S+)\s*$", hdr)
    if not pm:
        return errs
    params, retdesc = pm.group(1), pm.group(2)
    nparam = param_slots(params) + (0 if " static " in (" " + hdr + " ") else 1)

    nregs = None
    for ln in body_lines[1:]:
        m = re.match(r"\.(registers|locals)\s+(\d+)", ln.strip())
        if m:
            nregs = int(m.group(2)) + (0 if m.group(1) == "registers" else nparam)
            break
    if nregs is None:
        return errs

    pbase = nregs - nparam

    def p2v(txt):
        # smali 里 p 与 v 混用；校验器只认 v，先归一
        return re.sub(r"\bp(\d+)\b", lambda mm: "v%d" % (pbase + int(mm.group(1))), txt)

    for run in straight_runs("\n".join(body_lines[1:])):
        kind = {}
        invoke_ret = None
        for ln in run:
            s = p2v(ln.strip())
            if not s or s.startswith((".", "#")) or re.fullmatch(r":\w+", s):
                continue
            op = s.split(None, 1)[0]
            args = s[len(op):].strip()

            # ---------- 1. 找出"被当对象/数组用"的寄存器 ----------
            # 注意：args 里**不含助记符**，所以这里按 op 分派，不要拿 op 名去 match args
            used = []
            two = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
            one = re.match(r"(v\d+)", args)
            if op.startswith("sget") and one:
                # 静态字段只有一个寄存器（没有对象操作数）
                kind[int(one.group(1)[1:])] = "ref" if op.endswith("-object") \
                    else type_of_desc(args.split(":")[-1])
            elif op.startswith("iget") and two:
                dst, obj = int(two.group(1)[1:]), int(two.group(2)[1:])
                kind[dst] = "ref" if op.endswith("-object") else type_of_desc(args.split(":")[-1])
                if obj != dst:          # dst == obj 是合法的"先读后写"
                    used.append(obj)
            elif op.startswith("iput") and two:
                used.append(int(two.group(2)[1:]))
            elif op == "array-length" and two:
                used.append(int(two.group(2)[1:]))
            elif op.startswith("aget") and two:
                dst, arr = int(two.group(1)[1:]), int(two.group(2)[1:])
                if arr != dst:          # aget v0, v0, v1 合法：先读数组再写结果
                    used.append(arr)
                kind[dst] = "ref" if op == "aget-object" else "int"
            elif op.startswith("aput") and two:
                used.append(int(two.group(2)[1:]))
            elif op == "instance-of" and two:
                used.append(int(two.group(2)[1:]))
            elif op == "throw" and one:
                used.append(int(one.group(1)[1:]))
            elif op == "check-cast" and one:
                used.append(int(one.group(1)[1:]))
                kind[int(one.group(1)[1:])] = "ref"

            m = re.match(r"\{([^{}]*)\}", args)
            if m and op.startswith("invoke") and not op.startswith("invoke-static"):
                regs = regs_in(m.group(1))
                if not regs:
                    rr = re.match(r"\{v(\d+)\s*\.\.\s*v(\d+)\}", m.group(1))
                    if rr:
                        regs = list(range(int(rr.group(1)), int(rr.group(2)) + 1))
                if regs:
                    used.append(regs[0])      # 接收者 = 第一个寄存器

            for r in set(used):
                if kind.get(r, "ref") != "ref":
                    errs.append("%s %s: v%d 已是 %s，仍被当对象用 → %s"
                                % (fname, mname, r, kind[r], s))

            # ---------- 2. 更新类型状态 ----------
            if op.startswith("new-instance") or op.startswith("new-array") \
                    or op.startswith("const-string") or op.startswith("move-object"):
                r = regs_in(args)
                if r:
                    kind[r[0]] = "ref"
            elif op.startswith("move-result"):
                r = regs_in(args)
                if r:
                    kind[r[0]] = ("ref" if op == "move-result-object"
                                  else "wide" if op == "move-result-wide"
                                  else type_of_desc((invoke_ret or "I").lstrip(")")))
            elif op.startswith("const"):
                r = regs_in(args)
                if r:
                    kind[r[0]] = "int"
            elif op.startswith(("int-to-float", "int-to-double", "float-to-double",
                                "double-to-float", "long-to-float")):
                r = regs_in(args)
                if r:
                    kind[r[0]] = "float"
            elif op.startswith(("add-float", "sub-float", "mul-float", "div-float", "neg-float")):
                r = regs_in(args)
                if r:
                    kind[r[0]] = "float"
            elif op.startswith(("add-int", "sub-int", "mul-int", "div-int", "rem-int",
                                "and-int", "or-int", "xor-int", "shl-int", "shr-int", "ushr-int")):
                r = regs_in(args)
                if r:
                    kind[r[0]] = "int"
            elif op.startswith(("add-double", "sub-double", "mul-double", "div-double")):
                r = regs_in(args)
                if r:
                    kind[r[0]] = "wide"
            elif op.startswith("move"):
                m2 = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                if m2:
                    kind[int(m2.group(1)[1:])] = kind.get(int(m2.group(2)[1:]), "ref")
            elif op.startswith("cmp"):
                r = regs_in(args)
                if r:
                    kind[r[0]] = "int"

            invoke_ret = args.split(")")[-1] if op.startswith("invoke") else None
    return errs


# 只扫"我们手写注入过"的方法：原始游戏代码用 d8/baksmali 产出，不会出这类错，
# 而我们的实现太粗（不合并分支类型）会给游戏原有代码产生大量误报。
MARK = re.compile(r"#.*(r6d\d+|applyModel-wired|TNO)|# 由 tools/")


def check_file(path, force=False):
    txt = open(path, encoding="utf-8", errors="replace").read()
    rel = os.path.relpath(path, ROOT)
    errs = []
    for m in re.finditer(r"^\.method[^\n]*$", txt, re.M):
        hdr = m.group(0).strip()
        nm = re.search(r"([\w$<>]+)\(([^)]*)\)(\S+)$", hdr)
        if not nm:
            continue
        start = m.end()
        end = txt.find(".end method", start)
        if end < 0:
            continue
        body = txt[start:end]
        if not force and not MARK.search(body):
            continue
        errs += check_method(rel, nm.group(1), [hdr] + body.split("\n"))
    return errs


def main():
    args = sys.argv[1:]
    force = "--all" in args
    files = [a for a in args if a != "--all"] or \
        sorted(glob.glob(os.path.join(SMALI, "**", "*.smali"), recursive=True))
    allerr = []
    scanned = 0
    for f in files:
        before = len(allerr)
        allerr += check_file(f, force=force)
        scanned += 1
    if allerr:
        for e in allerr:
            print("  ❌ " + e)
        print("❌ 校验器闸门未通过：%d 处（真机上会 VerifyError 闪退）" % len(allerr))
        return 1
    print("✅ 校验器闸门通过（%d 个文件，只扫带注入标记的方法；--all 可全量粗扫）" % scanned)
    return 0


if __name__ == "__main__":
    sys.exit(main())
