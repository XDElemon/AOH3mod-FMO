# -*- coding: utf-8 -*-
# R5b010：对「清单为 null 的师」改用**直接扣 iArmy（兵力总数）**的伤害模型
#
# 实据（r5b009 探针 nAHd）：
#   nAHd p=5713 civ=226 c=24 k=UHDDf   ← 敌方真陆军师：iArmyRegimentSize=24，但 lArmyRegiment == null
#   nAHd p=5693 civ=73  c=1  k=airhq_… ← 我们的飞机假师（守卫1 已拦，不走这条）
#   => 「逐团扣血」对清单为 null 的师无团可遍历 => n 恒为 0 => 看起来"炸不了陆军"。
#
# 本补丁在 :axa_skipd 分支里改成：
#   ① 先做和逐团路径同样的两道判定：同国跳过 / 未交战跳过
#   ② 通过后：iArmy -= iArmy*pct（下限 0），计入 n（语义改为"受影响的单位数"）
#   ③ 探针 nAHd 增加 ia= 字段（扣完之后的兵力），便于对账
#
# 极性自查：
#   同国 -> `if-eq v4, p1, :axa_skipd_skip`（**相等**才跳过）
#   未交战 -> `if-eqz v4, :axa_skipd_skip`（isAtWar 返回 0 才跳过）
#   兵力<=0 -> `if-lez v5, :axa_skipd_skip`（<=0 才跳过）
#   三处若写成 if-ne / if-nez / if-gtz 就是反的。
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b010'
src = io.open(P, encoding='utf-8').read()
assert 'R5b010' not in src, '已打过 R5b010，先回滚'
assert '"nAHd p="' in src, '锚点缺失（需要 r5b009 状态）'
shutil.copyfile(P, BAK)

HDR = '.method private static applyArmyDamage'
i = src.index(HDR)
j = src.index('.end method', i) + len('.end method')
body = src[i:j]

# 在探针之前插入「判定 + 扣 iArmy」块
ANCH = ':axa_skipd\n    # R5b009:'
assert body.count(ANCH) == 1, '找不到 :axa_skipd 探针锚点'

DMG = (
    ':axa_skipd\n'
    '    # R5b010: 清单为 null 的师 -> 直接扣 iArmy（兵力总数）\n'
    '    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I\n'
    '    if-eq v4, p1, :axa_skipd_skip\n'
    '    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z\n'
    '    move-result v4\n'
    '    if-eqz v4, :axa_skipd_skip\n'
    '    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I\n'
    '    if-lez v5, :axa_skipd_skip\n'
    '    int-to-float v6, v5\n'
    '    int-to-float v7, v5\n'
    '    mul-float/2addr v7, p2\n'
    '    sub-float/2addr v6, v7\n'
    '    float-to-int v6, v6\n'
    '    const/4 v7, 0x0\n'
    '    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I\n'
    '    move-result v6\n'
    '    iput v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I\n'
    '    add-int/lit8 v0, v0, 0x1\n'
    '    :axa_skipd_skip\n'
    '    # R5b009:'
)
body = body.replace(ANCH, DMG, 1)

# 探针加 ia= 字段（扣后兵力）
old_id = ('    const-string v5, " id="\n')
assert body.count(old_id) == 1, '找不到探针 id= 锚点'
body = body.replace(
    old_id,
    '    const-string v5, " ia="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    + old_id,
    1)

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('iput v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I' in m, '扣 iArmy 并写回'),
    ('if-eq v4, p1, :axa_skipd_skip' in m, '同国才跳过（if-eq）'),
    ('if-eqz v4, :axa_skipd_skip' in m, '未交战才跳过（if-eqz）'),
    ('if-lez v5, :axa_skipd_skip' in m, '兵力<=0 才跳过（if-lez）'),
    ('if-ne v4, p1, :axa_skipd_skip' not in m, '无反写 if-ne（同国判定）'),
    ('if-nez v5, :axa_skipd_skip' not in m, '无反写 if-nez（兵力判定）'),
    ('" ia="' in m, '探针新增 ia= 字段'),
    (':axa_skipd_skip' in m, '跳过标签存在'),
]
for ok, why in checks:
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

used = sorted(set(int(x) for x in re.findall(r'\bv(\d+)\b', m)))
mx = used[-1] if used else -1
ok = mx <= 15
print(('  OK  ' if ok else '  XX  ') + '方法内最大寄存器 v%d（≤ v15）' % mx)
bad += 0 if ok else 1

print()
print('真值表（:axa_skipd 分支）：')
print('  civ==我方          -> if-eq 跳 :axa_skipd_skip  不打 ✔')
print('  isAtWar 返回 0     -> if-eqz 跳 :axa_skipd_skip  不打 ✔')
print('  iArmy<=0           -> if-lez 跳 :axa_skipd_skip  不打 ✔')
print('  其余（敌方/交战/有兵）-> 扣 iArmy*(1-pct)，n+1，日志 ia=  ✔')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b010 补丁完成')