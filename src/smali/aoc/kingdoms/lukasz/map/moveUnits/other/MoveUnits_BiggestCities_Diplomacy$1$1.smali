.class Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1$1;
.super Ljava/lang/Object;
.source "MoveUnits_BiggestCities_Diplomacy.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;)V
    .registers 2
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;

    .line 43
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1$1;->this$1:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 7

    .line 46
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1$1;->this$1:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1$1;->this$1:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lMovingTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->DIPLOMACY_LINES_ANIMATION_DURATION:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->widthPercentage:F

    .line 47
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1$1;->this$1:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;->lMovingTime:J

    .line 48
    return-void
.end method
