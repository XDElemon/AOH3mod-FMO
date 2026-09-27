# -*- coding: utf-8 -*-
# R4c192（用实际文本锚）：
#   ① 分数探针：每个候选算完分就打印（nSV）
#   ② NaN 安全取最小：cmpl(score,best) + if-ltz 跳过
#   ③ 兜底：若全程没有"更优"，用第一个通过全部守卫的候选（v2）—— 保证飞机不至于全不飞
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

# ---------- ① 探针：从更新分支挪到算分之后 ----------
CALL = 'invoke-static {v4, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgSel(IF)V'
assert src.count(CALL) == 1, 'CALL=%d' % src.count(CALL)
src = src.replace('    ' + CALL + '\n', '', 1)
A = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;->strikeScore(ILaoc/kingdoms/lukasz/map/battles/Airport;I)F'
i = src.index(A); j = src.index('move-result v7', i); k = j + len('move-result v7')
src = src[:k] + '\n    ' + CALL + '    # R4c192probe：打印每个候选的分数' + src[k:]

# ---------- ② NaN 安全取最小 ----------
assert src.count('cmpg-float v9, v8, v7') == 1
src = src.replace('cmpg-float v9, v8, v7', 'cmpl-float v9, v7, v8', 1)
assert src.count('if-gez v9, :cond_51') == 1, src.count('if-gez v9, :cond_51')
src = src.replace('if-gez v9, :cond_51', 'if-ltz v9, :cond_51', 1)

# ---------- ③ 兜底（在 pickStrikeTarget 方法范围内定位） ----------
mstart = src.index('.method public pickStrikeTarget(')
mend = src.index('.end method', mstart)
body = src[mstart:mend]
assert body.count('const v8, 0x7f7fffff') == 1, 'v8 init=%d' % body.count('const v8, 0x7f7fffff')
body = body.replace('const v8, 0x7f7fffff', 'const v8, 0x7f7fffff\n\n    const/4 v2, -0x1', 1)
src = src[:mstart] + body + src[mend:]
print('init anchor: in-method')

assert src.count('    :r4c178_score\n') == 1
src = src.replace('    :r4c178_score\n', '''    :r4c178_score
    # R4c192 兜底：记录第一个通过全部守卫的候选
    if-ltz v2, :r4c192_hf
    move v2, v4

    :r4c192_hf
''', 1)

old_end = '    :cond_54\n    return v1\n'
assert src.count(old_end) == 1, 'end=%d' % src.count(old_end)
src = src.replace(old_end, '''    # R4c192 兜底：没有任何"更优"时，退化为第一个通过守卫的候选
    if-ltz v1, :r4c192_ret
    move v1, v2

    :r4c192_ret
''' + old_end, 1)

assert src.count('dbgSel(IF)V') == 2
assert src.count('cmpl-float v9, v7, v8') == 1
assert src.count(':r4c192_hf') == 2 and src.count(':r4c192_ret') == 2
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok')