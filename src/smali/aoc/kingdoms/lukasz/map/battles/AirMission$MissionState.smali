.class public final enum Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;
.super Ljava/lang/Enum;
.source "AirMission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public static final enum ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public static final enum COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public static final enum EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public static final enum EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public static final enum PLANNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public static final enum RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const-string v1, "PLANNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->PLANNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const-string v1, "EN_ROUTE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const-string v1, "EXECUTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const-string v1, "RETURNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const-string v1, "COMPLETED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const-string v1, "ABORTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const/4 v0, 0x6

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->PLANNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    aput-object v1, v0, v3

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    aput-object v1, v0, v4

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    aput-object v1, v0, v5

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    aput-object v1, v0, v6

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    aput-object v1, v0, v7

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;
    .registers 2

    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;
    .registers 1

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    return-object v0
.end method
