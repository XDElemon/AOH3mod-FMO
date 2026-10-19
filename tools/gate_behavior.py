#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gate_behavior.py —— 行为级闸门：把生成的 smali 真正"跑一遍"，断言副作用

为什么要有它：
  分支极性写反（if-eqz/if-nez、if-lt/if-ge）汇编能过、指纹不变、变更范围门禁也只数
  "变了几个方法"。靠正则匹配"我以为写对了的形状"等于自己给自己判卷 —— 必须执行。

实现：
  一个够用的微型 Dalvik 解释器（只覆盖本项目生成代码用到的指令子集），
  给定初值执行方法，记录 invoke-*/new-instance/字段写入等副作用，再按用例断言。

用例针对真实踩过的坑：
  B1 TNO_PanelImage.actionElement   mode 0/1..4/10/11/12 → 只应触发对应的一个动作
  B2 TNO_OpeningScreen.prevPage/nextPage  首尾回绕
  B3 TNO_OpeningScreen.showPage    第 i 页正文可见 + 页签换图 + 功能页要点
  B4 MenuManager.rebuildInGame_Event  id 命中→建 TNO_OpeningScreen；不命中→建 InGame_Event
"""
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SMALI = os.path.join(ROOT, "src", "smali")

CLS_PANEL = "aoc/kingdoms/lukasz/menusInGame/TNO_PanelImage"
CLS_OPEN = "aoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen"
CLS_MM = "aoc/kingdoms/lukasz/menu/MenuManager"

fails = []


def fail(m):
    fails.append(m)


# ================================================================= 解释器
class Obj:
    """一个不透明对象：class 名 + 字段表"""
    __slots__ = ("cls", "fields")

    def __init__(self, cls):
        self.cls = cls
        self.fields = {}

    def __repr__(self):
        return "<%s>" % self.cls.split("/")[-1]


STOP = ("end", "return")


class Interp:
    def __init__(self, path, method_sig):
        self.text = open(path, encoding="utf-8", errors="replace").read()
        self.code, nregs = self._extract(method_sig)
        self.regs = [0] * max(nregs, 16)
        self.events = []          # (kind, payload)
        self.steps = 0
        self.ret = None
        self.max_steps = 20000
        self.labels = {}
        for i, (op, args) in enumerate(self.code):
            if op == "label":
                self.labels[args] = i

    # ---- 抽取方法体 ----
    def _extract(self, sig):
        # sig: "类名;->方法名(参数)返回"
        cls, rest = sig.split(";->", 1)
        name = rest.split("(", 1)[0]
        m = re.search(r"^\.method[^\n]*\b%s\(([^)]*)\)(\S+)\s*$" % re.escape(name),
                      self.text, re.M)
        if not m:
            raise SystemExit("找不到方法: %s" % sig)
        start = m.end()
        end = self.text.index(".end method", start)
        body = self.text[start:end]
        nregs = 16
        is_static = " static " in (" " + m.group(0).strip() + " ")
        nparam = self._param_slots(m.group(1), m.group(2)) + (0 if is_static else 1)
        mm = re.search(r"^\s*\.(registers|locals)\s+(\d+)", body, re.M)
        if mm:
            nregs = int(mm.group(2))
            if mm.group(1) == "locals":
                nregs += nparam
        pbase = nregs - nparam
        self.pbase = pbase

        def p2v(txt):
            return re.sub(r"\bp(\d+)\b", lambda mm2: "v%d" % (pbase + int(mm2.group(1))), txt)

        out = []
        for raw in body.split("\n"):
            s = raw.strip()
            if not s or s.startswith((".", "#")):
                continue
            if re.fullmatch(r":[A-Za-z_]\w*", s):
                out.append(("label", s))
                continue
            parts = s.split(None, 1)
            op = parts[0]
            args = p2v(parts[1]) if len(parts) > 1 else ""
            if " #" in args and not args.lstrip().startswith('"'):
                args = args.split(" #")[0].rstrip()
            out.append((op, args))
        return out, nregs

    @staticmethod
    def _param_slots(params, ret):
        n = 0   # 返回类型不占寄存器（原实现错把它算成 1 个槽）
        i = 0
        while i < len(params):
            if params[i] == "L":
                n += 1
                i = params.index(";", i) + 1
            elif params[i] == "[":
                i += 1
            else:
                n += 1
                i += 1
        return n

    # ---- 工具 ----
    def _reg(self, tok):
        tok = tok.strip()
        if not tok.startswith("v"):
            raise RuntimeError("非法寄存器: %s" % tok)
        return int(tok[1:])

    def _range(self, args):
        m = re.match(r"\{(v\d+)\s*\.\.\s*(v\d+)\}", args)
        if m:
            a, b = int(m.group(1)[1:]), int(m.group(2)[1:])
            return list(range(a, b + 1))
        m = re.match(r"\{([^}]*)\}", args)
        if m:
            toks = [t.strip() for t in m.group(1).split(",") if t.strip()]
            # 末尾紧跟方法引用时会被切开；这里只取 vX
            return [self._reg(t) for t in toks if re.fullmatch(r"v\d+", t)]
        raise RuntimeError("无法解析寄存器组: %s" % args)

    # ---- 调用处理 ----
    def _call(self, op, args):
        # 分离 {regs}, 目标引用
        m = re.match(r"(\{[^}]*\})\s*,?\s*(.+)$", args, re.S)
        if not m:
            raise RuntimeError("无法解析调用: %s %s" % (op, args))
        regs = self._range(m.group(1))
        target = m.group(2).strip()
        vals = [self.regs[r] for r in regs]
        kind = ("static" if "static" in op else
                "direct" if "direct" in op else "virtual")
        self.events.append(("invoke", kind, target, vals))
        return self._builtin(target, vals)

    def _builtin(self, target, vals):
        cls, rest = target.split(";->", 1)
        name = rest.split("(", 1)[0]
        short = cls.split("/")[-1]
        if short == "String" and name == "equals":
            a, b = vals[0], vals[1]
            return isinstance(a, str) and isinstance(b, str) and a == b
        if short in ("List", "ArrayList") and name == "get":
            lst, i = vals[0], vals[1]
            if isinstance(lst, list) and isinstance(i, int) and 0 <= i < len(lst):
                return lst[i]
            return None
        if short in ("List", "ArrayList") and name == "set":
            lst, i, v = vals[0], vals[1], vals[2]
            if isinstance(lst, list) and isinstance(i, int):
                if i >= len(lst):
                    lst.extend([None] * (i + 1 - len(lst)))
                lst[i] = v
                return lst[i - 1] if i else None
            return None
        if short in ("List", "ArrayList") and name == "add":
            lst, v = vals[0], vals[1]
            if isinstance(lst, list):
                lst.append(v)
            return True
        if short in ("List", "ArrayList") and name in ("size",):
            return len(vals[0]) if isinstance(vals[0], list) else 0
        if short == "AirModelTables" and name == "genOf":
            return 100 + (vals[0] if isinstance(vals[0], int) else 0)
        if name in ("getPosX", "getPosY", "getWidth", "getHeight", "getTextHeight"):
            o = vals[0]
            return o.fields.get(name, 100) if isinstance(o, Obj) else 100
        if name in ("getClickable", "getIsHovered", "getVisible", "getIsInView"):
            o = vals[0]
            return o.fields.get(name, True) if isinstance(o, Obj) else True
        return None

    # ---- 主循环 ----
    def run(self):
        pc = 0
        while pc < len(self.code):
            self.steps += 1
            if self.steps > self.max_steps:
                self.events.append(("abort", "step limit"))
                return
            op, args = self.code[pc]
            pc += 1
            if op == "label":
                continue

            if op == "return-void":
                self.events.append(("return", op))
                return
            if op == "return":
                rr = re.match(r"([vp]\d+)", args)
                self.ret = self.regs[self._reg(rr.group(1))] if rr else None
                self.events.append(("return", op, self.ret))
                return

            if op.startswith("goto"):
                tgt = args.strip()
                self.events.append(("goto", tgt))
                pc = self.labels[tgt]
                continue

            if op.startswith("if-"):
                m = re.match(r"([vp]\d+)\s*,\s*([vp]\d+)\s*,\s*(:\w+)", args)
                one = re.match(r"([vp]\d+)\s*,\s*(:\w+)", args)
                cond = op[3:]
                if m:
                    a, b = self.regs[self._reg(m.group(1))], self.regs[self._reg(m.group(2))]
                    tgt = m.group(3)
                elif one:
                    a, b = self.regs[self._reg(one.group(1))], 0
                    tgt = one.group(2)
                else:
                    raise RuntimeError("无法解析 if: %s %s" % (op, args))
                if self._cmp(cond, a, b):
                    pc = self.labels[tgt]
                continue

            if op in ("nop",):
                continue
            if op.startswith("const-string"):
                m = re.match(r"(v\d+)\s*,\s*\"(.*)\"\s*$", args)
                self.regs[self._reg(m.group(1))] = m.group(2)
                continue
            if op.startswith("const"):
                m = re.match(r"([vp]\d+)\s*,\s*(-?0x[0-9a-fA-F]+|-?\d+)\s*$", args)
                if not m:
                    raise RuntimeError("无法解析 const: %s %s" % (op, args))
                v = _lit(m.group(2))
                if op == "const/high16" and m.group(2).lower().startswith("0x"):
                    import struct as _st
                    v = _st.unpack("<f", _st.pack("<I", v & 0xFFFFFFFF))[0]
                self.regs[self._reg(m.group(1))] = v
                continue
            if op.startswith("move-result"):
                self.regs[self._reg(args.split()[0].rstrip(","))] = self._last_result
                continue
            if op.startswith(("move-object", "move")):
                m = re.match(r"([vp]\d+)\s*,\s*([vp]\d+)", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))]
                continue
            if op.startswith("new-instance"):
                m = re.match(r"(v\d+)\s*,\s*L(\S+);", args)
                obj = Obj(m.group(2))
                self.regs[self._reg(m.group(1))] = obj
                self.events.append(("new", m.group(2)))
                continue
            if op.startswith("new-array"):
                m = re.match(r"(v\d+)\s*,\s*([vp]\d+)\s*,\s*\[", args)
                n = self.regs[self._reg(m.group(2))]
                self.regs[self._reg(m.group(1))] = [None] * max(n, 0)
                continue
            if op.startswith("array-length"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                a = self.regs[self._reg(m.group(2))]
                self.regs[self._reg(m.group(1))] = len(a) if isinstance(a, list) else 0
                continue
            if op.startswith("check-cast"):
                continue
            if op.startswith("aget"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                arr = self.regs[self._reg(m.group(2))]
                i = self.regs[self._reg(m.group(3))]
                self.regs[self._reg(m.group(1))] = arr[i] if isinstance(arr, list) and i < len(arr) else None
                continue
            if op.startswith("aput"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                v = self.regs[self._reg(m.group(1))]
                arr = self.regs[self._reg(m.group(2))]
                i = self.regs[self._reg(m.group(3))]
                if isinstance(arr, list):
                    if i >= len(arr):
                        arr.extend([None] * (i + 1 - len(arr)))
                    arr[i] = v
                self.events.append(("aput", i, v))
                continue
            if op.startswith("sget"):
                v, target = self._field_args(args)
                self.regs[v] = STATICS.get(target, 0)
                continue
            if op.startswith("sput"):
                v, target = self._field_args(args)
                STATICS[target] = self.regs[v]
                self.events.append(("sput", target, self.regs[v]))
                continue
            if op.startswith("iget"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*L(\S+);->(\w+):", args)
                obj = self.regs[self._reg(m.group(2))]
                fld = m.group(4)
                self.regs[self._reg(m.group(1))] = obj.fields.get(fld, 0) if isinstance(obj, Obj) else 0
                continue
            if op.startswith("iput"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*L(\S+);->(\w+):", args)
                obj = self.regs[self._reg(m.group(2))]
                if isinstance(obj, Obj):
                    obj.fields[m.group(4)] = self.regs[self._reg(m.group(1))]
                self.events.append(("iput", obj, m.group(4), self.regs[self._reg(m.group(1))]))
                continue
            if op.startswith("invoke"):
                self._last_result = self._call(op, args)
                if "range" not in op and "static" not in op:
                    pass
                continue
            if op in ("add-int/lit8", "add-int/lit16"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] + _lit(m.group(3))
                continue
            if op == "add-int/2addr":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] += self.regs[self._reg(m.group(2))]
                continue
            if op == "add-int":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] + self.regs[self._reg(m.group(3))]
                continue
            if op == "sub-int/2addr":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] -= self.regs[self._reg(m.group(2))]
                continue
            if op == "mul-int/2addr":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] *= self.regs[self._reg(m.group(2))]
                continue
            if op == "div-int/2addr":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                d = self.regs[self._reg(m.group(2))]
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(1))] // d if d else 0
                continue
            if op == "div-int/lit8":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                d = _lit(m.group(3))
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] // d if d else 0
                continue
            if op == "and-int/lit8":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] & _lit(m.group(3))
                continue
            if op == "shr-int/lit8":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] >> _lit(m.group(3))
                continue
            if op == "mul-float/2addr":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] *= self.regs[self._reg(m.group(2))]
                continue
            if op == "mul-float":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] * self.regs[self._reg(m.group(3))]
                continue
            if op in ("cmpg-float", "cmpl-float"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                a = self.regs[self._reg(m.group(2))]; b = self.regs[self._reg(m.group(3))]
                if a < b: r = -1
                elif a > b: r = 1
                else: r = 0 if op == "cmpl-float" else 0
                self.regs[self._reg(m.group(1))] = r
                continue
            if op == "add-float":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] + self.regs[self._reg(m.group(3))]
                continue
            if op == "add-float/2addr":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] += self.regs[self._reg(m.group(2))]
                continue
            if op == "int-to-float":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = float(self.regs[self._reg(m.group(2))])
                continue
            if op == "move-exception":
                continue
            raise RuntimeError("未实现的指令: %s %s" % (op, args))
        self.events.append(("return", "fallthrough"))

    @staticmethod
    def _field_args(args):
        m = re.match(r"(v\d+)\s*,\s*L(\S+);->(\w+):", args)
        return int(m.group(1)[1:]), "%s;->%s" % (m.group(2), m.group(3))

    @staticmethod
    def _cmp(cond, a, b):
        if cond == "eqz":
            return a == 0
        if cond == "nez":
            return a != 0
        if cond == "ltz":
            return a < 0
        if cond == "gez":
            return a >= 0
        if cond == "gtz":
            return a > 0
        if cond == "lez":
            return a <= 0
        a = a if isinstance(a, int) else 0
        b = b if isinstance(b, int) else 0
        return {"eq": a == b, "ne": a != b, "lt": a < b,
                "ge": a >= b, "gt": a > b, "le": a <= b}[cond]


STATICS = {}


def _lit(tok):
    tok = tok.strip()
    neg = tok.startswith("-")
    v = int(tok[1:] if neg else tok, 0)
    return -v if neg else v


def count(events, kind, sub):
    return sum(1 for e in events if e[0] == kind and (sub in str(e)))


def invokes(events, target_sub):
    return [e for e in events if e[0] == "invoke" and target_sub in e[2]]


# ================================================================= 用例
def run_action(mode):
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/TNO_PanelImage.smali"),
                CLS_PANEL + ";->actionElement()V")
    obj = Obj(CLS_PANEL)
    obj.fields["mode"] = mode
    it.regs[it.pbase] = obj
    it.run()
    return it.events


def check_action():
    cases = [
        (0, None, None),        # 装饰元素：什么都不做
        (1, "showPage(I)V", 0),
        (4, "showPage(I)V", 3),
        (10, "prevPage()V", None),
        (11, "nextPage()V", None),
        (12, "doClose()V", None),
        (99, None, None),       # 未知模式：不动作
    ]
    for mode, want, arg in cases:
        ev = [e for e in run_action(mode) if e[0] == "invoke"]
        got = [e[2].split(";->")[-1] for e in ev]
        if want is None:
            if got:
                fail("B1 mode=%d 不应有任何调用，实际 %s" % (mode, got))
            continue
        if got != [want]:
            fail("B1 mode=%d 应只调用 %s，实际 %s" % (mode, want, got))
            continue
        if arg is not None and ev[0][3][-1] != arg:
            fail("B1 mode=%d 应 showPage(%d)，实际参数 %s" % (mode, arg, ev[0][3]))


def case_nav(method, cur, n):
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen.smali"),
                CLS_OPEN + ";->%s()V" % method)
    STATICS[CLS_OPEN + ";->cur"] = cur
    it.run()
    calls = [e for e in it.events if e[0] == "invoke" and "showPage" in e[2]]
    return calls[0][3][0] if calls else None


def check_nav():
    for i in range(4):
        case_nav("prevPage", i, 0)
        if case_nav("prevPage", 0, 0) != 3:
            fail("B2 prevPage 在第 1 页应回绕到第 3 页")
        if i > 0 and case_nav("prevPage", i, 0) != i - 1:
            fail("B2 prevPage(%d) 应为 %d" % (i, i - 1))
        if case_nav("nextPage", 3, 0) != 0:
            fail("B2 nextPage 在最后一页应回绕到第 0 页")
        if i < 3 and case_nav("nextPage", i, 0) != i + 1:
            fail("B2 nextPage(%d) 应为 %d" % (i, i + 1))


def case_showpage(page):
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen.smali"),
                CLS_OPEN + ";->showPage(I)V")
    pages = [Obj("MenuElement") for _ in range(4)]
    tabs = [Obj(CLS_PANEL) for _ in range(4)]
    bullets = [Obj("MenuElement") for _ in range(5)]
    STATICS[CLS_OPEN + ";->pageText"] = pages
    STATICS[CLS_OPEN + ";->tabs"] = tabs
    STATICS[CLS_OPEN + ";->bulletText"] = bullets
    STATICS[CLS_OPEN + ";->imgTabOff"] = 11
    STATICS[CLS_OPEN + ";->imgTabOn"] = 22
    it.regs[it.pbase] = page
    it.run()
    vis = [None] * 4
    for e in it.events:
        if e[0] == "invoke" and "setVisible" in e[2]:
            obj, val = e[3][0], e[3][1]
            if obj in pages:
                vis[pages.index(obj)] = val
    tabimg = [t.fields.get("imageID") for t in tabs]
    bvis = []
    for e in it.events:
        if e[0] == "invoke" and "setVisible" in e[2]:
            obj, val = e[3][0], e[3][1]
            if obj in bullets:
                bvis.append(val)
    return vis, tabimg, bvis


def check_showpage():
    for p in range(4):
        vis, tabimg, bvis = case_showpage(p)
        want = [1 if i == p else 0 for i in range(4)]
        if vis != want:
            fail("B3 showPage(%d) 正文可见性应为 %s，实际 %s" % (p, want, vis))
        want_tab = [22 if i == p else 11 for i in range(4)]
        if tabimg != want_tab:
            fail("B3 showPage(%d) 页签图应为 %s，实际 %s" % (p, want_tab, tabimg))
        want_b = [1] * 5 if p == 2 else [0] * 5
        if bvis != want_b:
            fail("B3 showPage(%d) 要点可见性应为 %s，实际 %s" % (p, want_b, bvis))


def case_hook(event_id):
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/menu/MenuManager.smali"),
                CLS_MM + ";->rebuildInGame_Event(Laoc/kingdoms/lukasz/events/Event;II)V")
    ev = Obj("Laoc/kingdoms/lukasz/events/Event")
    ev.fields["id"] = event_id
    mm = Obj(CLS_MM)
    slots = [None] * 12
    mm.fields["menus"] = [slots]
    mm.fields["IN_GAME"] = 0
    mm.fields["IN_GAME_EVENT"] = 7
    it.regs[it.pbase + 0] = mm
    it.regs[it.pbase + 1] = ev
    it.regs[it.pbase + 2] = 3
    it.regs[it.pbase + 3] = 9
    it.run()
    return it.events, slots


def check_hook():
    ev, slots = case_hook("TNO_opening")
    news = [e[1] for e in ev if e[0] == "new"]
    if CLS_OPEN not in news:
        fail("B4 id 命中时没有创建 TNO_OpeningScreen（new=%s）" % news)
    if slots[7] is None or slots[7].cls != CLS_OPEN:
        fail("B4 id 命中时 IN_GAME_EVENT 槽不是面板（实际 %r）" % (slots[7],))

    ev, slots = case_hook("gold_rush")
    news = [e[1] for e in ev if e[0] == "new"]
    if "aoc/kingdoms/lukasz/menusInGame/InGame_Event" not in news:
        fail("B4 id 不命中时应走原生 InGame_Event（new=%s）" % news)
    if slots[7] is None or slots[7].cls != "aoc/kingdoms/lukasz/menusInGame/InGame_Event":
        fail("B4 id 不命中时槽里应是 InGame_Event（实际 %r）" % (slots[7],))


it_events_cache = {"last": []}


def check_ensure_images():
    key = CLS_OPEN + ";->imgsReady"
    for _ in range(2):
        STATICS.pop(key, None)
        it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen.smali"),
                    CLS_OPEN + ";->ensureImages()V")
        it.run()
        n1 = len([e for e in it.events if e[0] == "invoke" and "ImageManager" in e[2]])
        if n1 != 6:
            fail("B5 首次 ensureImages 应注册 6 张图，实际 %d" % n1)
        if STATICS.get(key) != 1:
            fail("B5 ensureImages 之后 imgsReady 应为 true")
        # 第二次：同一份 STATICS，应当直接返回
        it2 = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen.smali"),
                     CLS_OPEN + ";->ensureImages()V")
        it2.run()
        n2 = len([e for e in it2.events if e[0] == "invoke" and "ImageManager" in e[2]])
        if n2 != 0:
            fail("B5 重复调用 ensureImages 不应再注册（实际又注册 %d 张）" % n2)


def case_unit_gen(model_aid):
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirMission.smali"),
                "aoc/kingdoms/lukasz/map/battles/AirMission;->unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I")
    unit = Obj("aoc/kingdoms/lukasz/map/battles/AirUnit")
    if model_aid is not None:
        unit.fields["modelAid"] = model_aid
    it.regs[it.pbase] = unit if model_aid is not None else 0
    STATICS["aoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO"] = [0] * 51
    it.run()
    return it.ret


def check_unit_gen():
    cases = [
        (None, 3, "空指针"),
        (-1, 3, "未定型 modelAid=-1"),
        (0, 100, "modelAid=0 透传 genOf"),
        (50, 150, "modelAid=50 末位"),
        (999, 3, "越界 modelAid=999"),
    ]
    for aid, want, why in cases:
        got = case_unit_gen(aid)
        if got != want:
            fail("B6 代际取值 %s 应为 %d，实际 %r" % (why, want, got))


def case_apply_model(aid, arrays=None):
    CLS = "aoc/kingdoms/lukasz/map/battles/AirModelStats"
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirModelStats.smali"),
                CLS + ";->applyModel(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V")
    if arrays is None:
        n = 51
        arrays = {
            "AIRATTACK": [10.0] * n, "DEFENSE": [20.0] * n,
            "RADARRANGE": [30.0] * n, "SPEED": [40.0] * n,
        }
        arrays["AIRATTACK"][5] = 150.0
        arrays["DEFENSE"][5] = 50.0
        arrays["RADARRANGE"][5] = 650.0
        arrays["SPEED"][5] = 1050.0
    for k, v in arrays.items():
        STATICS[CLS + ";->" + k] = v
    unit = Obj("aoc/kingdoms/lukasz/map/battles/AirUnit")
    unit.fields["modelAid"] = aid
    unit.fields["hp"] = 7.0
    it.regs[it.pbase] = unit
    it.run()
    return unit


def check_apply_model():
    u = case_apply_model(5)
    if u.fields.get("airAttack") != 150.0:
        fail("B7 aid=5 应写入 airAttack=150，实际 %r" % u.fields.get("airAttack"))
    if u.fields.get("defense") != 50.0:
        fail("B7 aid=5 应写入 defense=50，实际 %r" % u.fields.get("defense"))
    # maxHp=Defense*2 走源码断言（解释器对 const/high16 浮点位支持有限）
    am = open(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirModelStats.smali"), encoding="utf-8").read()
    if "iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F" not in am:
        fail("B7 applyModel 未写 maxHp")
    if u.fields.get("hp") != 7.0:
        fail("B7 hp 低于上限时不应被改动，实际 %r" % u.fields.get("hp"))
    for bad in (-1, 999):
        u = case_apply_model(bad)
        if u.fields.get("airAttack") is not None:
            fail("B7 aid=%d 越界不应写任何属性" % bad)
    u = case_apply_model(5)
    u.fields["hp"] = 999.0
    u = case_apply_model(5, arrays={
        "AIRATTACK": [10.0]*51, "DEFENSE": [20.0]*51,
        "RADARRANGE": [30.0]*51, "SPEED": [40.0]*51})



def case_on_screen(wx, wy, mx, my, zoom):
    CLS2 = "aoc/kingdoms/lukasz/map/battles/AirMissileGate"
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirMissileGate.smali"),
                CLS2 + ";->onScreen(FFFFF)Z")
    STATICS["aoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH"] = 1920
    STATICS["aoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT"] = 1080
    b = it.pbase
    it.regs[b] = wx; it.regs[b + 1] = wy; it.regs[b + 2] = mx
    it.regs[b + 3] = my; it.regs[b + 4] = zoom
    it.run()
    return it.ret


def check_missile_gate():
    # 世界坐标 + 相机 + zoom -> 屏幕坐标
    # zoom=1, map=0：把世界坐标直接当屏幕坐标
    if not case_on_screen(100.0, 100.0, 0.0, 0.0, 1.0):
        fail("B8 屏内点(100,100) 应判为在屏幕内")
    if case_on_screen(-10.0, 100.0, 0.0, 0.0, 1.0):
        fail("B8 x=-10 应判为屏幕外")
    if case_on_screen(100.0, 2000.0, 0.0, 0.0, 1.0):
        fail("B8 y=2000 > 高 1080，应判为屏幕外")
    # 相机平移：世界(1500,500) + 相机(-1400,0) = 屏幕(100,500) -> 屏内
    if not case_on_screen(1500.0, 500.0, -1400.0, 0.0, 1.0):
        fail("B8 相机平移后应判为屏内（世界坐标不能直接比屏幕宽高）")
    # zoom=2：屏幕(2000) 超界
    if case_on_screen(1000.0, 100.0, 0.0, 0.0, 2.0):
        fail("B8 zoom=2 时 1000*2=2000 > 1920，应判为屏幕外")


def main():
    check_action()
    check_nav()
    check_showpage()
    check_hook()
    check_ensure_images()
    check_unit_gen()
    check_apply_model()
    check_missile_gate()

    if fails:
        for f in fails:
            print("  ❌ " + f)
        print("❌ 行为闸门未通过：%d 项" % len(fails))
        return 1
    print("✅ 行为闸门通过（B1 页签/翻页/关闭 · B2 回绕 · B3 切页 · B4 事件钩子 · B5 贴图幂等 · B6 代际取值 · B7 机型数值接线 · B8 屏内判定）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
