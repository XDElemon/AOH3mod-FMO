# -*- coding: utf-8 -*-
# R5b008：恢复「轰炸机能炸陆军」
#
# 实据（r5b007 抓样）：
#   nAH ... n=0 same=0 nw=0 skA=0 skD=N sz=N   -> 挡人的是**守卫2**（计数>清单长度），且挡的是真陆军师
# 旧守卫2 的问题：整师跳过 -> 一点血都扣不到。
# 而之所以当初要跳过，是因为这些师的 iArmyRegimentSize(计数) > lArmyRegiment.size()(清单)，
# 引擎 updateArmy() 按**计数**循环 -> ArrayList.get(i) 越界 -> 闪退（Index 12 out of bounds for length 1）。
#
# 本补丁三处改动：
#   ① 去掉「计数>清单长度 => 整师跳过」（保留「清单==null => 跳过」，防 NPE）
#   ② 扣血循环改为按**清单实际长度**迭代（不再用偏大的计数）-> 自己不会越界
#   ③ 收尾时：计数==清单长度 -> 照旧调 updateArmy(Z)；不一致 -> **不调** updateArmy，
#      改为自己把 iArmy 重算成「各团 num 之和」（只做原生循环里那段安全求和，跳过会崩的查表段）
#
# 极性自查：
#   ③ 用 `if-ne v4, v5, :axa_dirty`（**不相等**才跳去脏数据处理）；相等则落下去调原生 updateArmy。
#      若写成 if-eq => 会把"一致的好数据"当脏数据、把"脏数据"送去 updateArmy => 正好反了 + 必崩。
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b008'
src = io.open(P, encoding='utf-8').read()
assert 'R5b008' not in src, '已打过 R5b008，先回滚'
assert 'if-le v5, v6, :axa_skipd' in src, '锚点不对（需要 r5b007 状态）'
shutil.copyfile(P, BAK)

HDR = '.method private static applyArmyDamage'
i = src.index(HDR)
j = src.index('.end method', i) + len('.end method')
body = src[i:j]

def sub1(pat, rep, why):
    global body
    body, n = re.subn(pat, rep, body)
    assert n == 1, ('替换次数异常(%d)：%s' % (n, why))
    print('  OK  ' + why)

# ① 去掉「计数>清单长度 => 整师跳过」
sub1(r'(if-nez v6, :axa_skipd\n)(\s*)invoke-interface \{v6\}, Ljava/util/List;->size\(\)I\n\s*move-result v6\n\s*if-le v5, v6, :axa_skipd\n',
     '\\1    # R5b008: 不再因「计数>清单长度」整师跳过（那正是真陆军师被误挡的原因）\n',
     '① 去掉「计数>长度」整师跳过')

# ② 扣血循环上界：计数 -> 清单实际长度
sub1(r'iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n(\s*)add-int/lit8 v4, v4, -0x1\n(\s*):axa_rl',
     '    # R5b008: 扣血按**清单实际长度**迭代（计数可能偏大 -> 越界）\n'
     '    iget-object v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
     '    invoke-interface {v4}, Ljava/util/List;->size()I\n'
     '    move-result v4\n'
     '    add-int/lit8 v4, v4, -0x1\n'
     '\\2:axa_rl',
     '② 扣血循环改为按清单长度')

# ③ 收尾：一致才调 updateArmy，否则自算 iArmy
sub1(r':axa_rupd\n(\s*)const/4 v4, 0x1\n(\s*)invoke-virtual \{v3, v4\}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy\(Z\)V\n',
     ':axa_rupd\n'
     '    # R5b008: 计数 == 清单长度 -> 原生 updateArmy；不一致 -> 自算 iArmy（原生那条路会越界崩）\n'
     '    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n'
     '    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
     '    invoke-interface {v5}, Ljava/util/List;->size()I\n'
     '    move-result v5\n'
     '    if-ne v4, v5, :axa_dirty\n'
     '    const/4 v4, 0x1\n'
     '    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V\n'
     '    goto :axa_next\n'
     '    :axa_dirty\n'
     '    const/4 v4, 0x0\n'
     '    const/4 v6, 0x0\n'
     '    :axa_dacc\n'
     '    if-ge v6, v5, :axa_ddone\n'
     '    iget-object v7, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
     '    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
     '    move-result-object v7\n'
     '    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;\n'
     '    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I\n'
     '    add-int/2addr v4, v7\n'
     '    add-int/lit8 v6, v6, 0x1\n'
     '    goto :axa_dacc\n'
     '    :axa_ddone\n'
     '    iput v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I\n'
     '    goto :axa_next\n',
     '③ 收尾：一致才 updateArmy，不一致自算 iArmy')

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('if-le v5, v6, :axa_skipd' not in m, '① 已删除「计数>长度」整师跳过'),
    ('if-nez v6, :axa_skipd' in m, '① 保留「清单==null」跳过（防 NPE）'),
    ('if-ne v4, v5, :axa_dirty' in m, '③ 用 if-ne 判"不一致"（不相等才跳脏数据）'),
    ('if-eq v4, v5, :axa_dirty' not in m, '③ 无反向写法 if-eq（有=极性反了）'),
    ('iput v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I' in m, '③ 自算 iArmy 并写回'),
    (':axa_dacc' in m and ':axa_ddone' in m, '③ 脏数据求和循环存在'),
]
for ok, why in checks:
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

# 扣血循环上界必须是"清单长度"（size()I 后面紧跟 move-result v4 / add-int -1 / :axa_rl）
ok = re.search(r'invoke-interface \{v4\}, Ljava/util/List;->size\(\)I\n\s*move-result v4\n\s*add-int/lit8 v4, v4, -0x1\n\s*:axa_rl', m) is not None
print(('  OK  ' if ok else '  XX  ') + '② 扣血上界 = 清单长度（且落到 :axa_rl）')
bad += 0 if ok else 1

used = sorted(set(int(x) for x in re.findall(r'\bv(\d+)\b', m)))
mx = used[-1] if used else -1
ok = mx <= 15
print(('  OK  ' if ok else '  XX  ') + '方法内最大寄存器 v%d（≤ v15）' % mx)
bad += 0 if ok else 1

print()
print('真值表（③）：')
print('  计数 == 清单长度  -> if-ne 不跳 -> 调 updateArmy(Z)          ✔（原生路径，安全）')
print('  计数 != 清单长度  -> if-ne 跳 :axa_dirty -> 自算 iArmy，不调 updateArmy ✔（不再越界）')
print('  清单 == null      -> 在守卫处就跳过了                        ✔')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b008 补丁完成')