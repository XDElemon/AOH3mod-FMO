# -*- coding: utf-8 -*-
"""r6d308 行为级模拟器：解释 r6d307/308 重定向块（instance-of 直写版）
4 场景 + 2 变异；并含一个"回退形态（instance-of+move-result）必须无法通过解释器"的自检。"""
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

def run(blk, world):
    v0 = v1 = v2 = None
    pending = None
    w = dict(world)
    for ln in blk.splitlines():
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
        elif 'List;->get(I)' in ln:
            pending = w['kind'].get(w['id'], 'OTHER')
        elif ln.startswith('instance-of v1, v2'):
            v1 = 1 if v2 == 'EMPTY' else 0
        elif ln.startswith('instance-of v2'):
            # 回退形态：instance-of 写 v2，后面 move-result 无结果 → 视为“未定义”，不改变 v1
            pass
        elif ln.startswith('move-result v1'):
            # 回退形态里的非法 move-result：模拟为“取到未定义(0)”
            v1 = 0
        elif ln.startswith('if-eqz v1, :redir_skip'):
            if v1 == 0: return w
        elif ln.startswith('if-nez v1, :redir_skip'):
            if v1 != 0: return w
        elif 'IN_GAME_TECHNOLOGY_TREE:I' in ln and ln.startswith('iget'):
            v0 = w['treeID']
        elif ln.startswith('iput v0'):
            w['id'] = v0
    return w

A(len(block) > 0, "S0 块提取到")
w = {'visible': False, 'id': 5, 'kind': {5: 'OTHER'}, 'treeID': 45}
A(run(block, w)['id'] == 5, "C1 树不可见→不动")
w = {'visible': True, 'id': 46, 'kind': {46: 'OTHER'}, 'treeID': 45}
A(run(block, w)['id'] == 46, "C2 普通菜单→不动")
w = {'visible': True, 'id': 46, 'kind': {46: 'EMPTY'}, 'treeID': 45}
A(run(block, w)['id'] == 45, "C3 EmptyMenu→重定向")
w = {'visible': True, 'id': 2, 'kind': {2: 'EMPTY'}, 'treeID': 45}
A(run(block, w)['id'] == 45, "C4 任意 EmptyMenu→重定向")

b1 = block.replace('if-eqz v0, :redir_skip', 'if-nez v0, :redir_skip', 1)
r = run(b1, {'visible': True, 'id': 46, 'kind': {46: 'EMPTY'}, 'treeID': 45})
A(r['id'] != 45, "M1 可见性极性反转被抓")
b2 = block.replace('if-eqz v1, :redir_skip', 'if-nez v1, :redir_skip', 1)
r = run(b2, {'visible': True, 'id': 46, 'kind': {46: 'EMPTY'}, 'treeID': 45})
A(r['id'] != 45, "M2 EmptyMenu 判定极性反转被抓")
# 回退形态自检：instance-of+move-result 版本在 C3 下不应重定向（说明解释器能区分形态；真实设备会 VerifyError）
b3 = block.replace('instance-of v1, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;',
                   'instance-of v2, v2, Laoc/kingdoms/lukasz/menus/EmptyMenu;\n    move-result v1')
r = run(b3, {'visible': True, 'id': 46, 'kind': {46: 'EMPTY'}, 'treeID': 45})
A(r['id'] != 45, "M3 回退形态在模拟层被区分（设备层=VerifyError）")

print("----")
print("FAILS:", fails if fails else "none")
sys.exit(1 if fails else 0)