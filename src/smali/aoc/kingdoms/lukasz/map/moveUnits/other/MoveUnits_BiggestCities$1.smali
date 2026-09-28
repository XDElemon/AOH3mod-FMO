.class Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;
.super Ljava/lang/Object;
.source "MoveUnits_BiggestCities.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->buildAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    .line 317
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 7

    .line 320
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->lMovingTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->DIPLOMACY_LINES_ANIMATION_DURATION:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    .line 321
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->lMovingTime:J

    .line 323
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    iget v0, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_31

    .line 324
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    iput v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->fMovingPercentage:F

    .line 326
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1$1;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities$1;)V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 331
    :cond_31
    return-void
.end method
