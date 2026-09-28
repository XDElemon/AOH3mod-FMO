.class Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;
.super Ljava/lang/Object;
.source "MoveUnits_BiggestCities_Diplomacy.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->buildAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    .line 32
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 7

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lMovingTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->DIPLOMACY_LINES_ANIMATION_DURATION:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    .line 36
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lMovingTime:J

    .line 38
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_37

    .line 39
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    iput v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->fMovingPercentage:F

    .line 41
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lMovingTime:J

    .line 43
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1$1;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;)V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 51
    :cond_37
    return-void
.end method
