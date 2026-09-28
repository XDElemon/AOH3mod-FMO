.class public final enum Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
.super Ljava/lang/Enum;
.source "Airport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/map/battles/Airport$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

.field public static final enum AI:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

.field public static final enum OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

.field public static final enum PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    const-string v1, "PATROL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    const-string v1, "OFFENSIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    const-string v1, "AI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->AI:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    aput-object v1, v0, v3

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->AI:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    aput-object v1, v0, v4

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
    .registers 2

    const-class v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
    .registers 1

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    return-object v0
.end method
