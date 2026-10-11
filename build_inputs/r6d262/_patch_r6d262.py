# -*- coding: utf-8 -*-
# r6d262 补丁：AirModelTables(新) + AirTechEvents(重写) + AirForceManager 两处插入（两棵树，先全量校验再写盘）
import os, shutil

ROOTS = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
SRC = '/sdcard/GLG/历史23/build_inputs/r6d262/_files'

ATE = open(os.path.join(SRC, 'AirTechEvents.smali'), encoding='utf-8').read()
AMT = open(os.path.join(SRC, 'AirModelTables.smali'), encoding='utf-8').read()

A1_OLD = '.method public static airNameForTypeP(I)Ljava/lang/String;\n    .registers 4\n    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I'

BLOCK_NAME = '''    # r6d262: 动态型号名（按玩家已研究最高代取数；未命中回退原逻辑）
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v1
    const/4 v2, 0x2
    if-ge p0, v2, :amf_hi
    add-int/2addr v2, p0
    goto :amf_go
    :amf_hi
    const/4 v2, -0x2
    add-int/2addr v2, p0
    :amf_go
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->bestIdx(III)I
    move-result v2
    if-ltz v2, :amf_old
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->keyOf(I)Ljava/lang/String;
    move-result-object v0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
    :amf_old'''

A1_NEW = '.method public static airNameForTypeP(I)Ljava/lang/String;\n    .registers 4\n' + BLOCK_NAME + '\n    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I'

A2_OLD = '.method public static airImgForTypeP(I)I\n    .registers 3\n    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I'

BLOCK_IMG = '''    # r6d262: 动态机型图（按玩家已研究最高代取数；未命中回退原逻辑）
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v1
    invoke-static {v0, v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->bestIdx(III)I
    move-result v0
    if-ltz v0, :aimf_old
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->genOf(I)I
    move-result v0
    invoke-static {v0, v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickAirImage(III)I
    move-result v0
    return v0
    :aimf_old'''

A2_NEW = '.method public static airImgForTypeP(I)I\n    .registers 3\n' + BLOCK_IMG + '\n    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I'

# ---- 阶段1：全量校验 ----
ok = True
for r in ROOTS:
    afm = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
    s = open(afm, encoding='utf-8').read()
    if 'AirModelTables' in s:
        print('SKIP(已打补丁):', afm); ok = False
    c1 = s.count(A1_OLD); c2 = s.count(A2_OLD)
    print('ANCHORS %d/%d  %s' % (c1, c2, afm))
    if c1 != 1 or c2 != 1:
        ok = False
    p2 = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirModelTables.smali')
    if os.path.exists(p2):
        print('SKIP(已存在):', p2); ok = False
if not ok:
    print('BLOCKED: 前置校验未通过，未写盘')
    raise SystemExit(1)

# ---- 阶段2：写盘 ----
for r in ROOTS:
    p2 = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirModelTables.smali')
    open(p2, 'w', encoding='utf-8').write(AMT)
    print('NEW', p2)
    ate = os.path.join(r, 'aoc/kingdoms/lukasz/events/AirTechEvents.smali')
    if not os.path.exists(ate + '.pre_r6d262'):
        shutil.copy2(ate, ate + '.pre_r6d262')
    open(ate, 'w', encoding='utf-8').write(ATE)
    print('REWRITE', ate)
    afm = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
    if not os.path.exists(afm + '.pre_r6d262'):
        shutil.copy2(afm, afm + '.pre_r6d262')
    s = open(afm, encoding='utf-8').read()
    s = s.replace(A1_OLD, A1_NEW, 1)
    s = s.replace(A2_OLD, A2_NEW, 1)
    open(afm, 'w', encoding='utf-8').write(s)
    print('PATCHED', afm)
print('ALL DONE')