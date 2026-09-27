# -*- coding: utf-8 -*-
# R5b006 v2：「轰炸机炸不了陆军」诊断批 —— applyArmyDamage 加跳过原因计数（不改判定行为）
# 新增日志字段：nAH pct= civ= n= same= nw= sk= sz=
#
# ★两次翻车教训（都写死在这里，别再犯）：
#   1) 本方法 4 个参数（Province,int,float,int）→ .registers13 时局部只有 v0..v8，全被原码占用。
#   2) 抬寄存器时**不能超过 16**：`mul-float/2addr v8, p2`、`int-to-float` 这类指令的
#      第二个操作数只有 4 位（v0~v15）；抬到 18 => p2 变 v16 => 汇编器报
#      "Invalid register: v16. Must be between v0 and v15"。
#   3) 首版把「师数快照」放进 v12 —— 而 .registers16 时 v12~v15 正是**参数**！
#      结果把 p0(Province 引用) 覆盖成 Integer => 真机 VerifyError。
#      => 结论：本方法最多用 .registers16，且只能用 v0..v11 做局部；师数改为打日志时现取。
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b006'
src = io.open(P, encoding='utf-8').read()
assert 'nAH pct=' in src and ' same=' not in src, '已打过 R5b006 或锚点缺失'
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

# 1) 13 -> 16（可用的最大值：参数落在 v12~v15，仍可进 4 位操作数）
sub1(r'\.registers 13', '.registers 16', '寄存器 13 -> 16（上限，参数 v12~v15）')

# 2) 计数器清零（v9/v10/v11，都是局部）
sub1(r'(const/4 v0, 0x0\n)(\s*)(if-eqz p0, :axa_done)',
     '\\1    const/4 v9, 0x0\n    const/4 v10, 0x0\n    const/4 v11, 0x0\n\\2\\3',
     'v9/v10/v11 清零')

# 3) 守卫1（空军师）计数
sub1(r'(if-eqz v5, :axa_ak2\n\s*)goto :axa_next', '\\1goto :axa_skipc', '守卫1 -> 记 sk')

# 4) 守卫2（脏数据）计数
sub1(r'if-nez v6, :axa_next(\n\s*invoke-interface \{v6\}, Ljava/util/List;->size\(\)I)',
     'if-nez v6, :axa_skipc\\1', '守卫2a -> 记 sk')
sub1(r'if-le v5, v6, :axa_next', 'if-le v5, v6, :axa_skipc', '守卫2b -> 记 sk')

# 5) 同国 / 未交战 计数
sub1(r'if-eq v4, p1, :axa_next', 'if-eq v4, p1, :axa_same', '同国 -> 记 same')
sub1(r'if-eqz v4, :axa_next', 'if-eqz v4, :axa_notw', '未交战 -> 记 nw')

# 6) 三个计数块（各自跳回 :axa_next，行为不变）
sub1(r':axa_next(\n\s*)add-int/lit8 v2, v2, -0x1',
     ':axa_skipc\n    add-int/lit8 v11, v11, 0x1\n    goto :axa_next\n'
     ':axa_same\n    add-int/lit8 v9, v9, 0x1\n    goto :axa_next\n'
     ':axa_notw\n    add-int/lit8 v10, v10, 0x1\n    goto :axa_next\n'
     ':axa_next\\1add-int/lit8 v2, v2, -0x1',
     '计数块 + 标签落回')

# 7) 日志追加 same/nw/sk/sz（sz 现取 getArmySize()，用 v4 接，不占新寄存器）
sub1(r'(\n\s*)invoke-virtual \{v2\}, Ljava/lang/StringBuilder;->toString\(\)Ljava/lang/String;',
     '\n    const-string v3, " same="\n'
     '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '    const-string v3, " nw="\n'
     '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '    const-string v3, " sk="\n'
     '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '    const-string v3, " sz="\n'
     '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I\n'
     '    move-result v4\n'
     '    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '\\1invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
     '日志追加 same/nw/sk/sz（sz 现取）')

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('.registers 16', '寄存器 = 16（不是 18！参数 v12~v15 才能进 4 位操作数）'),
    ('const/4 v9, 0x0', 'same 计数清零'),
    ('add-int/lit8 v9, v9, 0x1', 'same 计数自增'),
    ('add-int/lit8 v10, v10, 0x1', 'nw 计数自增'),
    ('add-int/lit8 v11, v11, 0x1', 'sk 计数自增'),
    ('" same="', '日志 same 字段'),
    ('" nw="', '日志 nw 字段'),
    ('" sk="', '日志 sk 字段'),
    ('" sz="', '日志 sz 字段'),
]
for s_, why in checks:
    ok = s_ in m
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

# 关键边界：本方法内**任何寄存器都不得超过 v15**（4 位操作数上限），且参数占 v12~v15
used = sorted(set(int(x) for x in re.findall(r'\bv(\d+)\b', m)))
mx = used[-1] if used else -1
ok = mx <= 15
print(('  OK  ' if ok else '  XX  ') + '方法内最大寄存器 v%d（必须 ≤ v15）' % mx)
bad += 0 if ok else 1

# sz 必须由 getArmySize() 现取（出现 2 次：进循环前 1 次 + 日志处 1 次）
c = m.count('getArmySize()I')
ok = (c == 2)
print(('  OK  ' if ok else '  XX  ') + 'getArmySize() 出现 %d 次（期望 2）' % c)
bad += 0 if ok else 1

# 标签计数
def cnt(x):
    return len(re.findall(re.escape(x), m))
for lab, want in [(':axa_skipc', 4), (':axa_same', 2), (':axa_notw', 2)]:
    c = cnt(lab)
    ok = (c == want)
    print(('  OK  ' if ok else '  XX  ') + '标签 %s 出现 %d 次（期望 %d）' % (lab, c, want))
    bad += 0 if ok else 1

print()
print('真值表（计数语义）：')
print('  sz=0          -> 那省没部队（非 bug）')
print('  same>0, n=0   -> 只有我方/同国师（正常跳过）')
print('  nw>0,   n=0   -> 有敌方师但被判未交战（要查战争关系）')
print('  sk>0,   n=0   -> R5b004 守卫误伤真陆军（要收窄守卫）')
print('  n>0           -> 已能炸陆军')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b006(v2) 补丁完成')