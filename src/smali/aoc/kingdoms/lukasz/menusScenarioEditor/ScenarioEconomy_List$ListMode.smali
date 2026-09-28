.class public final enum Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;
.super Ljava/lang/Enum;
.source "ScenarioEconomy_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static final enum AI_AGGRESSIVENESS:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static final enum ECONOMY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static final enum GOLD:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static final enum LEGACY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static final enum MANPOWER:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static final enum NUKES:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

.field public static final enum TAX_EFFICIENCY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;
    .registers 3

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->ECONOMY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->TAX_EFFICIENCY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->MANPOWER:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->GOLD:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->LEGACY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->NUKES:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->AI_AGGRESSIVENESS:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v1, "ECONOMY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->ECONOMY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    .line 40
    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v1, "TAX_EFFICIENCY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->TAX_EFFICIENCY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    .line 41
    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v1, "MANPOWER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->MANPOWER:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    .line 42
    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v1, "GOLD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->GOLD:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    .line 43
    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v1, "LEGACY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->LEGACY:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    .line 44
    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v1, "NUKES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->NUKES:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    .line 45
    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    const-string v1, "AI_AGGRESSIVENESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->AI_AGGRESSIVENESS:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    .line 38
    invoke-static {}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->$values()[Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->$VALUES:[Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;
    .registers 1

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->$VALUES:[Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioEconomy_List$ListMode;

    return-object v0
.end method
