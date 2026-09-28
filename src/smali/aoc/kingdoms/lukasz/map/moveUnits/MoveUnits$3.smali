.class Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;
.super Ljava/lang/Object;
.source "MoveUnits.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    .line 823
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 7

    .line 826
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 827
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 829
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v0, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_32

    .line 830
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 832
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3$1;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;)V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 837
    :cond_32
    return-void
.end method
