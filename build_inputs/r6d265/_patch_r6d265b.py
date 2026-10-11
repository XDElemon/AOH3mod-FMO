# -*- coding: utf-8 -*-
# r6d265b 修正：(1) sync 方法 .registers 16→18（v14/v15 合法化）
# (2) 地图寄存器 v5→v14（v5 改纯数值起步）(3) 创建块重排：v8 不再被数值写、常量改走 v12
import os

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
F = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'

def load(p):
    with open(p, encoding='utf-8') as f: return f.read()

def rep_once(s, old, new, tag):
    c = s.count(old)
    if c != 1:
        raise SystemExit('FIX ANCHOR FAIL [%s]: expect 1 got %d :: %r' % (tag, c, old[:100]))
    return s.replace(old, new, 1)

s = load(os.path.join(TREES[0], F))

F1_old = ('.method private static syncAirModelDivisions(Laoc/kingdoms/lukasz/map/battles/Airport;'
          'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V\n    .registers 16')
F1_new = F1_old.replace('.registers 16', '.registers 18')
s = rep_once(s, F1_old, F1_new, 'F1-registers')

F2_old = ('    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;\n'
          '    if-eqz v5, :r6d265_ret\n'
          '    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;')
F2_new = ('    iget-object v14, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;\n'
          '    if-eqz v14, :r6d265_ret\n'
          '    invoke-interface {v14, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;')
s = rep_once(s, F2_old, F2_new, 'F2-map-reg')

F3_old = ('    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;\n'
          '    move-result-object v3\n'
          '    add-int/lit8 v8, v9, 0x7\n'
          '    new-instance v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;\n'
          '    invoke-direct {v14, v8, v12}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V\n'
          '    iput v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I\n'
          '    new-instance v8, Ljava/util/ArrayList;\n'
          '    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V\n'
          '    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z\n'
          '    new-instance v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;\n'
          '    invoke-direct {v15, v1, v2, v8}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V\n'
          '    iput-object v3, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n'
          '    const/4 v8, 0x1\n'
          '    iput v8, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I\n'
          '    const/high16 v8, 0x3f800000\n'
          '    iput v8, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F\n'
          '    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;\n'
          '    move-result-object v3')
F3_new = ('    add-int/lit8 v3, v9, 0x7\n'
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
s = rep_once(s, F3_old, F3_new, 'F3-create-block')

for t in TREES:
    p = os.path.join(t, F)
    if load(p) != s:
        with open(p, 'w', encoding='utf-8') as f:
            f.write(s)
print('B-PATCHED')
print('regs18:', s.count('.registers 18\n'))
print('v14 map:', s.count('iget-object v14, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft'))
print('DONE')