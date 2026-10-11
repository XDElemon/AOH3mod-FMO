# -*- coding: utf-8 -*-
# B3b 补丁：两棵树统一应用 A/B/C（先全量锚点校验 -> 再写盘）
import shutil, os

ROOTS = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']

A_OLD = '->techAvailable:I\n\n    return v0\n.end method\n\n.method public static final loadTechnology()V'
NEW_METHOD = (
'.method public static isTechAllowedForCiv(II)Z\n'
'    .registers 5\n'
'\n'
'    const/16 v0, 0x20\n'
'    if-ge p0, v0, :nlow\n'
'    const/4 v0, 0x1\n'
'    return v0\n'
'\n'
'    :nlow\n'
'    const/16 v0, 0x4a\n'
'    if-le p0, v0, :inr\n'
'    const/4 v0, 0x1\n'
'    return v0\n'
'\n'
'    :inr\n'
'    const/16 v0, 0x2c\n'
'    if-gt p0, v0, :chk3\n'
'    const/4 v1, 0x0\n'
'    goto :chk\n'
'\n'
'    :chk3\n'
'    const/16 v0, 0x36\n'
'    if-gt p0, v0, :chk1\n'
'    const/4 v1, 0x3\n'
'    goto :chk\n'
'\n'
'    :chk1\n'
'    const/16 v0, 0x3f\n'
'    if-gt p0, v0, :set2\n'
'    const/4 v1, 0x1\n'
'    goto :chk\n'
'\n'
'    :set2\n'
'    const/4 v1, 0x2\n'
'\n'
'    :chk\n'
'    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I\n'
'    move-result v2\n'
'    if-eq v1, v2, :allow\n'
'\n'
'    const/4 v0, 0x0\n'
'    return v0\n'
'\n'
'    :allow\n'
'    const/4 v0, 0x1\n'
'    return v0\n'
'.end method'
)
A_NEW = '->techAvailable:I\n\n    return v0\n.end method\n\n' + NEW_METHOD + '\n\n.method public static final loadTechnology()V'

B_OLD = 'if-ge v6, v0, :cond_23a\n\n    .line 66\n'
B_BLOCK = (
'    # B3b: 非本国科技不显示（跳过建按钮与连线）\n'
'    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n'
'    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I\n'
'    invoke-static {v6, v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z\n'
'    move-result v0\n'
'    if-nez v0, :b3b_vis_ok\n'
'    add-int/lit8 v6, v6, 0x1\n'
'    goto :goto_56\n'
'    :b3b_vis_ok\n'
)
B_NEW = 'if-ge v6, v0, :cond_23a\n\n' + B_BLOCK + '\n    .line 66\n'

C_OLD = '    .line 2261\n    :cond_5a\n    const/4 v0, 0x1\n\n    return v0\n.end method'
C_BLOCK = (
'    # B3b: 国别门禁（非本国科技不可研究）\n'
'    const/16 v0, 0x20\n'
'    if-ge p1, v0, :b3b_nlow\n'
'    const/4 v0, 0x1\n'
'    return v0\n'
'    :b3b_nlow\n'
'    const/16 v0, 0x4a\n'
'    if-le p1, v0, :b3b_chk\n'
'    const/4 v0, 0x1\n'
'    return v0\n'
'    :b3b_chk\n'
'    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I\n'
'    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z\n'
'    move-result v0\n'
'    if-eqz v0, :b3b_no\n'
'    const/4 v0, 0x1\n'
'    return v0\n'
'    :b3b_no\n'
'    const/4 v0, 0x0\n'
'    return v0\n'
)
C_NEW = '    .line 2261\n    :cond_5a\n' + C_BLOCK + '.end method'

jobs = []
for r in ROOTS:
    jobs.append((r + '/aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali', 'A', A_OLD, A_NEW))
    jobs.append((r + '/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali', 'B', B_OLD, B_NEW))
    jobs.append((r + '/aoc/kingdoms/lukasz/map/civilization/Civilization.smali', 'C', C_OLD, C_NEW))

# ---- 阶段1：全量校验（不写盘） ----
ok = True
for (p, tag, old, new) in jobs:
    s = open(p, encoding='utf-8').read()
    if 'isTechAllowedForCiv' in s:
        print('SKIP(已打补丁):', p); ok = False; continue
    c = s.count(old)
    print('%-3s %-100s count=%d' % (tag, p, c))
    if c != 1:
        ok = False
if not ok:
    print('BLOCKED: 锚点未全数命中唯一，未写盘')
    raise SystemExit(1)

# ---- 阶段2：写盘（带 .pre_b3b 备份） ----
for (p, tag, old, new) in jobs:
    if not os.path.exists(p + '.pre_b3b'):
        shutil.copy2(p, p + '.pre_b3b')
    s = open(p, encoding='utf-8').read()
    s = s.replace(old, new, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('PATCHED', tag, p)
print('ALL DONE')