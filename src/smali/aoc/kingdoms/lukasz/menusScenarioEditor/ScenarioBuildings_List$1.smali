.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;
.source "ScenarioBuildings_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;ZIIIIIZZ)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;
    .param p2, "built"    # Z
    .param p3, "building"    # I
    .param p4, "buildingID"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z
    .param p9, "isResearched"    # Z

    .line 58
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;-><init>(ZIIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 7

    .line 61
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    if-gez v0, :cond_b0

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b0

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_ae

    .line 63
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 65
    .local v1, "provID":I
    if-ltz v1, :cond_aa

    .line 66
    sget-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object v3, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    if-ne v2, v3, :cond_62

    .line 67
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 68
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->destroyBuilding(II)V

    goto :goto_98

    .line 71
    :cond_4d
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v5

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding_LoadScenario(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    goto :goto_98

    .line 75
    :cond_62
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 76
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->destroyBuilding_ScenarioEditor(II)V

    goto :goto_98

    .line 79
    :cond_84
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v5

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    .line 83
    :goto_98
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v2

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->built:Z

    .line 62
    .end local v1    # "provID":I
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .end local v0    # "i":I
    :cond_ae
    goto/16 :goto_157

    .line 88
    :cond_b0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    if-ltz v0, :cond_157

    .line 89
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    if-ne v0, v1, :cond_ff

    .line 90
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 91
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->destroyBuilding(II)V

    goto :goto_141

    .line 94
    :cond_e6
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v3

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding_LoadScenario(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    goto :goto_141

    .line 98
    :cond_ff
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 99
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->destroyBuilding_ScenarioEditor(II)V

    goto :goto_141

    .line 102
    :cond_129
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v3

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    .line 106
    :goto_141
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->getValue2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;->built:Z

    .line 109
    :cond_157
    :goto_157
    return-void
.end method
