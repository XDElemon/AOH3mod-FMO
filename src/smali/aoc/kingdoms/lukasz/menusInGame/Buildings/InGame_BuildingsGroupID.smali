.class public Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BuildingsGroupID.java"


# instance fields
.field public groupID:I


# direct methods
.method public constructor <init>(I)V
    .registers 28
    .param p1, "groupID"    # I

    .line 38
    move-object/from16 v13, p0

    move/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 41
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    iput v14, v13, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->groupID:I

    .line 43
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v0, 0x2

    .line 44
    .local v16, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    .line 46
    .local v0, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v12, v1, 0x4

    .line 48
    .local v12, "menuWidth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 49
    .local v11, "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 51
    .local v10, "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    if-ltz v1, :cond_2b5

    .line 52
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    if-ltz v1, :cond_2b5

    .line 53
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v1, v14, :cond_2b5

    .line 54
    const/4 v1, 0x0

    move/from16 v17, v0

    move v9, v1

    .end local v0    # "buttonY":I
    .local v9, "j":I
    .local v17, "buttonY":I
    :goto_7a
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v9, v0, :cond_2b1

    .line 55
    const/4 v0, 0x1

    .line 57
    .local v0, "addBuilding":Z
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-virtual {v1, v2, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v1

    if-nez v1, :cond_100

    .line 58
    const/4 v0, 0x0

    .line 60
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ShowUpgrades:Z

    if-eqz v1, :cond_fc

    .line 61
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-direct {v1, v2, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_fc
    :goto_fc
    move/from16 v18, v0

    goto/16 :goto_23e

    .line 64
    :cond_100
    if-lez v9, :cond_162

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    if-nez v1, :cond_162

    .line 65
    const/4 v0, 0x0

    .line 67
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ShowUpgrades:Z

    if-eqz v1, :cond_fc

    .line 68
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-direct {v1, v2, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    .line 71
    :cond_162
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v1, :cond_193

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    if-gez v1, :cond_193

    .line 72
    const/4 v0, 0x0

    move/from16 v18, v0

    goto/16 :goto_23e

    .line 74
    :cond_193
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v1, :cond_1e9

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    if-eq v1, v2, :cond_1e9

    .line 75
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_23e

    .line 77
    :cond_1e9
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v1, :cond_fc

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-eq v1, v2, :cond_fc

    .line 78
    const/4 v0, 0x0

    move/from16 v18, v0

    .line 81
    .end local v0    # "addBuilding":Z
    .local v18, "addBuilding":Z
    :goto_23e
    if-eqz v18, :cond_2a9

    .line 82
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$1;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    .line 83
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-virtual {v0, v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    .line 84
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v4, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    mul-int/lit8 v0, v16, 0x2

    sub-int v19, v12, v0

    const/16 v20, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move v5, v9

    move/from16 v6, v16

    move/from16 v7, v17

    move-object v13, v8

    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "j":I
    .local v19, "j":I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;IZIIIIIZ)V

    .line 82
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v17, v17, v0

    goto :goto_2ab

    .line 81
    .end local v19    # "j":I
    .restart local v9    # "j":I
    :cond_2a9
    move/from16 v19, v9

    .line 54
    .end local v9    # "j":I
    .end local v18    # "addBuilding":Z
    .restart local v19    # "j":I
    :goto_2ab
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v13, p0

    .end local v19    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_7a

    :cond_2b1
    move/from16 v19, v9

    .end local v9    # "j":I
    .restart local v19    # "j":I
    move/from16 v0, v17

    .line 153
    .end local v17    # "buttonY":I
    .end local v19    # "j":I
    .local v0, "buttonY":I
    :cond_2b5
    const/4 v1, 0x0

    move v9, v0

    move v13, v1

    .end local v0    # "buttonY":I
    .local v9, "buttonY":I
    .local v13, "i":I
    :goto_2b8
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v13, v0, :cond_3e7

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v0, v14, :cond_3df

    .line 155
    const/4 v0, 0x0

    move/from16 v17, v9

    move v9, v0

    .local v9, "j":I
    .restart local v17    # "buttonY":I
    :goto_2cc
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v9, v0, :cond_3d8

    .line 156
    const/4 v0, 0x1

    .line 158
    .local v0, "addBuilding":Z
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v13, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    if-eqz v1, :cond_2e9

    goto/16 :goto_386

    .line 161
    :cond_2e9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v13, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v1

    if-nez v1, :cond_30e

    .line 162
    const/4 v0, 0x0

    .line 164
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ShowUpgrades:Z

    if-eqz v1, :cond_386

    .line 165
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v1, v13, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_386

    .line 175
    :cond_30e
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v1, :cond_32a

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    if-gez v1, :cond_32a

    .line 176
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_388

    .line 178
    :cond_32a
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v1, :cond_358

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    if-eq v1, v2, :cond_358

    .line 179
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_388

    .line 181
    :cond_358
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v1, :cond_386

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-eq v1, v2, :cond_386

    .line 182
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_388

    .line 185
    :cond_386
    :goto_386
    move/from16 v18, v0

    .end local v0    # "addBuilding":Z
    .restart local v18    # "addBuilding":Z
    :goto_388
    if-eqz v18, :cond_3ce

    .line 186
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$2;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    .line 187
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v13, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v3

    mul-int/lit8 v0, v16, 0x2

    sub-int v19, v12, v0

    const/16 v20, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v13

    move v5, v9

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v21, v10

    move-object v10, v8

    .end local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .local v21, "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "j":I
    .restart local v19    # "j":I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;IZIIIIIZ)V

    .line 186
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v17, v17, v0

    goto :goto_3d2

    .line 185
    .end local v19    # "j":I
    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v9    # "j":I
    .restart local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_3ce
    move/from16 v19, v9

    move-object/from16 v21, v10

    .line 155
    .end local v9    # "j":I
    .end local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v18    # "addBuilding":Z
    .restart local v19    # "j":I
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :goto_3d2
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v10, v21

    .end local v19    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_2cc

    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_3d8
    move/from16 v19, v9

    move-object/from16 v21, v10

    .end local v9    # "j":I
    .end local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v19    # "j":I
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    move/from16 v9, v17

    goto :goto_3e1

    .line 154
    .end local v17    # "buttonY":I
    .end local v19    # "j":I
    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .local v9, "buttonY":I
    .restart local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_3df
    move-object/from16 v21, v10

    .line 153
    .end local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :goto_3e1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v21

    goto/16 :goto_2b8

    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_3e7
    move-object/from16 v21, v10

    .line 248
    .end local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v13    # "i":I
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_495

    .line 249
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "NotAvailable"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v7, v0, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v9

    move v6, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v17, v9

    .end local v9    # "buttonY":I
    .local v13, "iSize":I
    .restart local v17    # "buttonY":I
    :goto_42d
    if-ge v0, v13, :cond_48c

    .line 262
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    mul-int/lit8 v1, v16, 0x2

    sub-int v8, v12, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/16 v20, 0x0

    move-object v1, v10

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v23, v10

    move-object/from16 v22, v21

    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .local v22, "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    move/from16 v10, v20

    move-object/from16 v20, v11

    .end local v11    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .local v20, "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    move/from16 v11, v18

    move/from16 v18, v12

    .end local v12    # "menuWidth":I
    .local v18, "menuWidth":I
    move/from16 v12, v19

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;-><init>(IZIIIIIZZZZ)V

    move-object/from16 v1, v23

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v17, v17, v1

    .line 261
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v18

    move-object/from16 v11, v20

    goto :goto_42d

    .end local v18    # "menuWidth":I
    .end local v20    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v11    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v12    # "menuWidth":I
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_48c
    move-object/from16 v20, v11

    move/from16 v18, v12

    move-object/from16 v22, v21

    .end local v11    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v12    # "menuWidth":I
    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v18    # "menuWidth":I
    .restart local v20    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    move/from16 v9, v17

    goto :goto_49b

    .line 248
    .end local v0    # "i":I
    .end local v13    # "iSize":I
    .end local v17    # "buttonY":I
    .end local v18    # "menuWidth":I
    .end local v20    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v9    # "buttonY":I
    .restart local v11    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v12    # "menuWidth":I
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_495
    move-object/from16 v20, v11

    move/from16 v18, v12

    move-object/from16 v22, v21

    .line 267
    .end local v11    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v12    # "menuWidth":I
    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v18    # "menuWidth":I
    .restart local v20    # "notAvailable":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :goto_49b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SHOW_TO_BE_RESEARCHED_BUILDINGS:Z

    if-eqz v0, :cond_55d

    .line 268
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_558

    .line 269
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ToBeResearched"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v7, v0, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v9

    move/from16 v6, v18

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 281
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v13

    move v12, v0

    move/from16 v17, v9

    .end local v0    # "i":I
    .end local v9    # "buttonY":I
    .local v12, "i":I
    .restart local v13    # "iSize":I
    .restart local v17    # "buttonY":I
    :goto_4e7
    if-ge v12, v13, :cond_54f

    .line 282
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    move-object/from16 v10, v22

    .end local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    mul-int/lit8 v0, v16, 0x2

    move/from16 v9, v18

    .end local v18    # "menuWidth":I
    .local v9, "menuWidth":I
    sub-int v8, v9, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v24, v9

    .end local v9    # "menuWidth":I
    .local v24, "menuWidth":I
    move/from16 v9, v21

    move-object/from16 v21, v10

    .end local v10    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    move/from16 v10, v22

    move-object/from16 v25, v11

    move/from16 v11, v18

    move/from16 v18, v12

    .end local v12    # "i":I
    .local v18, "i":I
    move/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;IZIIIIIZZZZ)V

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v17, v17, v0

    .line 281
    add-int/lit8 v12, v18, 0x1

    move-object/from16 v22, v21

    move/from16 v18, v24

    .end local v18    # "i":I
    .restart local v12    # "i":I
    goto :goto_4e7

    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v24    # "menuWidth":I
    .local v18, "menuWidth":I
    .restart local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_54f
    move/from16 v24, v18

    move-object/from16 v21, v22

    move/from16 v18, v12

    .end local v12    # "i":I
    .end local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .local v18, "i":I
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v24    # "menuWidth":I
    move/from16 v9, v17

    goto :goto_561

    .line 268
    .end local v13    # "iSize":I
    .end local v17    # "buttonY":I
    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v24    # "menuWidth":I
    .local v9, "buttonY":I
    .local v18, "menuWidth":I
    .restart local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_558
    move/from16 v24, v18

    move-object/from16 v21, v22

    .end local v18    # "menuWidth":I
    .end local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v24    # "menuWidth":I
    goto :goto_561

    .line 267
    .end local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .end local v24    # "menuWidth":I
    .restart local v18    # "menuWidth":I
    .restart local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    :cond_55d
    move/from16 v24, v18

    move-object/from16 v21, v22

    .line 300
    .end local v18    # "menuWidth":I
    .end local v22    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v21    # "notAvailableTech":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    .restart local v24    # "menuWidth":I
    :goto_561
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuHeight:I

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v10, 0x0

    move/from16 v11, v24

    .end local v24    # "menuWidth":I
    .local v11, "menuWidth":I
    invoke-direct {v0, v10, v10, v11, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuX:I

    mul-int v12, v11, v14

    add-int v2, v0, v12

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuY:I

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v4, v11

    move-object v6, v15

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 304
    iput-boolean v10, v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->drawScrollPositionAlways2:Z

    .line 305
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 309
    sget p2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->mTranslateX:I

    .line 311
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->groupID:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_34

    .line 312
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 313
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosY()I

    move-result v0

    add-int v6, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getHeight()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 314
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 317
    :cond_34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ea66666    # 0.325f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 318
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 319
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 320
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 323
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 324
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 328
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 329
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBuildings()V

    .line 330
    return-void
.end method
