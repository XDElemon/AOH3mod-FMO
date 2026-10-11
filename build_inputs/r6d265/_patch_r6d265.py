# -*- coding: utf-8 -*-
# r6d265 总补丁：飞机盖章(modelAid)+存档往返 / 编制按机型分组 / 地图飞机按国代取图
# 规则：先全量校验（每个锚点 count==1），全部通过才统一写盘；两棵树。
import os, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
REL = {
 'AFM': 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
 'PDA': 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali',
 'APT': 'aoc/kingdoms/lukasz/map/battles/Airport.smali',
 'AU' : 'aoc/kingdoms/lukasz/map/battles/AirUnit.smali',
 'SG' : 'aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali',
 'LG' : 'aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali',
 'SU' : 'aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit.smali',
}

HELPERS = '''# r6d265：编制/盖章/任务取图辅助
.method public static getBestAidForType(II)I
    .registers 6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move-result-object v0
    if-eqz v0, :r6d265_gbf_nf
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;
    if-nez v1, :r6d265_gbf_nf
    const/4 v0, 0x0
    :r6d265_gbf_loop
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :r6d265_gbf_nf
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;
    iget v3, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I
    if-ne v3, p1, :r6d265_gbf_next
    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I
    return v2
    :r6d265_gbf_next
    add-int/lit8 v0, v0, 0x1
    goto :r6d265_gbf_loop
    :r6d265_gbf_nf
    const/4 v0, -0x1
    return v0
.end method

.method public static stampAirUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V
    .registers 5
    if-eqz p0, :r6d265_sau_ret
    if-eqz p1, :r6d265_sau_ret
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v0
    add-int/lit8 v0, v0, 0x7
    invoke-static {p2, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getBestAidForType(II)I
    move-result v1
    if-ltz v1, :r6d265_sau_ret
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    :r6d265_sau_ret
    return-void
.end method

.method public static airImgForMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 6
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;
    if-eqz v0, :r6d265_aim_fb
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v1
    if-eqz v1, :r6d265_aim_fb
    const/4 v1, 0x0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v1
    const/4 v2, 0x1
    xor-int/2addr v1, v2
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v3
    invoke-static {v2, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->bestIdx(III)I
    move-result v4
    if-ltz v4, :r6d265_aim_fb
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->genOf(I)I
    move-result v4
    invoke-static {v4, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickAirImage(III)I
    move-result v0
    return v0
    :r6d265_aim_fb
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I
    return v0
.end method

'''

SYNC = '''# r6d265：按机型分组同步空军编制（替代 syncAirDivisionForType）
.method private static syncAirModelDivisions(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V
    .registers 16
    if-eqz p0, :r6d265_ret
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v9
    add-int/lit8 v3, v9, 0x7
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v4
    if-eqz v4, :r6d265_ret
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;
    if-eqz v5, :r6d265_ret
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    if-eqz v6, :r6d265_ret
    check-cast v6, Ljava/util/List;
    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getBestAidForType(II)I
    move-result v3
    const/16 v0, 0x10
    new-array v7, v0, [I
    const/4 v10, 0x0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v8
    :r6d265_al
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :r6d265_adone
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;
    iget v5, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    if-gtz v5, :r6d265_astamped
    if-ltz v3, :r6d265_astamped
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    move v5, v3
    :r6d265_astamped
    const/4 v11, 0x0
    :r6d265_afind
    if-ge v11, v10, :r6d265_afnew
    aget v12, v7, v11
    if-eq v12, v5, :r6d265_anext
    add-int/lit8 v11, v11, 0x1
    goto :r6d265_afind
    :r6d265_afnew
    const/16 v0, 0x10
    if-ge v10, v0, :r6d265_afnew2
    aput v5, v7, v10
    add-int/lit8 v10, v10, 0x1
    :r6d265_afnew2
    :r6d265_anext
    goto :r6d265_al
    :r6d265_adone
    const/4 v13, 0x1
    const/4 v11, 0x0
    :r6d265_bl
    if-ge v11, v10, :r6d265_bdone
    aget v12, v7, v11
    const/4 v0, 0x0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v8
    :r6d265_cl
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    if-eqz v5, :r6d265_cdone
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;
    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    if-ne v5, v12, :r6d265_cl
    add-int/lit8 v0, v0, 0x1
    goto :r6d265_cl
    :r6d265_cdone
    :r6d265_chunk
    if-lez v0, :r6d265_bnext
    const/16 v5, 0xa
    if-le v0, v5, :r6d265_csmall
    goto :r6d265_cbig
    :r6d265_csmall
    move v5, v0
    :r6d265_cbig
    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I
    move-result v3
    if-ltz v3, :r6d265_bcreate
    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    move-result-object v8
    if-eqz v8, :r6d265_bcont
    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;
    if-eqz v8, :r6d265_bcont
    const/4 v3, 0x0
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
    if-eqz v8, :r6d265_bcont
    iput v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I
    iput v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I
    add-int/lit8 v3, v9, 0x7
    iput v3, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I
    goto :r6d265_bcont
    :r6d265_bcreate
    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;
    move-result-object v3
    add-int/lit8 v8, v9, 0x7
    new-instance v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
    invoke-direct {v14, v8, v12}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V
    iput v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I
    new-instance v8, Ljava/util/ArrayList;
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    new-instance v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    invoke-direct {v15, v1, v2, v8}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V
    iput-object v3, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;
    const/4 v8, 0x1
    iput v8, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I
    const/high16 v8, 0x3f800000
    iput v8, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F
    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    move-result-object v3
    :r6d265_bcont
    sub-int/2addr v0, v5
    add-int/lit8 v13, v13, 0x1
    goto :r6d265_chunk
    :r6d265_bnext
    add-int/lit8 v11, v11, 0x1
    goto :r6d265_bl
    :r6d265_bdone
    const/16 v0, 0x20
    :r6d265_rl
    if-lez v0, :r6d265_ret
    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I
    move-result v3
    if-ltz v3, :r6d265_rnext
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKeyInMission(Ljava/lang/String;)Z
    move-result v3
    if-nez v3, :r6d265_rnext
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :r6d265_rnext
    add-int/lit8 v13, v13, 0x1
    add-int/lit8 v0, v0, -0x1
    goto :r6d265_rl
    :r6d265_ret
    return-void
.end method

'''

AIC_BLOCK = '''    # r6d265:按该国已研究最高代取图（未命中回退旧固定 3 代）
    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->bestIdx(III)I
    move-result v1
    if-ltz v1, :r6d265_aic_old
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->genOf(I)I
    move-result v1
    invoke-static {v1, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickAirImage(III)I
    move-result v0
    return v0
    :r6d265_aic_old
'''

def load(p):
    with open(p, encoding='utf-8') as f: return f.read()

def check(s, sub, n=1, tag=''):
    c = s.count(sub)
    if c != n:
        raise SystemExit('ANCHOR FAIL [%s]: expect %d got %d :: %r' % (tag, n, c, sub[:120]))
    return c

def rep_once(s, old, new, tag):
    check(s, old, 1, tag)
    return s.replace(old, new, 1)

def rep_line(s, sub, newlines, tag):
    # 找到含 sub 的整行（sub 唯一），用 newlines 替换整行；沿用原行缩进
    check(s, sub, 1, tag)
    i = s.find(sub)
    ls = s.rfind('\n', 0, i) + 1
    le = s.find('\n', i)
    ind = s[ls:i]
    new = '\n'.join(ind + l for l in newlines)
    return s[:ls] + new + s[le:]

def insert_after_line(s, anchor_sub, ins, tag):
    # 在包含 anchor_sub 的整行之后插入 ins（anchor_sub 必须唯一）
    check(s, anchor_sub, 1, tag)
    i = s.find(anchor_sub)
    j = s.find('\n', i)
    return s[:j+1] + ins + s[j+1:]

edits = []   # (relpath, newtext)

# ---------- AFM ----------
afm = load(os.path.join(TREES[0], REL['AFM']))
afm2 = afm

# 1) airImgForCiv 头部：插入 3 个 helper + 代感知块（动态截取头部，缩进无关）
hd = '.method public static airImgForCiv(II)I'
check(afm2, hd, 1, 'AFM:aic-head')
i = afm2.find(hd)
j = afm2.find('move-result v0\n', i) + len('move-result v0\n')
old_head = afm2[i:j]
if 'artGroupOf' not in old_head:
    raise SystemExit('AFM:aic-head content unexpected: %r' % old_head)
afm2 = afm2[:i] + HELPERS + old_head + AIC_BLOCK + afm2[j:]

# 2) 新同步方法：插到 syncAirDivisionForType 定义之前
anch = '.method private static syncAirDivisionForType(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V'
afm2 = rep_once(afm2, anch, SYNC + anch, 'AFM:sync-insert')

# 3) 调用点换新方法
old_call = 'invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAirDivisionForType(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V'
new_call = 'invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAirModelDivisions(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V'
afm2 = rep_once(afm2, old_call, new_call, 'AFM:call-swap')

# 4) registerAirport 两处 AI 造机后盖章（用 goto 上下文区分）
afm2 = afm2.replace('invoke-direct {v5, v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;-><init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V\n', 
                    'invoke-direct {v5, v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;-><init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V\n    invoke-static {v5, v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->stampAirUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V\n')
if afm2.count('stampAirUnit') != 3:
    raise SystemExit('AFM:stamp-ai-expect-3 got %d' % afm2.count('stampAirUnit'))
edits.append((REL['AFM'], afm2))

# ---------- PDA ----------
pda = load(os.path.join(TREES[0], REL['PDA'])); pda2 = pda
branch = [('ATTACKER', 0x2), ('INTERCEPTOR', 0x1), ('FIGHTER', 0x0), ('BOMBER', 0x3)]
for t, k in branch:
    sub = 'sget v14, Laoc/kingdoms/lukasz/textures/Images;->airG3_CN_%s:I' % t
    pda2 = rep_line(pda2, sub, ['# r6d265:按机场国×已研究最高代取图', 'iget v14, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I', 'const/4 v15, 0x%x' % k, 'invoke-static {v14, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I', 'move-result v14'], 'PDA:branch-' + t)
pda2 = rep_line(pda2, 'sget v0, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I', ['# r6d265:按任务机型/国代取图（失败回退原版小飞机）', 'invoke-static {p3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)I', 'move-result v0'], 'PDA:fly-marker')
edits.append((REL['PDA'], pda2))

# ---------- Airport ----------
apt = load(os.path.join(TREES[0], REL['APT'])); apt2 = apt
old_c = 'invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;-><init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V\n'
new_c = old_c + '    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->stampAirUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V\n'
apt2 = rep_once(apt2, old_c, new_c, 'APT:stamp-build')
edits.append((REL['APT'], apt2))

# ---------- AirUnit ----------
au = load(os.path.join(TREES[0], REL['AU'])); au2 = au
au2 = rep_once(au2, '.field public maxPayload:I', '.field public maxPayload:I\n\n.field public modelAid:I', 'AU:field')
edits.append((REL['AU'], au2))

# ---------- 存档三件 ----------
su = load(os.path.join(TREES[0], REL['SU'])); su2 = su
su2 = rep_once(su2, '.field public unitID:J', '.field public unitID:J\n\n.field public ma:I', 'SU:field')
edits.append((REL['SU'], su2))

sg = load(os.path.join(TREES[0], REL['SG'])); sg2 = sg
sg2 = insert_after_line(sg2, 'SaveGameManager$Save_AirUnit;->civID:I',
    '    iget v12, v9, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I\n'
    '    iput v12, v11, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->ma:I\n', 'SG:write')
edits.append((REL['SG'], sg2))

lg = load(os.path.join(TREES[0], REL['LG'])); lg2 = lg
lg2 = insert_after_line(lg2, 'SaveGameManager$Save_AirUnit;->airportID:I',
    '    iget v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;->ma:I\n'
    '    iput v12, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I\n', 'LG:read')
edits.append((REL['LG'], lg2))

# ---------- 全部通过 ⇒ 写盘（两棵树 + .pre 备份） ----------
for rel, text in edits:
    for t in TREES:
        p = os.path.join(t, rel)
        if not os.path.exists(p):
            raise SystemExit('missing tree file: ' + p)
        b = p + '.pre_r6d265'
        if not os.path.exists(b):
            shutil.copy2(p, b)
        if load(p) != text:
            with open(p, 'w', encoding='utf-8') as f:
                f.write(text)

print('PATCHED:', len(edits), 'files')
print('stampAirUnit calls:', edits[0][1].count('stampAirUnit'))
print('syncAirModelDivisions defs:', edits[0][1].count('.method private static syncAirModelDivisions'))
print('airImgForMission defs:', edits[0][1].count('.method public static airImgForMission'))
print('DONE')
