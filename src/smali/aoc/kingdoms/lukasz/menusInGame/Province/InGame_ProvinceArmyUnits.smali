.class public Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ProvinceArmyUnits.java"


# static fields
.field public static iActiveID:I

.field public static key:Ljava/lang/String;

.field public static mPosX:I

.field public static mPosY:I

.field public static mWidth:I

.field public static tDivID:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    .line 40
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    .line 41
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    .line 43
    const-string v1, ""

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->key:Ljava/lang/String;

    .line 44
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    .line 45
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 27

    .line 47
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 50
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 51
    .local v1, "buttonX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 53
    .local v2, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 55
    .local v3, "buttonX_StatsPos":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x3

    mul-int/lit8 v22, v0, 0x3

    .line 56
    .local v22, "generalPadding":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v22, 0x2

    add-int v23, v0, v5

    .line 58
    .local v23, "defaultXArmyPos":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v0, :cond_6a6

    .line 60
    :try_start_26
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_69e

    if-lt v0, v5, :cond_64

    .line 61
    :try_start_3e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_60} :catch_61

    goto :goto_64

    .line 452
    :catch_61
    move-exception v0

    goto/16 :goto_6a0

    .line 64
    :cond_64
    :goto_64
    :try_start_64
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_66} :catch_69e

    if-ltz v0, :cond_69a

    .line 66
    const/4 v5, 0x2

    :try_start_69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->info:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;->ENABLE_PROVINCE_ARMY_COMPOSITION_INFO:Z

    if-eqz v0, :cond_226

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->info:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;->ENABLE_PROVINCE_ARMY_COMPOSITION_INFO_UNTIL_TURN_ID:I

    if-ge v0, v6, :cond_226

    .line 67
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 69
    .local v0, "infoCivID":I
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v6, :cond_222

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, "armyFirstLine":I
    const/4 v7, 0x0

    .line 73
    .local v7, "armySecondLine":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8c
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_a4} :catch_229

    if-ge v8, v10, :cond_162

    .line 74
    :try_start_a6
    sget-object v10, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->paUID(I)V

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->lArmyDump(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v10, :cond_15b

    .line 75
    sget-object v10, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ge v10, v5, :cond_12d

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto :goto_15b

    .line 78
    :cond_12d
    sget-object v10, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_157} :catch_15f

    if-ne v10, v5, :cond_15b

    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 73
    :cond_15b
    :goto_15b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8c

    .line 243
    .end local v0    # "infoCivID":I
    .end local v6    # "armyFirstLine":I
    .end local v7    # "armySecondLine":I
    .end local v8    # "i":I
    :catch_15f
    move-exception v0

    goto/16 :goto_22b

    .line 84
    .restart local v0    # "infoCivID":I
    .restart local v6    # "armyFirstLine":I
    .restart local v7    # "armySecondLine":I
    :cond_162
    const/4 v8, 0x0

    .line 85
    .local v8, "addInformation":Z
    :try_start_163
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v10

    move v14, v10

    .line 87
    .local v14, "infoBattleWidth":I
    if-ge v6, v14, :cond_1be

    if-lt v7, v14, :cond_170

    move/from16 v19, v0

    move v15, v1

    goto :goto_1c1

    .line 96
    :cond_170
    int-to-double v10, v7

    int-to-double v12, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3e4ccccd    # 0.2f

    mul-float v15, v15, v16

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_181} :catch_229

    move/from16 v19, v0

    move v15, v1

    .end local v0    # "infoCivID":I
    .end local v1    # "buttonX":I
    .local v15, "buttonX":I
    .local v19, "infoCivID":I
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    :try_start_186
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_18a} :catch_21c

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v4

    cmpl-double v4, v10, v12

    if-lez v4, :cond_194

    .line 97
    const/4 v8, 0x1

    goto :goto_1d0

    .line 99
    :cond_194
    int-to-double v4, v6

    int-to-double v10, v7

    :try_start_196
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v16

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1a6} :catch_21c

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v0

    cmpl-double v0, v4, v10

    if-lez v0, :cond_1b0

    .line 100
    const/4 v8, 0x1

    goto :goto_1d0

    .line 102
    :cond_1b0
    if-nez v6, :cond_1b7

    const/4 v0, 0x3

    if-le v7, v0, :cond_1b8

    .line 103
    const/4 v8, 0x1

    goto :goto_1d0

    .line 102
    :cond_1b7
    const/4 v0, 0x3

    .line 105
    :cond_1b8
    if-nez v7, :cond_1d0

    if-le v6, v0, :cond_1d0

    .line 106
    const/4 v8, 0x1

    goto :goto_1d0

    .line 87
    .end local v15    # "buttonX":I
    .end local v19    # "infoCivID":I
    .restart local v0    # "infoCivID":I
    .restart local v1    # "buttonX":I
    :cond_1be
    move/from16 v19, v0

    move v15, v1

    .line 88
    .end local v0    # "infoCivID":I
    .end local v1    # "buttonX":I
    .restart local v15    # "buttonX":I
    .restart local v19    # "infoCivID":I
    :goto_1c1
    if-lt v6, v14, :cond_1c9

    add-int/lit8 v0, v7, -0x4

    if-ge v0, v14, :cond_1c9

    .line 89
    const/4 v8, 0x1

    goto :goto_1d0

    .line 91
    :cond_1c9
    if-lt v7, v14, :cond_1d0

    add-int/lit8 v0, v6, -0x4

    if-ge v0, v14, :cond_1d0

    .line 92
    const/4 v8, 0x1

    .line 110
    :cond_1d0
    :goto_1d0
    if-eqz v8, :cond_21f

    .line 111
    const/4 v3, 0x0

    .line 112
    move v15, v3

    .line 114
    :try_start_1d4
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonHeight()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    .line 115
    .local v0, "infoH":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 117
    .local v1, "infoW":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits$1;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "ArmyComposition"

    invoke-virtual {v5, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->information:I

    const/4 v5, 0x0

    move-object v10, v4

    move-object/from16 v11, p0

    move/from16 v20, v14

    .end local v14    # "infoBattleWidth":I
    .local v20, "infoBattleWidth":I
    move v14, v5

    move/from16 v16, v2

    move/from16 v17, v1

    move/from16 v18, v0

    invoke-direct/range {v10 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;Ljava/lang/String;IIIIII)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_217} :catch_21c

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 239
    move v4, v3

    move v1, v4

    .end local v15    # "buttonX":I
    .local v4, "buttonX":I
    goto :goto_228

    .line 243
    .end local v0    # "infoH":I
    .end local v1    # "infoW":I
    .end local v4    # "buttonX":I
    .end local v6    # "armyFirstLine":I
    .end local v7    # "armySecondLine":I
    .end local v8    # "addInformation":Z
    .end local v19    # "infoCivID":I
    .end local v20    # "infoBattleWidth":I
    .restart local v15    # "buttonX":I
    :catch_21c
    move-exception v0

    move v1, v15

    goto :goto_22b

    .line 110
    .restart local v6    # "armyFirstLine":I
    .restart local v7    # "armySecondLine":I
    .restart local v8    # "addInformation":Z
    .restart local v14    # "infoBattleWidth":I
    .restart local v19    # "infoCivID":I
    :cond_21f
    move/from16 v20, v14

    .end local v14    # "infoBattleWidth":I
    .restart local v20    # "infoBattleWidth":I
    goto :goto_227

    .line 69
    .end local v6    # "armyFirstLine":I
    .end local v7    # "armySecondLine":I
    .end local v8    # "addInformation":Z
    .end local v15    # "buttonX":I
    .end local v19    # "infoCivID":I
    .end local v20    # "infoBattleWidth":I
    .local v0, "infoCivID":I
    .local v1, "buttonX":I
    :cond_222
    move/from16 v19, v0

    move v15, v1

    .end local v0    # "infoCivID":I
    .end local v1    # "buttonX":I
    .restart local v15    # "buttonX":I
    .restart local v19    # "infoCivID":I
    goto :goto_227

    .line 66
    .end local v15    # "buttonX":I
    .end local v19    # "infoCivID":I
    .restart local v1    # "buttonX":I
    :cond_226
    move v15, v1

    .line 245
    .end local v1    # "buttonX":I
    .restart local v15    # "buttonX":I
    :goto_227
    move v1, v15

    .end local v15    # "buttonX":I
    .restart local v1    # "buttonX":I
    :goto_228
    goto :goto_22e

    .line 243
    :catch_229
    move-exception v0

    move v15, v1

    .line 244
    .local v0, "ex":Ljava/lang/Exception;
    :goto_22b
    :try_start_22b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_22e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22f
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_247} :catch_61

    const-string v5, ""

    if-ge v0, v4, :cond_45d

    .line 249
    :try_start_24b
    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_459

    .line 252
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 253
    .local v4, "tUnits":I
    const/4 v6, 0x1

    .line 255
    .local v6, "numOfRegiments":I
    add-int/lit8 v7, v0, 0x1

    .local v7, "o":I
    :goto_29b
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v7, v8, :cond_362

    .line 256
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v8, v10, :cond_362

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    .line 257
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v8, v10, :cond_362

    .line 258
    add-int/lit8 v0, v0, 0x1

    .line 259
    add-int/lit8 v6, v6, 0x1

    .line 260
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v4, v8

    .line 255
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_29b

    .line 267
    .end local v7    # "o":I
    :cond_362
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 268
    .local v7, "checkCivID":I
    move-object v8, v5

    .line 270
    .local v8, "textUnits":Ljava/lang/String;
    const/high16 v10, -0x40800000    # -1.0f

    .line 272
    .local v10, "fPerc":F
    sget-boolean v11, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v11, :cond_39e

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_MANPOWER:Z

    if-eqz v11, :cond_39e

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v7, v11, :cond_39e

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7, v11}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v11

    if-eqz v11, :cond_398

    goto :goto_39e

    .line 277
    :cond_398
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_MANPOWER:Ljava/lang/String;

    move v8, v10

    .end local v8    # "textUnits":Ljava/lang/String;
    .local v5, "textUnits":Ljava/lang/String;
    goto :goto_3c4

    .line 273
    .end local v5    # "textUnits":Ljava/lang/String;
    .restart local v8    # "textUnits":Ljava/lang/String;
    :cond_39e
    :goto_39e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    .end local v8    # "textUnits":Ljava/lang/String;
    .restart local v5    # "textUnits":Ljava/lang/String;
    int-to-float v8, v4

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v11, v11, v6

    int-to-float v11, v11

    div-float v10, v8, v11

    move v8, v10

    .line 280
    .end local v10    # "fPerc":F
    .local v8, "fPerc":F
    :goto_3c4
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits$2;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v14, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    move-object v10, v15

    move/from16 v20, v11

    move-object/from16 v11, p0

    move/from16 v18, v12

    move-object v12, v5

    move/from16 v17, v13

    move v13, v6

    move/from16 v25, v4

    move-object v4, v15

    .end local v4    # "tUnits":I
    .local v25, "tUnits":I
    move v15, v1

    move/from16 v16, v2

    move/from16 v19, v0

    move/from16 v21, v8

    invoke-direct/range {v10 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;Ljava/lang/String;IIIIIIIIF)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v10

    add-int/2addr v1, v4

    .line 248
    .end local v5    # "textUnits":Ljava/lang/String;
    .end local v6    # "numOfRegiments":I
    .end local v7    # "checkCivID":I
    .end local v8    # "fPerc":F
    .end local v25    # "tUnits":I
    :cond_459
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22f

    .line 359
    .end local v0    # "i":I
    :cond_45d
    move v1, v3

    .line 360
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    .line 363
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_467
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v4, :cond_69b

    .line 364
    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v6, 0x2

    if-lt v4, v6, :cond_696

    .line 367
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 368
    .restart local v4    # "tUnits":I
    const/4 v7, 0x1

    .line 370
    .local v7, "numOfRegiments":I
    add-int/lit8 v8, v0, 0x1

    .local v8, "o":I
    :goto_4d1
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v8, v10, :cond_598

    .line 371
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v10, v11, :cond_598

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    .line 372
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v10, v11, :cond_598

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    add-int/lit8 v7, v7, 0x1

    .line 375
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v4, v10

    .line 370
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4d1

    .line 382
    .end local v8    # "o":I
    :cond_598
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 383
    .local v8, "checkCivID":I
    move-object v10, v5

    .line 385
    .local v10, "textUnits":Ljava/lang/String;
    const/high16 v11, -0x40800000    # -1.0f

    .line 387
    .local v11, "fPerc":F
    sget-boolean v12, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v12, :cond_5d8

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_MANPOWER:Z

    if-eqz v12, :cond_5d8

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v8, v12, :cond_5d8

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v12

    if-eqz v12, :cond_5ce

    goto :goto_5d8

    .line 392
    :cond_5ce
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_MANPOWER:Ljava/lang/String;

    move-object v10, v12

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto :goto_602

    .line 388
    :cond_5d8
    :goto_5d8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 389
    int-to-float v12, v4

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v13, v13, v7

    int-to-float v13, v13

    div-float v11, v12, v13

    move-object/from16 v24, v10

    move/from16 v25, v11

    .line 395
    .end local v10    # "textUnits":Ljava/lang/String;
    .end local v11    # "fPerc":F
    .local v24, "textUnits":Ljava/lang/String;
    .local v25, "fPerc":F
    :goto_602
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits$3;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v14, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    move-object v10, v15

    move/from16 v20, v11

    move-object/from16 v11, p0

    move/from16 v18, v12

    move-object/from16 v12, v24

    move/from16 v17, v13

    move v13, v7

    move-object v6, v15

    move v15, v1

    move/from16 v16, v2

    move/from16 v19, v0

    move/from16 v21, v25

    invoke-direct/range {v10 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;Ljava/lang/String;IIIIIIIIF)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_694
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_694} :catch_61

    add-int/2addr v6, v10

    add-int/2addr v1, v6

    .line 363
    .end local v4    # "tUnits":I
    .end local v7    # "numOfRegiments":I
    .end local v8    # "checkCivID":I
    .end local v24    # "textUnits":Ljava/lang/String;
    .end local v25    # "fPerc":F
    :cond_696
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_467

    .line 64
    .end local v0    # "i":I
    :cond_69a
    move v15, v1

    .line 454
    :cond_69b
    move v15, v1

    move v0, v3

    goto :goto_6a8

    .line 452
    :catch_69e
    move-exception v0

    move v15, v1

    .line 453
    .local v0, "ex":Ljava/lang/Exception;
    :goto_6a0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v15, v1

    move v0, v3

    goto :goto_6a8

    .line 58
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6a6
    move v15, v1

    .end local v1    # "buttonX":I
    .restart local v15    # "buttonX":I
    move v0, v3

    .line 458
    .end local v3    # "buttonX_StatsPos":I
    .local v0, "buttonX_StatsPos":I
    :goto_6a8
    const/4 v1, 0x0

    .line 460
    .end local v2    # "buttonY":I
    .local v1, "buttonY":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    move v10, v1

    .end local v1    # "buttonY":I
    .local v3, "iSize":I
    .local v10, "buttonY":I
    :goto_6af
    if-ge v2, v3, :cond_6e7

    .line 461
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    if-ge v10, v1, :cond_6e4

    .line 462
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    move v10, v1

    .line 460
    :cond_6e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_6af

    .line 466
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_6e7
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 468
    .local v11, "menuHeight":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v6, v11

    move-object v7, v9

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 473
    const/4 v1, 0x0

    move-object/from16 v2, p0

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->drawScrollPositionAlways:Z

    .line 474
    return-void
.end method


# virtual methods
.method public getMenuPosX()I
    .registers 3

    .line 501
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMenuPosY()I
    .registers 3

    .line 486
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosX()I
    .registers 3

    .line 496
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 491
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 479
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 481
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameProvinceArmy()V

    .line 482
    return-void
.end method
