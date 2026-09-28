.class public final enum Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;
.super Ljava/lang/Enum;
.source "MenuElement_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum GRAPH:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum GRAPH_VERTICAL:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum MINIMAP:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum PIECHART:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum SLIDER:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum TEXT_SCROLLABLE:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

.field public static final enum TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;
    .registers 3

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->SLIDER:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->MINIMAP:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT_SCROLLABLE:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH_VERTICAL:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 5
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "SLIDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->SLIDER:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 7
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "BUTTON_FLAG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 9
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "MINIMAP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->MINIMAP:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 11
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "PIECHART"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 12
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "PIECHART_WITH_STATS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 14
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "TEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 15
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "TEXT_SCROLLABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT_SCROLLABLE:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 18
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "GRAPH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 19
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "GRAPH_VERTICAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH_VERTICAL:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 21
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    const-string v1, "TRANSPARENT_BACKGROUND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 3
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->$values()[Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->$VALUES:[Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;
    .registers 1

    .line 3
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->$VALUES:[Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-object v0
.end method
