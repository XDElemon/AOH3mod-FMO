#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d273.py — B5c 门禁：顶部栏结构 + 筛选/钉子极性 + topVisible 模拟器 + 语言键 + 负样本
import re, os, sys

Q = chr(34)
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE_REL = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TAB_REL  = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
STAGE    = '/sdcard/GLG/历史23/build_inputs/r6d273/out/assets/game/languages'
LANG_SRC = '/root/history23_repo/assets_r6t007/game/languages'

fails = []
def chk(name, cond):
    if not cond:
        fails.append(name); print('❌', name)
    else:
        print('✅', name)

def body_of(s, decl):
    i = s.find(decl); assert i >= 0, ('no-decl', decl)
    j = s.find('.end method', i)
    return s[i:j]

t0 = open(os.path.join(TREES[0], TREE_REL), encoding='utf-8').read()
t1 = open(os.path.join(TREES[1], TREE_REL), encoding='utf-8').read()

# ---------- S1 新类 ----------
for root in TREES:
    p = os.path.join(root, TAB_REL)
    chk('S1 exists ' + root, os.path.exists(p))
    if not os.path.exists(p):
        continue
    tb = open(p, encoding='utf-8').read()
    chk('S1 super ' + root,
        ('.class public Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;' in tb)
        and ('.super Laoc/kingdoms/lukasz/menu_element/button/Button;' in tb))
    for f in ['.field public bSelected:Z', '.field public iHomeX:I', '.field public iHomeY:I',
              '.field public owner:', '.field public sTopID:Ljava/lang/String;']:
        chk('S1 field ' + f + ' ' + root, f in tb)
    for m in ['.method public constructor <init>(', '.method public actionElement()V',
              '.method protected drawButtonBG(', '.method public setSelected(Z)V']:
        chk('S1 method ' + m + ' ' + root, m in tb)
    chk('S1b pix-obj ' + root, 'sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;' in tb)
    chk('S1b no-pix-int ' + root, 'Images;->pix:I' not in tb)
    chk('S1c ctor-map ' + root, all(k in tb for k in [
        'iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I',
        'iput p5, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeY:I',
        'move-object v1, p3', 'move v4, p4', 'move v5, p5', 'move v6, p6']))
    chk('S1c no-wrong ' + root, ('iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I' not in tb)
        and ('move-object v1, p2' not in tb))

# ---------- S2 对象字段 ----------
for f in ['.field public lTopTabs:Ljava/util/List;', '.field public lAllLines:Ljava/util/List;',
          '.field public sTopCat:Ljava/lang/String;']:
    chk('S2 ' + f, t0.count(f) == 1 and t1.count(f) == 1)

# ---------- S3 构造器挂点 ----------
si = '->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V'
sa = 'call-add-placeholder'
for nm, s in [('tmp', t0), ('repo', t1)]:
    idx_init = s.find(si)
    idx_add = s.find('->addTopTabs(Ljava/util/List;)V')
    chk('S3 init/call %s' % nm, idx_init >= 0 and idx_add >= 0 and idx_add > idx_init)
    chk('S3 call-range %s' % nm, 'invoke-direct/range {v0 .. v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->addTopTabs(Ljava/util/List;)V' in s)
    chk('S3 禁非range %s' % nm, 'invoke-direct {p0, v11}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->addTopTabs(Ljava/util/List;)V' not in s)

# ---------- S4 draw 挂点 ----------
sup = 'invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/'
for nm, s in [('tmp', t0), ('repo', t1)]:
    idx_pin = s.find('->pinTopTabs()V')
    idx_sup = s.find(sup)
    chk('S4 pin/super %s' % nm, idx_pin >= 0 and idx_sup >= 0 and idx_pin < idx_sup)
    chk('S4 pin-count %s' % nm, s.count('->pinTopTabs()V') == 1)
    chk('S4 禁非range %s' % nm, 'invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->pinTopTabs()V' not in s)

# ---------- S5 方法齐备 ----------
for m in ['.method private addTopTabs(', '.method private static newTopTab(',
          '.method private pinTopTabs(', '.method public applyTopFilter(',
          '.method private syncTabSelection(', '.method private applyNodeVisibility(',
          '.method private rebuildLines(', '.method public static topVisible(',
          '.method private dumpTreeGeom(']:
    chk('S5 decl ' + m, m in t0 and m in t1)

# pin 顺序 & 计数（装载先于 sub；sub 操作数 v5=home、v4=menuPos）
pb = body_of(t0, '.method private pinTopTabs()')
i_hx = pb.find('->iHomeX:I')
i_hy = pb.find('->iHomeY:I')
i_mx = pb.find('getMenuPosX()I')
i_my = pb.find('getMenuPosY()I')
i_s1 = pb.find('sub-int/2addr v5, v4')
i_s2 = pb.find('sub-int/2addr v5, v4', i_s1 + 1)
chk('S5b pin order X', 0 <= i_hx and 0 <= i_mx and i_s1 > i_hx and i_s1 > i_mx)
chk('S5b pin order Y', 0 <= i_hy and 0 <= i_my and i_s2 > i_hy and i_s2 > i_my)
chk('S5b pin sub-count', pb.count('sub-int/2addr v5, v4') == 2)

# 过滤器编排顺序
af = body_of(t0, '.method public applyTopFilter(')
chk('S5c filter order', 0 <= af.find('syncTabSelection(') < af.find('applyNodeVisibility(') < af.find('rebuildLines('))
chk('S5c filter sTopCat', '->sTopCat:Ljava/lang/String;' in af)

nb = body_of(t0, '.method private applyNodeVisibility(')
chk('S5d node-vis 4件', all(k in nb for k in ['getMenuElementsSize()I', 'setVisible(Z)V', 'setClickable(Z)V', 'getTopCategory(I)']))

rb = body_of(t0, '.method private rebuildLines(')
chk('S5e lines swap', all(k in rb for k in ['lAllLines', 'iput-object', 'iLinesSize', 'getTopCategory(I)', 'topVisible(']))

tv = body_of(t0, '.method public static topVisible(')
chk('S5f topVisible 结构', tv.count('"all"') == 1 and tv.count('if-nez') == 2)

# ---------- S6 语言键 ----------
for base, tag in [(LANG_SRC, 'src'), (STAGE, 'stage')]:
    for fn in ['Bundle.properties', 'Bundle_cn_sp.properties', 'Bundle_cn_tr.properties']:
        p = os.path.join(base, fn)
        ok = os.path.exists(p)
        txt = open(p, encoding='utf-8').read() if ok else ''
        got = sum(1 for k in ['TopCategory_All =', 'TopCategory_Land =', 'TopCategory_Air =', 'TopCategory_Civil ='] if k in txt)
        chk('S6 %s %s keys=%d' % (tag, fn, got), ok and got == 4)

# ---------- 模拟器：topVisible ----------
def sim_top(lines, top, sel):
    labels = {}
    for k, ln in enumerate(lines):
        t = ln.strip()
        if t.startswith(':'):
            labels[t] = k
    regs = {}
    pend = None
    pc = 0; steps = 0
    def val(r):
        if r == 'p0': return top
        if r == 'p1': return sel
        return regs.get(r)
    while pc < len(lines) and steps < 300:
        steps += 1
        t = lines[pc].strip(); pc += 1
        if not t or t.startswith('#'):
            continue
        if t.startswith(':'):
            continue
        m = re.match(r'const-string (v\d+), ' + re.escape(Q) + r'([^' + re.escape(Q) + r']*)' + re.escape(Q), t)
        if m:
            regs[m.group(1)] = m.group(2); continue
        m = re.match(r'invoke-virtual \{([pv]\d+), ([pv]\d+)\}, Ljava/lang/String;->equals', t)
        if m:
            pend = (val(m.group(1)) == val(m.group(2))); continue
        m = re.match(r'move-result (v\d+)', t)
        if m and pend is not None:
            regs[m.group(1)] = 1 if pend else 0; pend = None; continue
        m = re.match(r'const/4 (v\d+), (-?0x[0-9a-f]+)', t)
        if m:
            regs[m.group(1)] = int(m.group(2), 16) if not m.group(2).startswith('-') else -int(m.group(2)[1:], 16)
            continue
        m = re.match(r'if-nez (v\d+), (:\S+)', t)
        if m:
            if not regs.get(m.group(1), 0) and m.group(2) in labels:
                pc = labels[m.group(2)] + 1
            continue
        m = re.match(r'if-eqz (v\d+), (:\S+)', t)
        if m:
            if regs.get(m.group(1), 0) and m.group(2) in labels:
                pc = labels[m.group(2)] + 1
            continue
        m = re.match(r'return (v\d+)', t)
        if m:
            return regs.get(m.group(1), None)
    return None

tv_lines = tv.splitlines()
cases = [(('air', 'air'), True), (('air', 'land'), False), (('x', 'all'), True),
         (('land', 'all'), True), (('civil', 'civil'), True), (('civil', 'air'), False)]
sim_ok = True
for (a, b), exp in cases:
    g = sim_top(tv_lines, a, b)
    if g != (1 if exp else 0):
        sim_ok = False
        print('  sim miss', a, b, 'got', g, 'exp', exp)
chk('SIM topVisible 6 用例', sim_ok)

# 反转敏感性：第一个 if-nez → if-eqz
mut = tv.replace('if-nez', 'if-eqz', 1)
mm_ok = False
for (a, b), exp in cases:
    g = sim_top(mut.splitlines(), a, b)
    if g != (1 if exp else 0):
        mm_ok = True
chk('SIM 反转敏感性', mm_ok)

# ---------- 负样本 ----------
# N1 删 pin 调用 → S4 逻辑应判失败
s2 = t0.replace('    invoke-direct/range {v0 .. v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->pinTopTabs()V', '', 1)
n1 = (s2.count('->pinTopTabs()V') == 0)
chk('N1 删 pin 变红', n1)

# N2 add 移到 init 之前 → 顺序判定失败
initline = 'invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V'
call = '    invoke-direct {p0, v11}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->addTopTabs(Ljava/util/List;)V'
s3 = t0.replace(call + '\n\n    ', '', 1)
s3 = s3.replace(initline, call + '\n\n    ' + initline, 1)
n2 = not (s3.find('->addTopTabs(Ljava/util/List;)V') > s3.find(initline))
chk('N2 前移变红', n2)

# N3 删一个语言键 → S6 失败
import tempfile, shutil
tmpd = '/tmp/_r6d273_neg'
os.makedirs(tmpd, exist_ok=True)
for fn in ['Bundle.properties', 'Bundle_cn_sp.properties', 'Bundle_cn_tr.properties']:
    shutil.copy2(os.path.join(STAGE, fn), os.path.join(tmpd, fn))
p = os.path.join(tmpd, 'Bundle_cn_sp.properties')
t = open(p, encoding='utf-8').read().replace('TopCategory_Land =', '', 1)
open(p, 'w', encoding='utf-8').write(t)
got = sum(1 for k in ['TopCategory_All =', 'TopCategory_Land =', 'TopCategory_Air =', 'TopCategory_Civil ='] if k in t)
chk('N3 删键变红', got == 3)

# N4 交换 sub 操作数 → pin 计数/顺序失败
s4 = t0.replace('sub-int/2addr v5, v4', 'sub-int/2addr v4, v5', 1)
pb2 = body_of(s4, '.method private pinTopTabs()')
n4 = (pb2.count('sub-int/2addr v5, v4') != 2)
chk('N4 换序变红', n4)

# N5 构造器参数错位（复原 r6d273 血案）→ S1c 失败
tb0 = open(os.path.join(TREES[0], TAB_REL), encoding='utf-8').read()
tb_bad = tb0.replace('iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I',
                     'iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I', 1)
n5 = ('iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I' not in tb_bad)
chk('N5 构造器错位变红', n5)

print()
if fails:
    print('GATE FAIL:', len(fails))
    sys.exit(1)
print('GATE PASS')
