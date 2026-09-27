# -*- coding: utf-8 -*-
# R5b011：状态全量探针 —— 把"每个被扫到的师"的关键状态打出来（纯观察，不改行为）
#
# 目的（调研闭环）：
#   1) lArmyRegiment 到底是不是 null？如果是，那台机器上还有没有"清单正常"的师（决定逐团路径可用性）
#   2) 这些师是否在移动(inMovement)/在战斗(addedToBattle)
#   3) key 形态（airhq_* 还是普通键）
# 日志：nAHs p=<省> k=<key> L=<清单是否为null 0/1> sz=<清单长度> c=<计数> ia=<兵力> mv=<inMovement 0/1> bt=<addedToBattle 0/1>
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b011'
src = io.open(P, encoding='utf-8').read()
assert 'R5b011' not in src, '已打过 R5b011，先回滚'
assert 'if-eqz v3, :axa_next' in src, '锚点缺失'
shutil.copyfile(P, BAK)

HDR = '.method private static applyArmyDamage'
i = src.index(HDR)
j = src.index('.end method', i) + len('.end method')
body = src[i:j]

ANCH = 'if-eqz v3, :axa_next\n'
assert body.count(ANCH) == 1, '锚点不唯一'

PROBE = (
    'if-eqz v3, :axa_next\n'
    '    # R5b011: 状态全量探针（观察用）\n'
    '    new-instance v4, Ljava/lang/StringBuilder;\n'
    '    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V\n'
    '    const-string v5, "nAHs p="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I\n'
    '    move-result v5\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v5, " k="\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getCivID()I\n'
    '    move-result v5\n'
    '    const-string v6, " civ="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v6, " L="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
    '    if-nez v6, :axa_p0\n'
    '    const/4 v5, 0x1\n'
    '    goto :axa_p1\n'
    '    :axa_p0\n'
    '    const/4 v5, 0x0\n'
    '    :axa_p1\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v6, " sz="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
    '    if-nez v6, :axa_p2\n'
    '    const/4 v5, 0x0\n'
    '    goto :axa_p3\n'
    '    :axa_p2\n'
    '    invoke-interface {v6}, Ljava/util/List;->size()I\n'
    '    move-result v5\n'
    '    :axa_p3\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v6, " c="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v6, " ia="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
    '    const-string v6, " mv="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-boolean v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n'
    '    const-string v6, " bt="\n'
    '    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
    '    iget-boolean v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z\n'
    '    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n'
    '    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
    '    move-result-object v5\n'
    '    const-string v6, "AIRDBG"\n'
    '    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
)
body = body.replace(ANCH, PROBE, 1)
src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
checks = [
    ('"nAHs p="' in m, '探针已插入（nAHs）'),
    ('" L="' in m and '" sz="' in m, '打印 清单null标志 + 清单长度'),
    ('" mv="' in m and '" bt="' in m, '打印 inMovement / addedToBattle'),
    ('getCivID()I' in m, '打印 civID'),
]
for ok, why in checks:
    print(('  OK  ' if ok else '  XX  ') + why)
    bad += 0 if ok else 1

used = sorted(set(int(x) for x in re.findall(r'\bv(\d+)\b', m)))
mx = used[-1] if used else -1
ok = mx <= 15
print(('  OK  ' if ok else '  XX  ') + '方法内最大寄存器 v%d（≤ v15）' % mx)
bad += 0 if ok else 1

# 关键：探针里的分支都必须"命中才跳"，且 L/sz 的判定方向不能反
ok1 = 'if-nez v6, :axa_p0' in m      # 清单==null -> 打印 L=0（走 axa_p0 设0）
ok2 = 'if-nez v6, :axa_p2' in m      # 清单==null -> 长度记0
print(('  OK  ' if ok1 else '  XX  ') + 'L 判定（null -> 印 0）')
print(('  OK  ' if ok2 else '  XX  ') + 'sz 判定（null -> 印 0）')
bad += 0 if (ok1 and ok2) else 1

print()
print('读法：nAHs p=<省> k=<key> civ=<国> L=<1=有清单/0=null> sz=<清单长度> c=<计数> ia=<兵力> mv=<在移动> bt=<参战>')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b011 补丁完成')