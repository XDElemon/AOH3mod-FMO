.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_AirForceQuick.java"


# instance fields
.field private infoText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;


# direct methods
.method public constructor <init>()V
    .registers 15

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;->getInfoText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    const/16 v3, 0xa2

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;->infoText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const-string v1, "\u6253\u51fb"

    const/16 v2, 0x5c

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const-string v1, "\u5de1\u903b"

    const/16 v2, 0xcf

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const-string v1, "\u8fd4\u822a"

    const/16 v2, 0x142

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const-string v1, "\u53d6\u6d88"

    const/16 v2, 0x1b5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->airsAttack:I

    const/16 v2, 0x34

    const/16 v3, 0x18

    const/16 v4, 0x73

    const/16 v5, 0x60

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;-><init>(IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->airsPatrol:I

    const/16 v2, 0xa7

    const/16 v3, 0x18

    const/16 v4, 0x73

    const/16 v5, 0x60

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;-><init>(IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->airsReturn:I

    const/16 v2, 0x11a

    const/16 v3, 0x18

    const/16 v4, 0x73

    const/16 v5, 0x60

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;-><init>(IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->airsCancel:I

    const/16 v2, 0x18d

    const/16 v3, 0x18

    const/16 v4, 0x73

    const/16 v5, 0x60

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;-><init>(IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button;

    const-string v1, ""

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v3, 0x0

    const/16 v4, 0x34

    const/16 v5, 0x78

    const/16 v6, 0x1cc

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x98

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/16 v4, 0xe6

    sub-int v3, v3, v4

    const/16 v4, 0x1cc

    const/16 v5, 0xe6

    move-object v6, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static getInfoText()Ljava/lang/String;
    .registers 15

    const-string v14, ""

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v0, :cond_1af

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1af

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v2, :cond_1af

    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_1af

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    if-eqz v5, :cond_1af

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    if-eqz v6, :cond_12d

    iget-object v7, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz v7, :cond_1af

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1af

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    if-eqz v7, :cond_1af

    iget v9, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    add-int/lit8 v9, v9, -0x7

    if-gez v9, :cond_41

    goto :goto_45

    :cond_41
    const/4 v8, 0x4

    if-ge v9, v8, :cond_45

    goto :goto_64

    :cond_45
    :goto_45
    const-string v8, "_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x3

    if-ge v10, v11, :cond_51

    const/4 v9, -0x1

    goto :goto_64

    :cond_51
    const/4 v11, 0x4

    if-ge v10, v11, :cond_56

    const/4 v9, 0x1

    goto :goto_5d

    :cond_56
    const/4 v11, 0x3

    aget-object v12, v8, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_5d
    const/4 v11, 0x0

    if-gez v9, :cond_63

    const/4 v11, 0x4

    if-lt v9, v11, :cond_64

    :cond_63
    const/4 v9, -0x1

    :cond_64
    :goto_64
    if-ltz v9, :cond_1af

    iget v10, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    const-string v14, "_"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v13, v14

    const/4 v12, 0x3

    if-lt v13, v12, :cond_96

    const/4 v12, 0x2

    aget-object v12, v14, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v13

    if-eqz v13, :cond_96

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v13

    if-eqz v13, :cond_96

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v14

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_96

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_96

    :cond_96
    :goto_96
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AirType."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-eqz v13, :cond_ba

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_bb

    :cond_ba
    move-object v11, v12

    :goto_bb
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v12

    const-string v13, "\u5f85\u547d"

    if-nez v12, :cond_f9

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v12

    if-eqz v12, :cond_10f

    invoke-virtual {v12, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v12

    if-eqz v12, :cond_10f

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v12, :cond_10f

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v14

    aget-object v14, v14, v9

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_10f

    const/4 v14, 0x0

    :goto_e2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_f8

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    if-nez v0, :cond_f5

    add-int/lit8 v14, v14, 0x1

    goto :goto_e2

    :cond_f5
    const-string v13, "\u5f85\u547d"

    goto :goto_10f

    :cond_f8
    goto :goto_10f

    :cond_f9
    iget-object v0, v12, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const-string v13, "\u8fd4\u822a"

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v12, v1, :cond_10f

    const-string v13, "\u5de1\u903b"

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v0, v1, :cond_10f

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->AIR_SUPERIORITY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v0, v1, :cond_10f

    const-string v13, "\u6253\u51fb"

    :cond_10f
    :goto_10f
    move-object v0, v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\u00d7"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " |"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12d
    const-string v14, "AIRDBG"

    const-string v13, "afd:in"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    if-eqz v2, :cond_1af

    iget-object v0, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v10, 0x0

    if-eqz v0, :cond_143

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    :cond_143
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    const/4 v1, 0x4

    if-ge v8, v1, :cond_14f

    const/4 v9, 0x1

    goto :goto_156

    :cond_14f
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_156
    if-ltz v9, :cond_1af

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirType."

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-eqz v0, :cond_17b

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_17b
    const-string v13, "\u6253\u51fb"

    iget-object v0, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_185

    const-string v13, "\u8fd4\u822a"

    :cond_185
    iget-object v0, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v0, v1, :cond_18d

    const-string v13, "\u5de1\u903b"

    :cond_18d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00d7"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "afd:ok"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1af
    move-object v0, v14

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;->refreshInfo()V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method public refreshInfo()V
    .registers 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;->infoText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    if-eqz v0, :cond_b

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;->getInfoText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public update()V
    .registers 4

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->update()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;->infoText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    if-eqz v0, :cond_e

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick;->getInfoText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    :cond_e
    return-void
.end method
