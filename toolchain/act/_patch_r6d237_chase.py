#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d237_chase.py
r6d237：让导弹“追着飞机跑 + 白色方块尾迹”
A) adFxStep 步进闸极性修正：if-gez→if-ltz（原来写反 ⇒ 活跃时反而直接 return ⇒ 导弹永远不动）
B) 删除 r6d226 的“插值画线”兜底（含其写反的 TN>=4 尾闸）⇒ 尾迹=纯动态拖尾（原版行为：每移动≥4px 落一个点）
C) 尾迹颜色 黄(0.85/0.15)→纯白(1.0/1.0)（按用户最新口径：白色方块尾迹）
D) 新增 tag=90 探针：入口活跃首帧（src>=0 且 TN==0）打一行 ⇒ 下轮定性“入口没被调/被守卫拦”
E) nABOOT → r6d237
"""
import re, sys

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"

s = open(PDA, encoding='utf-8').read()
L = s.split('\n')

# ---------- A) 步进闸极性 ----------
c = s.count("if-gez v0, :cond_12")
assert c == 1, ("A-anchor", c)
s = s.replace("if-gez v0, :cond_12", "if-ltz v0, :cond_12", 1)
print("A OK: adFxStep 步进闸 if-gez→if-ltz")
L = s.split('\n')

# ---------- B) 删除插值画线块 ----------
start = None
for i, l in enumerate(L):
    if l.strip() == 'iget v10, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I':
        start = i; break
assert start is not None, "B-start 未找到"
end = None
for i in range(start, len(L)):
    if L[i].strip() == ':adfx_fill_skip':
        end = i; break
assert end is not None, "B-end 未找到"
chunk = '\n'.join(L[start:end+1])
assert 'r6d226' in chunk and ':ins_loop' in chunk and ':ins_done' in chunk, "B-chunk 校验失败"
cnt_guard = sum(1 for x in L if ':adfx_fill_skip' in x)
assert cnt_guard == 2, ("B-labelrefs", cnt_guard)  # 1 个分支引用 + 1 个标签定义
print("B OK: 删除插值块 行", start+1, "-", end+1, "（", end-start+1, "行）")
del L[start:end+1]
s = '\n'.join(L)
assert ':adfx_fill_skip' not in s, "B: 残留引用"
assert 'r6d226' not in s, "B: 残留注释"

# ---------- C) 尾迹颜色 黄→白 ----------
i0 = s.index(".method private static adFxDrawTrail(")
i1 = s.index(".end method", i0)
seg = s[i0:i1]
c1 = seg.count('0x3f59999a'); c2 = seg.count('0x3e19999a')
assert c1 >= 1 and c2 >= 1, ("C-consts", c1, c2)
for line in seg.split('\n'):
    if '0x3f59999a' in line or '0x3e19999a' in line:
        print("C 替换:", line.strip()[:90])
seg2 = seg.replace('0x3f59999a', '0x3f800000').replace('0x3e19999a', '0x3f800000')
s = s[:i0] + seg2 + s[i1:]
print("C OK: 尾迹 0.85/0.15 → 1.0（白），替换", c1, "+", c2, "处")

# ---------- D) tag=90 探针 ----------
anchor = ("    :try_start_0\n"
          "    if-eqz p1, :done\n")
assert s.count(anchor) == 1, ("D-anchor", s.count(anchor))
ins = (
    "    # r6d237 探针 tag=90：入口活跃首帧（src>=0 且 TN==0 ⇒ 每个窗口只打 1~几行）\n"
    "    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n"
    "    if-ltz v0, :q90\n"
    "    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I\n"
    "    if-nez v0, :q90\n"
    "    const/16 v13, 0x5a\n"
    "    iget v12, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n"
    "    iget v11, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n"
    "    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n"
    "    invoke-static {v13, v12, v11, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V\n"
    "    :q90\n"
)
s = s.replace(anchor, anchor + ins, 1)
print("D OK: tag=90 探针已插入")

open(PDA, 'w', encoding='utf-8').write(s)

# ---------- E) 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d237', d)
assert d2 != d, "E: nABOOT 未变"
open(PDD, 'w', encoding='utf-8').write(d2)
print("E OK: nABOOT v=r6d237")