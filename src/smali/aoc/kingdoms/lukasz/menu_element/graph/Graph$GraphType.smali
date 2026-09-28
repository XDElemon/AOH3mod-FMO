.class public final enum Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;
.super Ljava/lang/Enum;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu_element/graph/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

.field public static final enum PLAYER_BALANCE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

.field public static final enum PLAYER_INCOME:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

.field public static final enum PLAYER_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

.field public static final enum PLAYER_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;
    .registers 3

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_INCOME:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_BALANCE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 125
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const-string v1, "PLAYER_INCOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_INCOME:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    .line 126
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const-string v1, "PLAYER_BALANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_BALANCE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    .line 127
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const-string v1, "PLAYER_POPULATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    .line 128
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const-string v1, "PLAYER_PRESTIGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    .line 124
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->$values()[Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->$VALUES:[Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 124
    const-class v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;
    .registers 1

    .line 124
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->$VALUES:[Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    return-object v0
.end method
