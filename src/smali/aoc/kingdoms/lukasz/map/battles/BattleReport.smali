.class public Laoc/kingdoms/lukasz/map/battles/BattleReport;
.super Ljava/lang/Object;
.source "BattleReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;
    }
.end annotation


# instance fields
.field public civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

.field public civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

.field public fWarScore:F

.field public iProvinceID:I

.field public iTurnID:I

.field public key:Ljava/lang/String;

.field public leftSideWon:Z

.field public playerWon:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IFZZILaoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iProvinceID"    # I
    .param p3, "fWarScore"    # F
    .param p4, "leftSideWon"    # Z
    .param p5, "playerWon"    # Z
    .param p6, "iTurnID"    # I
    .param p7, "civReportLeft"    # Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;
    .param p8, "civReportRight"    # Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->key:Ljava/lang/String;

    .line 42
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->iProvinceID:I

    .line 43
    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->fWarScore:F

    .line 44
    iput-boolean p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->leftSideWon:Z

    .line 45
    iput-boolean p5, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->playerWon:Z

    .line 47
    iput-object p7, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    .line 48
    iput-object p8, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    .line 50
    iput p6, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->iTurnID:I

    .line 51
    return-void
.end method
