#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_java_stubs.py —— 从 smali 树生成 javac 可用的"游戏类桩"

用途：把逻辑类改成 Java 写时，javac 需要 classpath 上的游戏类；
这些类只有 smali。本脚本按需生成**空体桩**（只保留签名），编成 stubs.jar。

只生成"用到的 + 它们的父类链"，不做全量 5532 类，速度快。

用法：
  python3 tools/gen_java_stubs.py --classes aoc.kingdoms...CFG,... --out /tmp/stubs
"""
import argparse, os, re, subprocess, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SMALI = os.path.join(ROOT, "src", "smali")

CLS_RE = re.compile(r"^\.class\s+([\w\s]*?)L(\S+);", re.M)
SUPER_RE = re.compile(r"^\.super\s+L(\S+);", re.M)
FIELD_RE = re.compile(r"^\.field\s+([\w\s]*?)([\w$]+):(\S+)", re.M)
METH_RE = re.compile(r"^\.method\s+([\w\s]*?)([\w$<>]+)\(([^)]*)\)(\S+)", re.M)

PRIM = {"I": "int", "J": "long", "F": "float", "D": "double", "Z": "boolean",
        "B": "byte", "S": "short", "C": "char", "V": "void"}


KNOWN = set()


def jtype(d):
    """能解析的用真名；树外的库类型（libgdx 等）统一退化成 Object，桩只要编译过即可"""
    if d in PRIM:
        return PRIM[d]
    if d.startswith("["):
        return jtype(d[1:]) + "[]"
    dot = d[1:-1].replace("/", ".")
    if dot.startswith(("java.", "javax.")) or dot in KNOWN:
        return dot
    return "Object"


def find(class_dot):
    p = os.path.join(SMALI, class_dot.replace(".", "/") + ".smali")
    return p if os.path.exists(p) else None


def emit(class_dot):
    p = find(class_dot)
    if not p:
        return None
    t = open(p, encoding="utf-8", errors="replace").read()
    m = CLS_RE.search(t)
    if not m:
        return None
    mods = m.group(1)
    if "interface" in mods:
        return None
    sm = SUPER_RE.search(t)
    sup = jtype("L%s;" % sm.group(1)) if sm else "java.lang.Object"
    if sup.startswith("java."):
        sup = sup
    body = []
    seen_sigs = set()
    for fm in FIELD_RE.finditer(t):
        f = fm.group(2)
        if f == "$assertionsDisabled":
            continue
        body.append("    public static %s %s;" % (jtype(fm.group(3)), f)
                    if "static" in fm.group(1) else "    public %s %s;" % (jtype(fm.group(3)), f))
    for mm in METH_RE.finditer(t):
        name, args, ret = mm.group(2), mm.group(3), mm.group(4)
        if name.startswith("<"):
            continue
        params, i = [], 0
        while i < len(args):
            if args[i] == "L":
                j = args.index(";", i)
                params.append(jtype(args[i:j + 1]))
                i = j + 1
            elif args[i] == "[":
                j = i
                while args[j] == "[":
                    j += 1
                if args[j] == "L":
                    k = args.index(";", j)
                    params.append(jtype(args[i:k + 1]))
                    i = k + 1
                else:
                    params.append(jtype(args[i:j + 1]))
                    i = j + 1
            else:
                params.append(jtype(args[i]))
                i += 1
        rt = jtype(ret)
        # Dalvik 允许"同名同参、仅返回类型不同"的重载（混淆产物常见），Java 不允许 → 保留首个
        key = (name, tuple(params))
        if key in seen_sigs:
            continue
        seen_sigs.add(key)
        static = "static" in mm.group(1)
        decl = "    public %s%s %s(%s)" % ("static " if static else "", rt, name,
                                          ", ".join("p%d" % k for k in range(len(params))))
        sig = "    public %s%s %s(%s)" % ("static " if static else "", rt, name,
                                         ", ".join(a + " p%d" % k for k, a in enumerate(params)))
        if rt == "void":
            body.append(sig + " { }")
        else:
            body.append(sig + " { throw new RuntimeException(\"stub\"); }")
    pkg = class_dot.rsplit(".", 1)[0] if "." in class_dot else ""
    head = ("package %s;\n\n" % pkg) if pkg else ""
    src = head + "public class %s extends %s {\n%s\n}\n" % (
        class_dot.split(".")[-1], sup, "\n".join(body))
    pkg = class_dot.rsplit(".", 1)[0] if "." in class_dot else ""
    return pkg, src


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--classes", required=True)
    ap.add_argument("--out", default="/tmp/jstubs")
    a = ap.parse_args()
    out = a.out
    os.makedirs(out, exist_ok=True)
    names = [c.strip() for c in a.classes.split(",") if c.strip()]
    KNOWN.update(names)
    made = 0
    for c in names:
        r = emit(c)
        if not r:
            print("  ⚠️  跳过（找不到/接口）: %s" % c)
            continue
        pkg, src = r
        d = os.path.join(out, "src", pkg.replace(".", "/"))
        os.makedirs(d, exist_ok=True)
        open(os.path.join(d, c.split(".")[-1] + ".java"), "w", encoding="utf-8").write(src)
        made += 1
    print("  ✅ 生成桩 %d 个 -> %s/src" % (made, out))
    files = []
    for dp, _, fs in os.walk(os.path.join(out, "src")):
        files += [os.path.join(dp, f) for f in fs if f.endswith(".java")]
    if not files:
        return 1
    r = subprocess.run(["javac", "--release", "8", "-nowarn", "-d", os.path.join(out, "cls")] + files,
                       capture_output=True, text=True)
    if r.returncode != 0:
        print(r.stderr[:1500])
        return 1
    print("  ✅ 桩编译通过 -> %s/cls" % out)
    return 0


if __name__ == "__main__":
    sys.exit(main())
