# -*- coding: utf-8 -*-
# r6d268：贴图彻底按编制/单位（补中间层：编制记录链 + 机场反向扫描）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
AFM = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PDA = 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'

def load(p):
    with open(p, encoding='utf-8') as f: return f.read()

def rep_once(s, old, new, tag):
    c = s.count(old)
    if c != 1:
        raise SystemExit('ANCHOR FAIL [%s]: expect 1 got %d :: %r' % (tag, c, old[:130]))
    return s.replace(old, new, 1)

# ---------- PDA ----------
pda = load(os.path.join(TREES[0], PDA))

GETKEYPROV = '''# r6d268：取 key 中的省号（airhq_civ_prov[_type_index]）
.method public static getKeyProv(Ljava/lang/String;)I
    .registers 5
    const/4 v0, -0x1
    if-eqz p0, :r6d268_kp_ret
    :try_start_1
    const-string v2, "_"
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v1
    array-length v3, v1
    const/4 v0, 0x3
    if-lt v3, v0, :r6d268_kp_ret
    const/4 v0, 0x2
    aget-object v1, v1, v0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    :r6d268_kp_ret
    return v0
    :catch_1
    move-exception v3
    const/4 v0, -0x1
    return v0
.end method

'''
pda2 = rep_once(pda, '.method public static getKeyCiv(Ljava/lang/String;)I', GETKEYPROV + '.method public static getKeyCiv(Ljava/lang/String;)I', 'P1-getkeyprov')

ak_old = ('    move-result v4\n'
          '    if-ltz v4, :r6d266_ak_old\n'
          '    return v4\n'
          '    :r6d266_ak_old\n')
ak_new = ('    move-result v4\n'
          '    if-ltz v4, :r6d266_ak_old\n'
          '    return v4\n'
          '    # r6d268:无任务→按编制记录取图\n'
          '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForDivKey(Ljava/lang/String;)I\n'
          '    move-result v4\n'
          '    if-ltz v4, :r6d266_ak_old\n'
          '    return v4\n'
          '    :r6d266_ak_old\n')
pda2 = rep_once(pda2, ak_old, ak_new, 'P2-forkey-divkey')

# ---------- AFM ----------
afm = load(os.path.join(TREES[0], AFM))

HELP3 = '''# r6d268：记录级取图核心 + 编制 key 解析
.method public static airImgForRec(III)I
    .registers 8
    const/4 v0, 0x7
    if-lt p1, v0, :r6d268_rec_m1
    const/16 v0, 0xa
    if-gt p1, v0, :r6d268_rec_m1
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;
    if-eqz v0, :r6d268_rec_m1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge p1, v1, :r6d268_rec_m1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
    if-eqz v0, :r6d268_rec_m1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v1
    if-ge p2, v1, :r6d268_rec_m1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;
    if-eqz v0, :r6d268_rec_m1
    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I
    if-lez v1, :r6d268_rec_m1
    add-int/lit8 v1, v1, -0x46
    ushr-int/lit8 v1, v1, 0x4
    add-int/lit8 v1, v1, 0x3
    add-int/lit8 v2, p1, -0x7
    const/4 v3, 0x1
    xor-int/2addr v2, v3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v3
    invoke-static {v1, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickAirImage(III)I
    move-result v4
    return v4
    :r6d268_rec_m1
    const/4 v0, -0x1
    return v0
.end method

.method public static airImgForDivKey(Ljava/lang/String;)I
    .registers 8
    if-eqz p0, :r6d268_dk_m1
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I
    move-result v0
    if-ltz v0, :r6d268_dk_m1
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyProv(Ljava/lang/String;)I
    move-result v1
    if-ltz v1, :r6d268_dk_m1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v2
    if-eqz v2, :r6d268_dk_m1
    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I
    move-result v3
    if-ltz v3, :r6d268_dk_m1
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    move-result-object v3
    if-eqz v3, :r6d268_dk_m1
    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;
    if-eqz v3, :r6d268_dk_m1
    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v4
    if-eqz v4, :r6d268_dk_m1
    const/4 v4, 0x0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
    if-eqz v3, :r6d268_dk_m1
    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I
    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I
    invoke-static {v0, v4, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForRec(III)I
    move-result v6
    return v6
    :r6d268_dk_m1
    const/4 v0, -0x1
    return v0
.end method

'''
afm2 = rep_once(afm, '.method public static airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I', HELP3 + '.method public static airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I', 'A1-helpers')

# A2：机场反向扫描（含 .registers 6→8）
afm2 = rep_once(afm2, '.method public static airImgForAirportOrd(Laoc/kingdoms/lukasz/map/battles/Airport;II)I\n    .registers 6',
                '.method public static airImgForAirportOrd(Laoc/kingdoms/lukasz/map/battles/Airport;II)I\n    .registers 8', 'A2a-regs')
scan_old = ('    invoke-interface {v0}, Ljava/util/List;->size()I\n'
            '    move-result v1\n'
            '    if-eqz v1, :r6d266_apo_fb\n'
            '    add-int/lit8 v1, v1, -0x1\n'
            '    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
            '    move-result-object v0\n'
            '    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;\n'
            '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I\n'
            '    move-result v1\n'
            '    if-ltz v1, :r6d266_apo_fb\n'
            '    return v1\n')
scan_new = ('    invoke-interface {v0}, Ljava/util/List;->size()I\n'
            '    move-result v1\n'
            '    if-eqz v1, :r6d266_apo_fb\n'
            '    add-int/lit8 v1, v1, -0x1\n'
            '    :r6d268_apo_scan\n'
            '    if-ltz v1, :r6d266_apo_fb\n'
            '    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
            '    move-result-object v2\n'
            '    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;\n'
            '    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I\n'
            '    move-result v3\n'
            '    if-ltz v3, :r6d268_apo_next\n'
            '    return v3\n'
            '    :r6d268_apo_next\n'
            '    add-int/lit8 v1, v1, -0x1\n'
            '    goto :r6d268_apo_scan\n')
afm2 = rep_once(afm2, scan_old, scan_new, 'A2b-scan')

# A3：mission 编制记录链
aim_old2 = ('    return v1\n'
            '    :r6d266_aim_old\n')
aim_new2 = ('    return v1\n'
            '    # r6d268:无飞机章→按任务编制记录取图\n'
            '    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;\n'
            '    if-eqz v0, :r6d266_aim_old\n'
            '    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
            '    if-eqz v0, :r6d266_aim_old\n'
            '    invoke-interface {v0}, Ljava/util/List;->size()I\n'
            '    move-result v1\n'
            '    if-eqz v1, :r6d266_aim_old\n'
            '    const/4 v1, 0x0\n'
            '    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
            '    move-result-object v0\n'
            '    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;\n'
            '    if-eqz v0, :r6d266_aim_old\n'
            '    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I\n'
            '    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I\n'
            '    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I\n'
            '    invoke-static {v3, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForRec(III)I\n'
            '    move-result v4\n'
            '    if-ltz v4, :r6d266_aim_old\n'
            '    return v4\n'
            '    :r6d266_aim_old\n')
afm2 = rep_once(afm2, aim_old2, aim_new2, 'A3-mission-div')

for rel, text in ((PDA, pda2), (AFM, afm2)):
    for t in TREES:
        p = os.path.join(t, rel)
        b = p + '.pre_r6d268'
        if not os.path.exists(b):
            import shutil; shutil.copy2(p, b)
        if load(p) != text:
            with open(p, 'w', encoding='utf-8') as f:
                f.write(text)

print('PATCHED 2 files')
print('rec:', afm2.count('.method public static airImgForRec'), ' divkey:', afm2.count('.method public static airImgForDivKey'))
print('scan:', afm2.count('r6d268_apo_scan'), ' mission-div:', afm2.count('r6d268_aim_old'), 'prov:', pda2.count('.method public static getKeyProv'))
print('DONE')