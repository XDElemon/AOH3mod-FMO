.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_AirUnit;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_AirUnit"
.end annotation


# instance fields
.field public airportID:I

.field public civID:I

.field public currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

.field public currentPayload:I

.field public fuel:F

.field public hp:F

.field public isAlive:Z

.field public isInFlight:Z

.field public isShotDown:Z

.field public roundsInFlight:I

.field public type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public typeID:I

.field public unitID:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
