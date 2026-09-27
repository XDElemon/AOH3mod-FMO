# -*- coding: utf-8 -*-
# R5b007：把 sk 拆成 skA（守卫1=airhq假空军师）/ skD（守卫2=脏数据计数越界）
# 目的：上一轮已确认 sk==sz（全部被守卫挡掉），但要分清是哪一道守卫 -> 决定修法。
# 手法：不新增局部寄存器（.registers 已顶到 16 上限），改为征用**没被使用的第 4 个参数 p3(=v15)**
#       当 skD 计数器。p3 在旧实现里从没被用过（targetArmyID），安全。
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b007'
src = io.open(P, encoding='utf-8').read()
assert 'skA=' not in src and '" sk="' in src, '锚点不对（需要 r5b006c 状态）'
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

# 1) 初始化 skD 计数器（v15 = p3，未使用）
sub1(r'const/4 v11, 0x0', 'const/4 v11, 0x0\n    const/4 v15, 0x0', 'v15(p3) 清零 = skD')

# 2) 守卫2 的两个跳转改到 :axa_skipd
sub1(r'if-nez v6, :axa_skipc', 'if-nez v6, :axa_skipd', '守卫2a -> skD')
sub1(r'if-le v5, v6, :axa_skipc', 'if-le v5, v6, :axa_skipd', '守卫2b -> skD')

# 3) 新增 :axa_skipd 计数块（插在 :axa_skipc **定义**之前；用 sk 自增行锚定，避免命中跳转）
sub1(r':axa_skipc(\n\s*)add-int/lit8 v11, v11, 0x1',
     ':axa_skipd\n    add-int/lit8 v15, v15, 0x1\n    goto :axa_next\n:axa_skipc\\1add-int/lit8 v11, v11, 0x1',
     '插入 skD 计数块')

# 4) 日志：sk -> skA，并追加 skD
sub1(r'const-string v3, " sk="', 'const-string v3, " skA="', 'sk 字段改名 skA')
sub1(r'(invoke-virtual \{v2, v11\}, Ljava/lang/StringBuilder;->append\(I\)Ljava/lang/StringBuilder;\n)',
     '\\1    const-string v3, " skD="\n'
     '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n',
     '追加 skD 字段')

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('const/4 v15, 0x0', 'v15(p3) 清零'),
    (':axa_skipd', 'skD 标签存在'),
    ('add-int/lit8 v15, v15, 0x1', 'skD 自增'),
    ('" skA="', '日志 skA 字段'),
    ('" skD="', '日志 skD 字段'),
]
for s_, why in checks:
    ok = s_ in m
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

def cnt(x):
    return len(re.findall(re.escape(x), m))
for lab, want in [(':axa_skipd', 3), (':axa_skipc', 2), (':axa_same', 2), (':axa_notw', 2)]:
    c = cnt(lab)
    ok = (c == want)
    print(('  OK  ' if ok else '  XX  ') + '标签 %s = %d 次（期望 %d：2跳转+1定义 / 1跳转+1定义）' % (lab, c, want))
    bad += 0 if ok else 1

used = sorted(set(int(x) for x in re.findall(r'\bv(\d+)\b', m)))
mx = used[-1] if used else -1
ok = mx <= 15
print(('  OK  ' if ok else '  XX  ') + '方法内最大寄存器 v%d（≤ v15）' % mx)
bad += 0 if ok else 1

print()
print('读法：')
print('  skA>0, skD=0 -> 挡的是 airhq 假空军师（那省没真陆军）')
print('  skD>0        -> 挡的是**真陆军师**（守卫2 误伤）=> 要改守卫2')
print('  sz=n, 且 same+nw+skA+skD == n  -> 计数闭合校验通过')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b007 补丁完成')