.class public Laoc/kingdoms/lukasz/menu_element/Minimap;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Minimap.java"


# static fields
.field public static minimapBoxBorder:I


# instance fields
.field public final boxColor:Lcom/badlogic/gdx/graphics/Color;

.field private iWidnowHeight:I

.field private iWindowPosX:I

.field private iWindowPosY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/Minimap;->minimapBoxBorder:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 26
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 22
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->boxColor:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->MINIMAP:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 29
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setPosX(I)V

    .line 30
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setPosY(I)V

    .line 32
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setWidth(I)V

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setHeight(I)V

    .line 34
    return-void
.end method

.method public static getPadding()I
    .registers 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public actionElement()V
    .registers 5

    .line 140
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->actionElement()V

    .line 142
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToMinimapClick(II)V

    .line 143
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 41
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int v4, v0, p3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 44
    goto :goto_25

    .line 42
    :catch_21
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 47
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_25
    :try_start_25
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1ec

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, p3

    int-to-float v5, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 50
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 51
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 53
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    add-int/2addr v1, v5

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v5

    div-float/2addr v1, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    if-eqz v5, :cond_ab

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ab

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v5

    div-float/2addr v2, v5

    :cond_ab
    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    .line 54
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleY()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    .line 55
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleY()F

    move-result v5

    div-float/2addr v2, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_106

    :cond_f5
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleY()F

    move-result v2

    div-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    :goto_106
    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    .line 57
    nop

    .line 58
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 59
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v5

    add-int/2addr v2, v5

    .line 60
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v6

    div-float/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    div-float/2addr v5, v6

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_159

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    goto :goto_16a

    :cond_159
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v6

    div-float/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    div-float/2addr v5, v6

    :goto_16a
    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x2

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    add-int/lit8 v6, v6, 0x2

    .line 57
    invoke-static {p1, v1, v2, v5, v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 63
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 67
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    add-int/2addr v2, v3

    .line 68
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v4

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1c8

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    goto :goto_1d9

    :cond_1c8
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v4

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    :goto_1d9
    float-to-int v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    .line 65
    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_1df} :catch_3f3

    .line 72
    :try_start_1df
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 73
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e5} :catch_1e6

    .line 76
    goto :goto_1ea

    .line 74
    :catch_1e6
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1e7
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 77
    .end local v0    # "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1ea
    goto/16 :goto_3d2

    .line 79
    :cond_1ec
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    .line 80
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr v0, v5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_20f

    const/4 v0, 0x0

    goto :goto_21c

    :cond_20f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr v0, v5

    :goto_21c
    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    .line 81
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    int-to-float v0, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_24c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    goto :goto_25b

    :cond_24c
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr v0, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v0, v5

    :goto_25b
    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    .line 83
    nop

    .line 84
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v0

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v5

    add-int/2addr v0, v5

    .line 85
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v6

    add-int/2addr v5, v6

    .line 86
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v7

    div-float/2addr v6, v7

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2ac

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_2bb

    :cond_2ac
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v7

    div-float/2addr v6, v7

    :goto_2bb
    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    add-int/lit8 v7, v7, 0x2

    .line 83
    invoke-static {p1, v0, v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    nop

    .line 92
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v0

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr v0, v5

    add-int/2addr v0, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v5

    add-int/2addr v0, v5

    .line 93
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v6

    add-int/2addr v5, v6

    .line 94
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v7

    div-float/2addr v6, v7

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_317

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_326

    :cond_317
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v7

    div-float/2addr v6, v7

    :goto_326
    float-to-int v6, v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    .line 91
    invoke-static {p1, v0, v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 97
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_3d2

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    nop

    .line 101
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 103
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v2, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v2, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    .line 100
    invoke-static {p1, v0, v1, v2, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 111
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    .line 108
    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 116
    :cond_3d2
    :goto_3d2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_3f2
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_3f2} :catch_3f3

    .line 121
    goto :goto_3f7

    .line 119
    :catch_3f3
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 122
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3f7
    return-void
.end method

.method public getHeight()I
    .registers 3

    .line 135
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 130
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
