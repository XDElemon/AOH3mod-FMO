.class public Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;
.super Ljava/lang/Object;
.source "ProvinceAnimation.java"


# instance fields
.field public final START_PROVINCE_ALPHA:I

.field public final START_PROVINCE_BORDER_ALPHA:I

.field public final TIME_UPDATE:I

.field public backAnimation:Z

.field public backAnimationBorder:Z

.field public fAlpha:F

.field public iBorderAlpha:I

.field public iColorStepID:I

.field public iStepID:I

.field public iStepIDBorder:I

.field public lTime:J

.field public lTimeBorder:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x1e

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->START_PROVINCE_ALPHA:I

    .line 8
    const/16 v0, 0xff

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->START_PROVINCE_BORDER_ALPHA:I

    .line 10
    const/16 v1, 0x2d

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->TIME_UPDATE:I

    .line 14
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    .line 15
    const/high16 v3, 0x41f00000    # 30.0f

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    .line 17
    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    .line 18
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    .line 22
    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTimeBorder:J

    .line 23
    iput v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepIDBorder:I

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    .line 26
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .registers 2

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    return v0
.end method

.method public final getBackAnimation()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    return v0
.end method

.method public final getBorderAlpha()I
    .registers 2

    .line 82
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    return v0
.end method

.method public final getColorStepID()I
    .registers 2

    .line 94
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    return v0
.end method

.method public final getStepID()I
    .registers 2

    .line 90
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    return v0
.end method

.method public final resetAnimationData()V
    .registers 6

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    .line 63
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    .line 65
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    .line 67
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    .line 69
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTimeBorder:J

    .line 70
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepIDBorder:I

    .line 71
    const/16 v1, 0xff

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    .line 72
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    .line 73
    return-void
.end method

.method public final update()V
    .registers 7

    .line 31
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x2d

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_6d

    .line 32
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    .line 33
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    const/high16 v1, 0x3fa00000    # 1.25f

    if-eqz v0, :cond_29

    .line 34
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    .line 35
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    .line 36
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    goto :goto_3a

    .line 38
    :cond_29
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    .line 39
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    .line 40
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iColorStepID:I

    .line 43
    :goto_3a
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    .line 45
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_6d

    .line 46
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    if-eqz v0, :cond_50

    .line 47
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iBorderAlpha:I

    .line 50
    :cond_50
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->iStepID:I

    .line 51
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    .line 52
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimationBorder:Z

    .line 54
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->backAnimation:Z

    if-eqz v2, :cond_68

    const-wide/16 v2, 0x1c2

    goto :goto_6a

    :cond_68
    const-wide/16 v2, 0x258

    :goto_6a
    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->lTime:J

    .line 57
    :cond_6d
    return-void
.end method
