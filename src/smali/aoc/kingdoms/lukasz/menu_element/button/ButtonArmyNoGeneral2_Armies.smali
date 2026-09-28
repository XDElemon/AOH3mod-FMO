.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2;
.source "ButtonArmyNoGeneral2_Armies.java"


# instance fields
.field public iCivID:I

.field public iProvinceID:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;II)V
    .registers 14
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "nCivID"    # I
    .param p7, "iProvinceID"    # I

    .line 13
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2;-><init>(Ljava/lang/String;IIIZ)V

    .line 15
    iput-object p5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    .line 16
    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    .line 17
    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iCivID:I

    .line 18
    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 7

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    if-ltz v0, :cond_f8

    .line 23
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "nArmyID":I
    if-gez v0, :cond_2e

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 27
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iCivID:I

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v2

    .line 29
    .local v2, "outID":I
    if-ltz v2, :cond_2b

    .line 30
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    .line 31
    move v0, v2

    .line 32
    goto :goto_2e

    .line 26
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 37
    .end local v1    # "i":I
    .end local v2    # "outID":I
    :cond_2e
    :goto_2e
    if-ltz v0, :cond_f8

    .line 44
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 46
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 47
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 48
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 49
    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 54
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a3

    .line 55
    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    if-eq v2, v4, :cond_9d

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 56
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "tDivID":I
    if-ltz v2, :cond_87

    .line 59
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 60
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    goto :goto_97

    .line 63
    :cond_87
    const/4 v3, -0x1

    sput v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 64
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ArmyNotFound"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 67
    :goto_97
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderInGame_Generals()V

    .line 68
    .end local v2    # "tDivID":I
    goto :goto_f8

    .line 70
    :cond_9d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto :goto_f8

    .line 74
    :cond_a3
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 75
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    .line 77
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "armyID":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGeneralsNotAssignedSize()I

    move-result v4

    if-nez v4, :cond_eb

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_eb

    .line 80
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_GeneralRecruit()Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 81
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_GeneralRecruit(Z)V

    goto :goto_f8

    .line 84
    :cond_e5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_GeneralRecruit()V

    goto :goto_f8

    .line 88
    :cond_eb
    sput-boolean v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->backButton:Z

    .line 89
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Generals()V

    .line 90
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    .line 95
    .end local v0    # "nArmyID":I
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    .end local v2    # "armyID":I
    :cond_f8
    :goto_f8
    return-void
.end method
