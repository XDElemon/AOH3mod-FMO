# -*- coding: utf-8 -*-
"""r6d301 行为级模拟器：解释执行真实 setVisible smali（含分支/标签/调用效果）。
场景 A-E + 变异敏感性（M1-M3 必须变红）。"""
import re, sys
P = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
s = open(P, encoding="utf-8").read()
i = s.find(".method public setVisible(Z)V")
j = s.find(".end method", i)
SRC = s[i:j]

INV_GET = ("invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getEnableScaling()Z")
INV_SET = ("invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V")

def load(src):
    lines = [l.strip() for l in src.splitlines()]
    return lines

def parse(lines):
    labels = {}
    ops = []
    for ln in lines:
        if not ln or ln.startswith('.') or ln.startswith('#'):
            continue
        if ln.startswith(':'):
            labels[ln[1:]] = len(ops)
            continue
        ops.append(ln)
    return ops, labels

def exec_run(ops, labels, world, visible):
    regs = {'v0': 0, 'v1': 0, 'v2': 'this', 'v3': 1 if visible else 0}
    pc = 0
    pending = None
    steps = 0
    while pc < len(ops):
        steps += 1
        if steps > 400: raise RuntimeError("loop")
        op = ops[pc]
        if op.startswith('invoke-super'):
            pass
        elif op.startswith('sget-wide'):
            regs['v0'] = 0
        elif op.startswith('sput-wide'):
            pass
        elif op.startswith('sget-object v0'):
            regs['v0'] = 'OBJ'
        elif op.startswith('invoke-virtual') and 'getEnableScaling' in op:
            pending = 1 if world['scaling'] else 0
        elif op.startswith('invoke-virtual') and 'setEnableScaling' in op:
            v = regs['v1']
            world['scaling'] = 1 if v else 0
            world['calls'].append(world['scaling'])
        elif op.startswith('move-result v1'):
            regs['v1'] = pending
        elif op.startswith('const/4 v1,'):
            regs['v1'] = int(op.split(',')[1].strip(), 16)
        elif op.startswith('sget-boolean v1'):
            regs['v1'] = world['locked']
        elif op.startswith('sput-boolean v1'):
            v = regs['v1']
            if 'sScalingLocked' in op:
                world['locked'] = 1 if v else 0
        elif op.startswith('if-eqz p1, '):
            if regs['v3'] == 0: pc = labels[op.split(':')[-1].strip()]; continue
        elif op.startswith('if-nez p1, '):
            if regs['v3'] != 0: pc = labels[op.split(':')[-1].strip()]; continue
        elif op.startswith('if-eqz v1, '):
            if regs['v1'] == 0: pc = labels[op.split(':')[-1].strip()]; continue
        elif op.startswith('if-nez v1, '):
            if regs['v1'] != 0: pc = labels[op.split(':')[-1].strip()]; continue
        elif op.startswith('goto '):
            pc = labels[op.split(':')[-1].strip()]; continue
        elif op.startswith('return-void'):
            break
        else:
            raise RuntimeError("unhandled: " + op)
        pc += 1
    return world

def fresh(scaling):
    return {'scaling': scaling, 'locked': 0, 'calls': []}

def run_scenarios(src, tag):
    ops, labels = parse(load(src))
    out = []
    # A 打开（当前可缩放）→ 关断
    w = fresh(1); exec_run(ops, labels, w, True)
    out.append(("A 打开冻结", w == {'scaling': 0, 'locked': 1, 'calls': [0]}))
    # B 关闭 → 还原
    exec_run(ops, labels, w, False)
    out.append(("B 关闭还原", w == {'scaling': 1, 'locked': 0, 'calls': [0, 1]}))
    # C 打开（本就不可缩放）→ 不动
    w = fresh(0); exec_run(ops, labels, w, True)
    out.append(("C 已禁用不重复锁", w == {'scaling': 0, 'locked': 0, 'calls': []}))
    # D 二次打开（已在锁中）→ 不重复调用
    w = fresh(1); exec_run(ops, labels, w, True); exec_run(ops, labels, w, True)
    out.append(("D 重复打开", w == {'scaling': 0, 'locked': 1, 'calls': [0]}))
    # E 打开→关闭→再打开
    exec_run(ops, labels, w, False); exec_run(ops, labels, w, True)
    out.append(("E 开闭循环", w == {'scaling': 0, 'locked': 1, 'calls': [0, 1, 0]}))
    print("== %s ==" % tag)
    bad = []
    for name, okk in out:
        print(("PASS " if okk else "FAIL ") + name)
        if not okk: bad.append(name)
    return bad

fails = []
fails += run_scenarios(SRC, "pristine")

def mut(name, old, new):
    t = SRC.replace(old, new, 1)
    assert t != SRC, "mutation not applied: " + name
    bad = run_scenarios(t, name)
    if not bad:
        print("FAIL " + name + " 变异未被抓（危险！）")
        fails.append(name)
    else:
        print("PASS " + name + " 变异被抓: " + ",".join(bad))

mut("M1 显隐分支极性", "if-eqz p1, :ts_vis_restore", "if-nez p1, :ts_vis_restore")
mut("M2 还原参数置0", "const/4 v1, 0x1\n    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V",
    "const/4 v1, 0x0\n    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setEnableScaling(Z)V")
mut("M3 守卫极性", "if-eqz v1, :ts_vis_show_done", "if-nez v1, :ts_vis_show_done")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)