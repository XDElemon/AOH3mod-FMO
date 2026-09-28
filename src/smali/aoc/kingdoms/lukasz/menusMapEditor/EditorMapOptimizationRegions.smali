.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapOptimizationRegions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;
    }
.end annotation


# static fields
.field public static activeRegion:I

.field public static lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static lUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 149
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    .line 28
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$1;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v9, 0x1

    const-string v3, "-"

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v14, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v15, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v16, v2, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    const/16 v20, 0x0

    const-string v13, "SET TO REGION ID: "

    const/16 v18, 0x0

    move-object v11, v1

    move-object/from16 v12, p0

    move/from16 v19, v2

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$3;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v8, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v9, v2, v3

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v11, 0x1

    const-string v5, "+"

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v3, v1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$4;

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v19, v2, 0x2

    const/16 v20, 0x1

    const-string v14, ""

    const/4 v15, 0x1

    const/16 v16, -0x1

    move-object v12, v1

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$4;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$5;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v2, v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$5;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$6;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v17, v2, v3

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const-string v14, ""

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$6;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$7;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    const-string v4, ""

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$7;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;)V
    .registers 1
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;

    .line 26
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->centerToActiveRegionID()V

    return-void
.end method

.method public static actionUpdateData(Z)V
    .registers 5
    .param p0, "addUndo"    # Z

    .line 166
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_d5

    .line 167
    if-eqz p0, :cond_b

    .line 168
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->addUndo(I)V

    .line 171
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 172
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_17
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 173
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ne v2, v3, :cond_53

    .line 174
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->removeProvince(I)V

    .line 175
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    .line 172
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 171
    .end local v1    # "j":I
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 180
    .end local v0    # "i":I
    :cond_59
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_b0

    .line 181
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lColors:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Region;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Region;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->addProvince(I)V

    .line 185
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    .line 187
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/RegionManager;->updateRegionsSize()V

    goto :goto_d0

    .line 189
    :cond_b0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Region;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->addProvince(I)V

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    .line 193
    :goto_d0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_OptimizationRegions(I)V

    .line 195
    :cond_d5
    return-void
.end method

.method public static final addUndo(I)V
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 200
    if-gez p0, :cond_3

    .line 201
    return-void

    .line 204
    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 205
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    iget v0, v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iProvinceID:I

    if-eq v0, p0, :cond_6b

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v1

    if-eq v0, v1, :cond_6b

    .line 206
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_46

    .line 207
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 211
    :cond_46
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 215
    :cond_55
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v1

    if-eq v0, v1, :cond_6b

    .line 216
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_6b
    :goto_6b
    return-void
.end method

.method private final centerToActiveRegionID()V
    .registers 4

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 238
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/RegionManager;->getRegionID(I)I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    if-ne v1, v2, :cond_19

    .line 239
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 240
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 241
    return-void

    .line 237
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "i":I
    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "0 PROVINCES"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static popUndo()V
    .registers 3

    .line 221
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 222
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setActiveProvinceID(I)V

    .line 223
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    .line 224
    .local v0, "tempRegionID":I
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iRegionID:I

    sput v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    .line 225
    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->actionUpdateData(Z)V

    .line 226
    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    .line 228
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 229
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 232
    :cond_4e
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    .end local v0    # "tempRegionID":I
    :cond_5b
    return-void
.end method

.method protected static final saveRegions()V
    .registers 6

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ProvinceOptimizationRegions.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 251
    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    const-string v1, ""

    .line 253
    .local v1, "sLine":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 254
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v3

    if-nez v3, :cond_5c

    .line 255
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 256
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    move v2, v4

    .line 253
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 260
    .end local v2    # "i":I
    :cond_5f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_60
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c5

    .line 261
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_6b
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_a3

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 265
    .end local v3    # "j":I
    :cond_a3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_c2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 270
    .end local v2    # "i":I
    :cond_c5
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 271
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 126
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxSimple:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v0, v2

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    .line 128
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxSimple:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V

    .line 129
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxSimple:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 133
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 134
    return-void
.end method

.method public final drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET TO REGION ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_137

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\nACTIVE PROVINCE REGION ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nNUMBER OF PROVINCES: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nWIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%]\nHEIGHT:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_139

    :cond_137
    const-string v1, ""

    :goto_139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "sText":Ljava/lang/String;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 141
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 142
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v4, v4

    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 143
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 144
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 145
    return-void
.end method
