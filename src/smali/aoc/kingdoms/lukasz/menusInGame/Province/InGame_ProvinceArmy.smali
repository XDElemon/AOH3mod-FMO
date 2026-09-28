.class public Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ProvinceArmy.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static final ANIMATION_TIME_MOVE:I = 0x96

.field public static besiegesProvince:Z

.field public static chooseProvinceExtraY:I

.field public static iActiveID:I

.field public static iCivFlagID:I

.field public static iProvinceID:I

.field public static key:Ljava/lang/String;

.field public static lTime:J

.field public static lTimeMOVE:J

.field public static nTranslateX:I

.field public static nTranslateY:I

.field public static sActiveKEY:Ljava/lang/String;


# instance fields
.field public imageOverID:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    .line 52
    const-string v2, ""

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    .line 53
    const/4 v3, 0x0

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    .line 54
    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    .line 55
    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 56
    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    .line 59
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTimeMOVE:J

    .line 69
    sput-boolean v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    .line 683
    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 37

    .line 71
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 67
    const/4 v14, 0x0

    iput v14, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    .line 74
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v16, v1, 0x2

    .line 75
    .local v16, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title530:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v17

    .line 77
    .local v17, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title530:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v11, v1, v2

    .line 78
    .local v11, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    .line 79
    .local v10, "menuMinHeight":I
    const/16 v18, 0xf0

    .line 81
    .local v18, "menuHeight":I
    const/16 v19, 0x0

    .line 82
    .local v19, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v20, v1, v18

    .line 84
    .local v20, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v1, 0x2

    .line 85
    .local v21, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v1, 0x2

    .line 86
    .local v22, "generalPadding":I
    move/from16 v1, v21

    .line 88
    .local v1, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v22, 0x2

    add-int v23, v2, v3

    .line 90
    .local v23, "defaultXArmyPos":I
    move/from16 v2, v23

    .line 92
    .local v2, "buttonX":I
    const-string v24, ""

    .line 94
    .local v24, "sArmyStatus":Ljava/lang/String;
    sput-boolean v14, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    .line 97
    :try_start_5b
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5d} :catch_83a

    if-lez v3, :cond_833

    .line 108
    :try_start_5f
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_63} :catch_825

    if-lt v3, v4, :cond_7f

    .line 109
    :try_start_65
    sput v14, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 110
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_75} :catch_76

    goto :goto_7f

    .line 499
    :catch_76
    move-exception v0

    move-object v3, v0

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    goto/16 :goto_82c

    .line 113
    :cond_7f
    :goto_7f
    :try_start_7f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    .line 115
    .local v9, "tDivID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    .line 116
    sput v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    .line 118
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->key:Ljava/lang/String;

    .line 120
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    .line 121
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_d0} :catch_825

    .line 122
    if-ltz v9, :cond_eb

    .line 123
    :try_start_d2
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_ea} :catch_76

    goto :goto_113

    .line 126
    :cond_eb
    :try_start_eb
    const-string v3, "AIRDBG"

    const-string v4, "ub:tdiv<0"

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v3, :cond_10f

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v3, :cond_10f

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_10f

    const-string v4, "airhq_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10f

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    goto :goto_113

    :cond_10f
    const-string v3, ""

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_113} :catch_825

    .line 129
    :goto_113
    move/from16 v25, v22

    .line 131
    .end local v2    # "buttonX":I
    .local v25, "buttonX":I
    :try_start_115
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyID;->getButtonHeight()I

    move-result v2

    add-int v2, v2, v21

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11d} :catch_81b

    add-int v26, v2, v3

    .line 133
    .end local v1    # "buttonY":I
    .local v26, "buttonY":I
    if-gez v9, :cond_1b5

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    if-eqz v0, :cond_1b3

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b3

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v3

    if-eqz v3, :cond_1b3

    iget-object v1, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v1, :cond_13c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :cond_13c
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v2, 0x4

    if-ge v5, v2, :cond_148

    const/4 v5, 0x1

    goto :goto_14f

    :cond_148
    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_14f
    if-ltz v5, :cond_1b3

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AirType."

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-eqz v12, :cond_174

    invoke-virtual {v12, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_174
    const-string v7, "\u6253\u51fb"

    iget-object v12, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v15, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v12, v15, :cond_17e

    const-string v7, "\u8fd4\u822a"

    :cond_17e
    iget-object v12, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v15, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v12, v15, :cond_186

    const-string v7, "\u5de1\u903b"

    :cond_186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\u00d7"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " |"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v2, v25

    move/from16 v4, v26

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    invoke-direct {v5, v1, v2, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->dbgAirfRow()V

    goto/16 :goto_810

    :cond_1b3
    goto/16 :goto_810

    .line 134
    :cond_1b5
    :try_start_1b5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1cb} :catch_804

    if-nez v1, :cond_1fc

    .line 135
    :try_start_1cd
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "NoGeneral"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v5, v22

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;III)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1e6} :catch_1ef

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    goto/16 :goto_307

    .line 499
    .end local v9    # "tDivID":I
    :catch_1ef
    move-exception v0

    move-object v3, v0

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    move/from16 v2, v25

    move/from16 v1, v26

    goto/16 :goto_82c

    .line 176
    .restart local v9    # "tDivID":I
    :cond_1fc
    :try_start_1fc
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 178
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 179
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 181
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 182
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 183
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v12, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 184
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v14, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    move/from16 v28, v2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    move-object/from16 v29, v2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v30
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_2e2} :catch_804

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v31, v7

    move/from16 v7, v22

    move-object v15, v8

    move/from16 v8, v26

    move/from16 v32, v9

    .end local v9    # "tDivID":I
    .local v32, "tDivID":I
    move/from16 v9, v31

    move/from16 v33, v10

    .end local v10    # "menuMinHeight":I
    .local v33, "menuMinHeight":I
    move/from16 v10, v28

    move/from16 v34, v11

    .end local v11    # "menuWidth":I
    .local v34, "menuWidth":I
    move v11, v12

    move v12, v14

    move-object v14, v13

    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move-object/from16 v13, v29

    move-object/from16 v35, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v35, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v14, v30

    :try_start_2ff
    invoke-direct/range {v1 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_302} :catch_7f9

    .line 176
    move-object/from16 v11, v35

    .end local v35    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :try_start_304
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_307
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v26, v26, v1

    .line 219
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    .line 220
    .local v1, "maxIconWidth":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_33f

    .line 221
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    move v1, v2

    move v13, v1

    goto :goto_340

    .line 220
    :cond_33f
    move v13, v1

    .line 224
    .end local v1    # "maxIconWidth":I
    .local v13, "maxIconWidth":I
    :goto_340
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    move/from16 v14, v32

    .end local v32    # "tDivID":I
    .local v14, "tDivID":I
    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z
    :try_end_358
    .catch Ljava/lang/Exception; {:try_start_304 .. :try_end_358} :catch_7f0

    const-string v2, "ArmyIsFightingInABattle"

    const-string v3, "ArmyIsRetreating"

    if-eqz v1, :cond_529

    .line 225
    const/4 v1, -0x1

    .line 227
    .local v1, "toProvinceID":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_360
    :try_start_360
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v5

    if-ge v4, v5, :cond_3e4

    .line 228
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e0

    .line 229
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v5

    move v1, v5

    .line 230
    goto :goto_3e4

    .line 227
    :cond_3e0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_360

    .line 234
    .end local v4    # "i":I
    :cond_3e4
    :goto_3e4
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v4, :cond_404

    .line 235
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .local v2, "sArmyStatus":Ljava/lang/String;
    goto/16 :goto_47b

    .line 237
    .end local v2    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_404
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z
    :try_end_41a
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_41a} :catch_7f0

    const-string v4, ": "

    if-eqz v2, :cond_44b

    .line 238
    if-ltz v1, :cond_444

    .line 239
    :try_start_420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v2    # "sArmyStatus":Ljava/lang/String;
    goto :goto_47b

    .line 242
    .end local v2    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_444
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v2    # "sArmyStatus":Ljava/lang/String;
    goto :goto_47b

    .line 246
    .end local v2    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_44b
    if-ltz v1, :cond_473

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "MovingTo"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v2    # "sArmyStatus":Ljava/lang/String;
    goto :goto_47b

    .line 250
    .end local v2    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_473
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Moving"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_47b
    .catch Ljava/lang/Exception; {:try_start_420 .. :try_end_47b} :catch_7f0

    .line 254
    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v2    # "sArmyStatus":Ljava/lang/String;
    :goto_47b
    :try_start_47b
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_4d3

    .line 255
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v3, :cond_4a0

    .line 256
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea0:I
    :try_end_499
    .catch Ljava/lang/Exception; {:try_start_47b .. :try_end_499} :catch_51d

    move-object/from16 v15, p0

    :try_start_49b
    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    const/4 v4, 0x2

    goto/16 :goto_519

    .line 257
    :cond_4a0
    move-object/from16 v15, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v3, v12, :cond_4b8

    .line 258
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea1:I

    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    const/4 v4, 0x2

    goto :goto_519

    .line 259
    :cond_4b8
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4ce

    .line 260
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea2:I

    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_519

    .line 262
    :cond_4ce
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea3:I

    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_519

    .line 266
    :cond_4d3
    const/4 v4, 0x2

    move-object/from16 v15, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v3, :cond_4eb

    .line 267
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyMove0:I

    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_519

    .line 268
    :cond_4eb
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v3, v12, :cond_500

    .line 269
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyMove1:I

    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_519

    .line 270
    :cond_500
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v3, v4, :cond_515

    .line 271
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyMove2:I

    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_519

    .line 273
    :cond_515
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyMove3:I

    iput v3, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I
    :try_end_519
    .catch Ljava/lang/Exception; {:try_start_49b .. :try_end_519} :catch_7e0

    .line 276
    .end local v1    # "toProvinceID":I
    :goto_519
    move-object/from16 v24, v2

    goto/16 :goto_685

    .line 499
    .end local v13    # "maxIconWidth":I
    .end local v14    # "tDivID":I
    :catch_51d
    move-exception v0

    move-object/from16 v15, p0

    move-object v3, v0

    move-object/from16 v24, v2

    move/from16 v2, v25

    move/from16 v1, v26

    goto/16 :goto_82c

    .line 278
    .end local v2    # "sArmyStatus":Ljava/lang/String;
    .restart local v13    # "maxIconWidth":I
    .restart local v14    # "tDivID":I
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_529
    const/4 v4, 0x2

    move-object/from16 v15, p0

    :try_start_52c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v1, :cond_54d

    .line 279
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .local v1, "sArmyStatus":Ljava/lang/String;
    goto/16 :goto_5ef

    .line 281
    .end local v1    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_54d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-eqz v1, :cond_56e

    .line 282
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v1    # "sArmyStatus":Ljava/lang/String;
    goto/16 :goto_5ef

    .line 284
    .end local v1    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_56e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_5e6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 285
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-nez v1, :cond_5d0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_5e6

    .line 287
    :cond_5d0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ArmyBesiegesProvince"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5d8
    .catch Ljava/lang/Exception; {:try_start_52c .. :try_end_5d8} :catch_7e9

    .line 288
    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v1    # "sArmyStatus":Ljava/lang/String;
    :try_start_5d8
    sput-boolean v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z
    :try_end_5da
    .catch Ljava/lang/Exception; {:try_start_5d8 .. :try_end_5da} :catch_5dc

    move-object v2, v1

    goto :goto_5ef

    .line 499
    .end local v13    # "maxIconWidth":I
    .end local v14    # "tDivID":I
    :catch_5dc
    move-exception v0

    move-object v3, v0

    move-object/from16 v24, v1

    move/from16 v2, v25

    move/from16 v1, v26

    goto/16 :goto_82c

    .line 291
    .end local v1    # "sArmyStatus":Ljava/lang/String;
    .restart local v13    # "maxIconWidth":I
    .restart local v14    # "tDivID":I
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :cond_5e6
    :try_start_5e6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "WaitingForOrders"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5ee
    .catch Ljava/lang/Exception; {:try_start_5e6 .. :try_end_5ee} :catch_7e9

    move-object v2, v1

    .line 294
    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v2    # "sArmyStatus":Ljava/lang/String;
    :goto_5ef
    :try_start_5ef
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_640

    .line 295
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v1, :cond_611

    .line 296
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea0:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto/16 :goto_683

    .line 297
    :cond_611
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v1, v12, :cond_626

    .line 298
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea1:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_683

    .line 299
    :cond_626
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v1, v4, :cond_63b

    .line 300
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea2:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_683

    .line 302
    :cond_63b
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea3:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_683

    .line 306
    :cond_640
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v1, :cond_655

    .line 307
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver0:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_683

    .line 308
    :cond_655
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v1, v12, :cond_66a

    .line 309
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver1:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_683

    .line 310
    :cond_66a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v1, v4, :cond_67f

    .line 311
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver2:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_683

    .line 313
    :cond_67f
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver3:I

    iput v1, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I
    :try_end_683
    .catch Ljava/lang/Exception; {:try_start_5ef .. :try_end_683} :catch_7e0

    .line 318
    :goto_683
    move-object/from16 v24, v2

    .end local v2    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :goto_685
    :try_start_685
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;

    const-string v3, ""

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v27

    move-object v1, v10

    move-object/from16 v2, p0

    move v4, v5

    move v5, v6

    move/from16 v6, v22

    move/from16 v7, v26

    move-object v12, v10

    move/from16 v10, v27

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    move v10, v1

    .line 357
    .local v10, "checkCivID":I
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v1, :cond_730

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_MANPOWER:Z

    if-eqz v1, :cond_730

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v10, v1, :cond_730

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v1

    if-eqz v1, :cond_6f2

    goto :goto_730

    .line 445
    :cond_6f2
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$5;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_MANPOWER:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v22

    move/from16 v6, v26

    move v9, v13

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v26, v26, v1

    goto :goto_79b

    .line 358
    :cond_730
    :goto_730
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v22

    move/from16 v6, v26

    move v9, v13

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v26, v26, v1

    .line 466
    :goto_79b
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$6;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v5, v22

    move/from16 v6, v26

    move v9, v13

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7dd
    .catch Ljava/lang/Exception; {:try_start_685 .. :try_end_7dd} :catch_7e9

    move/from16 v1, v26

    goto :goto_818

    .line 499
    .end local v10    # "checkCivID":I
    .end local v13    # "maxIconWidth":I
    .end local v14    # "tDivID":I
    .end local v24    # "sArmyStatus":Ljava/lang/String;
    .restart local v2    # "sArmyStatus":Ljava/lang/String;
    :catch_7e0
    move-exception v0

    move-object v3, v0

    move-object/from16 v24, v2

    move/from16 v2, v25

    move/from16 v1, v26

    goto :goto_82c

    .end local v2    # "sArmyStatus":Ljava/lang/String;
    .restart local v24    # "sArmyStatus":Ljava/lang/String;
    :catch_7e9
    move-exception v0

    move-object v3, v0

    move/from16 v2, v25

    move/from16 v1, v26

    goto :goto_82c

    :catch_7f0
    move-exception v0

    move-object/from16 v15, p0

    move-object v3, v0

    move/from16 v2, v25

    move/from16 v1, v26

    goto :goto_82c

    .end local v11    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v35    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_7f9
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, v35

    move-object v3, v0

    move/from16 v2, v25

    move/from16 v1, v26

    .end local v35    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v11    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto :goto_82c

    .end local v33    # "menuMinHeight":I
    .end local v34    # "menuWidth":I
    .local v10, "menuMinHeight":I
    .local v11, "menuWidth":I
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_804
    move-exception v0

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    move-object v3, v0

    move/from16 v2, v25

    move/from16 v1, v26

    .end local v10    # "menuMinHeight":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v33    # "menuMinHeight":I
    .restart local v34    # "menuWidth":I
    goto :goto_82c

    .line 133
    .end local v33    # "menuMinHeight":I
    .end local v34    # "menuWidth":I
    .restart local v9    # "tDivID":I
    .restart local v10    # "menuMinHeight":I
    .local v11, "menuWidth":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :goto_810
    move v14, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    .end local v9    # "tDivID":I
    .end local v10    # "menuMinHeight":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v14    # "tDivID":I
    .restart local v33    # "menuMinHeight":I
    .restart local v34    # "menuWidth":I
    move/from16 v1, v26

    .line 501
    .end local v14    # "tDivID":I
    .end local v26    # "buttonY":I
    .local v1, "buttonY":I
    :goto_818
    move/from16 v2, v25

    goto :goto_838

    .line 499
    .end local v33    # "menuMinHeight":I
    .end local v34    # "menuWidth":I
    .restart local v10    # "menuMinHeight":I
    .local v11, "menuWidth":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_81b
    move-exception v0

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    move-object v3, v0

    move/from16 v2, v25

    .end local v10    # "menuMinHeight":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v33    # "menuMinHeight":I
    .restart local v34    # "menuWidth":I
    goto :goto_82c

    .end local v25    # "buttonX":I
    .end local v33    # "menuMinHeight":I
    .end local v34    # "menuWidth":I
    .local v2, "buttonX":I
    .restart local v10    # "menuMinHeight":I
    .local v11, "menuWidth":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_825
    move-exception v0

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    move-object v3, v0

    .line 500
    .end local v10    # "menuMinHeight":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v3, "ex":Ljava/lang/Exception;
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v33    # "menuMinHeight":I
    .restart local v34    # "menuWidth":I
    :goto_82c
    :try_start_82c
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_82f
    .catch Ljava/lang/Exception; {:try_start_82c .. :try_end_82f} :catch_830

    goto :goto_838

    .line 504
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_830
    move-exception v0

    move-object v3, v0

    goto :goto_841

    .line 97
    .end local v33    # "menuMinHeight":I
    .end local v34    # "menuWidth":I
    .restart local v10    # "menuMinHeight":I
    .local v11, "menuWidth":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :cond_833
    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    .line 506
    .end local v10    # "menuMinHeight":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v33    # "menuMinHeight":I
    .restart local v34    # "menuWidth":I
    :goto_838
    move v10, v2

    goto :goto_845

    .line 504
    .end local v33    # "menuMinHeight":I
    .end local v34    # "menuWidth":I
    .restart local v10    # "menuMinHeight":I
    .local v11, "menuWidth":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_83a
    move-exception v0

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v11, v13

    move-object v3, v0

    .line 505
    .end local v10    # "menuMinHeight":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v3    # "ex":Ljava/lang/Exception;
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v33    # "menuMinHeight":I
    .restart local v34    # "menuWidth":I
    :goto_841
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v10, v2

    .line 510
    .end local v2    # "buttonX":I
    .end local v3    # "ex":Ljava/lang/Exception;
    .local v10, "buttonX":I
    :goto_845
    const/4 v1, 0x0

    .line 512
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    move v12, v1

    .end local v1    # "buttonY":I
    .local v3, "iSize":I
    .local v12, "buttonY":I
    :goto_84c
    if-ge v2, v3, :cond_884

    .line 513
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    if-ge v12, v1, :cond_881

    .line 514
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    move v12, v1

    .line 512
    :cond_881
    add-int/lit8 v2, v2, 0x1

    goto :goto_84c

    .line 519
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_884
    move/from16 v13, v33

    .end local v33    # "menuMinHeight":I
    .local v13, "menuMinHeight":I
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 520
    .end local v18    # "menuHeight":I
    .local v14, "menuHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v18, v1, v14

    .line 522
    .end local v20    # "menuY":I
    .local v18, "menuY":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v9, v34

    const/4 v3, 0x0

    .end local v34    # "menuWidth":I
    .local v9, "menuWidth":I
    invoke-direct {v1, v3, v3, v9, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v1, v23, v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    .line 525
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyID;->getButtonHeight()I

    move-result v1

    add-int v1, v18, v1

    add-int v1, v1, v21

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    .line 527
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    sub-int v1, v9, v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    .line 529
    sput v19, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosX:I

    .line 530
    sput v18, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosY:I

    .line 531
    sput v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mWidth:I

    .line 534
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$7;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->title530:I

    const/4 v5, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v4, v24

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/16 v20, 0x0

    const/16 v25, 0x1

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, v19

    move/from16 v4, v18

    move v5, v9

    move v6, v14

    move-object v7, v11

    move/from16 v8, v20

    move/from16 v20, v9

    .end local v9    # "menuWidth":I
    .local v20, "menuWidth":I
    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 560
    return-void
.end method

.method public static centerToArmy()V
    .registers 5

    .line 695
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 697
    .local v0, "nArmyID":I
    if-gez v0, :cond_2a

    .line 698
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 699
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v2

    .line 701
    .local v2, "outID":I
    if-ltz v2, :cond_27

    .line 702
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    .line 703
    move v0, v2

    .line 704
    goto :goto_2a

    .line 698
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 709
    .end local v1    # "i":I
    .end local v2    # "outID":I
    :cond_2a
    :goto_2a
    if-ltz v0, :cond_33

    .line 710
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 712
    :cond_33
    return-void
.end method

.method private static dbgAirfRow()V
    .registers 2

    const-string v0, "AIRDBG"

    const-string v1, "airf:row"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 670
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 672
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 673
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    .line 674
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 564
    const-string v0, "rebuildInGame_ProvinceArmy"

    sget-wide v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    const-wide/16 v3, 0x3c

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_39

    .line 565
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v1, p2, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int p2, v1, v2

    .line 566
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr p3, v1

    .line 569
    :cond_39
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-eqz v1, :cond_61

    .line 570
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_61

    .line 571
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTimeMOVE:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    .line 575
    :cond_61
    sput p2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    .line 576
    sput p3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    .line 578
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 579
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v1, v2

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideTop530:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->insideBot530:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 580
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosX()I

    move-result v1

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 585
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 587
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10e

    .line 588
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-nez v1, :cond_10e

    .line 589
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "WaitingForOrders"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 590
    sput-boolean v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    .line 595
    :cond_10e
    :try_start_10e
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-nez v1, :cond_11e

    .line 596
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$8;

    const-string v2, "setVisibleInGame_ProvinceArmy"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_1a1

    .line 604
    :cond_11e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lt v1, v3, :cond_12f

    .line 605
    sput v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 607
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$9;

    invoke-direct {v1, p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_1a1

    .line 615
    :cond_12f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    .line 617
    .local v1, "tDivID":I
    if-ltz v1, :cond_1a1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_1a1

    .line 618
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    .line 619
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getArmyBattleKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    .line 621
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$10;

    const-string v3, "rebuildInGame_Battle"

    invoke-direct {v2, p0, v3}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_1a1} :catch_1a2

    .line 633
    .end local v1    # "tDivID":I
    :cond_1a1
    :goto_1a1
    goto :goto_1a6

    .line 631
    :catch_1a2
    move-exception v1

    .line 632
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 635
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1a6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->checkActiveArmy_Fog()Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 636
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$11;

    invoke-direct {v1, p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 643
    :cond_1b4
    return-void
.end method

.method public getPosY()I
    .registers 3

    .line 687
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-nez v0, :cond_7

    .line 688
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    .line 691
    :cond_7
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 678
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 680
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameProvinceArmy()V

    .line 681
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 647
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 648
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    .line 651
    :cond_a
    if-nez p1, :cond_1f

    .line 652
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 653
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    .line 656
    :cond_13
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_19

    .line 657
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    .line 660
    :cond_19
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz v0, :cond_1f

    .line 661
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 665
    :cond_1f
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 666
    return-void
.end method
