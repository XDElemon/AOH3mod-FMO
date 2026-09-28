.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMapTerrainTypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList;Ljava/lang/String;IIIIIZZ)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z
    .param p9, "checkBox"    # Z

    .line 37
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 40
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainType;->currentTerrainTypeID:I

    .line 41
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getCurrent()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    const/4 v6, 0x0

    aget v1, v1, v6

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getCurrent()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getCurrent()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Color:[F

    const/4 v7, 0x2

    aget v3, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v7

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/2addr v3, v7

    sub-int v3, v1, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 52
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 56
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 57
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v7

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    .line 58
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    neg-int v3, v3

    .line 56
    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    .line 61
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v7

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallWidth:I

    div-int/2addr v2, v7

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    .line 62
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v7

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallHeight:I

    div-int/2addr v3, v7

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallWidth:I

    sget v5, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainSmallHeight:I

    .line 60
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 66
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 67
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getHeight()I

    move-result v3

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->terrainSmall:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v7

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 66
    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 69
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 70
    return-void
.end method

.method public getCheckboxState()Z
    .registers 3

    .line 45
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainTypeList$1;->getCurrent()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainType;->currentTerrainTypeID:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
