.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;
.source "ButtonArmyGeneral2_Armies.java"


# instance fields
.field public iCivID:I

.field public iProvinceID:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;IILjava/lang/String;I)V
    .registers 30
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "iCivID"    # I
    .param p3, "iAttack"    # I
    .param p4, "iDefense"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "imageID"    # I
    .param p8, "iDay"    # I
    .param p9, "iMonth"    # I
    .param p10, "iYear"    # I
    .param p11, "key"    # Ljava/lang/String;
    .param p12, "nCivID"    # I
    .param p13, "iProvinceID"    # I
    .param p14, "sIMG"    # Ljava/lang/String;
    .param p15, "combatExperience"    # I

    .line 15
    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p14

    move/from16 v12, p15

    invoke-direct/range {v0 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    .line 17
    move-object/from16 v0, p11

    iput-object v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    .line 18
    move/from16 v1, p13

    iput v1, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    .line 19
    move/from16 v2, p12

    iput v2, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iCivID:I

    .line 20
    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 7

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "nArmyID":I
    if-gez v0, :cond_2a

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 29
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iCivID:I

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v2

    .line 31
    .local v2, "outID":I
    if-ltz v2, :cond_27

    .line 32
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    .line 33
    move v0, v2

    .line 34
    goto :goto_2a

    .line 28
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 39
    .end local v1    # "i":I
    .end local v2    # "outID":I
    :cond_2a
    :goto_2a
    if-ltz v0, :cond_d4

    .line 40
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 41
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 44
    :cond_3f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 46
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 48
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 49
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 50
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 51
    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 53
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 54
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    .line 56
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_bf

    .line 57
    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    if-ltz v2, :cond_b9

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    if-eq v2, v4, :cond_b9

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 58
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, "tDivID":I
    if-ltz v2, :cond_a3

    .line 61
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 62
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    goto :goto_b3

    .line 65
    :cond_a3
    const/4 v3, -0x1

    sput v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 66
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ArmyNotFound"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 69
    :goto_b3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderInGame_Generals()V

    .line 70
    .end local v2    # "tDivID":I
    goto :goto_d4

    .line 72
    :cond_b9
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto :goto_d4

    .line 76
    :cond_bf
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 77
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    .line 79
    sput-boolean v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->backButton:Z

    .line 80
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Generals()V

    .line 81
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    .line 84
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_d4
    :goto_d4
    return-void
.end method
