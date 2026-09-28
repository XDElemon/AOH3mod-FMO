.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_Airport"
.end annotation


# instance fields
.field public buildQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;",
            ">;"
        }
    .end annotation
.end field

.field public buildTurnsRemaining:I

.field public buildTurnsTotal:I

.field public buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public civID:I

.field public level:I

.field public maxCapacity:I

.field public mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

.field public prefPayload:I

.field public provinceID:I

.field public radarRange:F

.field public strikePaused:Z

.field public totalAircraft:I

.field public totalLost:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->strikePaused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
