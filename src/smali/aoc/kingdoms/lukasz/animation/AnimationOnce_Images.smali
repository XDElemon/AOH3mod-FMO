.class public Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;
.super Ljava/lang/Object;
.source "AnimationOnce_Images.java"


# instance fields
.field private ANIMATION_LAST_UPDATE_TIME:J

.field private animationFinished:Z

.field private currentFrameID:I

.field private fPosX:F

.field private fPosY:F


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    .line 18
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->animationFinished:Z

    .line 23
    int-to-float v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosX:F

    .line 24
    int-to-float v0, p2

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosY:F

    .line 26
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->ANIMATION_LAST_UPDATE_TIME:J

    .line 27
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 56
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 57
    return-void
.end method

.method public getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;
    .registers 2

    .line 30
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->animationMove:Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    return-object v0
.end method

.method public getAnimationFinished()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->animationFinished:Z

    return v0
.end method

.method public getPosX()I
    .registers 2

    .line 62
    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosX:F

    float-to-int v0, v0

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 70
    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosY:F

    float-to-int v0, v0

    return v0
.end method

.method public setPosX(F)V
    .registers 2
    .param p1, "fPosX"    # F

    .line 66
    iput p1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosX:F

    .line 67
    return-void
.end method

.method public setPosY(F)V
    .registers 2
    .param p1, "fPosY"    # F

    .line 74
    iput p1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->fPosY:F

    .line 75
    return-void
.end method

.method public update()V
    .registers 7

    .line 36
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->ANIMATION_LAST_UPDATE_TIME:J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_FRAME_TIME:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_3f

    .line 37
    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->getNumOfFrames()I

    move-result v2

    if-lt v0, v2, :cond_3b

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images$1;->$SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->getAnimationData_Images()Laoc/kingdoms/lukasz/animation/AnimationData_Images;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->animationType:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_40

    goto :goto_3b

    .line 44
    :pswitch_33
    iput v2, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    .line 45
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->animationFinished:Z

    goto :goto_3b

    .line 40
    :pswitch_38
    iput v2, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->currentFrameID:I

    .line 41
    nop

    .line 51
    :cond_3b
    :goto_3b
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;->ANIMATION_LAST_UPDATE_TIME:J

    .line 53
    :cond_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_38
        :pswitch_33
    .end packed-switch
.end method
