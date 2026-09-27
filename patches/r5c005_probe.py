# -*- coding: utf-8 -*-
# R5c005（诊断批）：把 a1bPick 的"无候选"拆成可分辨的四段，逐个机场逐回合打出来
#   k=11 tgt=射程集合大小        （0 => 该机场 ATTACKER 射程内没有任何省）
#   k=12 tgt=集合内"可见"省数     （fogDrawArmy==true）
#   k=13 tgt=集合内"有交战敌军"省数（isEnemyArmyInProvince==true，不论可见）
#   k=14 tgt=通过 6 回合新鲜度窗口的省数
#   k=9  tgt=最终选中的省（-1=无）
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
shutil.copyfile(P, P + '.bak_r5c005')
s = io.open(P, encoding='utf-8').read()
AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
bad = 0
L = []


def sub1(pat, rep, desc):
    global s, bad
    n = len(re.findall(pat, s, re.S))
    if n != 1:
        L.append(' XX ' + desc + '（命中 ' + str(n) + '）')
        bad += 1
        return
    s = re.sub(pat, rep, s, count=1, flags=re.S)
    L.append(' OK ' + desc)


# 1) 三个计数静态字段
sub1(r'\.field public static a1bTurn:I',
     '.field public static a1bTurn:I\n'
     '.field public static a1bNvis:I\n'
     '.field public static a1bNen:I\n'
     '.field public static a1bNfr:I',
     '① 字段 a1bNvis/a1bNen/a1bNfr')

# 2) 进循环前清零计数
sub1(r'(iget v13, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\s*\n)',
     r'\1'
     '    const/4 v10, 0x0\n'
     '    sput v10, ' + AFM + '->a1bNvis:I\n'
     '    sput v10, ' + AFM + '->a1bNen:I\n'
     '    sput v10, ' + AFM + '->a1bNfr:I\n',
     '② 计数清零')

# 3) 盖章块改为"分段计数 + 只在可见时盖章"
sub1(r'invoke-virtual \{v3\}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy\(\)Z\s*\n'
     r'\s*move-result v11\s*\n'
     r'\s*if-eqz v11, :bp_nostamp\s*\n'
     r'\s*invoke-virtual \{v3, p1\}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince\(I\)Z\s*\n'
     r'\s*move-result v11\s*\n'
     r'\s*if-eqz v11, :bp_nostamp\s*\n'
     r'\s*aput v8, v7, v4\s*\n'
     r':bp_nostamp',
     'invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
     '    move-result v11\n'
     '    if-eqz v11, :bp_invis\n'
     '    sget v11, ' + AFM + '->a1bNvis:I\n'
     '    add-int/lit8 v11, v11, 0x1\n'
     '    sput v11, ' + AFM + '->a1bNvis:I\n'
     '    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z\n'
     '    move-result v11\n'
     '    if-eqz v11, :bp_nostamp\n'
     '    sget v11, ' + AFM + '->a1bNen:I\n'
     '    add-int/lit8 v11, v11, 0x1\n'
     '    sput v11, ' + AFM + '->a1bNen:I\n'
     '    aput v8, v7, v4\n'
     '    goto :bp_nostamp\n'
     ':bp_invis\n'
     '    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z\n'
     '    move-result v11\n'
     '    if-eqz v11, :bp_nostamp\n'
     '    sget v11, ' + AFM + '->a1bNen:I\n'
     '    add-int/lit8 v11, v11, 0x1\n'
     '    sput v11, ' + AFM + '->a1bNen:I\n'
     ':bp_nostamp',
     '③ 分段计数（可见/敌军）+ 仅可见时盖章')

# 4) 新鲜度通过处计数
sub1(r'(if-gt v11, v10, :bp_loop\s*\n)',
     r'\1'
     '    sget v11, ' + AFM + '->a1bNfr:I\n'
     '    add-int/lit8 v11, v11, 0x1\n'
     '    sput v11, ' + AFM + '->a1bNfr:I\n',
     '④ 新鲜度通过计数')

# 5) :bp_done 打 5 行（k=9/11/12/13/14）
sub1(r':bp_done\s*\n\s*const/4 v10, 0x0\s*\n\s*const/16 v11, 0x9\s*\n'
     r'\s*invoke-static \{v13, v5, v11, v10\}, ' + re.escape(AFM) + r'->a1bLog\(IIILjava/lang/String;\)V\s*\n'
     r'\s*return v5',
     ':bp_done\n'
     '    const/4 v12, 0x0\n'
     '    move v10, v5\n'
     '    const/16 v11, 0x9\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    invoke-interface {v1}, Ljava/util/Set;->size()I\n'
     '    move-result v10\n'
     '    const/16 v11, 0xb\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    sget v10, ' + AFM + '->a1bNvis:I\n'
     '    const/16 v11, 0xc\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    sget v10, ' + AFM + '->a1bNen:I\n'
     '    const/16 v11, 0xd\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    sget v10, ' + AFM + '->a1bNfr:I\n'
     '    const/16 v11, 0xe\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    return v5',
     '⑤ 出口打 k=9/11/12/13/14')

ck = [
    ('字段已加', '.field public static a1bNvis:I' in s),
    ('清零已加', s.count('sput v10, ' + AFM + '->a1bNvis:I') == 1),
    ('不可见分支标签唯一', len(re.findall(r'\n:bp_invis\n', s)) == 1),
    ('盖章仍在（可见分支内）', '    aput v8, v7, v4\n    goto :bp_nostamp' in s),
    ('k=11 已加', 'const/16 v11, 0xb' in s),
    ('k=12 已加', 'const/16 v11, 0xc' in s),
    ('k=13 已加', 'const/16 v11, 0xd' in s),
    ('k=14 已加', 'const/16 v11, 0xe' in s),
    ('无分支（这些行里没有新增 if-）', s.count('if-eqz v11, :bp_invis') == 1),
]
for why, ok in ck:
    L.append((' OK ' if ok else ' XX ') + why)
    bad += 0 if ok else 1

io.open(P, 'w', encoding='utf-8').write(s)
for x in L:
    print(x)
assert bad == 0
print('OK: r5c005 诊断探针补丁完成')