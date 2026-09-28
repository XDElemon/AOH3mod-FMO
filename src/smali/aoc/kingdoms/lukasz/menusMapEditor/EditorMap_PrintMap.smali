.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMap_PrintMap.java"


# static fields
.field public static goBack:Laoc/kingdoms/lukasz/menu/View;

.field public static scale:F


# instance fields
.field public error:Z

.field public iMapPosX:I

.field public iMapPosY:I

.field public id:I

.field public pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

.field public prepare:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->goBack:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .line 40
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    .line 28
    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    .line 30
    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->id:I

    .line 36
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->error:Z

    .line 68
    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->prepare:I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v10, 0x1

    invoke-direct {v2, v10, v10, v10, v10}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    .line 46
    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    .line 48
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v8, v1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 51
    :try_start_2d
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_4d

    .line 56
    goto :goto_5a

    .line 52
    :catch_4d
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/Exception;
    iput-boolean v10, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->error:Z

    .line 54
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 55
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v3, "MAP SIZE TOO BIG"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 58
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 66
    return-void
.end method

.method public static flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 7
    .param p0, "src"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 142
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    .line 143
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    .line 144
    .local v1, "height":I
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 146
    .local v2, "flipped":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_12
    if-ge v3, v0, :cond_28

    .line 147
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_15
    if-ge v4, v1, :cond_25

    .line 148
    sub-int v5, v1, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v3, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 146
    .end local v4    # "y":I
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 152
    .end local v3    # "x":I
    :cond_28
    return-object v2
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 72
    iget v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->prepare:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->prepare:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_c

    goto/16 :goto_cc

    .line 75
    :cond_c
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->error:Z

    if-eqz v0, :cond_19

    .line 76
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->goBack:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto/16 :goto_cc

    .line 79
    :cond_19
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 81
    iget v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    .line 83
    iget v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    neg-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_be

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    .line 85
    iget v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    .line 87
    iget v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    neg-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_be

    .line 89
    :try_start_51
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 91
    .local v0, "tempIMG":Laoc/kingdoms/lukasz/textures/Image;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRINTED_MAP/out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 93
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 94
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_9e} :catch_9f

    .line 101
    .end local v0    # "tempIMG":Laoc/kingdoms/lukasz/textures/Image;
    goto :goto_aa

    .line 98
    :catch_9f
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 100
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 103
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_aa
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Saved"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    .line 104
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->goBack:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 108
    :cond_be
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 109
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 114
    :goto_cc
    return-void
.end method

.method public drawPixmapBIG(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 12
    .param p1, "src"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 156
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    .line 157
    .local v0, "width":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    .line 162
    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_9
    if-ge v2, v0, :cond_89

    int-to-float v3, v2

    :try_start_c
    iget v4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    int-to-float v4, v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_89

    .line 163
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_26
    if-ge v3, v1, :cond_81

    int-to-float v4, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    int-to-float v5, v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_81

    .line 164
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sub-int v5, v1, v3

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v2, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    .line 165
    .local v4, "tempColor":Lcom/badlogic/gdx/graphics/Color;
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v8, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v4, v5

    .line 167
    iget-object v5, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v6, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    int-to-float v6, v6

    sget v7, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v2

    iget v7, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    int-to-float v7, v7

    sget v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7e} :catch_84

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 162
    .end local v3    # "y":I
    .end local v4    # "tempColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 170
    .end local v2    # "x":I
    :catch_84
    move-exception v2

    .line 171
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_8a

    .line 172
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_89
    nop

    .line 173
    :goto_8a
    return-void
.end method

.method protected final saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 119
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    .line 122
    goto :goto_8

    .line 120
    :catch_7
    move-exception v0

    .line 125
    :goto_8
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->drawPixmapBIG(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 139
    return-void
.end method
