.class public Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;
.super Ljava/lang/Object;
.source "ProvinceAnimationHover.java"


# instance fields
.field public final START_ALPHA:I

.field public final TIME_UPDATE:I

.field public backAnimation:Z

.field public fAlpha:F

.field public iColorStepID:I

.field public iStepID:I

.field public lTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0xff

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->START_ALPHA:I

    .line 8
    const/16 v0, 0x28

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->TIME_UPDATE:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    .line 13
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    .line 16
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .registers 2

    .line 60
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    return v0
.end method

.method public final getBackAnimation()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    return v0
.end method

.method public final getColorStepID()I
    .registers 2

    .line 72
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    return v0
.end method

.method public final getStepID()I
    .registers 2

    .line 68
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    return v0
.end method

.method public final resetAnimationData()V
    .registers 3

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    .line 50
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    .line 52
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    .line 55
    return-void
.end method

.method public final update()V
    .registers 7

    .line 21
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x28

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_49

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    .line 23
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    const/high16 v1, 0x40d00000    # 6.5f

    if-eqz v0, :cond_23

    .line 24
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    goto :goto_2e

    .line 28
    :cond_23
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    .line 29
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iColorStepID:I

    .line 32
    :goto_2e
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->lTime:J

    .line 34
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_49

    .line 35
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    if-eqz v0, :cond_40

    .line 36
    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->fAlpha:F

    .line 38
    :cond_40
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->iStepID:I

    .line 39
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->backAnimation:Z

    .line 44
    :cond_49
    return-void
.end method
