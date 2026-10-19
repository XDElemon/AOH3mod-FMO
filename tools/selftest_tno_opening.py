#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
selftest_tno_opening.py —— TNO 开局面板的自检（在汇编之前跑）

检查项：
  S1 标签完整性：所有 if-*/goto 的目标标签都必须定义
  S2 分支极性：页签/正文/要点/翻页/关闭 这几个关键判断的分支方向必须符合预期
  S3 引用完整性：新类里引用的每个 类/方法/字段，必须在 smali 树里真实存在
     （这一项能挡住 sa 汇编能过、装机就 NoSuchMethodError 的错误）
  S4 版式一致性：JSON 里的页数/页签数/要点数 与代码里的常量一致

为什么有 S2：分支极性写反不会导致汇编失败，只会导致"点了没反应"，
上一版就栽在 if-lt/if-ge、if-eq/if-ne 反了。
"""
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
SMALI = os.path.join(ROOT, "src", "smali")
NEW_FILES = [
    os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen.smali"),
    os.path.join(SMALI, "aoc/kingdoms/lukasz/menusInGame/TNO_PanelImage.smali"),
]

fails, warns = [], []


def fail(msg):
    fails.append(msg)


def warn(msg):
    warns.append(msg)


def read(p):
    return open(p, encoding="utf-8", errors="replace").read()


# ---------------------------------------------------------------- 类索引
CLASS_RE = re.compile(r"^\.class\s+(?:public\s+|private\s+|protected\s+|final\s+|abstract\s+|static\s+)*L(\S+);", re.M)
SUPER_RE = re.compile(r"^\.super\s+L(\S+);", re.M)
METHOD_RE = re.compile(r"^\.method\s+.*?([\w<>$]+)\(([^)]*)\)(\S+)$")
FIELD_RE = re.compile(r"^\.field\s+.*?([\w$]+):([^\s=]+)")


def build_index():
    classes = {}
    for dirpath, _dirs, files in os.walk(SMALI):
        for fn in files:
            if not fn.endswith(".smali"):
                continue
            p = os.path.join(dirpath, fn)
            txt = read(p)
            m = CLASS_RE.search(txt)
            if not m:
                continue
            name = m.group(1)
            sm = SUPER_RE.search(txt)
            methods, fields = set(), set()
            for line in txt.split("\n"):
                line = line.strip()
                if line.startswith(".method"):
                    mm = METHOD_RE.match(line)
                    if mm:
                        methods.add("%s(%s)%s" % (mm.group(1), mm.group(2), mm.group(3)))
                elif line.startswith(".field"):
                    fm = FIELD_RE.match(line)
                    if fm:
                        fields.add("%s:%s" % (fm.group(1), fm.group(2)))
            classes[name] = {"super": sm.group(1) if sm else None,
                             "methods": methods, "fields": fields}
    return classes


def has_member(idx, cls, sig, kind):
    seen = set()
    while cls and cls in idx and cls not in seen:
        seen.add(cls)
        if sig in idx[cls][kind]:
            return True
        cls = idx[cls]["super"]
    return False


# ---------------------------------------------------------------- S1 标签
LABEL_RE = re.compile(r":([A-Za-z_][\w]*)")
BRANCH_RE = re.compile(r"^\s*(if-\w+|goto(?:\s*/\w+)?)\s+.*?:(?!\w)([A-Za-z_][\w]*)\s*$")


def check_labels():
    for p in NEW_FILES:
        txt = read(p)
        for i, line in enumerate(txt.split("\n"), 1):
            s = line.strip()
            if not s.startswith(("if-", "goto")):
                continue
            m = re.search(r":([A-Za-z_][\w]*)\s*$", s)
            if not m:
                fail("S1 %s:%d 分支没有目标标签: %s" % (os.path.basename(p), i, s))
                continue
            tgt = m.group(1)
            if not re.search(r"^\s*:%s\s*$" % re.escape(tgt), txt, re.M):
                fail("S1 %s:%d 未定义标签 :%s" % (os.path.basename(p), i, tgt))


# ---------------------------------------------------------------- S2 极性
def check_polarity():
    op = read(NEW_FILES[0])
    pi = read(NEW_FILES[1])

    def need(src, pattern, what, where):
        if not re.search(pattern, src, re.S):
            fail("S2 %s 极性不对: %s" % (where, what))

    # actionElement: mode<1 直接 return（if-ge 跳到 :m_ge1）；mode<=4 进页签（if-le）
    need(pi, r"if-ge v0, v1, :m_ge1\s*\n\s*\n\s*return-void", "mode<1 早返回", "TNO_PanelImage.actionElement")
    need(pi, r"if-le v0, v1, :is_tab", "mode<=4 进页签", "TNO_PanelImage.actionElement")

    # showPage 正文：i != page 时保持隐藏
    need(op, r"const/4 v2, 0x0\s*\n\s*if-ne v0, p0, :page_hide\s*\n\s*const/4 v2, 0x1",
         "正文仅当前页可见", "TNO_OpeningScreen.showPage")
    # showPage 页签：i 等于当前页才换 on 图
    need(op, r"sget v2, \S+->imgTabOff:I\s*\n\s*if-ne v0, p0, :tab_set\s*\n\s*sget v2, \S+->imgTabOn:I",
         "当前页页签高亮", "TNO_OpeningScreen.showPage")
    # showPage 要点：page==2 才可见
    need(op, r"const/4 v3, 0x2\s*\n\s*if-ne p0, v3, :bullet_hide\s*\n\s*const/4 v2, 0x1",
         "功能页要点仅第 3 页可见", "TNO_OpeningScreen.showPage")

    # prevPage: i-1 < 0 回绕到末页
    need(op, r"if-ltz v1, :prev_wrap", "上一页回绕", "TNO_OpeningScreen.prevPage")
    # nextPage: i+1 >= 页数 归零
    need(op, r"if-lt v1, v0, :next_ok", "下一页回绕", "TNO_OpeningScreen.nextPage")
    # doClose: inst 为 null 才跳过
    need(op, r"if-eqz v0, :close_done", "关闭空指针保护", "TNO_OpeningScreen.doClose")

    # S2e 挂载钩子：equals 为 true 时才进面板（写反会让面板永远不出现）
    mm = read(os.path.join(SMALI, "aoc/kingdoms/lukasz/menu/MenuManager.smali"))
    if "if-eqz v0, :tno_open_normal" not in mm:
        fail("S2 MenuManager 钩子极性不对：ID 命中时必须进入 TNO 分支（应为 if-eqz v0, :tno_open_normal）")
    if "if-nez v0, :tno_open_normal" in mm:
        fail("S2 MenuManager 钩子里仍有 if-nez（极性与 if-eqz 相反）")
    if "TNO_OpeningScreen;-><init>(II)V" not in mm:
        fail("S2 MenuManager 钩子未构造面板")


# ---------------------------------------------------------------- S3 引用
REF_RE = re.compile(r"L([\w/$]+);->([\w<>$]+)(\([^)]*\)\S+|:\S+)")
LIB_PREFIX = ("java/", "javax/", "android/", "com/badlogic/", "dalvik/", "org/json/")


def check_refs(idx):
    libs = set()
    for p in NEW_FILES:
        for m in REF_RE.finditer(read(p)):
            cls, name, tail = m.group(1), m.group(2), m.group(3)
            if cls.startswith(LIB_PREFIX):
                libs.add(cls)
                continue
            if cls not in idx:
                fail("S3 引用了树里不存在的类: L%s;" % cls)
                continue
            if tail.startswith(":"):
                sig = "%s%s" % (name, tail)
                if not has_member(idx, cls, sig, "fields"):
                    fail("S3 字段不存在: L%s;->%s" % (cls, sig))
            else:
                sig = "%s%s" % (name, tail)
                if not has_member(idx, cls, sig, "methods"):
                    fail("S3 方法不存在: L%s;->%s" % (cls, sig))
    return libs


# ---------------------------------------------------------------- S4 版式
def check_layout():
    cfg = json.load(open(os.path.join(ROOT, "data", "tno_opening_layout.json"), encoding="utf-8"))
    op = read(NEW_FILES[0])
    n_tabs = len(cfg["layout"]["tabs"]["items"])
    n_bul = len(cfg["labels"]["bullets"])
    if n_tabs != 4:
        fail("S4 页签必须是 4 个，实为 %d" % n_tabs)
    # 数组长度常量
    if not re.search(r"const/4 v1, 0x%d" % n_tabs, op):
        fail("S4 pageText/tabs 数组长度常量与页签数不符")
    if not re.search(r"const/4 v1, 0x%x" % n_bul, op):
        fail("S4 bulletText 数组长度常量与要点数不符")
    # 页循环上界
    if not re.search(r"const/4 v1, 0x%x\s*\n\s*\n\s*if-ge v0, v1, :page_done" % n_tabs, op):
        fail("S4 页循环上界不对")
    if not re.search(r"const/4 v1, 0x%x\s*\n\s*\n\s*if-ge v0, v1, :bullet_done" % n_bul, op):
        fail("S4 要点循环上界不对")
    # 每张图都要在 InitGame.loadImages_1 里注册（启动期注册，别放事件回调里）
    initgame = read(os.path.join(SMALI, "aoc/kingdoms/lukasz/menus/InitGame.smali"))
    for key in ("bg", "tabOff", "tabOn", "btnOff", "btnOn", "poster"):
        rel = cfg["images"][key]
        if rel not in initgame:
            fail("S4 贴图未注册到 InitGame: %s" % rel)
        if rel not in op:
            warn("贴图字符串不在 TNO_OpeningScreen 里（正常，已挪到 InitGame）")


def main():
    for p in NEW_FILES:
        if not os.path.exists(p):
            raise SystemExit("❌ 缺生成产物: %s（先跑 tools/gen_tno_opening.py）" % p)

    check_labels()
    check_polarity()
    idx = build_index()
    libs = check_refs(idx)
    check_layout()

    print("类索引: %d 个类" % len(idx))
    print("外部库引用: %d 个（%s...）" % (len(libs), ", ".join(sorted(libs)[:3])))
    for w in warns:
        print("  ⚠️  " + w)
    if fails:
        for f in fails:
            print("  ❌ " + f)
        print("❌ 自检未通过：%d 项" % len(fails))
        return 1
    print("✅ 开局面板自检通过（S1 标签 / S2 极性 / S3 引用 / S4 版式）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
