# -*- coding: utf-8 -*-
# R5b005：补两个「原版改名遗留的悬空调用」（不是我们改出来的，但会崩）
#   A) Civilization.removeMove(Ljava/lang/String;)Z   -> 转发到改名后的 cancelMove(String)Z
#   B) AirForceManager.buildAirport(II)L...Airport;   -> 转发到改名后的 registerAirport(II)V 并取回该机场
#
# 触发点（实据）：
#   A) PeaceTreaty.moveAllArmiesToOwnTerritory(PeaceTreaty.java:1096) → AI 缔结和约时崩
#   B) Province.updateBuildingsUnderConstrucion(Province.smali:22326) → 省里机场建成时崩
# 两处都在「未改动的原版包」里同样悬空（已用 dexlib2 对照确认），故属开发商版本不同步。
#
# 极性/语义自查：
#   A 纯转发，无判断；
#   B 里唯一判断是「按 provinceID 找返回对象」：if-ge v2,v1 用于循环出口（下标>=个数→退出），
#     if-ne v4,p1 用于「不相等就继续找」；若写成 if-eq ⇒ 会返回第一个不匹配的机场（错）。
import io, shutil

P_CIV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/civilization/Civilization.smali'
P_AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CIV_CLS = 'Laoc/kingdoms/lukasz/map/civilization/Civilization;'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AIRPORT_CLS = 'Laoc/kingdoms/lukasz/map/battles/Airport;'   # 返回类型描述符（R5b005 修正：原来拼成了 AFM_CLS+"Airport;"）

# ---------------- A) Civilization.removeMove(String)Z ----------------
civ = io.open(P_CIV, encoding='utf-8').read()
assert 'removeMove(Ljava/lang/String;)Z' not in civ, 'A 已打过，先回滚'
shutil.copyfile(P_CIV, P_CIV + '.bak_r5b005')

CALLEE = '.method public final cancelMove(Ljava/lang/String;)Z'
assert civ.count(CALLEE) == 1, '找不到 cancelMove 定义（%d）' % civ.count(CALLEE)
i = civ.index(CALLEE)
j = civ.index('.end method', i) + len('.end method')
assert '\n' in civ[j:j + 2]

NEW_CIV = (
    '\n\n'
    '.method public final removeMove(Ljava/lang/String;)Z\n'
    '    .registers 3\n'
    '    .param p1, "key"    # Ljava/lang/String;\n'
    '    # R5b005: 原版把本方法改名为 cancelMove，但 PeaceTreaty 仍在调老名字 -> 这里转发回去\n'
    '    invoke-virtual {p0, p1}, ' + CIV_CLS + '->cancelMove(Ljava/lang/String;)Z\n'
    '    move-result v0\n'
    '    return v0\n'
    '.end method'
)
civ = civ[:j] + NEW_CIV + civ[j:]
io.open(P_CIV, 'w', encoding='utf-8').write(civ)
print('OK: A) Civilization.removeMove(String)Z 已补（转发 cancelMove）')

# ---------------- B) AirForceManager.buildAirport(II)Airport ----------------
afm = io.open(P_AFM, encoding='utf-8').read()
assert 'buildAirport(II)' not in afm, 'B 已打过，先回滚'
shutil.copyfile(P_AFM, P_AFM + '.bak_r5b005')

ANCH = '.method public registerAirport(II)V'
assert afm.count(ANCH) == 1, '找不到 registerAirport 定义（%d）' % afm.count(ANCH)
i = afm.index(ANCH)
j = afm.index('.end method', i) + len('.end method')

NEW_AFM = (
    '\n\n'
    '.method public buildAirport(II)' + AIRPORT_CLS + '\n'
    '    .registers 8\n'
    '    .param p1, "provinceID"    # I\n'
    '    .param p2, "civID"    # I\n'
    '    # R5b005: 原版把本方法改名为 registerAirport，但 Province 仍在调老名字 -> 这里转发并取回该机场\n'
    '    invoke-virtual {p0, p1, p2}, ' + AFM_CLS + '->registerAirport(II)V\n'
    '    invoke-virtual {p0, p2}, ' + AFM_CLS + '->getAirportsForCiv(I)Ljava/util/List;\n'
    '    move-result-object v0\n'
    '    if-eqz v0, :ba_null\n'
    '    invoke-interface {v0}, Ljava/util/List;->size()I\n'
    '    move-result v1\n'
    '    const/4 v2, 0x0\n'
    '    :ba_loop\n'
    '    if-ge v2, v1, :ba_null\n'
    '    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
    '    move-result-object v3\n'
    '    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Airport;\n'
    '    if-eqz v3, :ba_next\n'
    '    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n'
    '    if-ne v4, p1, :ba_next\n'
    '    return-object v3\n'
    '    :ba_next\n'
    '    add-int/lit8 v2, v2, 0x1\n'
    '    goto :ba_loop\n'
    '    :ba_null\n'
    '    const/4 v3, 0x0\n'
    '    return-object v3\n'
    '.end method'
)
afm = afm[:j] + NEW_AFM + afm[j:]
io.open(P_AFM, 'w', encoding='utf-8').write(afm)
print('OK: B) AirForceManager.buildAirport(II)Airport 已补（转发 registerAirport）')

# ---------------- 自检 ----------------
civ = io.open(P_CIV, encoding='utf-8').read()
afm = io.open(P_AFM, encoding='utf-8').read()
checks = [
    ('Civilization: removeMove(String)Z 定义', civ.count('.method public final removeMove(Ljava/lang/String;)Z') == 1),
    ('Civilization: 转发到 cancelMove', ('invoke-virtual {p0, p1}, ' + CIV_CLS + '->cancelMove(Ljava/lang/String;)Z') in civ),
    ('Civilization: 返回 Z', 'move-result v0\n    return v0' in civ),
    ('AFM: buildAirport(II) 定义', afm.count('.method public buildAirport(II)' + AIRPORT_CLS) == 1),
    ('AFM: 先 registerAirport', ('invoke-virtual {p0, p1, p2}, ' + AFM_CLS + '->registerAirport(II)V') in afm),
    ('AFM: 按 provinceID 匹配', 'if-ne v4, p1, :ba_next' in afm),
    ('AFM: 循环出口 if-ge', 'if-ge v2, v1, :ba_null' in afm),
    ('AFM: 无反向写法 if-eq v4, p1', 'if-eq v4, p1, :ba_next' not in afm),
]
bad = 0
for why, ok in checks:
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1
print()
print('真值表（B）：')
print('  civID=p2 的机场列表里 provinceID==p1 → if-ne 不跳 → return-object 该机场 ✔')
print('  provinceID!=p1                     → if-ne 跳 :ba_next 继续找      ✔')
print('  列表为 null / 越界 / 找不到         → 落到 :ba_null return null    ✔')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b005 补丁完成')