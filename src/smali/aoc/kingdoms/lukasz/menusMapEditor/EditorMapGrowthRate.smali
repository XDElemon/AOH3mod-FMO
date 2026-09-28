.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapGrowthRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;
    }
.end annotation


# static fields
.field public static currentGrowthRate:F

.field public static lUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->currentGrowthRate:F

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    .line 26
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$1;

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

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$2;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v13, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v14, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v15, v2, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x64

    const/16 v19, 0x32

    const/16 v17, 0x0

    move-object v11, v1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$3;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v7, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v8, v2, v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v10, 0x1

    const-string v4, "+"

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$4;

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v18, v2, 0x2

    const/16 v19, 0x1

    const-string v13, ""

    const/4 v14, 0x1

    const/4 v15, -0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$4;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$5;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v2, v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v2, 0x2

    const/4 v11, 0x0

    const-string v4, ""

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$5;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$6;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v17, v2, v3

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v20, 0x1

    const-string v14, ""

    const/4 v15, 0x1

    const/16 v16, -0x1

    move-object v12, v1

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$6;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$7;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int v7, v2, v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget-boolean v10, Laoc/kingdoms/lukasz/menu/MenuManager;->mapEditorDrawProvinces:Z

    const-string v4, ""

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$7;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$8;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int v16, v2, v3

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v18, v2, 0x2

    const/16 v19, 0x1

    const-string v13, ""

    const/4 v14, 0x1

    const/4 v15, -0x1

    move-object v11, v1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$8;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 141
    return-void
.end method

.method public static actionUpdateData(Z)V
    .registers 5
    .param p0, "addUndo"    # Z

    .line 171
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_39

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_39

    .line 172
    if-eqz p0, :cond_17

    .line 173
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->addUndo(I)V

    .line 176
    :cond_17
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->currentGrowthRate:F

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->iRandom:I

    if-lez v2, :cond_2e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->iRandom:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setGrowthRate(F)V

    .line 177
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_GrowthRate(I)V

    .line 179
    :cond_39
    return-void
.end method

.method public static final addUndo(I)V
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 184
    if-gez p0, :cond_3

    .line 185
    return-void

    .line 188
    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_63

    .line 189
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->iProvinceID:I

    if-eq v0, p0, :cond_83

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->currentGrowthRate:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_83

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_50

    .line 191
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;-><init>(IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 195
    :cond_50
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;-><init>(IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 199
    :cond_63
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->currentGrowthRate:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_83

    .line 200
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;-><init>(IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_83
    :goto_83
    return-void
.end method

.method public static popUndo()V
    .registers 3

    .line 205
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 206
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setActiveProvinceID(I)V

    .line 207
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->currentGrowthRate:F

    .line 208
    .local v0, "tempCurrentGrowthRate":F
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->fGrowthRate:F

    sput v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->currentGrowthRate:F

    .line 209
    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->actionUpdateData(Z)V

    .line 210
    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->currentGrowthRate:F

    .line 212
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 213
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 216
    :cond_4e
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;->lUndo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    .end local v0    # "tempCurrentGrowthRate":F
    :cond_5b
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

    .line 145
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

    .line 147
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

    .line 148
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxSimple:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V

    .line 150
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 151
    return-void
.end method
