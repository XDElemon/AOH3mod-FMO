.class public Laoc/kingdoms/lukasz/menu/ClickAnimation;
.super Ljava/lang/Object;
.source "ClickAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:F = 400.0f


# instance fields
.field public animationTime:J

.field public clickXY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;",
            ">;"
        }
    .end annotation
.end field

.field public clickXYSize:I

.field public extraSpeed:F

.field public fPerc:F

.field public iHMax:I

.field public iWMax:I

.field public iX:I

.field public iY:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 12
    .param p1, "iX"    # I
    .param p2, "iY"    # I
    .param p3, "iWMax"    # I
    .param p4, "iHMax"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXYSize:I

    .line 55
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iX:I

    .line 56
    iput p2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iY:I

    .line 58
    iput p3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iWMax:I

    .line 59
    iput p4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iHMax:I

    .line 61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3faccccd    # 1.35f

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->extraSpeed:F

    .line 63
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    .line 65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_X:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3a
    if-ltz v0, :cond_67

    .line 66
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    int-to-float v3, p3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_X:[F

    aget v4, v4, v0

    mul-float v3, v3, v4

    int-to-float v4, p4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_Y:[F

    aget v5, v5, v0

    mul-float v4, v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_SPEED_X:[F

    aget v5, v5, v0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_ANIM_SPEED_Y:[F

    aget v6, v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 72
    .end local v0    # "i":I
    :cond_67
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXYSize:I

    .line 73
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)Z
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "out":Z
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    .line 79
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->animationTime:J

    .line 81
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1d

    .line 82
    iput v2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_1d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ClickAnimation;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ClickAnimation;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ClickAnimation;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3f266666    # 0.65f

    iget v7, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    mul-float v7, v7, v6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    iget v2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXYSize:I

    if-ge v1, v2, :cond_bb

    .line 89
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iX:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v4, v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->iY:I

    neg-int v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v5, v5, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v5, v5, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    iget v6, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    mul-float v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V

    .line 91
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v3, v2, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v4, v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedX:F

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->extraSpeed:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    .line 92
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v3, v2, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->clickXY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;

    iget v4, v4, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedY:F

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->extraSpeed:F

    mul-float v4, v4, v5

    const/high16 v5, 0x3e800000    # 0.25f

    iget v6, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation;->fPerc:F

    mul-float v6, v6, v5

    const/high16 v5, 0x3f400000    # 0.75f

    add-float/2addr v6, v5

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 95
    .end local v1    # "i":I
    :cond_bb
    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 99
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
