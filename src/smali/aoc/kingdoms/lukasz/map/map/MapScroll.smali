.class public Laoc/kingdoms/lukasz/map/map/MapScroll;
.super Ljava/lang/Object;
.source "MapScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;
    }
.end annotation


# static fields
.field private static final MAX_SCROLLING_SPEED:I = 0x1f4

.field protected static final SCROLL_SLOW:F = 0.97f


# instance fields
.field private fScrollNewPosX:F

.field private fScrollNewPosY:F

.field private iScrollEvent_PosX:I

.field private iScrollEvent_PosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iStepID:I

.field private moveMapDirection:Z

.field private moveMapTime:J

.field private reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

.field private reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

.field private scrollEvent:Z

.field private scrollingTheMap:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    .line 13
    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    .line 20
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    .line 22
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapDirection:Z

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    .line 44
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    .line 36
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->buildReverseDirectionX()V

    .line 37
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->buildReverseDirectionY()V

    .line 38
    return-void
.end method

.method protected static final changeAnimationPos(II)F
    .registers 5
    .param p0, "animationStepID"    # I
    .param p1, "nWidth"    # I

    .line 114
    const/high16 v0, 0x42c80000    # 100.0f

    packed-switch p0, :pswitch_data_24

    .line 125
    const/4 v0, 0x0

    return v0

    .line 122
    :pswitch_7
    int-to-float v1, p1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    .line 120
    :pswitch_e
    int-to-float v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    .line 118
    :pswitch_15
    int-to-float v1, p1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    .line 116
    :pswitch_1c
    int-to-float v1, p1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float v1, v1, v2

    div-float/2addr v1, v0

    return v1

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_15
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private final setScrollEvent_Pos(II)V
    .registers 7
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 189
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    if-eqz v0, :cond_5

    .line 190
    return-void

    .line 193
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    .line 197
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosX:I

    .line 198
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosY:I

    .line 200
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0xd0

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    .line 201
    return-void
.end method


# virtual methods
.method protected final buildReverseDirectionX()V
    .registers 2

    .line 47
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_c

    .line 48
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    goto :goto_13

    .line 55
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    .line 62
    :goto_13
    return-void
.end method

.method protected final buildReverseDirectionY()V
    .registers 2

    .line 65
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_c

    .line 66
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    goto :goto_13

    .line 73
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    .line 80
    :goto_13
    return-void
.end method

.method protected getScrollingTheMap()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    return v0
.end method

.method public final resetScrollInfo()V
    .registers 2

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    .line 174
    return-void
.end method

.method protected final setScrollEvent(I)V
    .registers 7
    .param p1, "nProvinceID"    # I

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 180
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 179
    invoke-direct {p0, v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent_Pos(II)V

    .line 181
    return-void
.end method

.method protected final setScrollEvent_ToPosition(II)V
    .registers 8
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 184
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 185
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 184
    invoke-direct {p0, v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent_Pos(II)V

    .line 186
    return-void
.end method

.method public final setScrollPos(II)V
    .registers 4
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 207
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    .line 208
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    .line 210
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    .line 211
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    .line 212
    return-void
.end method

.method protected final startScrollingTheMap()V
    .registers 8

    .line 133
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    const/4 v1, 0x1

    if-nez v0, :cond_cb

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    if-gez v0, :cond_d

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    if-ltz v0, :cond_cb

    .line 134
    :cond_d
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v2, :cond_27

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    goto :goto_29

    :cond_27
    const/high16 v2, 0x40800000    # 4.0f

    :goto_29
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v2, v2, v5

    const/4 v5, -0x1

    const v6, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4b

    .line 135
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v6

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionX:Z

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    goto :goto_44

    :cond_43
    const/4 v2, -0x1

    :goto_44
    int-to-float v2, v2

    mul-float v0, v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    .line 136
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    .line 139
    :cond_4b
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_60

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v2, v2

    mul-float v4, v2, v3

    :cond_60
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v4, v4, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7c

    .line 140
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v6

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionY:Z

    if-eqz v2, :cond_75

    const/4 v5, 0x1

    :cond_75
    int-to-float v2, v5

    mul-float v0, v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    .line 141
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    .line 144
    :cond_7c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x43fa0000    # 500.0f

    const/high16 v4, -0x3c060000    # -500.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b3

    .line 145
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    .line 146
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    goto :goto_cb

    .line 149
    :cond_b3
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    .line 150
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    .line 154
    :cond_cb
    :goto_cb
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    if-eq v0, v2, :cond_dc

    .line 155
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    if-le v0, v2, :cond_d8

    goto :goto_d9

    :cond_d8
    const/4 v1, 0x0

    :goto_d9
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->updateMoveMapDirection(Z)V

    .line 157
    :cond_dc
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    .line 158
    return-void
.end method

.method public final stopScrollingTheMap()V
    .registers 2

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    .line 162
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    .line 164
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    .line 165
    return-void
.end method

.method protected final update()V
    .registers 6

    .line 85
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    if-eqz v0, :cond_44

    .line 86
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_a8

    .line 87
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosX:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/map/MapScroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 88
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosY:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/map/MapScroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 90
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    if-ne v0, v1, :cond_a8

    .line 91
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    goto :goto_a8

    .line 96
    :cond_44
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    if-eqz v0, :cond_a8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    if-nez v0, :cond_a8

    .line 97
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_69

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_65

    goto :goto_69

    .line 108
    :cond_65
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    goto :goto_a8

    .line 98
    :cond_69
    :goto_69
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3f7851ec    # 0.97f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8a

    .line 99
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    float-to-int v4, v4

    invoke-interface {v3, v4}, Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;->getNewPos(I)I

    move-result v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 100
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    mul-float v0, v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    .line 102
    :cond_8a
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a8

    .line 103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    float-to-int v3, v3

    invoke-interface {v1, v3}, Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;->getNewPos(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 104
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    mul-float v0, v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    .line 111
    :cond_a8
    :goto_a8
    return-void
.end method

.method protected final updateMoveMapDirection(Z)V
    .registers 4
    .param p1, "moveMapDirection"    # Z

    .line 168
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapDirection:Z

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    .line 170
    return-void
.end method
