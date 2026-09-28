.class public final enum Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
.super Ljava/lang/Enum;
.source "AirUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public static final enum ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public static final enum BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public static final enum FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public static final enum INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const-string v1, "INTERCEPTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const-string v1, "FIGHTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const-string v1, "BOMBER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const-string v1, "ATTACKER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v0, 0x4

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v1, v0, v3

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v1, v0, v4

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v1, v0, v5

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .registers 2

    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .registers 1

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->$VALUES:[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    return-object v0
.end method
