.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;
.super Ljava/lang/Object;
.source "FlagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;,
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;,
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;,
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;
    }
.end annotation


# static fields
.field public static final FLAG_HEIGHT:I = 0x2c

.field public static final FLAG_WIDTH:I = 0x44


# instance fields
.field public activeColorID:I

.field private divisionLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

.field public lDivisions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;",
            ">;"
        }
    .end annotation
.end field

.field public lOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private lOverlaysImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    return-void
.end method

.method private final beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 158
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, p3

    int-to-float v2, v2

    const/high16 v3, 0x42880000    # 68.0f

    const/high16 v4, -0x3dd00000    # -44.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 159
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 160
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 161
    return-void
.end method

.method private final beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 164
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, p3

    int-to-float v2, v2

    const/high16 v3, 0x42880000    # 68.0f

    const/high16 v4, -0x3dd00000    # -44.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 165
    .local v0, "clipBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 166
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    .line 167
    return-void
.end method

.method private final endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 171
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 172
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    .line 175
    goto :goto_8

    .line 173
    :catch_7
    move-exception v0

    .line 176
    :goto_8
    return-void
.end method


# virtual methods
.method public final addOverlay()V
    .registers 5

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "tempOverlayID":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlayImage(I)V

    .line 263
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    .line 264
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    .line 266
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x22

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    .line 267
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x16

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    .line 268
    return-void
.end method

.method public final clearData()V
    .registers 3

    .line 410
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 411
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 415
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 419
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 421
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_33
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 424
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 426
    .end local v0    # "i":I
    :cond_4f
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    return-void
.end method

.method public final drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 65
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 66
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 69
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    const/16 v6, 0x44

    const/16 v7, 0x2c

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 73
    .end local v0    # "i":I
    :cond_4b
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 75
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 76
    return-void
.end method

.method public final drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nID"    # I

    .line 106
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 108
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 109
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 111
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 112
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    add-int/lit8 v1, p4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 114
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 116
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 117
    return-void
.end method

.method public final drawDivisionBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 97
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 98
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 100
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 102
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 103
    return-void
.end method

.method public final drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 81
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 82
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 85
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 86
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    const/16 v6, 0x44

    const/16 v7, 0x2c

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 89
    .end local v0    # "i":I
    :cond_4b
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 92
    return-void
.end method

.method public final drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nID"    # I

    .line 120
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 122
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 123
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 125
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 126
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    add-int/lit8 v1, p4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 128
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 130
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 131
    return-void
.end method

.method public final drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 50
    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 52
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public final drawFlag_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawOverlay_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 60
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public final drawOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "id"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 136
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->oColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 137
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    add-int v3, p2, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    add-int v4, p3, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v5, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v6, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 139
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 141
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 142
    return-void
.end method

.method public final drawOverlay_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "id"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 147
    const/high16 v0, 0x3f800000    # 1.0f

    .line 149
    .local v0, "tScale":F
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->oColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 150
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    add-int v4, p2, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    add-int v5, p3, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v6, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v7, v1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 152
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 154
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 155
    return-void
.end method

.method public final getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;
    .registers 4
    .param p1, "iOverlayID"    # I

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 314
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    if-ne p1, v1, :cond_20

    .line 315
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    return-object v1

    .line 313
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "i":I
    :cond_23
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method

.method public final initFlagEdit()V
    .registers 2

    .line 181
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    .line 183
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadDivision()V

    .line 184
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlays()V

    .line 185
    return-void
.end method

.method public final loadData()V
    .registers 1

    .line 404
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->clearData()V

    .line 406
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadDivisions()V

    .line 407
    return-void
.end method

.method public final loadDivision()V
    .registers 10

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 204
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->iLayers:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_7e

    .line 209
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gfx/editorFlags/divisions/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    iget-object v7, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->sName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 212
    .end local v0    # "i":I
    :cond_7e
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "i":I
    :goto_86
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->iLayers:I

    if-ge v0, v1, :cond_fc

    .line 213
    if-nez v0, :cond_a2

    .line 214
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 216
    :cond_a2
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_ba

    .line 217
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3f7bfbfc

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct {v5, v6, v1, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 219
    :cond_ba
    const/4 v4, 0x2

    if-ne v0, v4, :cond_d0

    .line 220
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3e48c8c9

    const v7, 0x3ecacacb

    invoke-direct {v5, v1, v6, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 221
    :cond_d0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_e3

    .line 222
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3f4ececf

    invoke-direct {v5, v3, v6, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 225
    :cond_e3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 226
    .local v1, "tempColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v7, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v8, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v1    # "tempColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_f9
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 229
    .end local v0    # "i":I
    :cond_fc
    return-void
.end method

.method public final loadDivisions()V
    .registers 12

    .line 335
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 336
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    .line 341
    :try_start_10
    const-string v0, "gfx/editorFlags/divisions.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 343
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 347
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    const-string v4, "Division"

    const-class v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 348
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;-><init>()V

    .line 349
    .local v3, "data":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;
    const-class v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    invoke-virtual {v2, v4, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    move-object v3, v4

    .line 351
    iget-object v4, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;->Division:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 352
    .local v5, "e":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;

    .line 353
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;
    iget-object v7, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;->Name:Ljava/lang/String;

    iget v10, v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;->Layers:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_10 .. :try_end_57} :catch_5a

    .line 354
    nop

    .end local v5    # "e":Ljava/lang/Object;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;
    goto :goto_3c

    .line 357
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;
    :cond_59
    goto :goto_5b

    .line 355
    :catch_5a
    move-exception v0

    .line 358
    :goto_5b
    return-void
.end method

.method public final loadOverlayImage(I)V
    .registers 4
    .param p1, "iOverlayID"    # I

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 288
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    if-ne p1, v1, :cond_16

    .line 289
    return-void

    .line 287
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    .end local v0    # "i":I
    :cond_19
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public final loadOverlays()V
    .registers 12

    .line 373
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 374
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 376
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    .line 379
    :try_start_10
    const-string v0, "gfx/editorFlags/overlays.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 381
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 384
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    const-string v4, "Overlay"

    const-class v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 385
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;-><init>()V

    .line 386
    .local v3, "data":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;
    const-class v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    invoke-virtual {v2, v4, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    move-object v3, v4

    .line 388
    iget-object v4, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;->Overlay:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 389
    .local v5, "e":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;

    .line 390
    .local v6, "tempData":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;
    iget-object v7, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget-object v9, v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;->Name:Ljava/lang/String;

    iget v10, v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;->Scale:F

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    nop

    .end local v5    # "e":Ljava/lang/Object;
    .end local v6    # "tempData":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;
    goto :goto_3c

    .line 393
    :cond_59
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5a
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_76

    .line 394
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlayImage(I)V
    :try_end_73
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_10 .. :try_end_73} :catch_77

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 398
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;
    .end local v4    # "i":I
    :cond_76
    goto :goto_78

    .line 396
    :catch_77
    move-exception v0

    .line 399
    :goto_78
    return-void
.end method

.method public final moveOverlayUp(I)V
    .registers 6
    .param p1, "nID"    # I

    .line 278
    if-lez p1, :cond_28

    .line 279
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    .line 280
    .local v0, "tempD":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v0    # "tempD":Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;
    :cond_28
    return-void
.end method

.method public final removeOverlay(I)V
    .registers 4
    .param p1, "nID"    # I

    .line 271
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    .line 273
    .local v0, "tempOverlayID":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->tryRemoveOverlay(I)V

    .line 275
    return-void
.end method

.method public final saveFlagTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 434
    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/16 v4, 0x2c

    sub-int/2addr v3, v4

    const/16 v5, 0x44

    invoke-static {v0, v3, v5, v4}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, v1

    .line 437
    .local v0, "tempFlagImage":Laoc/kingdoms/lukasz/textures/Image;
    :try_start_1a
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_25
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1a .. :try_end_25} :catch_26

    .line 440
    goto :goto_27

    .line 438
    :catch_26
    move-exception v1

    .line 442
    :goto_27
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-string v2, ".png"

    const-string v3, "mods/GameCivs/gfx/flagsH/"

    if-eqz v1, :cond_5e

    .line 443
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto :goto_8c

    .line 445
    :cond_5e
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 449
    :goto_8c
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 450
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v6, 0x44

    const/16 v7, 0x2c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 451
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 453
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 454
    const/4 v0, 0x0

    .line 455
    return-void
.end method

.method public final tryRemoveOverlay(I)V
    .registers 4
    .param p1, "iOverlayID"    # I

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 298
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    if-ne v1, p1, :cond_1a

    .line 299
    return-void

    .line 297
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1e
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 304
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    if-ne p1, v1, :cond_49

    .line 305
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 306
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    return-void

    .line 303
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 310
    .end local v0    # "i":I
    :cond_4c
    return-void
.end method

.method public final updateDivision(Z)V
    .registers 6
    .param p1, "add"    # Z

    .line 190
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, -0x1

    :goto_a
    add-int/2addr v1, v3

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    .line 192
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    if-gez v0, :cond_1f

    .line 193
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    goto :goto_30

    .line 195
    :cond_1f
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_30

    .line 196
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    .line 199
    :cond_30
    :goto_30
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadDivision()V

    .line 200
    return-void
.end method

.method public final updateOverlay(IZ)V
    .registers 9
    .param p1, "nID"    # I
    .param p2, "add"    # Z

    .line 234
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    .line 236
    .local v0, "tempOver":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    const/4 v3, 0x1

    if-eqz p2, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, -0x1

    :goto_1e
    add-int/2addr v2, v4

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    .line 238
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    if-gez v1, :cond_43

    .line 239
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    goto :goto_64

    .line 241
    :cond_43
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_64

    .line 242
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    const/4 v2, 0x0

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    .line 245
    :cond_64
    :goto_64
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->tryRemoveOverlay(I)V

    .line 246
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlayImage(I)V

    .line 249
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    .line 250
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    .line 252
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x22

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    .line 253
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x16

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    .line 254
    return-void
.end method
