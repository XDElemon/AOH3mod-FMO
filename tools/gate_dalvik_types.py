#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B57 Dalvik 原始类型数组操作码检查（v140 真机事故）。

事故经过（2026-10-31 从真机日志坐实）：
  `AirDefCfg.canFire(int)` 对 `boolean[]` 用了 `aget`（0x44，int/float 专用）。
  smali 汇编器照收、d8 照打包、四道闸门全绿，但 ART 校验器在真机上直接判

      java.lang.VerifyError: Verifier rejected class ...AirDefCfg:
        boolean AirDefCfg.canFire(int) failed to verify:
        [0x2] array type Reference: boolean[] incompatible with aget of type Integer

  注意是**整个类被拒**（不是一个方法）：`<clinit>` 永不执行 ⇒ 每次取值都抛
  VerifyError ⇒ `AirDefCfgRt` 全部 catch 成兜底 ⇒ 配置"改了不生效"，而画面上
  因为兜底值恰好等于配置值，**完全看不出来**。

Dalvik 里原始类型数组各有自己的操作码，不许拿 `aget` 一把梭：
    [I / [F  → aget / aput                  （int 与 float 共用同一条）
    [Z       → aget-boolean / aput-boolean  （0x47 / 0x4b）
    [B       → aget-byte    / aput-byte
    [C       → aget-char    / aput-char
    [S       → aget-short   / aput-short
    [J / [D  → aget-wide    / aput-wide
    [L...; / [[... → aget-object / aput-object

本闸门在 src/smali 上做一次轻量寄存器类型跟踪：
  - `sget-object vX, …->F:[Z`、`new-array vX, …, [Z`、`move-object vX, vY` 记录数组类型；
  - 看到 `aget*`/`aput*` 时取出数组寄存器，操作码与类型不匹配 ⇒ 红；
  - 反向也查（`aget-boolean` 用在 `[I` 上同样红）。

判据是"已知类型 + 操作码不匹配"才报；寄存器被别的指令写过就清掉类型，宁可漏不可误报。

用法：
  python3 tools/gate_dalvik_types.py          # 扫 src/smali
  python3 tools/gate_dalvik_types.py --red    # 附带红样本自检（必须变红）
  python3 tools/gate_dalvik_types.py --file X # 只查一个文件
退出码：0 通过 / 1 有违规
"""
import io
import os
import re
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SMALI = os.path.join(ROOT, "src", "smali")

# 操作码 → 允许的数组类型（归一化后：原始类型取前两字符，对象数组 [L / [[）
OP_TYPES = {
    "aget": {"[I", "[F"},
    "aput": {"[I", "[F"},
    "aget-boolean": {"[Z"},
    "aput-boolean": {"[Z"},
    "aget-byte": {"[B"},
    "aput-byte": {"[B"},
    "aget-char": {"[C"},
    "aput-char": {"[C"},
    "aget-short": {"[S"},
    "aput-short": {"[S"},
    "aget-wide": {"[J", "[D"},
    "aput-wide": {"[J", "[D"},
    "aget-object": {"[L", "[["},
    "aput-object": {"[L", "[["},
}

ARRAY_OPS = set(OP_TYPES)

# 会写第一个寄存器的指令前缀（写了就清掉旧类型）
WRITER_PREFIX = (
    "const", "move-result", "move-exception", "iget", "sget", "new-instance",
    "new-array", "array-length", "check-cast", "instance-of", "cmp",
    "add", "sub", "mul", "div", "rem", "and-", "or-", "xor-", "shl", "shr",
    "ushr", "neg", "not-", "int-to", "long-to", "float-to", "double-to",
    "rsub", "shl-", "shr-", "ushr-",
)

RE_REG = r"(?:v|p)\d+"
RE_INST = re.compile(r"^\s*([a-z][a-z0-9/-]*)(?:\s+(.*?))?\s*$")
RE_SGET_OBJ = re.compile(r"^(" + RE_REG + r"),\s*\S+->\w+:(\[.*)$")
RE_NEW_ARRAY = re.compile(r"^(" + RE_REG + r"),\s*" + RE_REG + r",\s*(\[.*)$")
RE_MOVE_OBJ = re.compile(r"^(" + RE_REG + r"),\s*(" + RE_REG + r")$")
RE_LABEL_OR_DIRECTIVE = re.compile(r"^\s*([.:#]|$)")


def norm_type(desc):
    """`[Ljava/lang/String;` → `[L`；`[[I` → `[[`；`[Z` → `[Z`。"""
    if desc.startswith("[["):
        return "[["
    if desc.startswith("[L"):
        return "[L"
    return desc[:2]


def first_reg(operands):
    if not operands:
        return None
    m = re.match(r"\s*(" + RE_REG + r")", operands)
    return m.group(1) if m else None


def scan_file(path, display=None):
    """返回 [(method, lineno, opcode, array_reg, array_type, raw), ...]"""
    name = display or path
    try:
        text = io.open(path, encoding="utf-8", errors="replace").read()
    except Exception as e:
        return [("<io>", 0, "?", "?", "?", "%s 读取失败：%s" % (name, e))]

    hits = []
    lines = text.split("\n")
    in_method = None
    regtype = {}

    for i, raw in enumerate(lines, 1):
        line = raw.split("#")[0].strip()
        if not line:
            continue
        if line.startswith(".method"):
            in_method = line
            regtype = {}
            continue
        if line.startswith(".end method"):
            in_method = None
            regtype = {}
            continue
        if in_method is None or RE_LABEL_OR_DIRECTIVE.match(line):
            continue

        m = RE_INST.match(line)
        if not m:
            continue
        op, rest = m.group(1), (m.group(2) or "")

        # 数组类型来源
        if op == "sget-object":
            mm = RE_SGET_OBJ.match(rest)
            if mm:
                regtype[mm.group(1)] = norm_type(mm.group(2))
                continue
        if op == "new-array":
            mm = RE_NEW_ARRAY.match(rest)
            if mm:
                regtype[mm.group(1)] = norm_type(mm.group(2))
                continue
        if op == "move-object":
            mm = RE_MOVE_OBJ.match(rest)
            if mm:
                dst, src = mm.group(1), mm.group(2)
                if src in regtype:
                    regtype[dst] = regtype[src]
                else:
                    regtype.pop(dst, None)
                continue

        # 数组读写：查类型
        if op in ARRAY_OPS:
            parts = [p.strip() for p in rest.split(",")]
            if len(parts) == 3:
                arr = parts[1]
                t = regtype.get(arr)
                if t is not None and t not in OP_TYPES[op]:
                    hits.append((in_method, i, op, arr, t, line))
                # aget* 会把目标寄存器写成标量/对象：清掉它的旧数组类型，
                # 否则后面复用同一寄存器时会拿陈旧类型误报（原版代码里踩到过）。
                if op.startswith("aget"):
                    regtype.pop(parts[0], None)
            continue

        # 其它写入：清掉目标寄存器的旧类型
        if op.startswith(WRITER_PREFIX) or op.startswith("move"):
            dst = first_reg(rest)
            if dst:
                regtype.pop(dst, None)
            continue

    return hits


def collect(paths):
    all_hits = []
    for p in paths:
        all_hits.extend((p, h) for h in scan_file(p))
    return all_hits


def red_samples():
    """红样本：必须是闸门抓得到的那种错误；绿样本不能被误报。"""
    bad = 0
    fd, bad_path = tempfile.mkstemp(suffix=".smali")
    os.close(fd)
    io.open(bad_path, "w", encoding="utf-8").write("""
.class public Lz/Bad;
.super Ljava/lang/Object;
.field public static F:[Z
.method public static f(I)Z
    .registers 3
    sget-object v0, Lz/Bad;->F:[Z
    aget v1, v0, p0
    return v1
.end method
""")
    fd, good_path = tempfile.mkstemp(suffix=".smali")
    os.close(fd)
    io.open(good_path, "w", encoding="utf-8").write("""
.class public Lz/Good;
.super Ljava/lang/Object;
.field public static F:[Z
.field public static I:[I
.method public static f(I)Z
    .registers 4
    sget-object v0, Lz/Good;->F:[Z
    aget-boolean v1, v0, p0
    sget-object v2, Lz/Good;->I:[I
    aget v3, v2, p0
    return v1
.end method
""")
    if not scan_file(bad_path):
        print("FAIL 红样本没抓到：boolean[] 上的 aget")
        bad += 1
    else:
        print("  red ok  boolean[] + aget → 抓到")
    if scan_file(good_path):
        print("FAIL 绿样本被误报：%s" % scan_file(good_path)[:3])
        bad += 1
    else:
        print("  red ok  正确写法（aget-boolean / aget）→ 不误报")
    os.unlink(bad_path)
    os.unlink(good_path)
    return bad


def main(argv):
    if "--file" in argv:
        paths = [argv[argv.index("--file") + 1]]
    else:
        paths = []
        for dirpath, _, files in os.walk(SMALI):
            for f in files:
                if f.endswith(".smali"):
                    paths.append(os.path.join(dirpath, f))
        paths.sort()

    hits = collect(paths)
    bad = 0
    for path, (method, lineno, op, arr, t, line) in hits[:40]:
        rel = os.path.relpath(path, ROOT)
        print("FAIL %s:%d  %s 用在 %s 上（%s）  ← %s" % (rel, lineno, op, t, arr, line))
        print("     方法：%s" % method)
    if len(hits) > 40:
        print("... 还有 %d 处" % (len(hits) - 40))
    if hits:
        bad += 1

    if "--red" in argv:
        bad += red_samples()

    if bad:
        print("❌ B57 Dalvik 数组操作码：%d 处违规（ART 会判 VerifyError 并拒掉整个类）" % len(hits))
        return 1
    print("✅ B57 Dalvik 数组操作码：%d 个 smali 文件无类型错用" % len(paths))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
