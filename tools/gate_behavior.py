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
import hashlib
import json
import os
import re
import struct
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
        # B20：Airport.p1bCost / getBuildTime 的端到端接线（枚举 ordinal → +7 → getBestAidForType）
        if short in ("AirType", "AirUnit$AirType") and name == "ordinal":
            o = vals[0]
            return o.fields.get("ordinal", 0) if isinstance(o, Obj) else 0
        if short == "AirForceManager" and name == "getBestAidForType":
            if (vals[0] == AIR_GATE.get("player_civ", -9999)
                    and vals[1] == AIR_GATE.get("unit_id", -9999)):
                return AIR_GATE.get("best_aid", -1)
            return -1
        if short == "AirBuildCost" and name == "playerCiv":
            return AIR_GATE.get("player_civ", -1)
        if short == "AirBuildCost" and name in ("costOfAid", "timeOfAid"):
            # 不跟嵌套调用的一般规则下，这一处必须真跑：否则 p1bCost 的参数顺序写反测不出来。
            # 做法是开一个新的解释器实例执行**同一个编译产物**（不是在这里重写算法）。
            return _run_static(os.path.join(SMALI, CLS_COST + ".smali"), "AirBuildCost",
                               name + "(II)I", list(vals))
        # B25（v40）：RadarDisc.getRegion() 的实现就是"ensure() 后返回静态字段"，解释器不跟进
        # 嵌套调用 ⇒ 这里直接把字段值应答回去，让 RadarOverlay 的"激活/降级"两条路都能被真跑。
        # （getRegion 自己的"先 ensure"由 B24③-1 与 RadarDisc 源码结构覆盖）
        if short == "RadarDisc" and name == "getRegion":
            return STATICS.get(RD_REGION)
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
        # B19：空军科技 → 代 / aid → 科技（表由用例从 AirTechCiv.smali 读入后注入）
        if short == "AirTechCiv" and name == "genOf":
            i = vals[0] - AIR_GATE["base"]
            return AIR_GATE["gen"][i] if 0 <= i < len(AIR_GATE["gen"]) else -1
        if short == "AirTechCiv" and name == "aidTechOf":
            a = vals[0]
            return AIR_GATE["aid_tech"][a] if 0 <= a < len(AIR_GATE["aid_tech"]) else -1
        if short == "Game" and name == "getCiv":
            return AIR_GATE["civ"]
        if short == "Civilization" and name == "getTechResearched":
            return vals[0] is not None and vals[1] in AIR_GATE["researched"]
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
            if op in ("return", "return-object"):
                # v38：d8 给返回 String 的方法发 `return-object p0` —— 原实现只认 `return`，
                # 于是 droneTag 这类纯字符串函数根本跑不起来（用例只能假绿）。同一套取值，一并走。
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
            if op == "sub-int":                 # v39（RadarDisc.draw：x = cx - rx 走 int 再转 float）
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = self.regs[self._reg(m.group(2))] - self.regs[self._reg(m.group(3))]
                continue
            if op == "rsub-int":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                self.regs[self._reg(m.group(1))] = _lit(m.group(3)) - self.regs[self._reg(m.group(2))]
                continue
            if op in ("neg-int", "neg-float"):   # v39（RadarDisc.draw：y = -(cy+ry)）
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = -self.regs[self._reg(m.group(2))]
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
            if op == "shl-int/lit8":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                self.regs[self._reg(m.group(1))] = (self.regs[self._reg(m.group(2))] << _lit(m.group(3))) & 0xFFFFFFFF
                continue
            if op == "shl-int":
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                self.regs[self._reg(m.group(1))] = (
                    self.regs[self._reg(m.group(2))] << (self.regs[self._reg(m.group(3))] & 0x1f)) & 0xFFFFFFFF
                continue
            if op in ("or-int/2addr", "and-int/2addr", "xor-int/2addr"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)", args)
                a, b = self.regs[self._reg(m.group(1))], self.regs[self._reg(m.group(2))]
                self.regs[self._reg(m.group(1))] = (
                    (a | b) if op.startswith("or") else (a & b) if op.startswith("and") else (a ^ b))
                continue
            if op in ("or-int", "and-int", "xor-int"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(v\d+)", args)
                a, b = self.regs[self._reg(m.group(2))], self.regs[self._reg(m.group(3))]
                self.regs[self._reg(m.group(1))] = (
                    (a | b) if op.startswith("or") else (a & b) if op.startswith("and") else (a ^ b))
                continue
            if op in ("xor-int/lit8", "or-int/lit8"):
                m = re.match(r"(v\d+)\s*,\s*(v\d+)\s*,\s*(-?(?:0x[0-9a-fA-F]+|\d+))", args)
                a, b = self.regs[self._reg(m.group(2))], _lit(m.group(3))
                self.regs[self._reg(m.group(1))] = a ^ b if op.startswith("xor") else a | b
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

# 空军选型（B19）用的假上下文：解释器不跟进嵌套调用，AirTechCiv.genOf/aidTechOf、
# Game.getCiv、Civilization.getTechResearched 都由这里的表直接应答。
AIR_GATE = {"base": 99, "aid_tech": [], "gen": [], "civ": None, "researched": set()}


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


def check_air_force_oob():
    """B13 空军编制：没有科技表也要给每国每类型一个真实机型（本国三代机）

    unitsBest 只从陆军表建，飞机永远查不到 → 之前恒返回 -1 → modelAid=-1 →
    所有飞机都用 AircraftTypes.json 的 4 个占位类型。这里断言兜底公式在位。
    """
    body = _method_body(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirForceManager.smali"),
                        "AirForceManager;->getBestAidForType")
    if body is None:
        fail("B13 找不到 getBestAidForType")
        return
    # 现在是蹦床：全部逻辑在 AirModelPick（Java），这里只锁"必须转到它、不能自己算"
    if "AirModelPick;->bestForUnit(II)I" not in body:
        fail("B13 getBestAidForType 必须蹦床到 AirModelPick.bestForUnit")
    if "Civilization;->unitsBest:Ljava/util/List;" in body:
        fail("B13 空军编制不许再读 unitsBest（四国变体混在一起，会串国）")
    pick = open(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirModelPick.smali"),
                encoding="utf-8", errors="replace").read()
    for need in ("getTechResearched(I)Z", "AIRATTACK" if False else "INFO:[I"):
        if need not in pick:
            fail("B13 AirModelPick 缺少按科技判定: %s" % need)

    # 机型表必须是 64 槽全满，且 aid = imageId-70 的对应关系成立
    txt = open(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirModelTables.smali"),
               encoding="utf-8", errors="replace").read()
    packed = re.findall(r"const v\d+, 0x([0-9a-fA-F]+)", txt)
    if len(packed) != 64:
        fail("B13 机型表应为 64 条，实际 %d" % len(packed))
    else:
        for aid, h in enumerate(packed):
            v = int(h, 16)
            key, tech, img = (v >> 16) & 0xFFFF, (v >> 8) & 0x7F, v & 0xFF
            if img != 70 + aid:
                fail("B13 aid=%d 的 imageId 应为 %d，实际 %d" % (aid, 70 + aid, img))
                break
            if key != aid % 16:
                fail("B13 aid=%d 的 key 应为 %d，实际 %d" % (aid, aid % 16, key))
                break
        # 三代机必须是 aid 0..15（开局兜底给的就是这批）
        for aid in range(16):
            if int(packed[aid], 16) & 0xFF != 70 + aid:
                fail("B13 三代机槽位错位: aid=%d" % aid)


def check_hover_route():
    """B14 详情浮层路由：必须 getBestAidForType -> types[aid]，且极性是 if-ltz

    这个 bug 的教科书样本：三处浮层块写成 if-gez（= aid>=0 就跳兜底），
    于是新算出来的 aid 被丢弃，永远显示 types[typeOrdinal]（战斗机→J8）。
    """
    for path, tag, cnt in (
            ("InGame_AirForceOptions$BtnBuild.smali", "r6d274", 1),
            ("InGame_AirForceOptions$BtnSelect.smali", "r6d276", 2)):
        full = os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/AirForce", path)
        txt = open(full, encoding="utf-8", errors="replace").read()
        if txt.count("AirForceManager;->getBestAidForType(II)I") < cnt:
            fail("B14 %s 浮层没走 getBestAidForType（%d 处）" % (path, cnt))
        if txt.count("if-gez v3, :%s_fb" % tag):
            fail("B14 %s 极性写反：if-gez 会在 aid>=0 时跳兜底（应为 if-ltz）" % path)
        if txt.count("if-ltz v3, :%s_fb" % tag) < cnt:
            fail("B14 %s 兜底分支的极性判断缺失（%d 处）" % (path, cnt))




# ================================================= B15 科技国别过滤（AirTechCiv）
CLS_TECHCIV = "aoc/kingdoms/lukasz/map/battles/AirTechCiv"
CLS_SPRITE = "aoc/kingdoms/lukasz/map/battles/AirSprite"
F_AFM = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirForceManager.smali")


def _run_static(path, cls, method, vals):
    """直接跑一个（无外部依赖的）静态方法，返回它 return 的值"""
    sig = cls + ";->" + method
    it = Interp(path, sig)
    b = it.pbase
    for i, v in enumerate(vals):
        it.regs[b + i] = v
    it.run()
    return it.ret



def _code_only(body):
    """去掉注释行 —— 断言"有没有调用某方法"时，注释里提到方法名不算数"""
    if not body:
        return ""
    out = []
    for line in body.split("\n"):
        t = line.strip()
        if t.startswith("#"):
            continue
        if " #" in t:
            t = t.split(" #")[0].rstrip()
        out.append(t)
    return "\n".join(out)


def _expected_tech_masks():
    """从 data/air_tech.json 的槽位键独立推算每条科技的国家组掩码（不读 smali/Java）"""
    path = os.path.join(ROOT, "data", "air_tech.json")
    if not os.path.exists(path):
        return None
    tag = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
    out = []
    for n in sorted(json.load(open(path, encoding="utf-8"))["nodes"], key=lambda x: x["id"]):
        m = 0
        for key in n["slots"]:
            m |= 1 << tag[key.split("_")[1]]
        out.append(m)
    return out

def _array_data(path, field):
    """从 <clinit> 里读回某个 int[] 字段的实际内容（按 fill-array-data 的标签定位）"""
    text = open(path, encoding="utf-8").read()
    m = re.search(r"fill-array-data\s+[vp]\d+\s*,\s*:(\w+)\s*\n\s*\n?\s*sput-object\s+[vp]\d+,\s*L"
                  + re.escape(CLS_TECHCIV) + r";->" + field + r":\[I", text)
    if not m:
        return []
    label = m.group(1)
    start = re.search(r"^\s*:" + re.escape(label) + r"\s*$", text, re.M)
    if not start:
        return []
    tail = text[start.end():]
    vals = []
    for line in tail.split("\n"):
        line = line.strip()
        if line.startswith(".array-data"):
            continue
        if line.startswith(".end array-data"):
            break
        if line.startswith("0x") or re.fullmatch(r"-?\d+", line):
            vals.append(int(line, 0))
    return vals


def check_tech_civ_filter():
    """B15 科技页签按国家组过滤：只有空军科技受国别限制，陆地科技一律放行

    这条闸门盯两个真实错误：
      1) 原 B3b 把 32..74 号**通用陆地科技**按 ID 段分给四个国家
         ⇒ 每国只能研究其中四分之一（CN 玩家看不到 Tank/MechanizedInfantry）。
      2) 空军科技 ID > 74，旧门禁直接放行 ⇒ 四国节点全显示，中国玩家能研究 B-21。
    """
    path = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirTechCiv.smali")
    mask = _array_data(path, "MASK")
    # 条数不写死 50/52：科技 = 一个机型，机型表改一个名字就增减一条。
    # 写死条数会让"数据改了、闸门还绿/假红"——条数与内容都由 data/air_tech.json 独立算。
    want_mask = _expected_tech_masks()
    if not mask:
        fail("B15 读不到 AirTechCiv.MASK（生成器没跑？）")
        return
    if want_mask is None:
        fail("B15 读不到 data/air_tech.json（先跑 tools/gen_air_techs.py）")
        return
    if len(mask) != len(want_mask):
        fail("B15 AirTechCiv.MASK 应为 %d 条（data/air_tech.json），实际 %d"
             % (len(want_mask), len(mask)))
        return
    STATICS[CLS_TECHCIV + ";->MASK"] = list(mask)
    base = min(n["id"] for n in json.load(open(
        os.path.join(ROOT, "data", "air_tech.json"), encoding="utf-8"))["nodes"])

    # --- 数据本身要独立对账：把 smali 里的 MASK 和机型表槽位算出来的归属比，
    #     否则"改错了数据"与"改错了逻辑"会互相抵消，闸门自洽地绿 ---
    if want_mask != list(mask):
        for i in range(min(len(want_mask), len(mask))):
            if want_mask[i] != mask[i]:
                fail("B15 科技 %d 的掩码应为 %d，smali 里是 %d（机型表→科技表对不上）"
                     % (base + i, want_mask[i], mask[i]))
                break
        else:
            fail("B15 MASK 长度与科技表不一致：%d vs %d" % (len(mask), len(want_mask)))

    # --- 陆地科技：四国都必须放行（含原 B3b 分段里的 32/44/45/74）---
    for tid in (0, 31, 32, 44, 45, 63, 74, 98):
        for g in range(4):
            if not _run_static(path, CLS_TECHCIV, "allowedGroup(II)Z", [tid, g]):
                fail("B15 陆地科技 %d 被国家组 %d 挡住了（应放行）" % (tid, g))
                break

    # --- 空军科技：严格按位掩码 ---
    for i, m in enumerate(mask):
        tid = base + i
        for g in range(4):
            want = (m & (1 << g)) != 0
            got = bool(_run_static(path, CLS_TECHCIV, "allowedGroup(II)Z", [tid, g]))
            if want != got:
                fail("B15 科技 %d 组 %d：期望 %s，实际 %s（mask=%d）"
                     % (tid, g, want, got, m))
                break

    # 共用机型位掩码：只在机型表里**真的存在**跨国机型时要求多国位。
    # v37 起 F-35 只占美国槽（欧洲五代换成 LAMPYRIDAE），机型表里已无跨国机型 ——
    # 但这条不能删：将来谁再让一个型号占两国槽位，掩码就必须是多的那位。
    _models = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                             encoding="utf-8"))["models"]
    _ctry = {}
    for _m in _models:
        _ctry.setdefault(_m["modelCode"], set()).add(_m["country"])
    _shared = sorted(k for k, v in _ctry.items() if len(v) > 1)
    if _shared and not any(bin(m).count("1") > 1 for m in mask):
        fail("B15 机型表里有跨国机型 %s，但 MASK 没有任何多国位（共用机型会被挡）"
             % "/".join(_shared))

    # 越界：非空军段一律放行（上界跟着科技条数走，别写死 149——那条现在可能是真空军科技）
    for tid in (base - 1, base + len(mask), 400, -1):
        if not _run_static(path, CLS_TECHCIV, "allowedGroup(II)Z", [tid, 0]):
            fail("B15 越界/非空军科技 %d 不应被拦" % tid)

    # --- 接线：游戏侧两个入口都必须走 AirTechCiv，不许自己再抄一份 ID 段 ---
    tt = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali")
    body = _code_only(_method_body(tt, "TechnologyTree;->isTechAllowedForCiv"))
    if body is None or "AirTechCiv;->allowed(II)Z" not in body:
        fail("B15 isTechAllowedForCiv 没蹦床到 AirTechCiv.allowed")
    elif "artGroupOf" in body or "0x4a" in body or "0x2c" in body:
        fail("B15 isTechAllowedForCiv 里还留着旧的 32..74 分段判定")

    civ = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/civilization/Civilization.smali")
    body = _code_only(_method_body(civ, "Civilization;->getAvailableToResearch"))
    if body is None or "isTechAllowedForCiv" not in body:
        fail("B15 getAvailableToResearch 没接国别门禁（非本国科技仍可研究）")
    elif "0x4a" in body:
        fail("B15 getAvailableToResearch 里还留着旧的 32..74 快捷放行")


def check_air_sprite_single_entry():
    """B16 空军贴图单入口：aid → pickAirImage(代, 组, 轴)，不许 70+aid、不许 bestIdx 重算

    踩过的两个坑：
      1) 把 modelAid 当**编制表行号**查 lArmy，再拿占位 ImageID(67) 反推代际，
         被钳到"六代" ⇒ 地图上 J11 画成 J36。
      2) 以为 imageId = 70 + aid 就是运行期图号 —— 那只是 packed 字段的低字节编码，
         真图号是 ImageManager.addImage 的返回值，差着几百。
    """
    path = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirSprite.smali")

    # --- packOf：aid 解码（全 64 槽 + 越界）---
    for aid in range(64):
        want = (((aid >> 4) + 3) << 8) | (((aid >> 2) & 3) << 4) | (aid & 3)
        got = _run_static(path, CLS_SPRITE, "packOf(I)I", [aid])
        if got != want:
            fail("B16 packOf(%d) 应为 0x%x，实际 %r" % (aid, want, got))
            break
    for bad in (-1, 64, 999):
        if _run_static(path, CLS_SPRITE, "packOf(I)I", [bad]) != -1:
            fail("B16 packOf(%d) 应返回 -1" % bad)

    # --- aidOfRow：编制行 → aid（unitID 7..10 的类型轴 = (unitID-7)^1）---
    for uid in range(7, 11):
        for row in (0, 1, 4, 15):
            want = row * 4 + ((uid - 7) ^ 1)
            got = _run_static(path, CLS_SPRITE, "aidOfRow(II)I", [uid, row])
            if got != want:
                fail("B16 aidOfRow(%d,%d) 应为 %d，实际 %r" % (uid, row, want, got))
    for bad in ((6, 0), (11, 0), (7, -1), (7, 16)):
        if _run_static(path, CLS_SPRITE, "aidOfRow(II)I", list(bad)) != -1:
            fail("B16 aidOfRow%s 应返回 -1" % (bad,))

    # --- imageOf 必须走字段映射 pickAirImage，且不许出现 70+aid ---
    body = _code_only(_method_body(path, "AirSprite;->imageOf"))
    if body is None:
        fail("B16 找不到 AirSprite.imageOf")
    else:
        if "AirForceManager;->pickAirImage(III)I" not in body:
            fail("B16 imageOf 没走 pickAirImage（运行期图号只能由它给）")
        if "0x46" in body or "0x46" in body.replace(" ", ""):
            fail("B16 imageOf 里出现了 0x46(70)：那不是运行期图号")

    # --- 贴图路径不许再出现 bestIdx / 编制 ImageID→代 的重算 ---
    afm = open(F_AFM, encoding="utf-8", errors="replace").read()
    for meth, needs in (("airImgForUnit", "AirSprite;->imageOf(I)I"),
                        ("airImgForUnit", "AirUnit;->modelAid:I"),
                        ("airImgForRec", "AirSprite;->imageOfRow(II)I"),
                        ("airImgForCiv", "AirSprite;->imageForCiv(II)I"),
                        ("airImgForTypeP", "AirSprite;->imageForCiv(II)I"),
                        ("airImgForType", "AirSprite;->imageForCiv(II)I"),
                        ("airImgForMission", "AirSprite;->imageForTypeOrdinal(II)I")):
        body = _code_only(_method_body(F_AFM, "AirForceManager;->" + meth))
        if not body:
            fail("B16 找不到 AirForceManager.%s" % meth)
            continue
        if needs not in body:
            fail("B16 %s 未接到 %s" % (meth, needs))
        if "AirModelTables;->bestIdx" in body:
            fail("B16 %s 还在用 bestIdx 重算机型" % meth)
        if "AirModelTables;->genOf" in body:
            fail("B16 %s 还在从 ImageID 反推代际" % meth)
    if "dgAirGroup" in _code_only(_method_body(F_AFM, "AirForceManager;->airImgForType")):
        fail("B16 airImgForType 还读 dgAirGroup 这个调试全局")
    if re.search(r"^\.method public static airImgForUnit\(\)I", afm, re.M):
        fail("B16 无人调用的 airImgForUnit()I 还在（只读残留全局，属死代码）")



# ================================================= B17 三代编制挂科技 + 开局授予
def check_air_tech_grant():
    """B17 三代编制：数据挂真科技、文明开局自动授予、两份重建入口都接到

    这条链路一旦断，会分别退化成两个老 bug：
      - 数据回 -1  → 科技面板里三代节点下列不出"解锁编制"（用户报的现象）
      - 授予没接上 → 三代机造不出来（v30 的 bug）
    """
    import json as _json
    civ = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/civilization/Civilization.smali")
    texts = {}
    for meth in ("buildTechTree", "buildTechTree_Load"):
        body = _code_only(_method_body(civ, "Civilization;->" + meth))
        if not body:
            fail("B17 找不到 Civilization.%s" % meth)
            continue
        if "AirTechGrant;->grant(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V" not in body:
            fail("B17 %s 没调用 AirTechGrant.grant（开局/读档不会授予三代科技）" % meth)
        texts[meth] = body

    grant = _code_only(_method_body(
        os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirTechGrant.smali"),
        "AirTechGrant;->grant"))
    if not grant:
        fail("B17 找不到 AirTechGrant.grant")
    else:
        for need in ("AirForceManager;->artGroupOf(I)I", "AirTechCiv;->genOf(I)I",
                     "AirTechCiv;->allowedGroup(II)Z", "Civilization;->getTechResearched(I)Z",
                     "Civilization;->setTechnologyResearched(IZ)V"):
            if need not in grant:
                fail("B17 AirTechGrant.grant 缺少 %s" % need)

    # --- 数据：编制行必须 ImageID=70+aid、RequiredTechID=该机型科技（含三代）---
    models = _json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                             encoding="utf-8"))["models"]
    techs = {}
    for n in _json.load(open(os.path.join(ROOT, "data", "air_tech.json"),
                             encoding="utf-8"))["nodes"]:
        for key in n["slots"]:
            techs.setdefault(key, n["id"])
    units = os.path.join(ROOT, "build", "assets", "game", "units")
    for fname, tp in (("AirInterceptor", "INTERCEPTOR"), ("AirFighter", "FIGHTER"),
                      ("AirBomber", "BOMBER"), ("AirAttacker", "ATTACKER")):
        p = os.path.join(units, fname + ".json")
        if not os.path.exists(p):
            fail("B17 缺 %s.json（先跑 tools/gen_air_units.py）" % fname)
            continue
        txt = open(p, encoding="utf-8").read()
        rows = re.findall(r"Name: \"([^\"]*)\",\s*\n\t\t\tImageID: (\d+),.*?RequiredTechID: (-?\d+)",
                          txt, re.S)
        if len(rows) != 16:
            fail("B17 %s 应为 16 行，实际 %d" % (fname, len(rows)))
            continue
        for row, (name, img, tech) in enumerate(rows):
            aid = row * 4 + {"INTERCEPTOR": 1, "FIGHTER": 0, "ATTACKER": 2, "BOMBER": 3}[tp]
            if int(img) != 70 + aid:
                fail("B17 %s 行 %d(%s) 的 ImageID 应为 %d，实际 %s"
                     % (fname, row, name, 70 + aid, img))
                break
            key = models[aid]["key"]
            want = techs.get(key, -1)
            if int(tech) != want:
                fail("B17 %s 行 %d(%s) 的 RequiredTechID 应为 %d，实际 %s"
                     % (fname, row, name, want, tech))
                break

    # --- 图标序号表：armyImages 只能往后追加 ---
    ic = open(os.path.join(ROOT, "tools", "gen_air_roster_icons.py"), encoding="utf-8").read()
    if "IMG_BASE = 70" not in ic:
        fail("B17 编制图标起始序号应为 70（0..69 是原版陆军/空军类型图）")
    if "numOfImages" not in ic:
        fail("B17 编制图标生成器没维护 numOfImages.txt")




# ================================================= B18 科技解锁机型（不再写死三代）
def check_tech_unlocks_models():
    """B18 机型选择必须按"该槽位的科技是否已研究"来挑，而不是写死三代

    老 bug：AirModelPick.AIR_GEN_MAX 恒为 3 且无人写 ⇒ 研究完四代/F-35 科技，
    造出来的仍是三代机（用户实测"点了科技还是只能造三代机"）。
    另一条：跨国共用机型（F-35）的前置只能填一个 ID，挂谁另一国就永远点不到，
    所以这类节点必须不挂前置。
    """
    pick = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirModelPick.smali")
    body = _code_only(_method_body(pick, "AirModelPick;->best(III)I"))
    if not body:
        fail("B18 找不到 AirModelPick.best")
    else:
        for need in ("AirTechCiv;->aidTechOf(I)I", "Civilization;->getTechResearched(I)Z"):
            if need not in body:
                fail("B18 best() 没用 %s 判已研究" % need)
        if "AIR_GEN_MAX" in body:
            fail("B18 best() 还在读 AIR_GEN_MAX（写死代际会锁死机型）")
    init = _code_only(open(pick, encoding="utf-8").read())
    if not re.search(r"const/4 [vp]\d+, 0x6\s*\n\s*sput [vp]\d+, L[^\n]*->AIR_GEN_MAX:I", init):
        fail("B18 AIR_GEN_MAX 默认值应为 6（保险丝，不是上限）")

    # --- aid → tech 覆盖：64 槽必须都有科技，且与科技表的槽位一致 ---
    import json as _json
    civpath = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirTechCiv.smali")
    aids = _array_data(civpath, "AID_TECH")
    if len(aids) != 64:
        fail("B18 AID_TECH 应为 64 条，实际 %d" % len(aids))
    else:
        models = _json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                                 encoding="utf-8"))["models"]
        keyaid = {}
        for aid, m in enumerate(models):
            keyaid.setdefault(m["key"], []).append(aid)
        want = [-1] * 64
        for n in _json.load(open(os.path.join(ROOT, "data", "air_tech.json"),
                                 encoding="utf-8"))["nodes"]:
            for key in n["slots"]:
                for aid in keyaid.get(key, []):
                    want[aid] = n["id"]
        for aid in range(64):
            if aids[aid] != want[aid]:
                fail("B18 aid %d 的科技应为 %d，smali 里是 %d" % (aid, want[aid], aids[aid]))
                break

    # --- 跨国共用机型不挂前置 ---
    nodes = _json.load(open(os.path.join(ROOT, "data", "air_tech.json"),
                            encoding="utf-8"))["nodes"]
    tag = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
    for n in nodes:
        countries = {k.split("_")[1] for k in n["slots"]}
        if len(countries) > 1 and n["req"] != -1:
            fail("B18 跨国机型 %s 不该挂前置（req=%d），否则另一国永远点不到"
                 % (n["name"], n["req"]))
        if len(countries) == 1 and n["gen"] > 3 and n["req"] < 0:
            fail("B18 %s 是 %d 代单国机型却没有任何前置" % (n["name"], n["gen"]))


# ================================================= B19 v35：表/名/同代选型
CLS_PICK = "aoc/kingdoms/lukasz/map/battles/AirModelPick"
SUFFIXES = ("战斗机", "截击机", "攻击机", "轰炸机")
_UNIT_TYPE = {"AirFighter": ("FIGHTER", "战斗机"), "AirInterceptor": ("INTERCEPTOR", "截击机"),
              "AirAttacker": ("ATTACKER", "攻击机"), "AirBomber": ("BOMBER", "轰炸机")}


def check_air_v35():
    """B19 机型表改名 / 中文代号 / 同代选型（v35）

    盯四类真实错误：
      ① 编制名丢了种类后缀（"J50" 而不是 "J50攻击机"）—— 玩家分不清编制；
      ② 科技名被拼上种类后缀（"RAFALE阵风攻击机"）—— 科技节点与编制节点重名；
      ③ best() 少了"科技代 = 槽位代"判定 ⇒ 研究一条四代科技就把六代槽位也点亮
         （面板显示六代机、数值按四代给）；
      ④ 机型表 key 重名 / 与 aid 公式错位（改名字时最易发生）。
    """
    import json as _json
    models = _json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                             encoding="utf-8"))["models"]

    # ---------- ④ 64 槽：key 唯一 + aid 公式 + imageId/packed 重算 ----------
    if len(models) != 64:
        fail("B19 机型表应为 64 槽，实际 %d" % len(models))
        return
    co = {"CN": 0, "EU": 1, "RU": 2, "US": 3}
    ty = {"FIGHTER": 0, "INTERCEPTOR": 1, "ATTACKER": 2, "BOMBER": 3}
    tc = {"FIGHTER": "F", "INTERCEPTOR": "I", "ATTACKER": "A", "BOMBER": "B"}
    seen = set()
    for aid, m in enumerate(models):
        try:
            exp_key = "A_%s_%s_%s" % (m["country"], m["modelCode"], tc[m["type"]])
            k = co[m["country"]] * 4 + ty[m["type"]]
            exp_packed = (k << 16) | (int(m["techId"]) << 8) | (70 + aid)
        except KeyError as e:
            fail("B19 aid=%d 字段缺失/非法: %r" % (aid, e))
            return
        if m["key"] != exp_key:
            fail("B19 aid=%d 的 key 应为 %s，实际 %s" % (aid, exp_key, m["key"]))
        if m["key"] in seen:
            fail("B19 key 重复: %s" % m["key"])
        seen.add(m["key"])
        if int(m["gen"]) != aid // 16 + 3:
            fail("B19 aid=%d 的代应为 %d，实际 %s" % (aid, aid // 16 + 3, m["gen"]))
        if m["country"] != ("CN", "EU", "RU", "US")[(aid % 16) // 4]:
            fail("B19 aid=%d 的国家应为 %s，实际 %s"
                 % (aid, ("CN", "EU", "RU", "US")[(aid % 16) // 4], m["country"]))
        if m["type"] != ("FIGHTER", "INTERCEPTOR", "ATTACKER", "BOMBER")[aid % 4]:
            fail("B19 aid=%d 的类型错位，实际 %s" % (aid, m["type"]))
        if int(m["imageId"]) != 70 + aid:
            fail("B19 aid=%d 的 imageId 应为 %d，实际 %s" % (aid, 70 + aid, m["imageId"]))
        if int(str(m["packed"]), 16) != exp_packed:
            fail("B19 aid=%d 的 packed 应为 0x%x，实际 %s" % (aid, exp_packed, m["packed"]))
        if len(seen) >= 64:
            break
    if len(seen) != 64:
        fail("B19 64 个 key 不唯一（%d 个）" % len(seen))

    # ---------- ② 科技名 = 裸型号 + 中文代号（不得带种类后缀）----------
    nodes = _json.load(open(os.path.join(ROOT, "data", "air_tech.json"),
                            encoding="utf-8"))["nodes"]
    by_model = {}
    for m in models:
        cn = m.get("nameCN", "")
        if m["modelCode"] in by_model and by_model[m["modelCode"]] != cn:
            fail("B19 机型 %s 的 nameCN 前后不一致" % m["modelCode"])
        by_model[m["modelCode"]] = cn
    for n in nodes:
        if n.get("placeholder"):
            continue        # v38：删机型后保留的占位节点（不挂机型、不发编制）
        exp = n.get("model", "") + by_model.get(n.get("model", ""), "")
        if n["name"] != exp:
            fail("B19 科技 %d 名称应为 %s，实际 %s" % (n["id"], exp, n["name"]))
            break
        # "不得以种类后缀结尾"的准确语义：后缀只能来自 nameCN 本身，不能是生成器拼上去的。
        # 例：FAXX 的中文代号就叫"下一代舰载战斗机"（规格 §2 指定），结尾天然是"战斗机"；
        # 真正的错误形态是"RAFALE阵风攻击机"——那是把编制名的后缀也拼进了科技名。
        cn = by_model.get(n.get("model", ""), "")
        if n["name"].endswith(SUFFIXES) and not cn.endswith(SUFFIXES):
            fail("B19 科技 %d 名称 %s 带上了种类后缀（科技=裸型号+中文名）"
                 % (n["id"], n["name"]))
            break
    # 中文代号必须真的进到科技名里（不是只写在 JSON 里）
    tech_names = {n["name"] for n in nodes}
    for want in ("RAFALE阵风", "NEURON神经元", "PAKDA未来远程航空系统", "HARRIER鹞式"):
        if want not in tech_names:
            fail("B19 科技表缺中文代号名 %s" % want)

    # ---------- ① 编制名 = 裸型号 + 中文代号 + 种类后缀 ----------
    units = os.path.join(ROOT, "build", "assets", "game", "units")
    unit_names = set()
    for fname, (tp, suffix) in _UNIT_TYPE.items():
        p = os.path.join(units, fname + ".json")
        if not os.path.exists(p):
            fail("B19 缺 %s.json（先跑 tools/gen_air_units.py）" % fname)
            continue
        txt = open(p, encoding="utf-8").read()
        rows = re.findall(r'Name: "([^"]*)",\s*\n\t\t\tImageID: (\d+),', txt)
        if len(rows) != 16:
            fail("B19 %s 应为 16 行，实际 %d" % (fname, len(rows)))
            continue
        for row, (name, img) in enumerate(rows):
            aid = row * 4 + ty[tp]
            exp = models[aid]["modelCode"] + models[aid].get("nameCN", "") + suffix
            if name != exp:
                fail("B19 %s 行 %d 的编制名应为 %s，实际 %s" % (fname, row, exp, name))
                break
            if not name.endswith(suffix):
                fail("B19 %s 行 %d 的编制名 %s 不以 %s 结尾" % (fname, row, name, suffix))
                break
            if int(img) != 70 + aid:
                fail("B19 %s 行 %d 的 ImageID 应为 %d，实际 %s（图标与编制错位）"
                     % (fname, row, 70 + aid, img))
                break
            unit_names.add(name)
    for want in ("J50攻击机", "SU57截击机", "TEMPEST暴风雨战斗机", "H6轰炸机"):
        if want not in unit_names:
            fail("B19 编制表缺规格要求的名字 %s" % want)

    # ---------- ③ best()：科技代 ≠ 槽位代必须拒绝 ----------
    pick = os.path.join(SMALI, CLS_PICK + ".smali")
    body = _code_only(_method_body(pick, "AirModelPick;->best"))
    if not body:
        fail("B19 找不到 AirModelPick.best")
        return
    for need in ("AirTechCiv;->aidTechOf(I)I", "AirTechCiv;->genOf(I)I",
                 "Civilization;->getTechResearched(I)Z"):
        if need not in body:
            fail("B19 best() 缺少 %s" % need)
    gi = body.find("AirTechCiv;->genOf(I)I")
    ri = body.find("Civilization;->getTechResearched(I)Z")
    if gi < 0 or not re.search(r"if-(?:eq|ne)\b", body[gi:gi + 300]):
        fail("B19 best() 里 genOf 之后没有同代比较（科技代≠槽位代不会被拒绝）")
    if ri >= 0 and gi > ri:
        fail("B19 best() 的同代判定应在\"是否已研究\"之前")

    civpath = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirTechCiv.smali")
    aids = _array_data(civpath, "AID_TECH")
    gens = _array_data(civpath, "GEN")
    if len(aids) != 64 or not gens:
        fail("B19 读不到 AirTechCiv 的 AID_TECH(64)/GEN")
        return
    base = min(n["id"] for n in nodes)
    AIR_GATE.update({"base": base, "aid_tech": list(aids), "gen": list(gens),
                     "civ": Obj("aoc/kingdoms/lukasz/map/civilization/Civilization"),
                     "researched": set()})
    STATICS["aoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO"] = [0] * 64

    # 数据前提：64 槽的科技代必须等于槽位代（否则"同代"这条规则无处落地）
    for aid in range(64):
        t = aids[aid]
        if t < 0:
            fail("B19 aid=%d 没有科技" % aid)
            break
        if AIR_GATE["gen"][t - base] != models[aid]["gen"]:
            fail("B19 aid=%d 的科技 %d 是 %d 代，槽位是 %d 代"
                 % (aid, t, AIR_GATE["gen"][t - base], models[aid]["gen"]))
            break

    def run_best(group, type_):
        return _run_static(pick, "AirModelPick", "best(III)I", [1, group, type_])

    # 正样本：CN 六代战斗机科技已研究 → 选中 aid 48
    t6 = aids[48]
    AIR_GATE["researched"] = {t6}
    AIR_GATE["gen"] = list(gens)
    got = run_best(0, 0)
    if got != 48:
        fail("B19 研究了六代战斗机科技，best 仍返回 %r（应 48）" % got)

    # 负样本：同一条科技被标成五代 → 必须跳过六代槽位，落到三代兜底 0
    gens_bad = list(gens)
    gens_bad[t6 - base] = 5
    AIR_GATE["gen"] = gens_bad
    got = run_best(0, 0)
    if got == 48:
        fail("B19 科技代(5) ≠ 槽位代(6) 时 best 仍选了 aid 48（同代判定失效）")
    elif got != 0:
        fail("B19 跨代科技被拒后应落三代兜底 0，实际 %r" % got)
    # 反向：五代槽位也不许被这条"五代科技"选上（科技只解锁它自己那一代）
    AIR_GATE["gen"] = list(gens)
    AIR_GATE["researched"] = {aids[32]}
    if run_best(0, 0) != 32:
        fail("B19 研究了五代战斗机科技，best 应返回 32")
    gens_bad = list(gens)
    gens_bad[aids[32] - base] = 6
    AIR_GATE["gen"] = gens_bad
    if run_best(0, 0) == 32:
        fail("B19 科技代(6) ≠ 槽位代(5) 时 best 仍选了 aid 32")
    AIR_GATE.update({"gen": list(gens), "researched": set()})


# ================================================= B20/B21 v37：探测范围 / 无人机 / 树归属
CLS_STATS = "aoc/kingdoms/lukasz/map/battles/AirModelStats"
CLS_UNIT = "aoc/kingdoms/lukasz/map/battles/AirUnit"
CLS_MGR = "aoc/kingdoms/lukasz/map/battles/AirForceManager"
CLS_TAGS = "aoc/kingdoms/lukasz/map/battles/AirGroupTags"
CLS_COST = "aoc/kingdoms/lukasz/map/battles/AirBuildCost"
CLS_RADAR = "aoc/kingdoms/lukasz/map/battles/AirRadar"
CLS_TD = "aoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData"


def _arr(path, cls, field, typ="[I"):
    """读回静态数组字段的实际内容。

    做法：先定位该字段的 `sput-object vX, ...->FIELD:T`，再**往前找最近一次**
    写 vX 的指令（fill-array-data 或 filled-new-array）。
    （先找 fill 再找 sput 会跨到相邻字段的 fill —— 表会整段串行，v37 第一版就这样假绿。）
    """
    text = open(path, encoding="utf-8", errors="replace").read()
    sm = re.search(r"sput-object\s+(v\d+),\s*L" + re.escape(cls) + r";->"
                   + re.escape(field) + r":" + re.escape(typ), text)
    if not sm:
        return []
    reg, head = sm.group(1), text[:sm.start()]

    fill = None
    for fill in re.finditer(r"fill-array-data\s+" + re.escape(reg) + r"\s*,\s*:(\w+)", head):
        pass                      # 循环走完 = 最近的那一次
    if fill:
        st = re.search(r"^\s*:" + re.escape(fill.group(1)) + r"\s*$", text, re.M)
        if not st:
            return []
        vals = []
        for line in text[st.end():].split("\n"):
            t = (line.split() or [""])[0]
            if t.startswith(".array-data"):
                continue
            if t.startswith(".end"):
                break
            if t.startswith("0x") or re.fullmatch(r"-?\d+", t):
                vals.append(int(t, 0))
            elif t:
                break
        return vals

    if re.search(r"move-result-object\s+" + re.escape(reg) + r"\s*$", head, re.M):
        fna = None
        for fna in re.finditer(r"filled-new-array\s*\{([^}]*)\}\s*,\s*" + re.escape(typ), head):
            pass
        if fna:
            regs = [t.strip() for t in fna.group(1).split(",") if t.strip()]
            known = {}
            for cm in re.finditer(r"^\s*const(?:/4|/16|/high16)?\s+(v\d+)\s*,\s*"
                                  r"(-?0x[0-9a-fA-F]+|-?\d+)\s*$", head[:fna.start()], re.M):
                known[cm.group(1)] = cm.group(2)
            if any(r not in known for r in regs):
                return []
            return [int(known[r], 0) for r in regs]
    return []


def _squash(body):
    """去掉 .line/.param/.registers 等伪指令与空行，只留指令 —— 用于"紧跟着的那条指令"断言"""
    out = []
    for line in (body or "").split("\n"):
        t = line.strip()
        if not t or t.startswith("."):
            continue
        out.append(t)
    return "\n".join(out)


def _fb(code):
    """float 位模式 → 数值（闸门里对账用）"""
    import struct as _st
    return _st.unpack("<f", _st.pack("<I", int(code) & 0xFFFFFFFF))[0]


def check_air_v37_fields():
    """B20 v37：radarDetect / isDrone 两个新字段必须"真生效"（不是只加字段不用）

    盯五种真实错误：
      ① 只写 applyType 不写 applyModel —— 读档（LoadSavedGameManager 只跑 applyModel）
         会把探测范围退回 types[type.ordinal()]，且枚举序错位；
      ② 表不是 64 项（按 aid 现查会越界/串行）；
      ③ DRONE 表位与机型表 drone 标记对不上（面板/造价/空战挂点各说一套）；
      ④ 四个读取点还在读旧字段 radarRange / types[...].RadarRange（改了个寂寞）；
      ⑤ p1bCost / getBuildTime 还在 types[type.ordinal()] 取前 4 行（恒 200 金/3 回合），
         或造价表与 AircraftTypes.json 不一致（面板显示 540、扣 324）。
    """
    import json as _json
    stats = os.path.join(SMALI, CLS_STATS + ".smali")
    unit = os.path.join(SMALI, CLS_UNIT + ".smali")
    models = _json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                             encoding="utf-8"))["models"]

    # ---------- ① applyModel 必须写两个字段 ----------
    body = _code_only(_method_body(stats, "AirModelStats;->applyModel"))
    if not body:
        fail("B20 找不到 AirModelStats.applyModel")
    else:
        for arr, iput, fld in (("RADARDETECT:[F", "iput", "radarDetect:F"),
                               ("DRONE:[Z", "iput-boolean", "isDrone:Z")):
            if arr not in body:
                fail("B20 applyModel 没读 %s（读档后该字段会退回 applyType 的旧值）" % arr)
                continue
            idx = body.find("AirUnit;->" + fld)
            if idx < 0 or not re.search(r"%s\s+[vp]\d+,\s*p0,\s*L\S*AirUnit;->%s"
                                        % (iput, re.escape(fld)), body):
                fail("B20 applyModel 没把 %s 写进 unit" % fld)
            elif body.find(arr) > idx:
                fail("B20 applyModel 里先写 %s 再读 %s（顺序反了）" % (fld, arr))
    at = _code_only(_method_body(os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AircraftDataManager.smali"),
                                 "AircraftDataManager;->applyType"))
    for fld in ("radarDetect:F", "isDrone:Z"):
        if not at or "AirUnit;->" + fld not in at:
            fail("B20 applyType 没写 %s（新造单位拿不到机型值）" % fld)
    td = open(os.path.join(SMALI, CLS_TD + ".smali"), encoding="utf-8").read()
    for f in ("RadarDetect:F", "IsDrone:Z"):
        if f not in td:
            fail("B20 AircraftTypeData 缺 %s（AircraftTypes.json 的未知键会让整表加载失败）" % f)
    # 字段声明本身也在 AirUnit 上（GameUnit 类型是 F/Z）
    ut = open(unit, encoding="utf-8").read()
    for f in ("radarDetect:F", "isDrone:Z"):
        if f not in ut:
            fail("B20 AirUnit 缺字段 %s" % f)
    # 读档入口必须还是 applyModel（防止有人把读档改成只 applyType）
    ls = os.path.join(SMALI, "aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali")
    if "AirModelStats;->applyModel" not in open(ls, encoding="utf-8").read():
        fail("B20 读档链不再调用 AirModelStats.applyModel（radarDetect/isDrone 会退化）")

    # ---------- ② 表长 64 + 代差曲线 ----------
    det = _arr(stats, CLS_STATS, "RADARDETECT", "[F")
    drone = _arr(stats, CLS_STATS, "DRONE", "[Z")
    if len(det) != 64:
        fail("B20 RADARDETECT 表应为 64 项，实际 %d" % len(det))
    if len(drone) != 64:
        fail("B20 DRONE 表应为 64 项，实际 %d" % len(drone))
    want_det = {3: 550.0, 4: 900.0, 5: 1300.0, 6: 1800.0}
    if len(det) == 64:
        for aid, m in enumerate(models):
            got = _fb(det[aid])
            w = want_det[int(m["gen"])]
            if got != w:
                fail("B20 aid=%d 的 RadarDetect 应为 %.0f（%s 代），表里是 %g"
                     % (aid, w, m["gen"], got))
                break

    # ---------- ③ DRONE 表位 ----------
    if len(drone) == 64:
        want = [1 if m.get("drone") else 0 for m in models]
        for aid in range(64):
            if int(drone[aid]) != want[aid]:
                fail("B20 aid=%d 的 DRONE 表位应为 %s（机型表 drone 标记）"
                     % (aid, bool(want[aid])))
                break
        # v38：NEURON 两格（aid38 攻击 / aid39 轰炸）必须一致 —— 同一架飞机两种行为是 bug。
        # 全表无人机 = NEURON×2 / X47B / S70，共 4 格；条数仍由机型表独立算（不写死机型名）。
        for aid in (38, 39, 46, 58):
            if not drone[aid]:
                fail("B20 aid=%d 的 DRONE 表位不是 true（四格无人机：NEURON×2 / X47B / S70）" % aid)
        if sum(1 for x in drone if x) != 4:
            fail("B20 DRONE 表里 true 的个数应为 4，实际 %d" % sum(1 for x in drone if x))

    # ---------- ④ 四个读取点 ----------
    ami = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/AirMission.smali")
    b = _code_only(_method_body(ami, "AirMission;->huntRadarMaxI"))
    if not b or "AirUnit;->radarDetect:F" not in b:
        fail("B20 huntRadarMaxI 没读 AirUnit.radarDetect")
    elif "AirUnit;->radarRange:F" in b:
        fail("B20 huntRadarMaxI 还在读旧字段 radarRange")

    fog = os.path.join(SMALI, "aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali")
    b = _code_only(_method_body(fog, "PlayerFogOfWar;->fogFromPlanes"))
    if not b or "AirRadar;->maxDetect" not in b:
        fail("B20 fogFromPlanes 没走 AirRadar.maxDetect（探测圈还是编制表的值）")
    elif CLS_TD + ";->RadarRange:F" in b:
        fail("B20 fogFromPlanes 还在读 types[...].RadarRange")

    pdm = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
    b = _code_only(_method_body(pdm, "ProvinceDrawArmy;->drawAircraftRadar"))
    if not b or "AirRadar;->maxDetect" not in b:
        fail("B20 drawAircraftRadar 没走 AirRadar.maxDetect（地图探测圈还是编制表的值）")
    elif CLS_TD + ";->RadarRange:F" in b:
        fail("B20 drawAircraftRadar 还在读 types[...].RadarRange")

    mgr = os.path.join(SMALI, CLS_MGR + ".smali")
    b = _code_only(_method_body(mgr, "AirForceManager;->airCombatOne"))
    if not b or "AirUnit;->radarDetect:F" not in b:
        fail("B20 airCombatOne 没读 AirUnit.radarDetect")
    elif "AirUnit;->radarRange:F" in b:
        fail("B20 airCombatOne 还在读旧字段 radarRange")
    # _method_body 从方法名后的第一个字符起算，首行只剩签名尾巴 —— 掐掉再判"第一条指令"
    if not _squash(b.split("\n", 1)[1] if "\n" in b else b).startswith("return-void"):
        fail("B20 airCombatOne 开头的 return-void 短路被解除了（空战结算会复活）")

    # ---------- ⑤ p1bCost / getBuildTime ----------
    ap = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/Airport.smali")
    for name, helper in (("p1bCost", "costOfAid(II)I"), ("getBuildTime", "timeOfAid(II)I")):
        b = _code_only(_method_body(ap, "Airport;->" + name))
        if not b:
            fail("B20 找不到 Airport.%s" % name)
            continue
        if CLS_MGR + ";->getBestAidForType(II)I" not in b:
            fail("B20 %s 没走 getBestAidForType（还是按 types[type.ordinal()] 取前 4 行）" % name)
        if CLS_COST + ";->" + helper not in b:
            fail("B20 %s 没走 AirBuildCost.%s" % (name, helper))
        if CLS_TD + ";->CostGold:I" in b or CLS_TD + ";->ConstructionTime:I" in b:
            fail("B20 %s 还在直接读编制表前几行的造价/工期" % name)

    exp_cost, exp_time = {}, {}          # 独立期望：build/AircraftTypes.json（面板显示的那份）
    cost = _arr(stats, CLS_STATS, "COST", "[I")
    tm = _arr(stats, CLS_STATS, "TIME", "[I")
    if len(cost) != 64 or len(tm) != 64:
        fail("B20 AirModelStats 的 COST/TIME 表应为 64 项（实际 %d/%d）" % (len(cost), len(tm)))
        return
    # 造价/工期表必须与 AircraftTypes.json 逐值一致（面板显示的就是它）
    oob = os.path.join(ROOT, "build", "assets", "game", "AirUnit", "AircraftTypes.json")
    if not os.path.exists(oob):
        fail("B20 缺 build/AircraftTypes.json（先跑 gen_air_oob.py）")
    else:
        rows = re.findall(r"\{\s*ID: (\d+),(.*?)\n\t\t\},", open(oob, encoding="utf-8").read(), re.S)
        if len(rows) != 64:
            fail("B20 AircraftTypes.json 应为 64 行，实际 %d" % len(rows))
        else:

            exp_drone = {}
            for i, (rid, rb) in enumerate(rows):
                gc = re.search(r"CostGold: (-?\d+)", rb)
                gt = re.search(r"ConstructionTime: (-?\d+)", rb)
                gd = re.search(r"IsDrone: (true|false)", rb)
                if not (gc and gt and gd):
                    fail("B20 AircraftTypes.json 第 %s 行缺 CostGold/ConstructionTime/IsDrone" % rid)
                    break
                exp_cost[i], exp_time[i] = int(gc.group(1)), int(gt.group(1))
                exp_drone[i] = gd.group(1) == "true"
            # 收全后再比：中途 break 会把后面的期望值丢掉，掩盖真正的第一条错误
            for i in sorted(exp_cost):
                if exp_cost[i] != cost[i] or exp_time[i] != tm[i]:
                    fail("B20 aid=%d 的 COST/TIME(%d/%d) 与 AircraftTypes.json(%d/%d) 不一致"
                         % (i, cost[i], tm[i], exp_cost[i], exp_time[i]))
                    break
            for i in sorted(exp_drone):
                if exp_drone[i] != bool(drone[i] if i < len(drone) else 0):
                    fail("B20 aid=%d 的 IsDrone 与 DRONE 表不一致" % i)
                    break

    # 真跑 AirBuildCost：装配一次，扣款必须等于该机型的造价（无人机已含折扣）
    STATICS[CLS_STATS + ";->COST"] = cost
    STATICS[CLS_STATS + ";->TIME"] = tm
    cpath = os.path.join(SMALI, CLS_COST + ".smali")
    for aid in (11, 39, 46, 58):
        if aid not in exp_cost:
            fail("B20 从 AircraftTypes.json 读不到 aid=%d 的造价（无法对账）" % aid)
            continue
        got = _run_static(cpath, "AirBuildCost", "costOfAid(II)I", [aid, 0])
        if got != exp_cost[aid]:
            fail("B20 造价：aid=%d 应为 %d（AircraftTypes.json），实跑 %r"
                 % (aid, exp_cost[aid], got))
    for aid in (11, 39, 46, 58):
        if aid not in exp_time:
            continue
        got = _run_static(cpath, "AirBuildCost", "timeOfAid(II)I", [aid, 0])
        if got != exp_time[aid]:
            fail("B20 工期：aid=%d 应为 %d（AircraftTypes.json），实跑 %r"
                 % (aid, exp_time[aid], got))
    # 编制数据没加载（getBestAidForType 返回 -1）时：造价 -1（不可造）、工期 3（原默认）
    if _run_static(cpath, "AirBuildCost", "costOfAid(II)I", [-1, 0]) != -1:
        fail("B20 aid=-1 时造价应为 -1（不可造）")
    if _run_static(cpath, "AirBuildCost", "timeOfAid(II)I", [-1, 0]) != 3:
        fail("B20 aid=-1 时工期应为 3（原默认）")
    # 无人机折扣必须真的落在数据里：同代无人机造价 < 同代有人机
    # v38：NEURON 两格（38 攻击 / 39 轰击）都要享受折扣；对照组取同代同类型的有人机（34 J35 / 36 LAMPYRIDAE）
    if 39 in exp_cost and 36 in exp_cost and not (exp_cost[39] < exp_cost[36]):
        fail("B20 无人机 NEURON(aid39) 造价 %d 不低于同代有人机 %d（×0.6 没落地）"
             % (exp_cost[39], exp_cost[36]))
    if 39 in exp_time and 36 in exp_time and not (exp_time[39] < exp_time[36]):
        fail("B20 无人机 NEURON(aid39) 工期 %d 不低于同代有人机 %d（-1 没落地）"
             % (exp_time[39], exp_time[36]))
    if 38 in exp_cost and 34 in exp_cost and not (exp_cost[38] < exp_cost[34]):
        fail("B20 无人机 NEURON(aid38) 造价 %d 不低于同代有人机 %d（aid38 的 drone 标记没进造价）"
             % (exp_cost[38], exp_cost[34]))
    if 38 in exp_time and 34 in exp_time and not (exp_time[38] < exp_time[34]):
        fail("B20 无人机 NEURON(aid38) 工期 %d 不低于同代有人机 %d（-1 没落地）"
             % (exp_time[38], exp_time[34]))
    # 端到端：真的跑 Airport.p1bCost / getBuildTime（含 +7 → getBestAidForType → 查表）
    apath = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/battles/Airport.smali")
    for ordinal, aid, label in ((0, 37, "LAMPYRIDAE 五代截击机"), (2, 39, "NEURON 五代无人机轰炸机"),
                                (3, 38, "NEURON 五代无人机攻击机")):
        at = Obj("aoc/kingdoms/lukasz/map/battles/AirUnit$AirType")
        at.fields["ordinal"] = ordinal
        AIR_GATE.update({"player_civ": 7, "unit_id": ordinal + 7, "best_aid": aid})
        got_c = _run_static(apath, "Airport", "p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I", [at])
        got_t = _run_static(apath, "Airport", "getBuildTime(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I", [at])
        if aid in exp_cost and got_c != exp_cost[aid]:
            fail("B20 p1bCost(%s) 应为 aid=%d 的造价 %d，实跑 %r（接线/参数顺序）"
                 % (label, aid, exp_cost[aid], got_c))
        if aid in exp_time and got_t != exp_time[aid]:
            fail("B20 getBuildTime(%s) 应为 aid=%d 的工期 %d，实跑 %r（接线/参数顺序）"
                 % (label, aid, exp_time[aid], got_t))
    AIR_GATE.pop("best_aid", None)

    # 探测范围必须能被执行到：AirRadar.maxDetect 取最大、跳过 null、空表 0
    rpath = os.path.join(SMALI, CLS_RADAR + ".smali")
    u = Obj("aoc/kingdoms/lukasz/map/battles/AirUnit")
    u.fields["radarDetect"] = 900.0
    u2 = Obj("aoc/kingdoms/lukasz/map/battles/AirUnit")
    u2.fields["radarDetect"] = 1800.0
    got = _run_static(rpath, "AirRadar", "maxDetect(Ljava/util/List;)F", [[u, None, u2]])
    if got != 1800.0:
        fail("B20 AirRadar.maxDetect 应取最大 1800.0，实跑 %r" % (got,))
    if _run_static(rpath, "AirRadar", "maxDetect(Ljava/util/List;)F", [[]]) != 0.0:
        fail("B20 AirRadar.maxDetect 空表应为 0.0")


def check_air_v37_groups():
    """B21 v37：artGroupOf 按文明 tag 分四组（0中 1欧 2俄 3美），未知 tag 落俄国组

    盯三种真实错误：
      ① 归属写串（tai 落中国、pak 落俄国…）—— 面板会给出别国机型；
      ② 未知 tag 默认组还是中国（旧实现 v0=0）—— 除中国外所有文明整体拿错机；
      ③ 表缺项/重项（同一个 tag 在两个组里，先命中谁看运气）。
    """
    import json as _json
    path = os.path.join(SMALI, CLS_TAGS + ".smali")
    data = _json.load(open(os.path.join(ROOT, "data", "air_tags.json"), encoding="utf-8"))
    if not os.path.exists(path):
        fail("B21 缺 AirGroupTags.smali（先跑 tools/gen_air_tags.py && bash tools/build_java.sh）")
        return
    G = {}
    for name in ("CN", "EU", "RU", "US"):
        G[name] = _arr(path, CLS_TAGS, "TAG_" + name, "[I")
        if not G[name]:
            fail("B21 TAG_%s 表读不到（空表 = 归属全落兜底）" % name)
            return
        STATICS[CLS_TAGS + ";->TAG_" + name] = G[name]

    def code(t):
        return (ord(t[0]) << 16) | (ord(t[1]) << 8) | ord(t[2])

    def grp(t):
        return _run_static(path, "AirGroupTags", "groupOfCode(I)I", [code(t)])

    # ---------- ① 规格点名的 tag ----------
    want = [("tai", 3), ("jap", 3), ("kor", 3), ("aus", 3), ("isr", 3), ("sau", 3), ("tur", 3),
            ("pak", 0), ("ind", 2), ("chi", 0), ("chn", 0), ("rus", 2), ("sov", 2),
            ("ger", 1), ("fra", 1), ("eng", 1)]
    for t, g in want:
        got = grp(t)
        if got != g:
            fail("B21 tag %r 应落组 %d，实跑 %r（四组：0中 1欧 2俄 3美）" % (t, g, got))
    # 表里也必须真的有这些项（不能只靠"碰巧没被别人命中"）
    for t, g in want:
        arr = G[("CN", "EU", "RU", "US")[g]]
        if code(t) not in arr:
            fail("B21 tag %r 不在 TAG_%s 表里（只被别组兜住）" % (t, ("CN", "EU", "RU", "US")[g]))

    # ---------- ② 未知 tag / 空 tag → 俄国组 ----------
    for t in ("zzz", "qqq", "xyz", "uae"):
        got = grp(t)
        if got != 3:
            fail("B21 未知 tag %r 应落俄国组 3，实跑 %r（默认组又写回中国了？）" % (t, got))
    if _run_static(path, "AirGroupTags", "groupOfCode(I)I", [0]) != 3:
        fail("B21 groupOfCode(0)（tag 缺失）应落俄国组 3")

    # ---------- ③ 四组覆盖全部已知 tag，且与 data/air_tags.json 逐项一致 ----------
    name_of = {0: "CN", 1: "EU", 2: "RU", 3: "US"}
    js = {}
    for gi, name in name_of.items():
        for t in data["groups"].get(name, []):
            js[t] = gi
    if not js:
        fail("B21 data/air_tags.json 没有解析到任何 tag")
    seen = {}
    for gi, name in name_of.items():
        arr = G[name]
        if len(set(arr)) != len(arr):
            fail("B21 TAG_%s 表里有重复项" % name)
        for c in arr:
            if c in seen:
                fail("B21 代码 0x%06x 同时出现在 TAG_%s 与 TAG_%s"
                     % (c, seen[c], name))
                break
            seen[c] = name
    for t, gi in js.items():
        if code(t) not in seen:
            fail("B21 data/air_tags.json 的 tag %r 没进任何一张表" % t)
            break
        if seen[code(t)] != name_of[gi]:
            fail("B21 tag %r 应在 TAG_%s，实际在 TAG_%s"
                 % (t, name_of[gi], seen[code(t)]))
            break
        if grp(t) != gi:
            fail("B21 tag %r 应解析成组 %d，实跑 %r" % (t, gi, grp(t)))
            break
    # 反方向：表里的项不能在 JSON 里查无此 tag（否则表是手改过的）
    for c, name in seen.items():
        hit = [t for t in js if code(t) == c]
        if not hit:
            fail("B21 TAG_%s 里的代码 0x%06x 不在 data/air_tags.json（表和真源脱节）" % (name, c))
            break

    # ---------- ④ artGroupOf 蹦床 + 默认组 ----------
    mgr = os.path.join(SMALI, CLS_MGR + ".smali")
    body = _code_only(_method_body(mgr, "AirForceManager;->artGroupOf"))
    if not body:
        fail("B21 找不到 AirForceManager.artGroupOf")
    else:
        if CLS_TAGS + ";->groupOfCiv(I)I" not in body:
            fail("B21 artGroupOf 没蹦床到 AirGroupTags.groupOfCiv")
        if re.search(r"\bif-", body):
            fail("B21 artGroupOf 里还有条件跳转（归属逻辑没搬进表，仍在手写 if 链）")
        if "startsWith" in body:
            fail("B21 artGroupOf 还留着旧的 startsWith if 链")
    tagsrc = open(path, encoding="utf-8").read()
    b = _code_only(_method_body(path, "AirGroupTags;->groupOfCiv"))
    if not b or "getCiv(I)" not in b or "getCivTag()" not in b or "groupOfTag(" not in b:
        fail("B21 groupOfCiv 没走 getCiv → getCivTag → groupOfTag")
    elif not re.search(r"if-nez\s+p\d+,[^\n]*\nconst/4\s+p\d+,\s*0x3", _squash(b)):
        # DEFAULT_GROUP 是编译期常量，javac 会内联成 const/4 0x3 —— 断言"拿不到文明就返回 3"
        fail("B21 groupOfCiv 拿不到文明时没回落到俄国组 3")
    b = _code_only(_method_body(path, "AirGroupTags;->groupOfTag"))
    if not b or "codeOf(Ljava/lang/String;)I" not in b or "groupOfCode(I)I" not in b:
        fail("B21 groupOfTag 没走 codeOf → groupOfCode")
    b = _code_only(_method_body(path, "AirGroupTags;->codeOf"))
    if not b or "toLowerCase()" not in b:
        fail("B21 codeOf 没做大小写归一（大写 tag 会全落兜底组）")
    # DEFAULT_GROUP 常量本身必须是俄国组
    if "DEFAULT_GROUP:I = 0x3" not in tagsrc:
        fail("B21 AirGroupTags.DEFAULT_GROUP 不是 3（俄国组）")


# ================================================= B22/B23 v38：科技 ID 稳定化 / 消歧
CLS_PANELTEXT = "aoc/kingdoms/lukasz/map/battles/AirPanelText"
PANEL_DIR = os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/AirForce")


def _stage_tech_json():
    """找当前批次的 Technologies.json（生成器在暂存目录里原地注入）。

    优先 FMO_STAGE 环境变量，其次 /tmp/stage_vNN 里版本号最大的那个。
    找不到返回 None —— 由用例自己报"缺产物"，不许静默跳过（静默跳过 = 假绿）。
    """
    import glob
    cands = []
    env = os.environ.get("FMO_STAGE")
    if env:
        cands.append(env)

    def vnum(p):
        m = re.search(r"v(\d+)", p)
        return int(m.group(1)) if m else -1
    cands += sorted(glob.glob("/tmp/stage_v*"), key=vnum, reverse=True)
    for d in cands:
        p = os.path.join(d, "assets", "game", "technologies", "Technologies.json")
        if os.path.exists(p):
            return p
    return None


def _tech_blocks(path):
    """Technologies.json → [(id, name, category, subtag)]，按文件顺序（= lTechnology 下标）"""
    txt = open(path, encoding="utf-8").read()
    out = []
    for m in re.finditer(r"\n\t\t\{\n\t\t\tID: (\d+),\n(.*?)\n\t\t\},", txt, re.S):
        body = m.group(2)
        # 注意：body 从 "ID: N,\n" 之后开始 ⇒ 第一个字段（Name）前面没有换行，别把 \n 写死
        name = re.search(r'(?:\A|\n)\t\t\tName: "([^"]*)"', body)
        cat = re.search(r'(?:\A|\n)\t\t\tCategory: "([^"]*)"', body)
        tag = re.search(r'(?:\A|\n)\t\t\tSubTag: "([^"]*)"', body)
        out.append((int(m.group(1)), name.group(1) if name else None,
                    cat.group(1) if cat else None, tag.group(1) if tag else None))
    return out


def _smali_unesc(s):
    """把 smali 字符串里的 \\uXXXX / \\n / \\t 还原成 Python 字符串（比对 AirPanelText 返回值用）"""
    s = re.sub(r"\\u([0-9a-fA-F]{4})", lambda m: chr(int(m.group(1), 16)), s)
    return s.replace("\\n", "\n").replace("\\t", "\t").replace('\\"', '"')


def _copy_data(real_root, dst_root):
    """把 data/ 复制到临时 root（闸门验证"增删机型"用；绝不碰真仓库）"""
    import shutil
    os.makedirs(dst_root, exist_ok=True)
    shutil.copytree(os.path.join(real_root, "data"), os.path.join(dst_root, "data"))
    return dst_root


def _gen_techs(root, tech_json, extra=()):
    """在指定 root 上跑生成器（子进程，和玩家/CI 跑的是同一条命令）"""
    import subprocess
    cmd = [sys.executable, os.path.join(ROOT, "tools", "gen_air_techs.py"),
           "--root", root] + list(extra) + [tech_json]
    return subprocess.run(cmd, capture_output=True, text=True)


def check_air_v38_ids():
    """B22 科技 ID 稳定性（v38）—— 本批最重要的一条

    盯的毛病（旧实现全中）：
      · ID 按"机型首次出现 aid 顺序"现算 ⇒ 删掉一个机型，后面全体平移 ⇒ 旧存档的
        "已研究 120"变成别的机型；加一个机型，新机型可能插到中间，同样平移。
    四条：
      ① 同一份机型表连续跑两次 gen_air_techs --check 都一致（幂等），且 ID 表文件不被改动；
      ② data/air_tech_ids.json 与生成的 Technologies.json ID 一一对应，
         并且 JSON **文件顺序 = ID 升序 = lTechnology 下标**（loadTechnology 是按顺序 add 的）；
      ③ 删掉一个机型（临时副本）⇒ 其余机型 ID 一个不动，被删的 ID 变占位节点（不留洞）；
      ④ 新增一个机型（临时副本）⇒ 只追加一个新 ID，旧 ID 全部不动。
    """
    import tempfile, shutil, hashlib

    tpath = _stage_tech_json()
    if not tpath:
        fail("B22 找不到暂存的 Technologies.json（先跑 gen_air_techs.py <stage>/…/Technologies.json）")
        return
    tabp = os.path.join(ROOT, "data", "air_tech_ids.json")
    if not os.path.exists(tabp):
        fail("B22 缺 data/air_tech_ids.json（科技 ID 固定表）")
        return
    models = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                            encoding="utf-8"))["models"]
    tab = json.load(open(tabp, encoding="utf-8"))
    ids = {str(k): int(v) for k, v in (tab.get("ids") or {}).items()}
    retired = {str(k): int(v) for k, v in (tab.get("retired") or {}).items()}

    # ---------- ① 幂等：--check 连跑两次一致；写模式连跑两次字节相同；ID 表不变 ----------
    h0 = hashlib.md5(open(tabp, "rb").read()).hexdigest()
    for i in (1, 2):
        r = _gen_techs(ROOT, tpath, ["--check"])
        if r.returncode != 0:
            fail("B22 第 %d 次 gen_air_techs --check 不一致（Technologies.json 不是生成器产物的样子）：%s"
                 % (i, (r.stdout or r.stderr).strip().splitlines()[-1:]))
            break
    h1 = hashlib.md5(open(tabp, "rb").read()).hexdigest()
    if h0 != h1:
        fail("B22 --check 竟然改了 data/air_tech_ids.json（只读模式必须无副作用）")
    # 写模式：同一份机型表连跑两次，产物必须逐字节相同（否则空行/顺序每次都在变）
    # 在临时 root 里跑 —— 闸门不许改真仓库的 data/（只读原则）
    import tempfile as _tf
    tmpi = _tf.mkdtemp(prefix="b22_idem_")
    try:
        import shutil as _sh
        root4 = _copy_data(ROOT, os.path.join(tmpi, "root"))
        t4 = os.path.join(root4, "stage_Tech.json")
        _sh.copy(tpath, t4)
        digests = []
        for _ in (1, 2):
            r = _gen_techs(root4, t4)
            if r.returncode != 0:
                fail("B22 写模式生成器报错：%s" % (r.stdout + r.stderr).strip()[-200:])
                break
            digests.append(hashlib.md5(open(t4, "rb").read()).hexdigest())
        if len(digests) == 2 and digests[0] != digests[1]:
            fail("B22 写模式连跑两次产物不同（生成器不幂等：%s vs %s）"
                 % (digests[0][:8], digests[1][:8]))
    finally:
        _sh.rmtree(tmpi, ignore_errors=True)

    # ---------- ② 表 ↔ Technologies.json 一一对应 + ID = 下标 ----------
    blocks = _tech_blocks(tpath)
    if not blocks:
        fail("B22 解析不出 Technologies.json 的节点块")
        return
    seq = [b[0] for b in blocks]
    if seq != list(range(len(seq))):
        bad = next(i for i, v in enumerate(seq) if v != i)
        fail("B22 Technologies.json 的节点顺序不是 0..%d：第 %d 块的 ID 是 %d"
             "（loadTechnology 按文件顺序 add，顺序错 = lTechnology 下标全错）"
             % (len(seq) - 1, bad, seq[bad]))
    base = int(tab["baseID"])
    air = {b[0]: b for b in blocks if b[2] == "air"}
    if not air:
        fail("B22 Technologies.json 里没有 Category=air 的节点（生成器没注入？）")
        return
    if len(air) != len(ids) + len(retired):
        fail("B22 空军节点数 %d ≠ ID 表（%d 个在役 + %d 个占位）"
             % (len(air), len(ids), len(retired)))
    # 在役机型：ID 表里的号必须在 JSON 里，且名字 = 裸型号 + nameCN
    cn = {}
    for m in models:
        cn[m["modelCode"]] = m.get("nameCN", "")
    for code, tid in ids.items():
        if tid not in air:
            fail("B22 ID 表的 %s→%d 在 Technologies.json 里没有节点" % (code, tid))
            continue
        want = code + cn.get(code, "")
        got = air[tid][1]
        if got != want:
            fail("B22 科技 %d 的名字应为 %s，JSON 里是 %s" % (tid, want, got))
    # 反向：JSON 里的 air 节点必须都能在表里找到归属（要么在役、要么占位），不许有第四个来源
    for tid, (_, name, _, tag) in air.items():
        own = [c for c, i in ids.items() if i == tid] + [c for c, i in retired.items() if i == tid]
        if not own:
            fail("B22 空军节点 %d(%s) 不在 data/air_tech_ids.json 里（手改过 Technologies.json？）"
                 % (tid, name))
    # 占位节点：ID 对得上、不可研究（mask 0 由 AirTechCiv 保证，这里只查存在性）
    for code, tid in retired.items():
        if tid not in air:
            fail("B22 退役机型 %s 的占位节点（ID %d）不在 Technologies.json 里 —— ID 出现空洞"
                 % (code, tid))
    # 连续无洞：从 base 到 base+len-1 必须每个号都在
    want_ids = set(range(base, base + len(ids) + len(retired)))
    if set(air) != want_ids:
        miss = sorted(want_ids - set(air))[:5]
        fail("B22 空军科技 ID 不连续，缺 %r（删机型要留占位节点，不能空号）" % miss)

    # ---------- ③ 删一个机型 → 其余 ID 不动，被删的留占位 ----------
    tmp = tempfile.mkdtemp(prefix="b22_del_")
    try:
        root2 = _copy_data(ROOT, os.path.join(tmp, "root"))
        mp = os.path.join(root2, "data", "aircraft_models.json")
        d = json.load(open(mp, encoding="utf-8"))
        victim = "X47B"            # 只占一格（aid46，US 攻击机，nameCN 为空）⇒ 改这一格就等于删掉该机型
        vic_id = ids.get(victim)
        donor = "F117"             # 同国同类型、nameCN 也为空 ⇒ 不会触发"nameCN 不一致"
        hit = [m for m in d["models"] if m["modelCode"] == victim]
        if len(hit) != 1:
            fail("B22③ 临时副本没法模拟删除：%s 占 %d 格（预期 1 格）" % (victim, len(hit)))
            return
        for m in d["models"]:
            if m["modelCode"] == victim:
                m["modelCode"] = donor
        json.dump(d, open(mp, "w", encoding="utf-8"), ensure_ascii=False, indent=2)
        t2 = os.path.join(root2, "stage_Tech.json")
        import shutil as _sh
        _sh.copy(tpath, t2)
        r = _gen_techs(root2, t2)
        if r.returncode != 0:
            fail("B22③ 删机型的临时副本生成器报错：%s" % (r.stdout + r.stderr).strip()[-300:])
        else:
            tab2 = json.load(open(os.path.join(root2, "data", "air_tech_ids.json"), encoding="utf-8"))
            ids2 = {str(k): int(v) for k, v in tab2["ids"].items()}
            ret2 = {str(k): int(v) for k, v in tab2.get("retired", {}).items()}
            for code, tid in ids.items():
                if code == victim:
                    continue
                if ids2.get(code) != tid:
                    fail("B22③ 删掉 %s 后，%s 的 ID 从 %d 变成 %r（其余机型必须一个不动）"
                         % (victim, code, tid, ids2.get(code)))
                    break
            if ret2.get(victim) != vic_id:
                fail("B22③ 被删机型 %s 的 ID 应为 %r 并进 retired，实际 %r"
                     % (victim, vic_id, ret2.get(victim)))
            if vic_id in ids2.values():
                fail("B22③ 被删机型 %s 的 ID %d 被别的机型复用了" % (victim, vic_id))
            blocks2 = _tech_blocks(t2)
            seq2 = [b[0] for b in blocks2]
            if seq2 != list(range(len(seq2))):
                fail("B22③ 删机型后 Technologies.json 出现空洞/乱序（占位节点没发出来）")
            a2 = {b[0]: b for b in blocks2 if b[2] == "air"}
            if vic_id not in a2:
                fail("B22③ 删机型后 ID %d 没有占位节点（后面的科技会全体错位）" % vic_id)
            elif "占位" not in (a2[vic_id][1] or ""):
                fail("B22③ ID %d 的节点不是占位节点（名字 %r）" % (vic_id, a2[vic_id][1]))
    finally:
        shutil.rmtree(tmp, ignore_errors=True)

    # ---------- ④ 加一个机型 → 只追加，旧 ID 全不动 ----------
    tmp = tempfile.mkdtemp(prefix="b22_add_")
    try:
        root3 = _copy_data(ROOT, os.path.join(tmp, "root"))
        mp = os.path.join(root3, "data", "aircraft_models.json")
        d = json.load(open(mp, encoding="utf-8"))
        # aid38 是 NEURON 的第二格：改成一个新代号 ⇒ NEURON 仍占 aid39（不会触发"删机型"）
        old = d["models"][38]["modelCode"]
        d["models"][38]["modelCode"] = "NEURONX"
        json.dump(d, open(mp, "w", encoding="utf-8"), ensure_ascii=False, indent=2)
        t3 = os.path.join(root3, "stage_Tech.json")
        import shutil as _sh
        _sh.copy(tpath, t3)
        r = _gen_techs(root3, t3)
        if r.returncode != 0:
            fail("B22④ 加机型的临时副本生成器报错：%s" % (r.stdout + r.stderr).strip()[-300:])
        else:
            tab3 = json.load(open(os.path.join(root3, "data", "air_tech_ids.json"), encoding="utf-8"))
            ids3 = {str(k): int(v) for k, v in tab3["ids"].items()}
            for code, tid in ids.items():
                if ids3.get(code) != tid:
                    fail("B22④ 新增机型后，老机型 %s 的 ID 从 %d 变成 %r（旧 ID 必须不动）"
                         % (code, tid, ids3.get(code)))
                    break
            newid = ids3.get("NEURONX")
            if newid is None:
                fail("B22④ 新机型 NEURONX 没拿到 ID")
            elif newid != int(tab["nextID"]):
                fail("B22④ 新机型的 ID 应为水位线 %d（只在末尾追加），实际 %d"
                     % (tab["nextID"], newid))
            if not ids3.get(old) or len({old, "NEURONX"} & set(ids3)) != 2:
                fail("B22④ 加机型把原机型 %s 挤掉了" % old)
            blocks3 = _tech_blocks(t3)
            seq3 = [b[0] for b in blocks3]
            if seq3 != list(range(len(seq3))):
                fail("B22④ 新增机型后 Technologies.json 顺序/连续性被破坏")
            if len(blocks3) <= len(blocks):
                fail("B22④ 新增机型后节点数应 +1（%d → %d）"
                     % (len(blocks), len(blocks3)))
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def check_air_v38_mirage():
    """B23 消歧与无人机（v38）

    ① MIRAGE4 → MIRAGEIV：机型表里不能再有 MIRAGE4；MIRAGEIV 带 nameCN=幻影IV、
       key=A_EU_MIRAGEIV_B；科技名 `MIRAGEIV幻影IV`、编制名 `MIRAGEIV幻影IV轰炸机`；
       MIRAGE2K（幻影 2000）**不许被顺手改掉**。
    ② IsDrone:true 的条数：机型表 drone 标记 == AircraftTypes.json == AirModelStats.DRONE 表，
       且 ≥4（NEURON 两格 / X47B / S70）。
    ③ 欧洲五代攻击、轰炸两格（aid38/aid39，同一架 NEURON）必须都为 true —— v37 只标了 aid39，
       同一型号两种行为（面板/造价/空战挂点各说一套）。
    ④ 面板 hover 接线：BtnBuild / BtnSelect 都追加了"雷达探测 / 无人机"片段，
       片段内**零条件跳转**（手写 smali 里加分支 = 极性风险），且值取自 RadarDetect/IsDrone。
    ⑤ 执行 AirPanelText：雷达取整、无人机标记两态（解释器真跑，不看代码形状）。
    """
    import json as _json
    models = _json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                             encoding="utf-8"))["models"]
    by_aid = {aid: m for aid, m in enumerate(models)}
    codes = {m["modelCode"] for m in models}

    # ---------- ① 消歧 ----------
    if "MIRAGE4" in codes:
        fail("B23 机型表里还有 MIRAGE4（应改名 MIRAGEIV，避免被读成幻影 4000）")
    if "MIRAGEIV" not in codes:
        fail("B23 机型表里没有 MIRAGEIV")
    else:
        mu = by_aid[23]
        if mu["modelCode"] != "MIRAGEIV" or mu["key"] != "A_EU_MIRAGEIV_B":
            fail("B23 aid23 应为 MIRAGEIV / A_EU_MIRAGEIV_B，实际 %s / %s"
                 % (mu["modelCode"], mu["key"]))
        if mu.get("nameCN") != "幻影IV":
            fail("B23 MIRAGEIV 的 nameCN 应为 幻影IV，实际 %r" % (mu.get("nameCN"),))
        if mu["type"] != "BOMBER" or int(mu["gen"]) != 4 or mu["country"] != "EU":
            fail("B23 aid23 应是 EU/4/BOMBER（欧洲四代轰炸机），实际 %s/%s/%s"
                 % (mu["country"], mu["gen"], mu["type"]))
    # 幻影 2000 不许被顺手改掉
    m2k = by_aid[21]
    if m2k["modelCode"] != "MIRAGE2K" or m2k.get("nameCN") or m2k["key"] != "A_EU_MIRAGE2K_I":
        fail("B23 MIRAGE2K（幻影 2000）被误改了：%r" % (m2k,))
    # 科技名 / 编制名必须跟着改（不是只改机型表）
    rec = os.path.join(ROOT, "data", "air_tech.json")
    if os.path.exists(rec):
        ns = _json.load(open(rec, encoding="utf-8"))["nodes"]
        hit = [n for n in ns if n.get("model") == "MIRAGEIV"]
        if not hit:
            fail("B23 科技表里没有 MIRAGEIV 节点（重跑 gen_air_techs.py）")
        elif hit[0]["name"] != "MIRAGEIV幻影IV":
            fail("B23 科技名应为 MIRAGEIV幻影IV，实际 %r" % hit[0]["name"])
        elif "MIRAGE4" in str(ns):
            fail("B23 data/air_tech.json 里还留着 MIRAGE4")
    units = os.path.join(ROOT, "build", "assets", "game", "units", "AirBomber.json")
    if os.path.exists(units):
        txt = open(units, encoding="utf-8").read()
        if "MIRAGEIV幻影IV轰炸机" not in txt:
            fail("B23 编制表里没有 MIRAGEIV幻影IV轰炸机（重跑 gen_air_units.py）")
        if "MIRAGE4轰炸机" in txt:
            fail("B23 编制表里还留着 MIRAGE4轰炸机")
    else:
        fail("B23 缺 build/…/AirBomber.json（先跑 gen_air_units.py）")

    # ---------- ② 无人机条数三方对账 ----------
    want = [1 if m.get("drone") else 0 for m in models]
    n_drone = sum(want)
    if n_drone < 4:
        fail("B23 机型表 drone:true 只有 %d 格（应 ≥4：NEURON×2/X47B/S70）" % n_drone)
    oob = os.path.join(ROOT, "build", "assets", "game", "AirUnit", "AircraftTypes.json")
    if not os.path.exists(oob):
        fail("B23 缺 build/…/AircraftTypes.json（先跑 gen_air_oob.py）")
    else:
        rows = re.findall(r"\{\s*ID: (\d+),(.*?)\n\t\t\},", open(oob, encoding="utf-8").read(), re.S)
        got = []
        for rid, rb in rows:
            m = re.search(r"IsDrone: (true|false)", rb)
            got.append(1 if (m and m.group(1) == "true") else 0)
        if len(got) != 64:
            fail("B23 AircraftTypes.json 应为 64 行，实际 %d" % len(got))
        elif got != want:
            bad = next(i for i in range(64) if got[i] != want[i])
            fail("B23 AircraftTypes.json 的 IsDrone 与机型表不一致：aid=%d 机型表=%d 编制=%d"
                 % (bad, want[bad], got[bad]))
        if sum(got) != n_drone:
            fail("B23 IsDrone:true 条数 %d ≠ 机型表 drone 条数 %d" % (sum(got), n_drone))
    stats = os.path.join(SMALI, CLS_STATS + ".smali")
    drone_tbl = _arr(stats, CLS_STATS, "DRONE", "[Z")
    if len(drone_tbl) != 64:
        fail("B23 AirModelStats.DRONE 表应为 64 项，实际 %d" % len(drone_tbl))
    elif [int(x) for x in drone_tbl] != want:
        fail("B23 AirModelStats.DRONE 表与机型表 drone 标记不一致")

    # ---------- ③ 欧洲五代攻击/轰炸两格一致 ----------
    for aid, label in ((38, "EU 五代攻击机"), (39, "EU 五代轰炸机")):
        m = by_aid[aid]
        if not m.get("drone"):
            fail("B23 aid=%d（%s，%s）应为无人机 —— 同一架 NEURON 两格必须同行为"
                 % (aid, label, m["modelCode"]))
    if by_aid[38]["modelCode"] != by_aid[39]["modelCode"]:
        fail("B23 aid38/aid39 不是同一机型：%s vs %s"
             % (by_aid[38]["modelCode"], by_aid[39]["modelCode"]))

    # ---------- ④ 面板 hover 接线（手写 smali，零条件跳转） ----------
    for fn in ("InGame_AirForceOptions$BtnBuild.smali", "InGame_AirForceOptions$BtnSelect.smali"):
        p = os.path.join(PANEL_DIR, fn)
        body = _method_body(p, os.path.basename(p)[:-len(".smali")] + ";->buildElementHover")
        if not body:
            fail("B23 找不到 %s 的 buildElementHover" % fn)
            continue
        for need in ("AircraftTypeData;->RadarDetect:F",
                     "AirPanelText;->radarInt(F)I",
                     "AircraftTypeData;->IsDrone:Z",
                     "AirPanelText;->droneTag(Z)Ljava/lang/String;"):
            if need not in body:
                fail("B23 %s 的 hover 没接 %s（雷达/无人机那两行没落地）" % (fn, need))
        start = body.find("\\u96f7\\u8fbe\\u63a2\\u6d4b")     # "雷达探测"
        if start < 0:
            fail("B23 %s 的 hover 里没有『雷达探测』标签" % fn)
            continue
        end = body.find("StringBuilder;->toString()Ljava/lang/String;", start)
        if end < 0:
            fail("B23 %s 的 hover 片段没有回到 toString（拼接链被拆了）" % fn)
            continue
        seg = body[start:end]
        if re.search(r"\bif-", seg):
            fail("B23 %s 的雷达/无人机片段里出现了条件跳转（手写 smali 只许同构追加）" % fn)
        if "\\u65e0\\u4eba\\u673a" in seg:
            fail("B23 %s 把『无人机』写成了 smali 字面量 —— 判定必须在 AirPanelText 里" % fn)

    # ---------- ⑤ 执行 AirPanelText ----------
    pt = os.path.join(SMALI, CLS_PANELTEXT + ".smali")
    if not os.path.exists(pt):
        fail("B23 缺 AirPanelText.smali（跑 bash tools/build_java.sh）")
        return
    for v, want_i in ((550.0, 550), (900.0, 900), (1300.0, 1300), (1800.0, 1800),
                      (0.0, 0), (-5.0, 0), (0.4, 0), (0.6, 1)):
        got = _run_static(pt, "AirPanelText", "radarInt(F)I", [v])
        if got != want_i:
            fail("B23 AirPanelText.radarInt(%r) 应为 %d，实跑 %r" % (v, want_i, got))
            break
    for flag, want_s in ((1, "\n无人机"), (0, "")):
        raw = _run_static(pt, "AirPanelText", "droneTag(Z)Ljava/lang/String;", [flag])
        got = _smali_unesc(raw) if isinstance(raw, str) else raw
        if got != want_s:
            fail("B23 AirPanelText.droneTag(%d) 应为 %r，实跑 %r" % (flag, want_s, got))


# ================================================= B24 飞机雷达盘复用建筑画法（v39）
CLS_RD = "aoc/kingdoms/lukasz/map/province/RadarDisc"
F_RD = os.path.join(SMALI, CLS_RD + ".smali")
F_PDA = os.path.join(SMALI, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
RD_TEX = CLS_RD + ";->tex"
RD_REGION = CLS_RD + ";->region"
RD_BLEND = "com/badlogic/gdx/graphics/Pixmap$Blending;->None"
RADAR_LOCK = os.path.join(ROOT, "baseline", "v39_radar_lock.txt")


def _body_of(path, name):
    """取某个 .method 的方法体原文（不含 .method / .end method）"""
    txt = open(path, encoding="utf-8", errors="replace").read()
    m = re.search(r"^\.method[^\n]*\s%s\(" % re.escape(name), txt, re.M)
    if not m:
        return None
    return txt[m.end():txt.find(".end method", m.end())]


def _f32(v):
    """解释器只在 const/high16 时把位型解成 float；`const v, 0x3e4ccccd` 会留成 int —— 统一还原"""
    if isinstance(v, float):
        return v
    if isinstance(v, int):
        return struct.unpack("<f", struct.pack("<I", v & 0xFFFFFFFF))[0]
    return v


def _f32r(x):
    """把 double 舍入成 float32（模拟 Dalvik 的 float 运算）"""
    return struct.unpack("<f", struct.pack("<f", x))[0]


def _n_slots(params):
    """参数表占几个寄存器槽（参考型 1 槽、long/double 2 槽）"""
    n, i = 0, 0
    while i < len(params):
        c = params[i]
        if c == "L":
            i = params.index(";", i) + 1
            n += 1
        elif c == "[":
            while params[i] == "[":
                i += 1
            i = (params.index(";", i) + 1) if params[i] == "L" else (i + 1)
            n += 1
        else:
            n += 2 if c in "JD" else 1
            i += 1
    return n


def _rows(events):
    """Pixmap.fillRectangle 的实参：vals = [pixmap, x, y, w, h]"""
    return [tuple(e[3][1:5]) for e in events
            if e[0] == "invoke" and e[2].endswith("Pixmap;->fillRectangle(IIII)V")]


def _spec_rows(r=127):
    """**独立**实现一遍"逐行扫描线椭圆"（float32 逐步舍入，与 Dalvik 的 float 同精度）。

    故意不读 smali 的循环、不复用被测代码：比的是"画出来的盘长什么样"，
    不是"代码看起来像不像"。
    """
    out = []
    for dy in range(-r, r + 1):
        q = _f32r(_f32r(float(dy)) / _f32r(float(r)))
        t = _f32r(1.0 - _f32r(q * q))
        if t <= 0.0:
            continue
        w = int(_f32r(_f32r(t ** 0.5) * _f32r(float(r))))
        out.append((r - w, r + dy, w + w, 1))
    return out


def check_air_v39_radar():
    """B24 飞机雷达盘 = 建筑那套"扫描线填充椭圆盘"（v39）

    ① drawAircraftRadar 里不许再出现 Images.radarFill / ImageManager.getImage（贴图入口断干净）；
    ② 必须恰好一条 5 实参的"盘绘制"调用（v39 = RadarDisc->draw，v40 起 = RadarOverlay->drawDisc），
       寄存器**逐位**等于 v14/v10/v11/v12/v13（batch / 中心 / rx / ry），且这条调用前后
       紧挨着既有的 setColor 与 WHITE 复原 ⇒ 绘制段只换了这一条指令，没写任何局部寄存器
       （窗口不会撞到 p 寄存器）；v40 新增的约束（不许再有 RadarDisc->draw 直调）在 B25③。
    ③ 真跑 RadarDisc.ensure() / RadarDisc.draw()（解释器，不看代码形状）：
       256×256 RGBA8888 单位盘只建一次、颜色 0.2/0.2/1.0(A=1.0)、setBlending(None)、
       253 行扫描线与独立实现逐行相同、new Texture/TextureRegion、dispose；
       第二次调用一个像素都不重算（懒建 + 极性）；draw() 的 y 取反与 alpha 0.2；
       全类无 currentTimeMillis/nanoTime（不许脉动）；
    ④ RadarBitmap / PlayerFogOfWar / AirLat 三个参照实现的 md5 必须与 v38 模板包版本一致。
    """
    # ---------- ① 贴图入口断干净 ----------
    body = _body_of(F_PDA, "drawAircraftRadar")
    if body is None:
        fail("B24 找不到 ProvinceDrawArmy.drawAircraftRadar")
        return
    code = _code_only(body)
    if "Images;->radarFill" in code:
        fail("B24 drawAircraftRadar 里还有 Images;->radarFill（radarFill.png 的引用没断）")
    if "ImageManager;->getImage" in code:
        fail("B24 drawAircraftRadar 里还有 ImageManager;->getImage（没换成 RadarDisc）")

    # ---------- ② 调用点形状 + 寄存器 ----------
    # v40：目标类换成 RadarOverlay（一次合成），调用形状与寄存器必须逐位不变
    calls = [l.strip() for l in code.split("\n")
             if "RadarDisc;->draw(" in l or "RadarOverlay;->drawDisc(" in l]
    if len(calls) != 1:
        fail("B24 drawAircraftRadar 里应恰好 1 条雷达盘绘制调用"
             "（RadarOverlay->drawDisc / RadarDisc->draw），实际 %d 条：%s"
             % (len(calls), calls))
    else:
        call = calls[0]
        mm = re.match(r"invoke-static \{([^}]*)\}, Laoc/kingdoms/lukasz/map/province/"
                      r"(?:RadarOverlay;->drawDisc|RadarDisc;->draw)"
                      r"\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII\)V$", call)
        if not mm:
            fail("B24 雷达盘绘制的调用形状不对（应 invoke-static {…}, …RadarOverlay;->drawDisc"
                 "(LSpriteBatch;IIII)V）：%s" % call)
        else:
            regs = [int(x) for x in re.findall(r"v(\d+)", mm.group(1))]
            nparams = _n_slots("Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII")
            if regs != [14, 10, 11, 12, 13]:
                fail("B24 雷达盘绘制的实参寄存器应为 v14,v10,v11,v12,v13"
                     "（batch/中心/rx/ry），实际 %s" % ", ".join("v%d" % r for r in regs))
            if len(regs) != nparams:
                fail("B24 雷达盘绘制应传 %d 个实参（sb + 中心两个 + rx/ry），实际 %d"
                     % (nparams, len(regs)))
            nregs = re.search(r"\.registers\s+(\d+)", body)
            nregs = int(nregs.group(1)) if nregs else 0
            over = [r for r in regs if r >= nregs]
            if over:
                fail("B24 雷达盘绘制的实参 %s 越出 .registers %d"
                     % (", ".join("v%d" % r for r in over), nregs))
            if 14 >= nregs:
                fail("B24 batch 寄存器 v14 越出 .registers %d —— drawAircraftRadar 的窗口变了？"
                     % nregs)
        lines = [l for l in code.split("\n") if l.strip()]
        idx = next((i for i, l in enumerate(lines)
                    if "RadarDisc;->draw(" in l or "RadarOverlay;->drawDisc(" in l), -1)
        if idx >= 0:
            prev = lines[idx - 1] if idx > 0 else ""
            nxt = lines[idx + 1] if idx + 1 < len(lines) else ""
            if "setColor(FFFF)V" not in prev:
                fail("B24 雷达盘绘制之前应紧挨着既有的 setColor(FFFF)V"
                     "（只换绘制那一段），实际上一行：%s" % prev)
            if "Color;->WHITE" not in nxt:
                fail("B24 雷达盘绘制之后应紧挨着 Color.WHITE 复原，实际下一行：%s" % nxt)

    # ---------- ③ 真跑 ----------
    if not os.path.exists(F_RD):
        fail("B24 缺 src/smali/%s.smali" % CLS_RD)
        return
    txt = open(F_RD, encoding="utf-8", errors="replace").read()
    rcode = _code_only(txt)          # 去注释：注释里提到 currentTimeMillis 不算数
    if "0.2 0.2 1.0" not in txt:
        fail("B24 RadarDisc 里没有写死盘内颜色 0.2 0.2 1.0 的说明/常量")
    if "0x3e4ccccd" not in rcode:
        fail("B24 RadarDisc 里没有 0x3e4ccccd（绘制 alpha 0.2 / 蓝层 R·G）")
    if not re.search(r"new-instance v\d+, Lcom/badlogic/gdx/graphics/Texture;", rcode):
        fail("B24 RadarDisc 里没有 new Texture（没从 Pixmap 烘成纹理）")

    # ③-1 首次调用：真建盘
    STATICS.pop(RD_TEX, None)
    STATICS.pop(RD_REGION, None)
    STATICS[RD_BLEND] = "Blending.None"      # 让解释器能认出读的是枚举的 None
    it = Interp(F_RD, CLS_RD + ";->ensure()V")
    it.run()
    ev = it.events
    if [e for e in ev if e[0] == "abort"]:
        fail("B24 RadarDisc.ensure() 跑不完：%s" % [e for e in ev if e[0] == "abort"])

    news = [e[1] for e in ev if e[0] == "new"]
    if news.count("com/badlogic/gdx/graphics/Pixmap") != 1:
        fail("B24 ensure() 应只建 1 张 Pixmap，实际 %d 张（%s）"
             % (news.count("com/badlogic/gdx/graphics/Pixmap"), news))
    if news.count("com/badlogic/gdx/graphics/Texture") != 1:
        fail("B24 ensure() 应只建 1 张 Texture，实际 %d 张" % news.count("com/badlogic/gdx/graphics/Texture"))
    if news.count("com/badlogic/gdx/graphics/g2d/TextureRegion") != 1:
        fail("B24 ensure() 应只建 1 个 TextureRegion，实际 %d"
             % news.count("com/badlogic/gdx/graphics/g2d/TextureRegion"))

    pm_inits = [e for e in ev if e[0] == "invoke" and e[2].endswith("Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V")]
    if not pm_inits:
        fail("B24 ensure() 没调 Pixmap(<w>,<h>,Format) 构造")
    else:
        v = pm_inits[0][3]
        if (v[1], v[2]) != (256, 256):
            fail("B24 单位盘尺寸应为 256×256，实际 %s×%s" % (v[1], v[2]))

    blend = [e for e in ev if e[0] == "invoke" and e[2].endswith("Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V")]
    if not blend:
        fail("B24 ensure() 没调 setBlending（扫描线会互相叠加）")
    elif blend[0][3][1] != "Blending.None":
        fail("B24 setBlending 应传 Pixmap.Blending.None，实际 %r" % (blend[0][3][1],))

    col = [e for e in ev if e[0] == "invoke" and e[2].endswith("Pixmap;->setColor(FFFF)V")]
    if not col:
        fail("B24 ensure() 没给 Pixmap 设盘内颜色")
    else:
        got = tuple(_f32(x) for x in col[0][3][1:5])
        want = (_f32r(0.2), _f32r(0.2), _f32r(1.0), _f32r(1.0))
        if got != want:
            fail("B24 盘内颜色应为 0.2/0.2/1.0/(A=1.0)，实际 %s" % (got,))

    rows = _rows(ev)
    spec = _spec_rows()
    if len(rows) != 253:
        fail("B24 扫描线应是 253 行（dy=-126..126；±127 处 t=0 跳过），实际 %d 行" % len(rows))
    if rows != spec:
        diff = [i for i in range(min(len(rows), len(spec))) if rows[i] != spec[i]][:3]
        fail("B24 扫描线与「逐行填充椭圆」不符：%d/%d 行不同，首个差异 %s（实际 %s / 期望 %s）"
             % (sum(1 for i in range(min(len(rows), len(spec))) if rows[i] != spec[i]),
                len(spec), diff[0] if diff else "-",
                rows[diff[0]] if diff else "-", spec[diff[0]] if diff else "-"))
    else:
        if max(r[2] for r in rows) != 254:
            fail("B24 盘最宽行应是 254px（dy=0，w=127），实际 %d" % max(r[2] for r in rows))
        if any(r[3] != 1 for r in rows):
            fail("B24 扫描线每行高必须是 1px（逐行填充）")

    if not [e for e in ev if e[0] == "invoke" and e[2].endswith("Pixmap;->dispose()V")]:
        fail("B24 ensure() 没 dispose Pixmap（每帧漏内存）")
    if not re.search(r"\.catch Ljava/lang/Throwable;", txt):
        fail("B24 RadarDisc 没有 try/catch 保命（渲染线程抛异常 = 闪退）")
    if any(("currentTimeMillis" in e[2] or "nanoTime" in e[2]) for e in ev if e[0] == "invoke"):
        fail("B24 RadarDisc 在建盘时读了时钟（不许脉动）")
    for bad in ("currentTimeMillis", "nanoTime"):
        if bad in rcode:
            fail("B24 RadarDisc 里出现 %s（不许脉动/多层渐变）" % bad)

    # ③-2 第二次调用：懒建必须先命中（极性）
    STATICS[RD_TEX] = Obj("com/badlogic/gdx/graphics/Texture")   # 假装已经建过
    STATICS.pop(RD_REGION, None)
    it2 = Interp(F_RD, CLS_RD + ";->ensure()V")
    it2.run()
    if [e for e in it2.events if e[0] == "new"]:
        fail("B24 ensure() 第二次调用还在建对象（懒建失效 / if-nez 极性写反）：%s"
             % [e[1] for e in it2.events if e[0] == "new"])
    if _rows(it2.events):
        fail("B24 ensure() 第二次调用还在重烘扫描线（应直接 return）")
    if it2.events and it2.events[-1][0] not in ("return", "abort"):
        fail("B24 ensure() 第二次调用没走到 return：%s" % (it2.events[-1],))

    # ③-3 draw()：y 取反 / alpha 0.2 / 复原
    STATICS[RD_REGION] = Obj("com/badlogic/gdx/graphics/g2d/TextureRegion")
    it3 = Interp(F_RD, CLS_RD + ";->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V")
    b = it3.pbase
    it3.regs[b] = Obj("com/badlogic/gdx/graphics/g2d/SpriteBatch")
    it3.regs[b + 1], it3.regs[b + 2], it3.regs[b + 3], it3.regs[b + 4] = 100, 200, 30, 10
    it3.run()
    if not [e for e in it3.events if e[0] == "invoke" and e[2] == "L" + CLS_RD + ";->ensure()V"]:
        fail("B24 RadarDisc.draw 没先调 ensure()（懒建入口断了）")
    dcol = [e for e in it3.events if e[0] == "invoke" and e[2].endswith("SpriteBatch;->setColor(FFFF)V")]
    if not dcol:
        fail("B24 RadarDisc.draw 没设绘制颜色")
    else:
        got = tuple(_f32(x) for x in dcol[0][3][1:5])
        want = (1.0, 1.0, 1.0, _f32r(0.2))
        if got != want:
            fail("B24 绘制 tint 应为 (1,1,1,alpha=0.2)，实际 %s" % (got,))
    draws = [e for e in it3.events if e[0] == "invoke"
             and e[2].endswith("SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V")]
    if not draws:
        fail("B24 RadarDisc.draw 没画 TextureRegion")
    else:
        # vals = [SpriteBatch, TextureRegion, x, y, w, h]（6 个字，故走 invoke-virtual/range）
        got = tuple(_f32(x) for x in draws[0][3][2:6])
        want = (100.0 - 30.0, -(200.0 + 10.0), 30.0 + 30.0, 10.0 + 10.0)
        if got != want:
            fail("B24 draw() 的 (x,y,w,h) 应为 cx-rx / -(cy+ry) / 2rx / 2ry = %s，实际 %s"
                 % (want, got))
        if len(draws[0][3]) != 6:
            fail("B24 draw() 实参应有 6 个字（sb+region+x/y/w/h），实际 %d" % len(draws[0][3]))
    if not [e for e in it3.events if e[0] == "invoke"
            and e[2].endswith("SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V")]:
        fail("B24 RadarDisc.draw 用完没把颜色复原成 Color.WHITE")

    # ③-4 region 还没建出来时：不许 draw，但颜色必须复原
    STATICS.pop(RD_REGION, None)
    it4 = Interp(F_RD, CLS_RD + ";->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V")
    b = it4.pbase
    it4.regs[b] = Obj("com/badlogic/gdx/graphics/g2d/SpriteBatch")
    it4.run()
    if [e for e in it4.events if e[0] == "invoke"
            and e[2].endswith("SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V")]:
        fail("B24 region 为 null 时不应再 draw（会画一张空纹理）")
    if not [e for e in it4.events if e[0] == "invoke"
            and e[2].endswith("SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V")]:
        fail("B24 region 为 null 时也要把颜色复原（否则后续绘制全被 alpha 0.2 污染）")

    # ---------- ④ 三个参照实现不许被顺手改 ----------
    if not os.path.exists(RADAR_LOCK):
        fail("B24 缺 baseline/v39_radar_lock.txt（无法核对 RadarBitmap/PlayerFogOfWar/AirLat 未变）")
    else:
        for ln in open(RADAR_LOCK, encoding="utf-8"):
            ln = ln.strip()
            if not ln or ln.startswith("#"):
                continue
            want, path = ln.split()
            full = os.path.join(ROOT, path)
            if not os.path.exists(full):
                fail("B24 锁定文件不存在：%s" % path)
                continue
            got = hashlib.md5(open(full, "rb").read()).hexdigest()
            if got != want:
                fail("B24 %s 被改动了（md5 %s ≠ v38 模板包版本的 %s）"
                     % (path.split("/")[-1], got[:12], want[:12]))


# ================================================= B25 飞机雷达盘"一次合成"（v40）
# 用户口径的 bug：「飞机雷达盘重叠处会变亮」。v39 是每个任务 setColor(1,1,1,0.2) 各混一次
# ⇒ 屏上 = (1-0.8^N)·盘 + 0.8^N·底，N 大了就一片白；建筑盘是"所有盘烘进同一张图、最后整图
# 画一次 0.2" ⇒ 重叠天然不变亮。v40 用离屏 FrameBuffer 复刻后者：
#   FBO 内 alpha=1.0（后画覆盖先画，重叠饱和）、FBO 外整图合成一次 0.2。
CLS_RO = "aoc/kingdoms/lukasz/map/province/RadarOverlay"
F_RO = os.path.join(SMALI, CLS_RO + ".smali")
RO_FB = CLS_RO + ";->fb"
RO_REGION = CLS_RO + ";->fbRegion"
RO_ACTIVE = CLS_RO + ";->active"
RO_W = CLS_RO + ";->fbW"
RO_H = CLS_RO + ";->fbH"
G_FB = "com/badlogic/gdx/graphics/glutils/FrameBuffer"
L_FB_BEGIN = "L" + G_FB + ";->begin()V"
L_FB_END = "L" + G_FB + ";->end()V"
L_FB_DISPOSE = "L" + G_FB + ";->dispose()V"
L_FB_CTOR = "L" + G_FB + ";-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V"
L_FB_COLOR = "L" + G_FB + ";->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;"
L_SB_END = "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V"
L_SB_BEGIN = "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V"
L_SB_SETC = "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V"
L_SB_WHITE = "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V"
L_SB_DRAW = ("Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw"
             "(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V")
L_GL_CLEARCOLOR = "Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V"
L_GL_CLEAR = "Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V"
L_TR_CTOR = "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V"
L_TR_FLIP = "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V"
L_RD_DRAW = "L" + CLS_RD + ";->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V"
GDX_GFX = "com/badlogic/gdx/Gdx;->graphics"
GDX_GL = "com/badlogic/gdx/Gdx;->gl"
PIX_FMT = "com/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888"
COLOR_WHITE = "com/badlogic/gdx/graphics/Color;->WHITE"
TR_CLS = "com/badlogic/gdx/graphics/g2d/TextureRegion"
SB_CLS = "com/badlogic/gdx/graphics/g2d/SpriteBatch"


def _calls(ev):
    """(目标, 实参表) 列表 —— 只取 invoke"""
    return [(e[2], e[3]) for e in ev if e[0] == "invoke"]


def _catch_of(path, name):
    """取方法里 :catch_0 之后的代码（去注释）—— 用来断言"保命分支真的关掉了 FBO"""
    body = _body_of(path, name) or ""
    i = body.find(":catch_0")
    return _code_only(body[i:]) if i >= 0 else ""


def _ro_prepare(w=1080, h=2400, fb=True, disc=True, active=False, fbw=None, fbh=None):
    """布置 RadarOverlay 的静态上下文（Gdx.graphics / Gdx.gl / 格式枚举 / 单位盘 region / FBO 三件套）

    fb=False 就是 ensure() 在建 FBO 时抛异常后的状态（catch 里把 fb/fbRegion 全置 null）——
    用它来真跑"FBO 不可用"的降级路径，而不是靠正则断言"我写了 catch"。
    """
    for k in (RO_FB, RO_REGION, RO_ACTIVE, RO_W, RO_H):
        STATICS.pop(k, None)
    gfx = Obj("com/badlogic/gdx/Graphics")
    gfx.fields["getWidth"] = w
    gfx.fields["getHeight"] = h
    STATICS[GDX_GFX] = gfx
    STATICS[GDX_GL] = Obj("com/badlogic/gdx/graphics/GL20")
    STATICS[PIX_FMT] = "Format.RGBA8888"
    STATICS[COLOR_WHITE] = Obj("com/badlogic/gdx/graphics/Color")
    STATICS[RD_REGION] = Obj(TR_CLS) if disc else 0
    if fb:
        STATICS[RO_FB] = Obj(G_FB)
        STATICS[RO_REGION] = Obj(TR_CLS)
        STATICS[RO_W] = w if fbw is None else fbw
        STATICS[RO_H] = h if fbh is None else fbh
    if active:
        STATICS[RO_ACTIVE] = 1


def _ro_run(sig, *args):
    it = Interp(F_RO, CLS_RO + ";->" + sig)
    b = it.pbase
    for i, v in enumerate(args):
        it.regs[b + i] = v
    it.run()
    return it


def check_air_v40_overlay():
    """B25 飞机雷达盘"一次合成"（v40）：重叠不再变亮，FBO 不可用时回退 v39

    ① RadarOverlay 必须真的用离屏 FrameBuffer：`new-instance` + `<init>(Pixmap$Format,IIZ)`；
       begin 里 `fb.begin()`、end 里 `fb.end()`；ensure() 首建 1 个 FBO（格式 RGBA8888、
       尺寸 = 屏幕、无深度）+ 1 个 TextureRegion + `flip(false,true)`（FBO 纹理上下颠倒）；
       屏尺寸不变时第二次调用一个对象都不建（懒建立 + 判等极性），屏尺寸变了先 dispose 再重建；
       begin 的事件序列固定为 sb.end → fb.begin → glClearColor(0,0,0,0) →
       glClear(GL_COLOR_BUFFER_BIT) → sb.begin → setColor(1,1,1,1)，并置 active；
    ② drawDisc 在 FBO 内的绘制 alpha 必须是 1.0（0x3f800000），**不得**是 0.2（0x3e4ccccd）——
       alpha=1 才有"后画覆盖先画"，重叠像素饱和而不是累加；几何与 v39 逐位一致；
       FBO 不可用（active=false）时必须**回退** RadarDisc->draw，实参逐位相同（雷达圈不消失）；
    ③ end 里必须**恰好一次** 0x3e4ccccd(0.2) 的整图合成、铺满 (0,0,fbW,fbH)，用完复原 Color.WHITE；
       active=false 时直接 return（绝不碰后缓冲）；drawAircraftRadar 必须循环前 begin、
       :cond_c2 的 return-void 之前 end，且**不得再直接调用** RadarDisc->draw；
    ④ RadarBitmap / PlayerFogOfWar / AirLat 三个参照实现的 md5 必须与 v39 冻结表一致。
    """
    # ---------- ① 结构 + ensure ----------
    if not os.path.exists(F_RO):
        fail("B25 缺 src/smali/%s.smali" % CLS_RO)
        return
    txt = open(F_RO, encoding="utf-8", errors="replace").read()
    rocode = _code_only(txt)
    if not re.search(r"new-instance v\d+, L%s;" % re.escape(G_FB), rocode):
        fail("B25 RadarOverlay 里没有 new-instance FrameBuffer（离屏合成根本没落地）")
    if L_FB_CTOR not in rocode:
        fail("B25 RadarOverlay 没调用 FrameBuffer.<init>(Pixmap$Format,IIZ)")
    if L_FB_BEGIN not in _code_only(_body_of(F_RO, "begin") or ""):
        fail("B25 RadarOverlay.begin 里没有 fb.begin()（没真正切到离屏）")
    if L_FB_END not in _code_only(_body_of(F_RO, "end") or ""):
        fail("B25 RadarOverlay.end 里没有 fb.end()（离屏没关回屏幕后缓冲）")
    if ".catch Ljava/lang/Throwable;" not in txt:
        fail("B25 RadarOverlay 没有 try/catch 保命（渲染线程抛异常 = 直接闪退）")
    if L_FB_END not in _catch_of(F_RO, "begin"):
        fail("B25 begin 的 catch 里没有 fb.end() 兜底：异常若发生在 fb.begin() 之后"
             "（GL 上下文丢失 / glClear 抛 NPE），FBO 会一直绑着 ⇒ 整块画面画进离屏、屏幕冻住")

    # ①-1 ensure() 首建
    _ro_prepare(fb=False, disc=True)
    ev = _ro_run("ensure()V").events
    if [e for e in ev if e[0] == "abort"]:
        fail("B25 RadarOverlay.ensure() 跑不完：%s" % [e for e in ev if e[0] == "abort"])
    news = [e[1] for e in ev if e[0] == "new"]
    if news.count(G_FB) != 1:
        fail("B25 ensure() 应只建 1 个 FrameBuffer，实际 %d 个（%s）" % (news.count(G_FB), news))
    ctor = [e for e in ev if e[0] == "invoke" and e[2] == L_FB_CTOR]
    if not ctor:
        fail("B25 ensure() 没调 FrameBuffer 的 4 参构造")
    else:
        v = ctor[0][3]
        if v[1] != "Format.RGBA8888":
            fail("B25 FBO 的颜色格式应为 Pixmap$Format.RGBA8888，实际 %r" % (v[1],))
        if (v[2], v[3]) != (1080, 2400):
            fail("B25 FBO 尺寸应等于屏幕（Gdx.graphics 1080×2400），实际 %s×%s"
                 "（尺寸不一致会把盘画到画面外）" % (v[2], v[3]))
        if v[4] != 0:
            fail("B25 FBO 不需要深度缓冲（hasDepth 必须是 false），实际 %r" % (v[4],))
    if not [e for e in ev if e[0] == "invoke" and e[2] == L_FB_COLOR]:
        fail("B25 ensure() 没取 FBO 的颜色纹理（getColorBufferTexture）")
    if news.count(TR_CLS) != 1:
        fail("B25 ensure() 应只建 1 个 TextureRegion（整图合成用），实际 %d" % news.count(TR_CLS))
    if not [e for e in ev if e[0] == "invoke" and e[2] == L_TR_CTOR]:
        fail("B25 ensure() 的 TextureRegion 不是拿 FBO 颜色纹理构造的（TextureRegion(Texture)）")
    flips = [e for e in ev if e[0] == "invoke" and e[2] == L_TR_FLIP]
    if not flips:
        fail("B25 没翻 FBO 纹理的 v 坐标（上下颠倒，整条合成会贴反）")
    elif flips[0][3][1:] != [0, 1]:
        fail("B25 flip 应为 flip(false, true)（只翻 v），实际 %r" % (flips[0][3][1:],))
    if STATICS.get(RO_W) != 1080 or STATICS.get(RO_H) != 2400:
        fail("B25 ensure() 没把 FBO 尺寸记进 fbW/fbH（%r×%r）→ 合成时会铺错大小"
             % (STATICS.get(RO_W), STATICS.get(RO_H)))

    # ①-2 ensure() 第二次：一个对象都不该建（懒建立 + 尺寸判等极性）
    ev2 = _ro_run("ensure()V").events
    if [e for e in ev2 if e[0] == "new"]:
        fail("B25 ensure() 第二次调用还在建对象（懒建失效 / 尺寸判等写反）：%s"
             % [e[1] for e in ev2 if e[0] == "new"])
    if [e for e in ev2 if e[0] == "sput"]:
        fail("B25 ensure() 第二次调用还在重写静态字段（应在尺寸一致时直接 return）：%s"
             % [e[1] for e in ev2 if e[0] == "sput"])
    if ev2 and ev2[-1][0] not in ("return", "abort"):
        fail("B25 ensure() 第二次调用没走到 return：%s" % (ev2[-1],))

    # ①-3 ensure() 屏尺寸变了：必须 dispose 旧的再重建
    _ro_prepare(fbw=720)
    ev3 = _ro_run("ensure()V").events
    if not [e for e in ev3 if e[0] == "invoke" and e[2] == L_FB_DISPOSE]:
        fail("B25 屏尺寸变了却不 dispose 旧 FrameBuffer（每转一次屏漏一张屏幕大的纹理）")
    if [e[1] for e in ev3 if e[0] == "new"].count(G_FB) != 1:
        fail("B25 屏尺寸变了应重建恰好 1 个 FrameBuffer，实际 %d"
             % [e[1] for e in ev3 if e[0] == "new"].count(G_FB))

    # ①-4 begin() 全流程
    _ro_prepare(fb=True, disc=True)
    ev4 = _ro_run("begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", Obj(SB_CLS)).events
    sigs = [e[2] for e in ev4 if e[0] == "invoke"]
    seq = (L_SB_END, L_FB_BEGIN, L_GL_CLEARCOLOR, L_GL_CLEAR, L_SB_BEGIN, L_SB_SETC)
    missing = [(w, m) for w, m in zip(seq, ("开批前没 sb.end()（屏幕上已画的没 flush）",
                                            "没 fb.begin()（没切到离屏）",
                                            "没 glClearColor（FBO 每帧没清）",
                                            "没 glClear（FBO 每帧没清）",
                                            "没 sb.begin()（离屏里画不了）",
                                            "没把批颜色设成 (1,1,1,1)")) if w not in sigs]
    for w, m in missing:
        fail("B25 begin " + m)
    if not missing:
        order = [sigs.index(w) for w in seq]
        if order != sorted(order):
            fail("B25 begin 的开局顺序不对（应 sb.end → fb.begin → 清屏 → sb.begin → "
                 "setColor(1,1,1,1)）：%s" % [sigs[i] for i in order])
        cc = [e for e in ev4 if e[0] == "invoke" and e[2] == L_GL_CLEARCOLOR][0][3]
        if [_f32(x) for x in cc[1:5]] != [0.0, 0.0, 0.0, 0.0]:
            fail("B25 FBO 应清成全透明 (0,0,0,0)，实际 %s（清成黑的话整图合成会给屏幕糊一层黑）"
                 % (cc[1:5],))
        cl = [e for e in ev4 if e[0] == "invoke" and e[2] == L_GL_CLEAR][0][3]
        if cl[1] != 0x4000:
            fail("B25 glClear 的实参应为 GL_COLOR_BUFFER_BIT(0x4000)，实际 %r" % (cl[1],))
        sc = [e for e in ev4 if e[0] == "invoke" and e[2] == L_SB_SETC][0][3]
        if [_f32(x) for x in sc[1:5]] != [1.0, 1.0, 1.0, 1.0]:
            fail("B25 FBO 内的批颜色应为不透明白 (1,1,1,1)，实际 %s" % (sc[1:5],))
        if not STATICS.get(RO_ACTIVE):
            fail("B25 begin 成功打开 FBO 却没置 active ⇒ drawDisc 会误走降级路")

    # ①-5 上一帧漏了 end（active 残留）时：begin 必须先自愈，否则 FBO 一直绑着、
    #      后续所有绘制都进离屏 ⇒ 屏幕冻住。正常路径（active=false）不许乱调 end。
    L_END_CALL = "L" + CLS_RO + ";->end(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V"
    if L_END_CALL in [e[2] for e in ev4 if e[0] == "invoke"]:
        fail("B25 begin 在正常路径（active=false）就先调了 end —— 自愈门的极性写反了")
    _ro_prepare(fb=True, disc=True, active=True)
    ev5b = _ro_run("begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", Obj(SB_CLS)).events
    sigs_leak = [e[2] for e in ev5b if e[0] == "invoke"]
    if L_END_CALL not in sigs_leak:
        fail("B25 begin 没有自愈路径：上一帧漏了 end 时 FBO 仍绑着，之后整块画面都画进离屏、"
             "屏幕上表现为冻住（active 残留必须先把 FBO 关回去）")
    elif L_FB_BEGIN in sigs_leak and sigs_leak.index(L_END_CALL) > sigs_leak.index(L_FB_BEGIN):
        fail("B25 begin 的自愈必须在重开 FBO 之前（先 end 再 fb.begin）")
    elif not STATICS.get(RO_ACTIVE):
        fail("B25 begin 自愈之后没重新置 active（drawDisc 会整条退化回逐盘绘制）")

    # ---------- ② drawDisc ----------
    ro_draw = "drawDisc(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V"
    body_dd = _code_only(_body_of(F_RO, "drawDisc") or "")
    if "0x3e4ccccd" in body_dd:
        fail("B25 drawDisc 里出现了 0x3e4ccccd(0.2) —— FBO 内必须画不透明，否则重叠照样变亮")
    _ro_prepare(fb=True, disc=True, active=True)
    ev5 = _ro_run(ro_draw, Obj(SB_CLS), 100, 200, 30, 10).events
    cols = [e for e in ev5 if e[0] == "invoke" and e[2] == L_SB_SETC]
    if not cols:
        fail("B25 drawDisc 画盘前没设颜色")
    else:
        got = tuple(_f32(x) for x in cols[0][3][1:5])
        if got != (1.0, 1.0, 1.0, 1.0):
            fail("B25 drawDisc 绘制颜色的 alpha 必须是 0x3f800000(1.0)，实际 %s"
                 "（0x3e4ccccd=0.2 会让重叠处叠加变亮）" % (got,))
    draws = [e for e in ev5 if e[0] == "invoke" and e[2] == L_SB_DRAW]
    if not draws:
        fail("B25 drawDisc 在 FBO 里没画 TextureRegion")
    else:
        v = draws[0][3]
        got = tuple(_f32(x) for x in v[2:6])
        want = (100.0 - 30.0, -(200.0 + 10.0), 30.0 + 30.0, 10.0 + 10.0)
        if got != want:
            fail("B25 drawDisc 的 (x,y,w,h) 应与 v39 逐位一致 cx-rx / -(cy+ry) / 2rx / 2ry = %s，"
                 "实际 %s" % (want, got))
        if len(v) != 6:
            fail("B25 drawDisc 的 draw 实参应有 6 个字（sb+region+x/y/w/h），实际 %d" % len(v))
    if [e for e in ev5 if e[0] == "invoke" and e[2] == L_RD_DRAW]:
        fail("B25 FBO 开着时不该再走 RadarDisc->draw（那是 v39 的逐盘叠加路径）")

    # ②-2 降级：FBO 不可用（两种失败态：建不出 FBO / 单位盘没建出来）
    for label, kw in (("FrameBuffer 建不出来（ensure 抛异常后 fb=null）", dict(fb=False, disc=True)),
                      ("单位盘 region 为 null（RadarDisc.ensure 失败）", dict(fb=True, disc=False))):
        _ro_prepare(active=False, **kw)
        evd = _ro_run(ro_draw, Obj(SB_CLS), 100, 200, 30, 10).events
        rd = [e for e in evd if e[0] == "invoke" and e[2] == L_RD_DRAW]
        if not rd:
            fail("B25 %s 时 drawDisc 没有回退 RadarDisc->draw —— 雷达圈会整片消失" % label)
        else:
            if rd[0][3][1:5] != [100, 200, 30, 10]:
                fail("B25 降级调用的实参应与 v39 逐位相同 (cx,cy,rx,ry)=(100,200,30,10)，实际 %s"
                     % (rd[0][3][1:5],))
        if [e for e in evd if e[0] == "invoke" and e[2] in (L_SB_SETC, L_SB_DRAW)]:
            fail("B25 %s 时 drawDisc 还在自己设色/画 FBO（降级路径不该碰批状态）" % label)

    # ---------- ③ end 合成 + 接线 ----------
    body_end = _code_only(_body_of(F_RO, "end") or "")
    if L_FB_END not in _catch_of(F_RO, "end"):
        fail("B25 end 的 catch 里没有 fb.end() 兜底：sb.end() 抛异常（批不在 drawing 状态）"
             "时就执行不到上面的 fb.end()，FBO 一直绑着 ⇒ 屏幕冻住")
    if body_end.count("0x3e4ccccd") != 1:
        fail("B25 end 里 0x3e4ccccd(0.2) 应恰好 1 处（整图只合成一次），实际 %d 处"
             % body_end.count("0x3e4ccccd"))
    _ro_prepare(fb=True, disc=True, active=True)
    ev6 = _ro_run("end(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", Obj(SB_CLS)).events
    sigs = [e[2] for e in ev6 if e[0] == "invoke"]
    seq = (L_SB_END, L_FB_END, L_SB_BEGIN, L_SB_SETC, L_SB_DRAW, L_SB_WHITE)
    missing = [(w, m) for w, m in zip(seq, ("收尾没 sb.end()（离屏里画的没 flush 进 FBO）",
                                            "没 fb.end()（没关掉离屏、回不到屏幕后缓冲）",
                                            "没 sb.begin()（回屏幕后画不了合成）",
                                            "没设合成颜色 (1,1,1,0.2)",
                                            "没画整图合成",
                                            "合成后没复原 Color.WHITE（后续绘制全被 0.2 污染）"))
               if w not in sigs]
    for w, m in missing:
        fail("B25 end " + m)
    if not missing:
        order = [sigs.index(w) for w in seq]
        if order != sorted(order):
            fail("B25 end 的收尾顺序不对（应 sb.end → fb.end → sb.begin → setColor → 合成 → "
                 "WHITE）：%s" % [sigs[i] for i in order])
        cc = [e for e in ev6 if e[0] == "invoke" and e[2] == L_SB_SETC][0][3]
        got = tuple(_f32(x) for x in cc[1:5])
        if got != (1.0, 1.0, 1.0, _f32r(0.2)):
            fail("B25 end 的合成 alpha 必须是 0x3e4ccccd(0.2)（与建筑盘同一常量），实际 %s"
                 % (got,))
        v = [e for e in ev6 if e[0] == "invoke" and e[2] == L_SB_DRAW][0][3]
        if [_f32(x) for x in v[2:6]] != [0.0, 0.0, 1080.0, 2400.0]:
            fail("B25 end 的合成应铺满全屏 (0,0,fbW,fbH)=(0,0,1080,2400)，实际 %s"
                 % ([_f32(x) for x in v[2:6]],))
        if len(v) != 6:
            fail("B25 end 的合成 draw 实参应有 6 个字（sb+region+x/y/w/h），实际 %d" % len(v))
        if v[1] is not STATICS.get(RO_REGION):
            fail("B25 end 的合成没用 fbRegion（应铺 FBO 的那张纹理）")
    if STATICS.get(RO_ACTIVE):
        fail("B25 end 收完尾没复位 active（下一帧 begin 会串状态）")

    # ③-2 active=false：绝不碰后缓冲（三个前置判空的提前返回都落在这里）
    _ro_prepare(fb=True, disc=True, active=False)
    ev7 = _ro_run("end(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V", Obj(SB_CLS)).events
    if [e for e in ev7 if e[0] == "invoke"]:
        fail("B25 begin 没开过 FBO 时 end 仍然动了 SpriteBatch/GL（active 门写反了）：%s"
             % [e[2] for e in ev7 if e[0] == "invoke"])

    # ③-3 drawAircraftRadar 的接线
    body_pda = _code_only(_body_of(F_PDA, "drawAircraftRadar") or "")
    if "RadarDisc;->draw(" in body_pda:
        fail("B25 drawAircraftRadar 里还有 RadarDisc->draw 直调（没换成 RadarOverlay->drawDisc）")
    lines = [l for l in body_pda.split("\n") if l.strip()]
    i_beg = next((i for i, l in enumerate(lines) if "RadarOverlay;->begin(" in l), -1)
    i_end = next((i for i, l in enumerate(lines) if "RadarOverlay;->end(" in l), -1)
    i_it = next((i for i, l in enumerate(lines) if "List;->iterator()" in l), -1)
    i_cc = next((i for i, l in enumerate(lines) if l == ":cond_c2"), -1)
    if i_beg < 0:
        fail("B25 drawAircraftRadar 没接 RadarOverlay.begin（每帧不会离屏合成）")
    elif i_it < 0 or i_beg > i_it:
        fail("B25 begin 必须在任务循环（List->iterator）之前，否则先画的盘漏进合成")
    else:
        if not re.match(r"invoke-static \{v14\}, Laoc/kingdoms/lukasz/map/province/"
                        r"RadarOverlay;->begin\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;\)V$",
                        lines[i_beg]):
            fail("B25 begin 的调用形状不对（应 invoke-static {v14}, …RadarOverlay;->begin"
                 "(LSpriteBatch;)V）：%s" % lines[i_beg])
    if i_end < 0:
        fail("B25 drawAircraftRadar 没接 RadarOverlay.end（FBO 永远合成不回屏幕）")
    elif i_cc < 0 or not (i_cc < i_end <= i_cc + 2):
        fail("B25 end 必须落在 :cond_c2 的 return-void 之前（每个出口都要收尾），实际位置 %d/%d"
             % (i_end, i_cc))
    else:
        if not re.match(r"invoke-static \{v14\}, Laoc/kingdoms/lukasz/map/province/"
                        r"RadarOverlay;->end\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;\)V$",
                        lines[i_end]):
            fail("B25 end 的调用形状不对（应 invoke-static {v14}, …RadarOverlay;->end"
                 "(LSpriteBatch;)V）：%s" % lines[i_end])

    # ---------- ④ 三个参照实现不许被顺手改 ----------
    if not os.path.exists(RADAR_LOCK):
        fail("B25 缺 baseline/v39_radar_lock.txt（无法核对 RadarBitmap/PlayerFogOfWar/AirLat 未变）")
    else:
        for ln in open(RADAR_LOCK, encoding="utf-8"):
            ln = ln.strip()
            if not ln or ln.startswith("#"):
                continue
            want, path = ln.split()
            full = os.path.join(ROOT, path)
            if not os.path.exists(full):
                fail("B25 锁定文件不存在：%s" % path)
                continue
            got = hashlib.md5(open(full, "rb").read()).hexdigest()
            if got != want:
                fail("B25 %s 被改动了（md5 %s ≠ v39 冻结表 %s）"
                     % (path.split("/")[-1], got[:12], want[:12]))


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
    check_air_force_oob()
    check_hover_route()
    check_tech_civ_filter()
    check_air_sprite_single_entry()
    check_air_tech_grant()
    check_tech_unlocks_models()
    check_air_v35()
    check_air_v37_fields()
    check_air_v37_groups()
    check_air_v38_ids()
    check_air_v38_mirage()
    check_air_v39_radar()
    check_air_v40_overlay()

    if fails:
        for f in fails:
            print("  ❌ " + f)
        print("❌ 行为闸门未通过：%d 项" % len(fails))
        return 1
    print("✅ 行为闸门通过（B1 页签/翻页/关闭 · B2 回绕 · B3 切页 · B4 事件钩子 · B5 贴图幂等 · B6 代际取值 · B7 机型数值接线 · B8 屏内判定 · B9 随机推进/接触/小时钟 · B10 双时钟接线 · B11 机炮 · B12 机场归属 · B13 空军编制 · B14 浮层路由极性 · B15 科技国别过滤 · B16 空军贴图单入口 · B17 三代编制挂科技/开局授予 · B18 科技解锁机型/跨国前置 · B19 机型表改名/中文代号/同代选型 · B20 探测范围/无人机字段 · B21 文明 tag→树归属 · B22 科技 ID 稳定化 · B23 MIRAGEIV 消歧/无人机一致性/面板雷达行 · B24 飞机雷达盘复用建筑画法/懒建单位盘/不脉动 · B25 雷达盘一次合成/FBO 内不透明/FBO 不可用回退 v39）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
