# -*- coding: utf-8 -*-
# R5b009：诊断批 —— 打印"被 :axa_skipd 跳过"的师到底是什么
#
# 背景：r5b008 已按证据去掉「计数>清单长度」的整师跳过，但抓样仍见 skD>0 且 n=0
#       ⇒ 说明命中的是另一条分支：`if-nez v6, :axa_skipd`（lArmyRegiment == null）。
#       而 ArmyDivision 的 5 个构造器全都写入 `new ArrayList`，静态上不该为 null。
#       ⇒ 加运行时探针，把对象的 省 / civID / iArmyRegimentSize / key / identityHashCode 打出来。
# 只在 null 分支触发时打印（正常情况下极罕见，不会淹没日志）。
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b009'
src = io.open(P, encoding='utf-8').read()
assert 'R5b009' not in src, '已打过 R5b009，先回滚'
assert ':axa_skipd' in src, '锚点缺失'
shutil.copyfile(P, BAK)

HDR = '.method private static applyArmyDamage'
i = src.index(HDR)
j = src.index('.end method', i) + len('.end method')
body = src[i:j]

PROBE = (
    '    # R5b009: 诊断——清单为 null 的师到底是什么\n'
    '    new-instance v4, Ljava/lang/StringBuilder;\n'
    '    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V\n'
    '    const-string v5, "nAHd p="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I\n'
    '    move-result v5\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v5, " civ="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v5, " c="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v5, " k="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    const-string v5, " id="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I\n'
    '    move-result v5\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
    '    move-result-object v5\n'
    '    const-string v6, "AIRDBG"\n'
    '    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
)

old_block = ':axa_skipd\n    add-int/lit8 v15, v15, 0x1\n'
assert body.count(old_block) == 1, '找不到 :axa_skipd 计数块'
body = body.replace(old_block, ':axa_skipd\n' + PROBE + '    add-int/lit8 v15, v15, 0x1\n', 1)

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('R5b009' in m, '探针已插入'),
    ('"nAHd p="' in m, '日志前缀 nAHd'),
    ('invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I' in m, '打印对象 identityHashCode'),
    (':axa_skipd\n    # R5b009' in m, '探针紧跟在 :axa_skipd 之后'),
    ('add-int/lit8 v15, v15, 0x1' in m, 'skD 计数仍在（探针不改变计数）'),
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
print('预期日志：nAHd p=<省> civ=<省主> c=<计数> k=<key> id=<对象hash>')
print('  k=airhq_...  -> 是飞机假师（且清单为 null）')
print('  k=...army... -> 是普通陆军师（但清单为 null => 数据被谁弄坏了）')
print('  k=(空)       -> key 也是 null，说明对象根本没被正常初始化')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b009 补丁完成')