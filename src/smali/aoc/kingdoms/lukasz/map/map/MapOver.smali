.class public Laoc/kingdoms/lukasz/map/map/MapOver;
.super Ljava/lang/Object;
.source "MapOver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapOver$Config;,
        Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;
    }
.end annotation


# instance fields
.field public iOverSize:I

.field public lOver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field public overMask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public overTile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public drawMapOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "fAlpha"    # F

    .line 97
    move-object v1, p0

    move-object/from16 v8, p1

    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_183

    const v9, 0x84c0

    const-string v10, "u_extraColor"

    const-string v11, "u_maskScaleY"

    const-string v12, "u_maskScale"

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v0, v2, :cond_c5

    .line 100
    :try_start_19
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_42

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    goto :goto_4c

    :cond_42
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_4c
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 102
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 103
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 104
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v10, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 106
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 107
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 109
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 117
    .end local v0    # "i":I
    :cond_c5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v0, :cond_182

    .line 118
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_cc
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v2, :cond_182

    .line 119
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_f9

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    goto :goto_103

    :cond_f9
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_103
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 121
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 122
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 123
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v10, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 125
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 126
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 128
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 129
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    add-int v4, p2, v3

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    .line 128
    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_17e} :catch_183

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_cc

    .line 138
    .end local v0    # "i":I
    :cond_182
    goto :goto_187

    .line 136
    :catch_183
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 140
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_187
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 141
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 142
    return-void
.end method

.method public drawMapOverlaySea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "fAlpha"    # F

    .line 146
    move-object v1, p0

    move-object/from16 v8, p1

    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_183

    const v9, 0x84c0

    const-string v10, "u_extraColor"

    const-string v11, "u_maskScaleY"

    const-string v12, "u_maskScale"

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v0, v2, :cond_c5

    .line 149
    :try_start_19
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_42

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    goto :goto_4c

    :cond_42
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_4c
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 151
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 152
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 153
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v10, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 155
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 156
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 158
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 166
    .end local v0    # "i":I
    :cond_c5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v0, :cond_182

    .line 167
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_cc
    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v2, :cond_182

    .line 168
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Alpha:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_f9

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    goto :goto_103

    :cond_f9
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScaleZoomOut:F

    :goto_103
    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->AlphaScale:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p4

    invoke-direct {v2, v14, v14, v14, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 170
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 171
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 172
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->ExtraColor:F

    invoke-virtual {v2, v10, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 174
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 175
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 177
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 178
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    add-int v4, p2, v3

    sget v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    .line 177
    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_17e} :catch_183

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_cc

    .line 187
    .end local v0    # "i":I
    :cond_182
    goto :goto_187

    .line 185
    :catch_183
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 189
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_187
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 190
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 191
    return-void
.end method

.method public final loadOverlay(Ljava/lang/String;)V
    .registers 8
    .param p1, "sFile"    # Ljava/lang/String;

    .line 51
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapOver$Config;-><init>()V

    .line 52
    .local v0, "data":Laoc/kingdoms/lukasz/map/map/MapOver$Config;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 53
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    const-string v3, "Overlay"

    const-class v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-class v2, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "background/overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapOver$Config;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    .line 59
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/map/MapOver$Config;->Overlay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, "obj":Ljava/lang/Object;
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_56

    .line 63
    :cond_69
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    .line 64
    return-void
.end method

.method public final loadOverlayImages()Z
    .registers 7

    .line 69
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    .local v0, "i":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v1, :cond_4b

    .line 70
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "background/overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Tile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v1, 0x1

    return v1

    .line 76
    .end local v0    # "i":I
    :cond_4b
    const/4 v0, 0x0

    return v0
.end method

.method public final loadOverlayImages_2()Z
    .registers 7

    .line 80
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    .local v0, "i":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->iOverSize:I

    if-ge v0, v1, :cond_ba

    .line 81
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "background/overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v4, :cond_30

    const-string v4, "high/"

    goto :goto_32

    :cond_30
    const-string v4, "low/"

    :goto_32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Mask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Scale:F

    mul-float v3, v3, v4

    div-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScale:F

    .line 85
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overMask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->overTile:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapOver;->lOver:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->Scale:F

    mul-float v3, v3, v4

    div-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapOver$Overlay;->u_maskScaleY:F

    .line 87
    const/4 v1, 0x1

    return v1

    .line 90
    .end local v0    # "i":I
    :cond_ba
    const/4 v0, 0x0

    return v0
.end method
