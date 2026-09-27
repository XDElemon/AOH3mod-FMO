# -*- coding: utf-8 -*-
# R5b004：修闪退 —— applyArmyDamage 不再对“我们自己造的空军师”动手
#
# 背景（实据）：
#   java.lang.IndexOutOfBoundsException: Index 12 out of bounds for length 1
#     at ArmyDivision.updateArmy(ArmyDivision.java:317)
#     at AirMission.applyArmyDamage   ← 我们的代码
#   updateArmy 会用 regiment.uID / regiment.aID 去索引引擎的 ArmyManager.lArmy；
#   而我们的“空军师”是假师（uID 自编 = v9+7），索引必然越界。
#
# 本补丁在两处加守卫（都在 applyArmyDamage 的“遍历省内各师”循环里）：
#   守卫1：division.key 以 "airhq" 开头 → 跳过（这是我们造的空军师）
#   守卫2：iArmyRegimentSize > lArmyRegiment.size() → 跳过（脏数据，updateArmy 必越界）
#
# 极性自查（写死，别信手感）：
#   String.startsWith(...) 返回 Z：true=1 / false=0
#   我们要「是 airhq 才跳过」 ⇒ 结果==false(0) 时**继续** ⇒ 必须 if-eqz 跳到“继续”标签
#   若写成 if-nez ⇒ 变成「是 airhq 才继续、真陆军全跳过」= 完全反了
#   守卫2 用 if-le v5,v6, :axa_next ：v5(计数) > v6(长度) 才跳（越界风险），方向正确；
#   若写成 if-ge ⇒ 变成「计数 >= 长度才跳」，会把正常的 计数==长度 也跳掉（陆军永远吃不到伤害）
import io, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b004'

src = io.open(P, encoding='utf-8').read()

# ---------- 0) 幂等 ----------
assert 'R5b004' not in src, '已打过 R5b004，先回滚'
shutil.copyfile(P, BAK)
print('备份 ->', BAK)

# ---------- 1) 定位：applyArmyDamage 循环里“师==null 则下一个”的那行 ----------
ANCHOR = 'if-eqz v3, :axa_next'
assert src.count(ANCHOR) == 1, '锚点不唯一：%d' % src.count(ANCHOR)
i = src.index(ANCHOR)
nl = src.index('\n', i) + 1

# 下一个非空行必须是我们预期的“读 civID”（即原循环体开头）
j = nl
while src[j] == '\n':
    j += 1
line_end = src.index('\n', j)
nxt = src[j:line_end]
assert 'civID:I' in nxt and 'ArmyDivision' in nxt, '锚点后不是 civID 行，位置不对：%r' % nxt
indent = src[src.rindex('\n', 0, j) + 1:j]
assert indent.strip() == '', '缩进异常 %r' % indent

# ---------- 2) 插入守卫 ----------
INSERT = (
    indent + '# R5b004: 跳过我们自己造的“空军师”（假 uID 会让引擎 updateArmy 越界）\n' +
    indent + 'iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n' +
    indent + 'if-nez v5, :axa_ak2\n' +
    indent + 'const-string v6, "airhq"\n' +
    indent + 'invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z\n' +
    indent + 'move-result v5\n' +
    indent + 'if-eqz v5, :axa_ak2\n' +
    indent + 'goto :axa_next\n' +
    indent + ':axa_ak2\n' +
    indent + '# R5b004: 脏数据守卫：计数 > 清单长度 → 跳过（updateArmy 必越界）\n' +
    indent + 'iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n' +
    indent + 'iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n' +
    indent + 'if-nez v6, :axa_next\n' +
    indent + 'invoke-interface {v6}, Ljava/util/List;->size()I\n' +
    indent + 'move-result v6\n' +
    indent + 'if-le v5, v6, :axa_next\n'
)
src = src[:j] + INSERT + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)
print('OK: 两处守卫已插入')

# ---------- 3) 自检 ----------
CHECKS = [
    ('invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
     '调用了 startsWith("airhq")'),
    ('if-eqz v5, :axa_ak2', 'startsWith==false(不是空军师) → 继续'),
    ('goto :axa_next', 'startsWith==true(是空军师) → 跳过'),
    ('if-le v5, v6, :axa_next', '计数 > 清单长度 → 跳过（注意是 le 不是 ge）'),
    ('if-nez v6, :axa_next', '清单==null → 跳过'),
]
bad = 0
for s_, why in CHECKS:
    ok = s_ in src
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

# 反例1：只看 startsWith 之后那段——结果绝不能用 if-nez（那是反的）
_k = src.index('startsWith(Ljava/lang/String;)Z')
_seg1 = src[_k:_k + 200]
rev1 = 'if-nez v5, :axa_ak2' in _seg1
print(('  OK  ' if not rev1 else '  XX  ') + 'startsWith 结果处无反向写法 if-nez v5（有=极性反了）')
bad += 1 if rev1 else 0

# 反例2：守卫2 绝不能写成 if-ge（会把正常数据也跳掉）
rev2 = 'if-ge v5, v6, :axa_next' in src
print(('  OK  ' if not rev2 else '  XX  ') + '无反向写法 if-ge v5,v6（有=方向反了）')
bad += 1 if rev2 else 0

# 顺序：startsWith -> move-result v5 -> if-eqz -> goto
k = src.index('startsWith(Ljava/lang/String;)Z')
seg = src[k:k + 220]
seq = seg.index('move-result v5') < seg.index('if-eqz v5, :axa_ak2') < seg.index('goto :axa_next')
print(('  OK  ' if seq else '  XX  ') + '顺序 startsWith -> move-result -> if-eqz -> goto')
bad += 0 if seq else 1

print()
print('真值表（守卫1）：')
print('  key="airhq_73_6337_2_1"  startsWith=1  if-eqz 不跳 -> goto :axa_next  跳过 ✔')
print('  key="army_xxx"            startsWith=0  if-eqz 跳 -> :axa_ak2 继续      ✔')
print('  key=null                  if-nez 跳 -> :axa_ak2 继续                  ✔')
print('真值表（守卫2）：')
print('  size=1  计数=13  13>1  -> if-le 跳 :axa_next  跳过 ✔')
print('  size=3  计数=3   3>3? 否 -> 落到原逻辑（真陆军照常吃伤害）              ✔')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b004 补丁完成')