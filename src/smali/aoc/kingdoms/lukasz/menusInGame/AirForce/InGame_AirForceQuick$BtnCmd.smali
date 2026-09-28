.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceQuick$BtnCmd;
.super Laoc/kingdoms/lukasz/menu_element/Icon;
.source "InGame_AirForceQuick.java"


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 8
    .param p1, "imageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "cmdKind"    # I

    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 8

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Icon;->id:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v1, :cond_2e

    const/4 v2, 0x0

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_af

    const-string v2, "\u5df2\u53d6\u6d88\u9009\u4e2d"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pendingMissionMode:I

    const-string v2, "AIRDBG"

    const-string v3, "quk:cxl"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    const/4 v2, -0x1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :cond_2e

    const/4 v3, -0x1

    iput v3, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    :cond_2e
    return-void

    :cond_2f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v2, :cond_e2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v2, :cond_e2

    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_e2

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v4, :cond_e2

    const/4 v5, 0x1

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pendingMissionMode:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :cond_e2

    iput v4, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    sput v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const/4 v5, 0x1

    sput-boolean v5, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    const/4 v5, 0x0

    sput v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    const-string v5, "\u70b9\u9009\u76ee\u6807\u7701\u4efd"

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    const-string v5, "AIRDBG"

    const-string v6, "quk:stk"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v2, :cond_e2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v2, :cond_e2

    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_e2

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v4, :cond_e2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :cond_e2

    invoke-virtual {v5, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->startDivisionPatrol(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_a3

    const/4 v6, -0x4

    if-ne v5, v6, :cond_9a

    const-string v6, "\u5df2\u53d6\u6d88\u5de1\u903b\uff0c\u8fd4\u822a\u4e2d"

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_9a
    const/4 v6, -0x5

    if-ne v5, v6, :cond_a9

    const-string v6, "\u5df2\u5728\u8fd4\u822a\u4e2d"

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_a3
    const-string v6, "\u5df2\u8fdb\u5165\u5de1\u903b"

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_a9
    const-string v6, "\u65e0\u6cd5\u5de1\u903b\uff1a\u65e0\u53ef\u7528\u6218\u673a\u6216\u822a\u7a0b\u5185\u65e0\u7701\u4efd"

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_af
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v2, :cond_dc

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_dc

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v2, :cond_dc

    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_dc

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v4

    if-eqz v4, :cond_dc

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->forceReturn()V

    const-string v5, "\u8fd4\u822a\u6307\u4ee4\u5df2\u4e0b\u8fbe"

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    const-string v5, "AIRDBG"

    const-string v6, "quk:rt"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_dc
    const-string v5, "\u8be5\u5e08\u5f53\u524d\u65e0\u4efb\u52a1"

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_e2
    const-string v5, "\u8bf7\u5148\u9009\u4e2d\u7a7a\u519b\u5e08"

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void
.end method
