#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# audit_probes.py —— 全量审计：所有插桩方法的"写越界寄存器/参数槽写/ctor-super顺序/非range invoke超5"
import re, os, sys

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
FILES = [
    'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali',
    'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali',
    'aoc/kingdoms/lukasz/menu/MenuManager.smali',
    'aoc/kingdoms/lukasz/menu/Menu.smali',
]

WRITE_OPS = {
    'const/4','const/16','const','const/high16','const-string','const-class',
    'sget','sget-object','sget-boolean','sget-byte','sget-char','sget-short','sget-wide',
    'move','move-object','move/from16','move-object/from16','move-wide','move/16','move-object/16',
    'move-result','move-result-object','move-result-wide',
    'add-int','add-int/lit8','add-int/lit16','add-int/2addr','sub-int','sub-int/2addr',
    'mul-int','mul-int/lit8','mul-int/lit16','mul-int/2addr','div-int','div-int/lit8','div-int/2addr',
    'rem-int','rem-int/lit8','rem-int/2addr','neg-int','not-int','and-int','or-int','xor-int','and-int/2addr','or-int/2addr',
    'int-to-long','int-to-float','int-to-double','int-to-byte','int-to-char','int-to-short',
    'long-to-int','float-to-int','double-to-int',
    'new-instance','new-array','instance-of','array-length','aget','aget-object','aget-wide',
    'iget','iget-object','iget-boolean','iget-wide','iget-byte','iget-char','iget-short',
    'cmp-long','cmpl-float','cmpg-float','cmpl-double','cmpg-double','filled-new-array',
    'shl-int','shr-int','ushr-int','shl-int/lit8','shr-int/lit8','ushr-int/lit8',
    'add-long','sub-long','mul-long','div-long','add-float','sub-float','mul-float','div-float',
    'add-double','sub-double','mul-double','div-double','sput','sput-object','aput','iput',
}
# 上述里 sput/aput/iput 其实首参是"值"(读)，但混进来会误报；单独排除：
NON_DEST = {'sput','sput-object','sput-boolean','aput','aput-object','iput','iput-object','iput-boolean','iput-wide','aput-wide','iput-wide'}

def param_slots(desc):
    p = desc[desc.find('(')+1:desc.find(')')]
    n = 0
    i = 0
    while i < len(p):
        c = p[i]
        if c == '[':
            while c == '[':
                i += 1; c = p[i]
            n += 1; i += 1
        elif c in 'JD':
            n += 2; i += 1
        elif c in 'IZFBCS':
            n += 1; i += 1
        elif c == 'L':
            n += 1
            i = p.find(';', i) + 1
        else:
            i += 1
    return n

def reg_index(tok, is_p, regs, pslots):
    tok = tok.strip()
    if tok.startswith('v'):
        return int(tok[1:])
    if tok.startswith('p'):
        return regs - pslots + int(tok[1:])
    return None

problems = []
for tod in TREES[:1]:  # 审计单树即可（双树同步）
    for rel in FILES:
        path = os.path.join(tod, rel)
        txt = open(path, encoding='utf-8').read()
        # 逐方法
        for m in re.finditer(r'\.method[^\n]*\n(.*?)\.end method', txt, re.S):
            head = m.group(0).split('\n',1)[0]
            body = m.group(1)
            desc = head[head.find('('):head.rfind(')')+1]
            regs_m = re.search(r'\.registers\s+(\d+)', body)
            if not regs_m:
                continue
            regs = int(regs_m.group(1))
            is_static = ' static ' in head + ' '
            pslots = param_slots(desc) + (0 if is_static else 1)
            local_max = regs - pslots - 1
            name = head.strip()
            # ctor super 顺序
            is_ctor = ' constructor <init>' in head
            super_idx = -1
            if is_ctor:
                sm = re.search(r'invoke-direct(?:/range)? \{[^}]*\},\s*\S+-><init>\(', body)
                super_idx = sm.start() if sm else -1
            for ln in body.split('\n'):
                raw = ln.split('#',1)[0].strip()
                if not raw:
                    continue
                parts = raw.replace(',', ' , ').split()
                op = parts[0]
                # 写入目标检测
                if op in WRITE_OPS and op not in NON_DEST:
                    # 目标一般是逗号前的第一寄存器
                    mm = re.match(r'(\S+)\s+([vp]\d+)\s*,', raw)
                    if not mm:
                        mm = re.match(r'(\S+)\s+([vp]\d+)\s*$', raw)  # 单操作数
                    if mm:
                        r = reg_index(mm.group(2), False, regs, pslots)
                        if r is not None and r > local_max:
                            problems.append('%s | %s | 写 %s（>局部上界 v%d）| %s' % (rel, name.split('(')[0], mm.group(2), local_max, raw))
                # ctor: super 前对 this 调方法
                if is_ctor and super_idx >= 0:
                    pos = body.find(ln)
                    if pos >= 0 and pos < super_idx and raw.startswith('invoke-') and '{p0' in raw:
                        problems.append('%s | %s | super 前触碰 this | %s' % (rel, name.split('(')[0], raw))

print('==== 审计发现 (%d) ====' % len(problems))
for p in problems:
    print('*', p)
sys.exit(1 if problems else 0)