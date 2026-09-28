.class public final enum Laoc/kingdoms/lukasz/menu_element/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menu_element/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menu_element/Status;

.field public static final enum ACTIVE:Laoc/kingdoms/lukasz/menu_element/Status;

.field public static final enum CLOSE_HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

.field public static final enum DEFAULT:Laoc/kingdoms/lukasz/menu_element/Status;

.field public static final enum HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/menu_element/Status;
    .registers 3

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Laoc/kingdoms/lukasz/menu_element/Status;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/Status;->DEFAULT:Laoc/kingdoms/lukasz/menu_element/Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/Status;->HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/Status;->CLOSE_HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/Status;->ACTIVE:Laoc/kingdoms/lukasz/menu_element/Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Status;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->DEFAULT:Laoc/kingdoms/lukasz/menu_element/Status;

    .line 5
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Status;

    const-string v1, "HOVERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    .line 6
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Status;

    const-string v1, "CLOSE_HOVERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->CLOSE_HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    .line 7
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Status;

    const-string v1, "ACTIVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->ACTIVE:Laoc/kingdoms/lukasz/menu_element/Status;

    .line 3
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Status;->$values()[Laoc/kingdoms/lukasz/menu_element/Status;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->$VALUES:[Laoc/kingdoms/lukasz/menu_element/Status;

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

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Laoc/kingdoms/lukasz/menu_element/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/Status;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menu_element/Status;
    .registers 1

    .line 3
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->$VALUES:[Laoc/kingdoms/lukasz/menu_element/Status;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menu_element/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menu_element/Status;

    return-object v0
.end method
