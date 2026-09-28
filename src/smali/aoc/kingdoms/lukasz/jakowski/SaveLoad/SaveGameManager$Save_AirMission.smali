.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_AirMission"
.end annotation


# instance fields
.field public airhqKey:Ljava/lang/String;

.field public aliveIDs:Ljava/util/List;

.field public animElapsedMs:J

.field public assignedIDs:Ljava/util/List;

.field public attackRoundsExecuted:I

.field public civID:I

.field public distanceToTarget:I

.field public enemyAircraftShotDown:I

.field public flightProgress:F

.field public lingerRounds:I

.field public lostIDs:Ljava/util/List;

.field public maxAttackRounds:I

.field public maxLingerRounds:I

.field public missionID:J

.field public roundsInFlight:I

.field public sourceProvinceID:I

.field public state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public targetAirUnitIDs:Ljava/util/List;

.field public targetArmyID:I

.field public targetProvinceID:I

.field public totalDamageDealt:F

.field public type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->assignedIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->aliveIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirMission;->lostIDs:Ljava/util/List;

    return-void
.end method
