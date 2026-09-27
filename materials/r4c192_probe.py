# -*- coding: utf-8 -*-
# R4c192probe：把 dbgSel 从"更新分支"挪到"算完分立刻打印" ⇒ 抓样看每个候选的真实分数
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

CALL = 'invoke-static {v4, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgSel(IF)V'
assert src.count(CALL) == 1, src.count(CALL)
# ① 删除更新分支里的调用
src = src.replace('    ' + CALL + '\n', '', 1)
assert src.count(CALL) == 0

# ② 在 strikeScore 调用后的 move-result v7 之后插入
A = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;->strikeScore(ILaoc/kingdoms/lukasz/map/battles/Airport;I)F'
i = src.index(A)
B = 'move-result v7'
j = src.index(B, i)
k = j + len(B)
src = src[:k] + '\n    ' + CALL + '    # R4c192probe：打印每个候选的分数' + src[k:]

assert src.count(CALL) == 1
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok')