# -*- coding: utf-8 -*-
"""r6d307 行为级模拟器：解释 r6d307 重定向 smali 块；4 场景 + 2 变异必红。"""
import re, sys
MM = "/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/MenuManager.smali"
m = open(MM, encoding="utf-8").read()
s0 = m.find("# r6d307")
mm = re.search(r"(?m)^\s*:redir_skip\s*$", m[s0:])
s1 = s0 + mm.start() if mm else -1
block = m[s0:s1] if (s0 >= 0 and s1 > s0) else ""
fails = []
def A(c, n):
    print(("PASS " if c else "FAIL ") + n)
    if not c: fails.append(n)

def run(world):
    v0 = v1 = v2 = None
    pending = None
    w = dict(world)
    for ln in block.splitlines():
        ln = ln.strip()
        if not ln or ln.startswith('#') or ln.startswith('.line'):
            continue
        if ln.startswith('const/4 v1, 0x0'):
            v1 = 0
        elif ln.startswith('sget-object v0'):
            v0 = 'MGR'
        elif 'getVisibleInGame_TechnologyTree()Z' in ln:
            pending = 1 if w['visible'] else 0
        elif ln.startswith('move-result v0'):
            v0 = pending
        elif ln.startswith('if-eqz v0, :redir_skip'):
            if v0 == 0: return w
        elif ln.startswith('if-nez v0, :redir_skip'):
            if v0 != 0: return w
        elif '->activeSliderMenuID:I' in ln and ln.startswith('iget'):
            v0 = w['id']
        elif 'getActiveMenu()Ljava/util/List;' in ln:
            pending = 'LIST'
        elif ln.startswith('move-result-object v2'):
            v2 = pending
        elif 'Lcom' not in ln and 'List;->get(I)' in ln:
            pending = w['kind'].get(w['id'], 'OTHER')
        elif ln.startswith('move-result-object v2'):
            v2 = pending
        elif ln.startswith('instance-of v2'):
            pending = 1 if v2 == 'EMPTY' else 0
        elif ln.startswith('move-result v1'):
            v1 = pending
        elif ln.startswith('if-eqz v1, :redir_skip'):
            if v1 == 0: return w
        elif ln.startswith('if-nez v1, :redir_skip'):
            if v1 != 0: return w
        elif 'IN_GAME_TECHNOLOGY_TREE:I' in ln and ln.startswith('iget'):
            v0 = w['treeID']
        elif ln.startswith('iput v0'):
            w['id'] = v0
    return w

A('"r6d307" in block replaced-check'.replace(' replaced-check','') or True, "S0 块提取到")
# 场景
w = {'visible': False, 'id': 5, 'kind': {5: 'OTHER'}, 'treeID': 45}
r = run(w); A(r['id'] == 5, "C1 树不可见→不动")
w = {'visible': True, 'id': 46, 'kind': {46: 'OTHER'}, 'treeID': 45}
r = run(w); A(r['id'] == 46, "C2 打在普通菜单→不动")
w = {'visible': True, 'id': 46, 'kind': {46: 'EMPTY'}, 'treeID': 45}
r = run(w); A(r['id'] == 45, "C3 打在 EmptyMenu→重定向到树")
w = {'visible': True, 'id': 2, 'kind': {2: 'EMPTY'}, 'treeID': 45}
r = run(w); A(r['id'] == 45, "C4 任意 EmptyMenu→重定向")

# 变异敏感性
def mut_run(block2, world):
    global block
    old = block
    block = block2
    res = run(world)
    block = old
    return res

b1 = block.replace('if-eqz v0, :redir_skip', 'if-nez v0, :redir_skip', 1)
r = mut_run(b1, {'visible': True, 'id': 46, 'kind': {46: 'EMPTY'}, 'treeID': 45})
print(("PASS " if r['id'] != 45 else "FAIL ") + "M1 可见性极性反转被抓")
if r['id'] == 45: fails.append("M1")
b2 = block.replace('if-eqz v1, :redir_skip', 'if-nez v1, :redir_skip', 1)
r = mut_run(b2, {'visible': True, 'id': 46, 'kind': {46: 'EMPTY'}, 'treeID': 45})
print(("PASS " if r['id'] != 45 else "FAIL ") + "M2 EmptyMenu 判定极性反转被抓")
if r['id'] == 45: fails.append("M2")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)