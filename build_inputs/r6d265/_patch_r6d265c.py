# -*- coding: utf-8 -*-
# r6d265c 修正：回到 .registers 16（工具链上限 v0..v15）
#  ① 地图寄存器 v14 → v6（对象链，规避 check_params 的"超局部"）
#  ② 创建块重排：全部使用 v0..v13（v8=对象链、v3=混合、v12=常量）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
F = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'

def load(p):
    with open(p, encoding='utf-8') as f: return f.read()

def rep_once(s, old, new, tag):
    c = s.count(old)
    if c != 1:
        raise SystemExit('C ANCHOR FAIL [%s]: expect 1 got %d :: %r' % (tag, c, old[:110]))
    return s.replace(old, new, 1)

s = load(os.path.join(TREES[0], F))

# ① registers 18 → 16
s = rep_once(s, '.registers 18', '.registers 16', 'C1-regs16')

# ② 地图改 v6
old_map = ('    iget-object v14, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;\n'
           '    if-eqz v14, :r6d265_ret\n'
           '    invoke-interface {v14, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;\n'
           '    move-result-object v6')
new_map = ('    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;\n'
           '    if-eqz v6, :r6d265_ret\n'
           '    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;\n'
           '    move-result-object v6')
s = rep_once(s, old_map, new_map, 'C2-map6')

# ③ 创建块重排（v14/v15 出局）
old_cre = ('    add-int/lit8 v3, v9, 0x7\n'
           '    new-instance v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;\n'
           '    invoke-direct {v15, v3, v12}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V\n'
           '    iput v5, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I\n'
           '    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;\n'
           '    move-result-object v3\n'
           '    new-instance v8, Ljava/util/ArrayList;\n'
           '    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V\n'
           '    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z\n'
           '    new-instance v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;\n'
           '    invoke-direct {v14, v1, v2, v8}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V\n'
           '    iput-object v3, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n'
           '    const/4 v12, 0x1\n'
           '    iput v12, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n'
           '    const/high16 v12, 0x3f800000\n'
           '    iput v12, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F\n'
           '    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;\n'
           '    move-result-object v3')
new_cre = ('    add-int/lit8 v3, v9, 0x7\n'
           '    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;\n'
           '    invoke-direct {v8, v3, v12}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V\n'
           '    iput v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I\n'
           '    new-instance v3, Ljava/util/ArrayList;\n'
           '    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V\n'
           '    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z\n'
           '    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;\n'
           '    invoke-direct {v8, v1, v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V\n'
           '    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;\n'
           '    move-result-object v3\n'
           '    iput-object v3, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n'
           '    const/4 v12, 0x1\n'
           '    iput v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n'
           '    const/high16 v12, 0x3f800000\n'
           '    iput v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F\n'
           '    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;\n'
           '    move-result-object v3')
s = rep_once(s, old_cre, new_cre, 'C3-create')

# 校验：sync 方法体内不再出现 v14/v15
i = s.find('.method private static syncAirModelDivisions')
j = s.find('.end method', i)
body = s[i:j]
for r in ('v14', 'v15', 'v16', 'v17'):
    if r in body.replace('airhqKey4', ''):
        raise SystemExit('C4 v14+ still present: ' + r)

for t in TREES:
    p = os.path.join(t, F)
    if load(p) != s:
        open(p, 'w', encoding='utf-8').write(s)
print('C-PATCHED; registers16:', s.count('.registers 16'))
print('DONE')