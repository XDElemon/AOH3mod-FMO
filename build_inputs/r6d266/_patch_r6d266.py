# -*- coding: utf-8 -*-
# r6d266 总补丁：地图贴图改"读编制/单位机型"
# ① AirForceManager：新增 airImgForUnit / airImgForAirportOrd；airImgForMission 优先单位机型
# ② ProvinceDrawArmy：airImgForKey 优先任务内飞机；机场 4 分支改 airImgForAirportOrd
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
AFM = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PDA = 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'

HELP2 = '''# r6d266：单位/机场 机型取图
.method public static airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I
    .registers 6
    if-eqz p0, :r6d266_iu_m1
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    if-ltz v0, :r6d266_iu_m1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-eqz v1, :r6d266_iu_m1
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v1
    add-int/lit8 v1, v1, 0x7
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;
    if-eqz v2, :r6d266_iu_m1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v1, v3, :r6d266_iu_m1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/ArrayList;
    if-eqz v2, :r6d266_iu_m1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ge v0, v3, :r6d266_iu_m1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;
    if-eqz v2, :r6d266_iu_m1
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I
    if-lez v3, :r6d266_iu_m1
    add-int/lit8 v3, v3, -0x46
    ushr-int/lit8 v3, v3, 0x4
    add-int/lit8 v3, v3, 0x3
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->civID:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v1
    const/4 v2, 0x1
    xor-int/2addr v1, v2
    invoke-static {v3, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickAirImage(III)I
    move-result v4
    return v4
    :r6d266_iu_m1
    const/4 v0, -0x1
    return v0
.end method

.method public static airImgForAirportOrd(Laoc/kingdoms/lukasz/map/battles/Airport;II)I
    .registers 6
    if-eqz p0, :r6d266_apo_null
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;
    if-eqz v0, :r6d266_apo_fb
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    move-result-object v1
    array-length v2, v1
    if-ge p1, v2, :r6d266_apo_fb
    aget-object v1, v1, p1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :r6d266_apo_fb
    check-cast v0, Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v1
    if-eqz v1, :r6d266_apo_fb
    add-int/lit8 v1, v1, -0x1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I
    move-result v1
    if-ltz v1, :r6d266_apo_fb
    return v1
    :r6d266_apo_fb
    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I
    move-result v1
    return v1
    :r6d266_apo_null
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I
    return v1
.end method

'''

def load(p):
    with open(p, encoding='utf-8') as f: return f.read()

def rep_once(s, old, new, tag):
    c = s.count(old)
    if c != 1:
        raise SystemExit('ANCHOR FAIL [%s]: expect 1 got %d :: %r' % (tag, c, old[:120]))
    return s.replace(old, new, 1)

edits = []

# ---------- AFM ----------
afm = load(os.path.join(TREES[0], AFM))
afm2 = rep_once(afm, '.method public static airImgForCiv(II)I', HELP2 + '.method public static airImgForCiv(II)I', 'A1-helpers')

aim_old = ('    const/4 v1, 0x0\n'
           '    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
           '    move-result-object v0\n'
           '    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;\n'
           '    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;')
aim_new = ('    const/4 v1, 0x0\n'
           '    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
           '    move-result-object v0\n'
           '    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;\n'
           '    # r6d266:优先按该机机型章取图\n'
           '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I\n'
           '    move-result v1\n'
           '    if-ltz v1, :r6d266_aim_old\n'
           '    return v1\n'
           '    :r6d266_aim_old\n'
           '    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;')
afm2 = rep_once(afm2, aim_old, aim_new, 'A2-mission')
edits.append((AFM, afm2))

# ---------- PDA ----------
pda = load(os.path.join(TREES[0], PDA))
ak_old = ('    .registers 8\n'
          '\n'
          '    const/4 v0, -0x1\n'
          '\n'
          '    const/4 v1, 0x2')
ak_new = ('    .registers 8\n'
          '    # r6d266:优先按任务编制内飞机机型取图\n'
          '    if-eqz p1, :r6d266_ak_old\n'
          '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;\n'
          '    move-result-object v5\n'
          '    if-eqz v5, :r6d266_ak_old\n'
          '    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;\n'
          '    if-eqz v5, :r6d266_ak_old\n'
          '    invoke-interface {v5}, Ljava/util/List;->size()I\n'
          '    move-result v4\n'
          '    if-eqz v4, :r6d266_ak_old\n'
          '    const/4 v4, 0x0\n'
          '    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
          '    move-result-object v5\n'
          '    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;\n'
          '    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I\n'
          '    move-result v4\n'
          '    if-ltz v4, :r6d266_ak_old\n'
          '    return v4\n'
          '    :r6d266_ak_old\n'
          '\n'
          '    const/4 v0, -0x1\n'
          '\n'
          '    const/4 v1, 0x2')
pda2 = rep_once(pda, ak_old, ak_new, 'A3-forkey')

for n in ('0x2', '0x1', '0x0', '0x3'):
    b_old = ('    # r6d265:按机场国×已研究最高代取图\n'
             '    iget v14, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I\n'
             '    const/4 v15, %s\n'
             '    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I\n'
             '    move-result v14' % n)
    b_new = ('    # r6d266:按在编飞机机型取图（无则回退国最佳代）\n'
             '    const/4 v15, %s\n'
             '    invoke-static {v6, v0, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd(Laoc/kingdoms/lukasz/map/battles/Airport;II)I\n'
             '    move-result v14' % n)
    pda2 = rep_once(pda2, b_old, b_new, 'A4-branch-' + n)
edits.append((PDA, pda2))

for rel, text in edits:
    for t in TREES:
        p = os.path.join(t, rel)
        b = p + '.pre_r6d266'
        if not os.path.exists(b):
            import shutil; shutil.copy2(p, b)
        if load(p) != text:
            with open(p, 'w', encoding='utf-8') as f:
                f.write(text)

print('PATCHED:', len(edits))
print('airImgForUnit defs:', edits[0][1].count('.method public static airImgForUnit'))
print('airImgForAirportOrd defs:', edits[0][1].count('.method public static airImgForAirportOrd'))
print('DONE')