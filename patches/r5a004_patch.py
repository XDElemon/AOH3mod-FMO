# -*- coding: utf-8 -*-
# R5a004：修 strikeTick_A1 里"自己人的省不打"守卫的极性
#   错误：if-eq v1, p0, :a1_go   （相等才跳 ⇒ 敌省被跳过，恒 k=5）
#   正确：if-ne v1, p0, :a1_go   （不相等才跳 ⇒ 敌省继续走派发）
import io, os, shutil, re

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = P + '.bak_r5a004'
src = io.open(P, encoding='utf-8').read()
if not os.path.exists(BAK):
    shutil.copy2(BAK if os.path.exists(BAK) else P, BAK)
    print('BACKUP ->', BAK)

OLD = '    if-eq v1, p0, :a1_go'
NEW = '    if-ne v1, p0, :a1_go'
n = src.count(OLD)
print('目标行出现次数 =', n)
assert n == 1, '定位失败（应恰好 1 处）'
# 额外保险：确认它确实在 strikeTick_A1 里
i0 = src.index('.method private static strikeTick_A1(I)V')
i1 = src.index('.end method', i0)
assert OLD in src[i0:i1], '该行不在 strikeTick_A1 内'
src = src.replace(OLD, NEW, 1)
io.open(P, 'w', encoding='utf-8').write(src)
print('OK: 极性已修正 if-eq → if-ne')

# 真值表回放（人工核对）
print('--- 真值表 ---')
print('tgtciv=226, p0=73 → 226 != 73 → if-ne 成立 → 跳到 :a1_go（继续派发）✔')
print('tgtciv=73,  p0=73 → 相等       → 不跳 → 落到"自己人的省"日志并返回 ✔')