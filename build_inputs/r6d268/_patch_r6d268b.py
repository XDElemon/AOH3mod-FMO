# -*- coding: utf-8 -*-
# r6d268b（phase2 修正）：
#  ① mission：单位链失败改跳"编制链入口标签"（原先直达旧链会绕过编制链）
#  ② mission：编制链块改用 v2/v3/v4，保留 v0=单位（失败仍可安全回旧链）
#  ③ forKey：任务链的 5 个失败跳全部改指"编制链入口标签"
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
AFM = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PDA = 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'

BLOCK_OLD = '''    # r6d268:无飞机章→按任务编制记录取图
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v0, :r6d266_aim_old
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;
    if-eqz v0, :r6d266_aim_old
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v1
    if-eqz v1, :r6d266_aim_old
    const/4 v1, 0x0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
    if-eqz v0, :r6d266_aim_old
    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I
    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    invoke-static {v3, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForRec(III)I
    move-result v4
    if-ltz v4, :r6d266_aim_old
    return v4
'''
BLOCK_NEW = '''    # r6d268:无飞机章→按任务编制记录取图（保留 v0=单位；v2 留给旧链）
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v1, :r6d266_aim_old
    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;
    if-eqz v1, :r6d266_aim_old
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v3
    if-eqz v3, :r6d266_aim_old
    const/4 v3, 0x0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
    if-eqz v1, :r6d266_aim_old
    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I
    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForRec(III)I
    move-result v3
    if-ltz v3, :r6d266_aim_old
    return v3
'''

def fix_afm(s):
    o1 = '    if-ltz v1, :r6d266_aim_old\n    return v1\n'
    n1 = '    if-ltz v1, :r6d268_aim_div\n    return v1\n'
    assert s.count(o1) == 1, ('o1', s.count(o1)); s = s.replace(o1, n1, 1)
    o2 = '    # r6d268:无飞机章→按任务编制记录取图\n'
    n2 = '    :r6d268_aim_div\n    # r6d268:无飞机章→按任务编制记录取图\n'
    assert s.count(o2) == 1, ('o2', s.count(o2)); s = s.replace(o2, n2, 1)
    assert s.count(BLOCK_OLD) == 1, ('blk', s.count(BLOCK_OLD))
    s = s.replace(BLOCK_OLD, BLOCK_NEW, 1)
    return s

def fix_pda(s):
    idx = s.find('    # r6d268:无任务→按编制记录取图')
    assert idx > 0
    head = s[:idx].replace(', :r6d266_ak_old', ', :r6d268_ak_div')
    return head + '    :r6d268_ak_div\n' + s[idx:]

for t in TREES:
    pa = os.path.join(t, AFM); pd = os.path.join(t, PDA)
    sa = fix_afm(open(pa, encoding='utf-8').read()); open(pa, 'w', encoding='utf-8').write(sa)
    sd = fix_pda(open(pd, encoding='utf-8').read()); open(pd, 'w', encoding='utf-8').write(sd)
    print('phase2 applied', t)
print('DONE')