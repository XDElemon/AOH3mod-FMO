# -*- coding: utf-8 -*-
# R5b014：修「条件跳转写反」——把两处判空从 if-nez 改成 if-eqz
#
# 铁证（r5b013 无分支探针）：
#   obj=null 出现 0 次；22 个被扫到的师清单全都有团（如 civ=226 k=feoCS obj=[…23 个团]）
#   ⇒ 说明"清单为空"这条分支根本不该命中，但 skD 一直在涨、n 只剩"扣 iArmy"那条路
#   ⇒ 根因：`if-nez` 的语义是「**不等于 0 才跳**」（非空才跳），我当成了"等于 0 才跳"
#
# 正确语义（写死在这里，别再记错）：
#   if-eqz  v : v == 0 才跳（null / false / 0）
#   if-nez  v : v != 0 才跳（**非空 / true / 非零**）
#   if-ltz  v : v <  0 才跳          if-gez v : v >= 0 才跳
#
# 两处修正：
#   ① 守卫1：key == null 才认为是"非空军师"   -> if-eqz v5, :axa_ak2
#   ② 守卫2：lArmyRegiment == null 才跳过     -> if-eqz v6, :axa_skipd
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b014'
src = io.open(P, encoding='utf-8').read()
assert 'R5b014' not in src, '已打过 R5b014，先回滚'
assert 'if-nez v5, :axa_ak2' in src and 'if-nez v6, :axa_skipd' in src, '锚点缺失'
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

sub1(r'if-nez v5, :axa_ak2', 'if-eqz v5, :axa_ak2', '① key 判空：if-nez -> if-eqz')
sub1(r'if-nez v6, :axa_skipd', 'if-eqz v6, :axa_skipd', '② 清单判空：if-nez -> if-eqz')

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('if-eqz v5, :axa_ak2' in m, '① 已是 if-eqz（key==null 才跳）'),
    ('if-nez v5, :axa_ak2' not in m, '① 无 if-nez 残留'),
    ('if-eqz v6, :axa_skipd' in m, '② 已是 if-eqz（清单==null 才跳）'),
    ('if-nez v6, :axa_skipd' not in m, '② 无 if-nez 残留'),
    # 其余判定必须保持原样（别被我连带改坏）
    ('if-eqz v5, :axa_ak2' in m and 'invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z' in m, 'startsWith 判定仍在'),
    ('if-eq v4, p1, :axa_skipd_skip' in m, '同国判定未被连带修改'),
    ('if-eqz v4, :axa_skipd_skip' in m, '未交战判定未被连带修改'),
    ('if-lez v5, :axa_skipd_skip' in m, '兵力<=0 判定未被连带修改'),
    ('if-ne v4, v5, :axa_dirty' in m, '脏数据判定未被连带修改'),
]
for ok, why in checks:
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

print()
print('修后行为（真值表）：')
print('  key == null            -> 跳 :axa_ak2（按非空军师继续）✔')
print('  key=airhq…             -> startsWith=1 -> 不跳 -> goto :axa_skipc（跳过，不伤害）✔')
print('  key=普通(如 feoCS)     -> startsWith=0 -> 跳 :axa_ak2 ✔')
print('  清单 == null           -> 跳 :axa_skipd（走"扣 iArmy"兜底）✔')
print('  清单非空               -> 落到逐团扣血（伤害落袋）✔  ← 本次要恢复的关键行为')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b014 补丁完成')