.class public Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;
.super Ljava/lang/Object;
.source "DiplomacyEspionageMission.java"


# instance fields
.field public iCivID:I

.field public iReportExpiresTurnID:I

.field public iReportTurnID:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "iCivID"    # I
    .param p2, "iReportTurnID"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    .line 19
    iput p2, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    .line 20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->spy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Spy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Spy;->SEND_SPY_REPORT_ACTIVE:I

    add-int/2addr v0, p2

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportExpiresTurnID:I

    .line 21
    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 3

    .line 26
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
