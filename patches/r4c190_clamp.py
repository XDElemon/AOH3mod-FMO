# -*- coding: utf-8 -*-
# R4c190：评分距离钳位（保证档间绝对分离）
#   现状：tier1 = d×f，tier2 = 100000 + d×f ⇒ 当 d 很大（如缅甸首都 5693）时 tier1 可能 ≥ 100000，
#         被“附近的 tier2 省”反超 ⇒ 又变成打最近的。
#   修法：在算分前把 d 钳位到 1000.0f（只影响打分，不影响真实距离；攻机路径不经过此处）。
#         ⇒ 上限：tier1 ≤ 1100 < tier2 ∈[100000,101100] < tier3 ∈[200000,201100]
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'ss_noclamp' not in src, 'already patched'

old = '''    const/4 v7, 0x1
    if-ne v11, v7, :ss_ret_dist

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;
'''
assert src.count(old) == 1, 'anchor count=%d' % src.count(old)
new = '''    const/4 v7, 0x1
    if-ne v11, v7, :ss_ret_dist

    # R4c190：打分用距离钳位到 1000.0f —— 保证 tier1 < tier2 < tier3 绝对分离
    # 真值表：cmpg-float(v0,1000) ≤0（d≤1000）→ 跳 :ss_noclamp 不钳位；>0 → 落下去执行 move v0,v3
    const v3, 0x447a0000    # 1000.0f
    cmpg-float v7, v0, v3
    if-lez v7, :ss_noclamp
    move v0, v3

    :ss_noclamp
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;
'''
src = src.replace(old, new, 1)
assert src.count(':ss_noclamp') == 3   # 定义1 + 跳转1 + 注释1
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))