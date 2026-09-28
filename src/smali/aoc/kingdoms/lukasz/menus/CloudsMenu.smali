.class public Laoc/kingdoms/lukasz/menus/CloudsMenu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "CloudsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;
    }
.end annotation


# static fields
.field public static goToView:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iAnimationTime:I

.field public lClouds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public lTime:J

.field public viewChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->goToView:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 46
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 23
    const/16 v0, 0x2ee

    iput v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->viewChanged:Z

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v0, v3, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    .line 53
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f2

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit16 v2, v2, 0xfa

    if-ge v0, v2, :cond_c0

    .line 55
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 56
    .local v2, "tCloudID":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v2    # "tCloudID":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_32

    .line 63
    .end local v0    # "i":I
    :cond_c0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c1
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit16 v2, v2, 0x258

    if-ge v0, v2, :cond_f2

    .line 64
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 65
    .restart local v2    # "tCloudID":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v2    # "tCloudID":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 69
    .end local v0    # "i":I
    :cond_f2
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v8, v1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 74
    move-object v0, p0

    move-object v9, p1

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 75
    .local v11, "fAlpha":F
    move v12, v11

    .line 78
    .local v12, "fPos":F
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v11

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 79
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v2, 0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 82
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 84
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 87
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v7, v10, v1

    .line 89
    .end local v11    # "fAlpha":F
    .local v7, "fAlpha":F
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    mul-float v1, v1, v7

    float-to-int v8, v1

    .line 109
    .local v8, "gradientH":I
    iget-object v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    move v13, v1

    .local v13, "i":I
    :goto_91
    if-ltz v13, :cond_13f

    .line 110
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fAlpha:F

    mul-float v2, v2, v7

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 112
    iget-object v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_fa

    .line 113
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iCloudID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    sub-int v3, v2, v3

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v4, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosY:I

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v6, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fRotation:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_13b

    .line 116
    :cond_fa
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iCloudID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    add-int/2addr v3, v2

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v4, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosY:I

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v6, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fRotation:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    .line 109
    :goto_13b
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_91

    .line 123
    .end local v13    # "i":I
    :cond_13f
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 126
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    sub-long/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_165

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->viewChanged:Z

    if-nez v1, :cond_165

    .line 127
    iget-object v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 129
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/CloudsMenu;->goToView:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 131
    iput-boolean v11, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->viewChanged:Z

    .line 133
    :cond_165
    return-void
.end method
