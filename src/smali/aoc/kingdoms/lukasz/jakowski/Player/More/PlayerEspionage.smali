.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;
.super Ljava/lang/Object;
.source "PlayerEspionage.java"


# instance fields
.field public espionageMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;",
            ">;"
        }
    .end annotation
.end field

.field public iEspionageMissionsSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    .line 16
    return-void
.end method


# virtual methods
.method public final addEspionageMission(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v1, :cond_15

    .line 22
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v1, p1, :cond_12

    .line 23
    return-void

    .line 21
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyTime(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    .line 29
    return-void
.end method

.method public final clearEspionageMissions()V
    .registers 2

    .line 74
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    .line 76
    return-void
.end method

.method public final espionageMission_IsAdded(I)Z
    .registers 4
    .param p1, "iCivID"    # I

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v1, :cond_16

    .line 55
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v1, p1, :cond_13

    .line 56
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final espionageMission_ReportEndTurn(I)I
    .registers 4
    .param p1, "iCivID"    # I

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v1, :cond_1f

    .line 65
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v1, p1, :cond_1c

    .line 66
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportExpiresTurnID:I

    return v1

    .line 64
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final removeEspionageMission(I)V
    .registers 4
    .param p1, "iRemoveCivID"    # I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v1, :cond_1a

    .line 46
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v1, p1, :cond_17

    .line 47
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    return-void

    .line 45
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method public final removeExpiredEspionageMissions()V
    .registers 4

    .line 33
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-lez v0, :cond_28

    .line 34
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 35
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportExpiresTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v1, v2, :cond_1d

    .line 36
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 40
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    .line 42
    :cond_28
    return-void
.end method
