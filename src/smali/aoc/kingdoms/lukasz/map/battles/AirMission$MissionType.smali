.class public final enum Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
.super Ljava/lang/Enum;
.source "AirMission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

.field public static final enum AIR_SUPERIORITY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

.field public static final enum ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

.field public static final enum INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

.field public static final enum PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

.field public static final enum STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    const-string v1, "PATROL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    const-string v1, "INTERCEPT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    const-string v1, "ATTACK_ARMY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    const-string v1, "STRATEGIC_BOMBING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    const-string v1, "AIR_SUPERIORITY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->AIR_SUPERIORITY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    const/4 v0, 0x5

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    aput-object v1, v0, v3

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    aput-object v1, v0, v4

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    aput-object v1, v0, v5

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->AIR_SUPERIORITY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    aput-object v1, v0, v6

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    .registers 2

    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    .registers 1

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    return-object v0
.end method
