.class public Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;
.super Ljava/lang/Object;
.source "ClickAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu/ClickAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickXY"
.end annotation


# instance fields
.field public fX:F

.field public fY:F

.field public speedX:F

.field public speedY:F

.field public width:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 8
    .param p1, "fX"    # F
    .param p2, "fY"    # F
    .param p3, "speedX"    # F
    .param p4, "speedY"    # F

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    .line 39
    iput p2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    .line 40
    iput p3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedX:F

    .line 41
    iput p4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedY:F

    .line 43
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_WIDTH:F

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    .line 45
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_WIDTH_RANDOM:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2c

    .line 46
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_WIDTH_RANDOM:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    .line 48
    :cond_2c
    return-void
.end method
