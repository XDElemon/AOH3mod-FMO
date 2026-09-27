# -*- coding: utf-8 -*-
# R5b013：把状态探针里的 L/sz 分支改成**无分支**写法（直接打印 List 对象本身）
#   —— 之前用 if-nez + 两个标签，落点我没算准（日志出现 L=0 与 sz=25 自相矛盾），不可信。
#   现在改成 String.valueOf(list)：null 会打印 "null"，非空会打印 "[...]" 之类，一眼可辨，零歧义。
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b013'
src = io.open(P, encoding='utf-8').read()
assert 'R5b013' not in src, '已打过 R5b013，先回滚'
assert '" L="' in src and '" sz="' in src, '锚点缺失（需要 r5b011/012 状态）'
shutil.copyfile(P, BAK)

HDR = '.method private static applyArmyDamage'
i = src.index(HDR)
j = src.index('.end method', i) + len('.end method')
body = src[i:j]

# 定位 L 段（从 'const-string v6, " L="' 起，到 'const-string v6, " c="' 之前）整段替换
START = '    const-string v6, " L="\n'
END = '    const-string v6, " c="\n'
a = body.index(START)
b = body.index(END, a)
NEW = (
    '    const-string v6, " obj="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
    '    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;\n'
    '    move-result-object v6\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
)
body = body[:a] + NEW + body[b:]

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('" obj="' in m, '新增无分支 obj= 字段'),
    ('invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;' in m, '用 String.valueOf 打印清单对象'),
    ('const-string v6, " L="' not in m and 'const-string v6, " sz="' not in m, '旧的 L/sz 分支已移除（用带寄存器号的唯一串判定）'),
    ('"nAHs p="' in m, 'nAHs 探针仍在'),
]
for ok, why in checks:
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

used = sorted(set(int(x) for x in re.findall(r'\bv(\d+)\b', m)))
mx = used[-1] if used else -1
ok = mx <= 15
print(('  OK  ' if ok else '  XX  ') + '方法内最大寄存器 v%d（≤ v15）' % mx)
bad += 0 if ok else 1

# 探针里不应再有分支（除了已有的守卫/伤害判定）
n_branch = len(re.findall(r'\bif-[a-z]+ ', m))
print('  （方法内条件跳转总数 = %d，仅供参照）' % n_branch)

print()
print('读法：nAHs p=<省> k=<key> civ=<国> obj=<清单对象 toString> c=<计数> ia=<兵力> mv=<移动> bt=<参战>')
print('  obj=null            -> 清单确实是 null')
print('  obj=[...] 或 [L...; -> 清单非空（有团！）')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b013 补丁完成')