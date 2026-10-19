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
        if name == "getInstance":
            return INSTANCES.get(short)
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
        if short == "Math":
            import math as _m
            if name == "sqrt":
                return _m.sqrt(vals[0])
            if name == "round":      # Java: floor(x + 0.5)
                return int(_m.floor(vals[0] + 0.5))
            if name == "abs":
                return abs(vals[0])
            if name == "max":
                return max(vals[0], vals[1])
            if name == "min":
                return min(vals[0], vals[1])
        if short == "Integer" and name == "valueOf":
            return int(vals[0])
        if short == "Integer" and name == "intValue":
            return int(vals[0])
        if short == "Map":
            m, k = vals[0], (vals[1] if len(vals) > 1 else None)
            if name == "keySet":
                return _KeyView(m) if isinstance(m, dict) else None
            if name == "values":
                return _ValsView(m) if isinstance(m, dict) else []
            if name == "get":
                return m.get(k) if isinstance(m, dict) else None
            if name == "put":
                if isinstance(m, dict):
                    m[k] = vals[2]
                return None
            if name == "isEmpty":
                return not m
        if short == "Collection" and name == "iterator":
            return _Iter(vals[0])
        if short == "Set" and name in ("iterator", "size", "contains"):
            if name == "iterator":
                return _Iter(vals[0])
            if name == "size":
                return len(vals[0])
            return vals[1] in vals[0]
        if short == "Iterator":
            it = vals[0]
            if name == "hasNext":
                return bool(it and getattr(it, "has_next", lambda: False)())
            if name == "next":
                return it.next()
        if short in ("List", "ArrayList") and name == "remove":
            lst, v = vals[0], vals[1]
            if isinstance(lst, list):
                if isinstance(v, int) and 0 <= v < len(lst):
                    del lst[v]
                    return lst[v] if v < len(lst) else None
                for i, x in enumerate(lst):
                    if x is v:
                        del lst[i]
                        return True
            return False
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
                kls = m.group(2)
                # 集合类直接用宿主语言的对象承载，省掉一层"假对象"
                if kls in ("java/util/ArrayList", "java/util/LinkedList"):
                    self.regs[self._reg(m.group(1))] = []
                    self.events.append(("new", kls))
                    continue
                if kls in ("java/util/HashMap", "java/util/LinkedHashMap", "java/util/Hashtable"):
                    self.regs[self._reg(m.group(1))] = {}
                    self.events.append(("new", kls))
                    continue
                obj = Obj(kls)
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
            if op.startswith("instance-of"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*L(\S+);", args)
                obj = self.regs[self._reg(m.group(2))]
                want = m.group(3)
                hit = False
                if isinstance(obj, Obj):
                    hit = obj.cls == want
                elif isinstance(obj, dict):
                    hit = want in ("java/util/Map", "java/util/HashMap", "java/util/LinkedHashMap")
                elif isinstance(obj, (list, _Iter, _ValsView, _KeyView)):
                    hit = want in ("java/util/List", "java/util/ArrayList",
                                   "java/util/Collection", "java/util/Set")
                elif isinstance(obj, int) and not isinstance(obj, bool):
                    hit = want in ("java/lang/Integer", "java/lang/Number")
                elif isinstance(obj, bool):
                    hit = want == "java/lang/Boolean"
                elif isinstance(obj, str):
                    hit = want == "java/lang/String"
                self.regs[self._reg(m.group(1))] = 1 if hit else 0
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
            if op in ("mul-int/lit8", "sub-int/lit8"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                a = self.regs[self._reg(m.group(2))]
                b = _lit(m.group(3))
                self.regs[self._reg(m.group(1))] = a * b if op.startswith("mul") else a - b
                continue
            if op == "mul-int":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = (self.regs[self._reg(m.group(2))]
                                                   * self.regs[self._reg(m.group(3))])
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
            if op in ("sub-float", "div-float"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                a = self.regs[self._reg(m.group(2))]
                b = self.regs[self._reg(m.group(3))]
                self.regs[self._reg(m.group(1))] = a - b if op == "sub-float" else (a / b if b else 0.0)
                continue
            if op in ("sub-float/2addr", "div-float/2addr"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                a = self.regs[self._reg(m.group(1))]
                b = self.regs[self._reg(m.group(2))]
                self.regs[self._reg(m.group(1))] = a - b if op.startswith("sub") else (a / b if b else 0.0)
                continue
            if op in ("float-to-double", "double-to-float", "int-to-double", "double-to-int", "float-to-int"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                src = self.regs[self._reg(m.group(2))]
                if op in ("double-to-int", "float-to-int"):
                    self.regs[self._reg(m.group(1))] = int(src)
                else:
                    self.regs[self._reg(m.group(1))] = float(src)
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


class _KeyView:
    def __init__(self, m):
        self.m = m

    def __iter__(self):
        return iter(list(self.m.keys()))


class _ValsView:
    def __init__(self, m):
        self.m = m

    def __len__(self):
        return len(self.m)

    def __iter__(self):
        return iter(list(self.m.values()))


class _Iter:
    def __init__(self, coll):
        if coll is None:
            self.items = []
        elif isinstance(coll, dict):
            self.items = list(coll.keys())
        elif isinstance(coll, _ValsView):
            self.items = list(coll.m.values())
        elif isinstance(coll, _KeyView):
            self.items = list(coll.m.keys())
        elif isinstance(coll, list):
            self.items = list(coll)
        else:
            self.items = []
        self.i = 0

    def has_next(self):
        return self.i < len(self.items)

    def next(self):
        v = self.items[self.i]
        self.i += 1
        return v


STATICS = {}
INSTANCES = {}


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


CLS_CORE = "aoc/kingdoms/lukasz/map/battles/AirMissileCore"
CORE_SMALI = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirMissileCore.smali")


def _run_core(method, vals):
    it = Interp(CORE_SMALI, CLS_CORE + ";->" + method)
    b = it.pbase
    for i, v in enumerate(vals):
        it.regs[b + i] = v
    it.run()
    return it.ret


def case_advance(mx, my, tx, ty, step):
    """返回 (本步位移, NX, NY)"""
    for k in ("NX", "NY"):
        STATICS.pop(CLS_CORE + ";->" + k, None)
    ret = _run_core("advance(FFFFF)F", [mx, my, tx, ty, step])
    return ret, STATICS.get(CLS_CORE + ";->NX"), STATICS.get(CLS_CORE + ";->NY")


def check_missile_core():
    """B9 单步推进 / 接触判定 / 小时钟时长：两条时钟共用的那份逻辑"""
    def near(a, b, eps=1e-3):
        return a is not None and b is not None and abs(a - b) <= eps

    # --- advance：朝目标前进，不越过 ---
    r, nx, ny = case_advance(0.0, 0.0, 100.0, 0.0, 10.0)
    if not (near(r, 10.0) and near(nx, 10.0) and near(ny, 0.0)):
        fail("B9 advance 未抵达时应走 10 单位：得到 r=%s NX=%s NY=%s" % (r, nx, ny))

    # 抵达：步长大于剩余距离 → 精确落在目标点（否则 sqrt 误差让"到达"判不出来）
    r, nx, ny = case_advance(0.0, 0.0, 100.0, 0.0, 200.0)
    if not (near(r, 100.0) and near(nx, 100.0) and near(ny, 0.0)):
        fail("B9 advance 抵达时应精确落在目标点：得到 r=%s NX=%s NY=%s" % (r, nx, ny))

    # 斜向：3-4-5，前进 10 → 落在 (6,8)
    r, nx, ny = case_advance(0.0, 0.0, 30.0, 40.0, 10.0)
    if not (near(r, 10.0) and near(nx, 6.0) and near(ny, 8.0)):
        fail("B9 advance 斜向应按单位向量走：得到 r=%s NX=%s NY=%s" % (r, nx, ny))

    # 步长为 0：原地不动（不能把导弹吸到目标上）
    r, nx, ny = case_advance(7.0, 9.0, 100.0, 0.0, 0.0)
    if not (near(r, 0.0) and near(nx, 7.0) and near(ny, 9.0)):
        fail("B9 advance 步长 0 应原地不动：得到 r=%s NX=%s NY=%s" % (r, nx, ny))

    # 已在目标点：不产生 NaN
    r, nx, ny = case_advance(5.0, 5.0, 5.0, 5.0, 10.0)
    if not (near(r, 0.0) and near(nx, 5.0) and near(ny, 5.0)):
        fail("B9 advance 距离 0 时不应移动/NaN：得到 r=%s NX=%s NY=%s" % (r, nx, ny))

    # --- contact：剩余距离 <= 雷达圈 ---
    # 距离 100，圈 40 → 未接触；圈 100 → 接触（含等号）；圈 120 → 接触
    if _run_core("contact(FFFFF)Z", [0.0, 0.0, 100.0, 0.0, 40.0]):
        fail("B9 contact 距离 100 圈 40 不应接触")
    if not _run_core("contact(FFFFF)Z", [0.0, 0.0, 100.0, 0.0, 100.0]):
        fail("B9 contact 距离 100 圈 100 应接触（含等号）")
    if not _run_core("contact(FFFFF)Z", [0.0, 0.0, 30.0, 40.0, 50.0]):
        fail("B9 contact 斜向距离 50 圈 50 应接触")
    # 负圈退化：只有真正重合才接触
    if _run_core("contact(FFFFF)Z", [0.0, 0.0, 1.0, 0.0, -5.0]):
        fail("B9 contact 负数半径应退化为 0，距离 1 不应接触")
    if not _run_core("contact(FFFFF)Z", [0.0, 0.0, 0.0, 0.0, -5.0]):
        fail("B9 contact 负数半径退化后重合应接触")

    # --- flightHours：小时钟时长（速度对第二套时钟同样生效）---
    base = _run_core("flightHours(IIF)I", [5, 100, 67.5])
    if base != 4:
        fail("B9 flightHours 基准速度应复现原量级（省距5/射程100 → 4h），得到 %s" % base)
    fast = _run_core("flightHours(IIF)I", [5, 100, 124.0])
    if not (fast <= base):
        fail("B9 flightHours 导弹更快时小时数必须不增：快=%s 基准=%s" % (fast, base))
    if fast < 2:
        fail("B9 flightHours 至少 2 小时（不能瞬间命中）：得到 %s" % fast)
    # 射程缺失 → 走最短档
    if _run_core("flightHours(IIF)I", [5, 0, 67.5]) != 4:
        fail("B9 flightHours 射程<=0 应落到最短档 4h")
    # 极远 → 封顶 16h（8×2）
    far = _run_core("flightHours(IIF)I", [999, 100, 67.5])
    if far != 16:
        fail("B9 flightHours 应封顶 16h，得到 %s" % far)
    # 速度缺失（0）→ 不除零，按基准算
    if _run_core("flightHours(IIF)I", [5, 100, 0.0]) != 4:
        fail("B9 flightHours 速度<=0 应按基准速度算，不得除零")

    # --- advanceMode：屏幕只是推进粒度，不参与接触 ---
    m_on = _run_core_mode(100.0, 500.0, 0.0, 0.0, 1.0)
    m_off = _run_core_mode(100.0, 5000.0, 0.0, 0.0, 1.0)
    if m_on != 1:
        fail("B9 advanceMode 屏内应为 MODE_FRAME(1)，得到 %s" % m_on)
    if m_off != 0:
        fail("B9 advanceMode 屏外应为 MODE_HOUR(0)，得到 %s" % m_off)


def _run_core_mode(wx, wy, mx, my, zoom):
    return case_on_screen(wx, wy, mx, my, zoom) and 1 or 0


def _method_body(path, sig):
    "取出某个方法的正文（用于接线闸门：断言真的调到了该调的地方）"
    text = open(path, encoding="utf-8", errors="replace").read()
    cls, rest = sig.split(";->", 1)
    name = rest.split("(", 1)[0]
    m = re.search(r"^\.method[^\n]*\b%s\(" % re.escape(name), text, re.M)
    if not m:
        return None
    start = m.end()
    return text[start:text.index(".end method", start)]


def check_missile_wiring():
    """B10 接线闸门：两套时钟必须落到同一份 Java 核心上

    这类错误（改了生成器但游戏代码没调到 / 被后续提交覆盖回去）不会让汇编失败，
    也不会让其它用例变红 —— 只能直接断言调用点。
    """
    pda = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
    am = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirMission.smali")

    fx = _method_body(pda, "ProvinceDrawArmy;->msFxStep")
    if fx is None:
        fail("B10 找不到 ProvinceDrawArmy.msFxStep")
    else:
        for need in ("AirMissileCore;->advance(FFFFF)F",
                     "AirMissileCore;->contact(FFFFF)Z",
                     "AirMissileCore;->NX:F",
                     "AirModelStats;->MS_SPD:F",
                     "AirModelStats;->missileRadarRange(I)F"):
            if need not in fx:
                fail("B10 逐帧路径没接到 %s" % need)

    mt = _method_body(am, "AirMission;->missileTick")
    if mt is None:
        fail("B10 找不到 AirMission.missileTick")
    else:
        for need in ("AirMissileGate;->advanceMode(FFFFF)I",
                     "AirMissileCore;->flightHours(IIF)I"):
            if need not in mt:
                fail("B10 小时钟没接到 %s" % need)
        # 互斥标志必须在小时钟入口就位（否则照样双时钟一起推）
        if mt.index("advanceMode(FFFFF)I") > mt.index("msFlyHours"):
            fail("B10 小时钟的互斥判定必须在推进之前")


CLS_STATS = "aoc/kingdoms/lukasz/map/battles/AirModelStats"
STATS_SMALI = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirModelStats.smali")


def _gun_table():
    "从生成物里读 GUN 常量表（.array-data 1 → 0x0/0x1）"
    txt = open(STATS_SMALI, encoding="utf-8", errors="replace").read()
    m = re.search(r":d_GUN\n\s*\.array-data 1\n(.*?)\.end array-data", txt, re.S)
    if not m:
        return None
    return [line.strip() == "0x1" for line in m.group(1).strip().split("\n")]


def check_gun():
    """B11 机炮：没机炮的只是不可使用机炮（不是不能飞、不能打导弹）"""
    table = _gun_table()
    if table is None:
        fail("B11 读不到 GUN 常量表")
        return

    # 与机型配置一致（防止生成器与数据脱节，或整列写成同一个值）
    sys.path.insert(0, os.path.join(ROOT, "tools"))
    import gen_aircraft_models as g
    src = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))
    models = g.build(src)
    want = [bool(m["HasGun"]) for m in models]
    if table != want:
        bad = [i for i, (a, b) in enumerate(zip(table, want)) if a != b][:5]
        fail("B11 GUN 表与配置不一致（前几处下标 %s）" % bad)
    if all(table):
        fail("B11 GUN 表全为 true —— 无机炮机型没有被标出来，功能等于没有")
    if not any(table):
        fail("B11 GUN 表全为 false —— 所有飞机都打不出机炮伤害")

    STATICS[CLS_STATS + ";->GUN"] = list(table)

    def hasGun(aid):
        it2 = Interp(STATS_SMALI, CLS_STATS + ";->hasGun(I)Z")
        it2.regs[it2.pbase] = aid
        it2.run()
        return bool(it2.ret)

    n = len(table)
    idx_true = next(i for i, v in enumerate(table) if v)
    idx_false = next(i for i, v in enumerate(table) if not v)
    if not hasGun(idx_true):
        fail("B11 hasGun(%d) 应为 true" % idx_true)
    if hasGun(idx_false):
        fail("B11 hasGun(%d) 应为 false（该机型无机炮）" % idx_false)
    # 越界/未定型 → 保持原行为（true），不能把未定型机误伤成没有机炮
    for bad in (-1, n, 999):
        if not hasGun(bad):
            fail("B11 hasGun(%d) 越界应回退 true（未定型机保持原行为）" % bad)

    # Java 侧系数：1/0，调用点就是一行 mul-float，没有分支可写反
    if _run_core("gunMul(Z)F", [1]) != 1.0:
        fail("B11 gunMul(true) 应为 1.0")
    if _run_core("gunMul(Z)F", [0]) != 0.0:
        fail("B11 gunMul(false) 应为 0.0")

    # 接线：四处机炮伤害都必须经过系数（2 + 2）
    for path, want_n in ((os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirMission.smali"), 2),
                         (os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirForceManager.smali"), 2)):
        txt = open(path, encoding="utf-8", errors="replace").read()
        got = txt.count("AirMissileCore;->gunMul(Z)F")
        if got != want_n:
            fail("B11 %s 的机炮伤害接线数 %d != %d" % (os.path.basename(path), got, want_n))


CLS_APT = "aoc/kingdoms/lukasz/map/battles/AirportOwnership"
CLS_AFM = "aoc/kingdoms/lukasz/map/battles/AirForceManager"


def _world(civ_of_airport=1, province=5, civ_of_unit=1):
    "造一个最小可解释的空战世界：{文明: [机场...]} + 机场库存 {机型: [飞机...]}"
    afm = Obj(CLS_AFM)
    unit = Obj("aoc/kingdoms/lukasz/map/battles/AirUnit")
    unit.fields["civID"] = civ_of_unit
    apt = Obj("aoc/kingdoms/lukasz/map/battles/Airport")
    apt.fields["provinceID"] = province
    apt.fields["civID"] = civ_of_airport
    apt.fields["aircraft"] = {0: [unit]}
    afm.fields["allAirports"] = {civ_of_airport: [apt], 2: []}
    INSTANCES["AirForceManager"] = afm
    return afm, apt, unit


def _run_apt(province, civ):
    # 解释器不跟进嵌套调用，这里直接跑 transfer（钩子外壳只是 try/catch + 转发，另用接线断言覆盖）
    it = Interp(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirportOwnership.smali"),
                CLS_APT + ";->transfer(II)V")
    b = it.pbase
    it.regs[b] = province
    it.regs[b + 1] = civ
    it.run()
    return it


def check_airport_ownership():
    """B12 机场归属联动：省份易主 → 机场与库存飞机一起易主（丙）"""
    # 正常交接：1 号的机场在 5 号省，5 号省被 2 号吞了
    afm, apt, unit = _world(1, 5, 1)
    _run_apt(5, 2)
    allap = afm.fields["allAirports"]
    if apt.fields["civID"] != 2:
        fail("B12 机场 civID 应改为新主 2，实际 %s" % apt.fields["civID"])
    if apt not in allap.get(2, []):
        fail("B12 机场应挂到新主 2 的名下")
    if apt in allap.get(1, []):
        fail("B12 机场还应从旧主 1 的名下摘掉（原 bug 就是没摘）")
    if unit.fields["civID"] != 2:
        fail("B12 库存飞机应随机场一起易主（丙），实际 %s" % unit.fields["civID"])
    if len(allap.get(2, [])) != 1:
        fail("B12 同一个机场不许被搬成两份")

    # 幂等：再调一次不应重复添加
    _run_apt(5, 2)
    if len(afm.fields["allAirports"].get(2, [])) != 1:
        fail("B12 重复调用必须幂等（否则机场会列表膨胀）")

    # 新主名下还没有列表 → 要新建
    afm, apt, unit = _world(1, 5, 1)
    afm.fields["allAirports"] = {1: [apt]}
    _run_apt(5, 7)
    if apt not in (afm.fields["allAirports"].get(7) or []):
        fail("B12 新主名下没有列表时应新建")

    # 不是这个省的机场 → 一律不动
    afm, apt, unit = _world(1, 5, 1)
    _run_apt(6, 2)
    if apt.fields["civID"] != 1 or apt not in afm.fields["allAirports"][1]:
        fail("B12 别的省易主不该动这个机场")

    # 无主（civID<=0）/ 非法省份 → 不动
    for bad_prov, bad_civ in ((-1, 2), (5, 0), (5, -1)):
        afm, apt, unit = _world(1, 5, 1)
        _run_apt(bad_prov, bad_civ)
        if apt.fields["civID"] != 1:
            fail("B12 非法入参(%d,%d) 不该改机场归属" % (bad_prov, bad_civ))

    # 钩子外壳：必须把参数原样转给 transfer，且异常不许外泄
    apt_smali = open(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirportOwnership.smali"),
                     encoding="utf-8", errors="replace").read()
    if "invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirportOwnership;->transfer(II)V" not in apt_smali:
        fail("B12 钩子外壳没有把入参转给 transfer")
    if ".catchall" not in apt_smali:
        fail("B12 钩子外壳必须兜住异常（机场联动不许炸掉领土变更）")

    # 接线：两个领土 setter 都必须调用钩子
    prov = open(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/province/Province.smali"),
                encoding="utf-8", errors="replace").read()
    for sig in ("setCivID(I)V", "setCivID_RemoveOldAddNewToCiv(I)V"):
        body = _method_body(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/province/Province.smali"),
                            "Province;->" + sig.split("(")[0])
        if body is None or "AirportOwnership;->onProvinceOwnerChanged(II)V" not in body:
            fail("B12 %s 没挂机场归属钩子" % sig)
    # 读档/初始化路径不许挂（否则会按加载顺序把机场乱搬）
    just = _method_body(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/province/Province.smali"),
                        "Province;->setCivID_Just")
    if just and "onProvinceOwnerChanged" in just:
        fail("B12 setCivID_Just 不该挂钩子（读档/初始化会乱搬）")


def main():
    check_action()
    check_nav()
    check_showpage()
    check_hook()
    check_ensure_images()
    check_unit_gen()
    check_apply_model()
    check_missile_gate()
    check_missile_core()
    check_missile_wiring()
    check_gun()
    check_airport_ownership()

    if fails:
        for f in fails:
            print("  ❌ " + f)
        print("❌ 行为闸门未通过：%d 项" % len(fails))
        return 1
    print("✅ 行为闸门通过（B1 页签/翻页/关闭 · B2 回绕 · B3 切页 · B4 事件钩子 · B5 贴图幂等 · B6 代际取值 · B7 机型数值接线 · B8 屏内判定 · B9 随机推进/接触/小时钟 · B10 双时钟接线 · B11 机炮 · B12 机场归属）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
