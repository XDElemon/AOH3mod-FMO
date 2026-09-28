.class public final enum Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;
.super Ljava/lang/Enum;
.source "EditorMap_CivSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

.field public static final enum FORMABLE_CIV:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

.field public static final enum FORMABLE_CLAIMANT:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;
    .registers 3

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->FORMABLE_CIV:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->FORMABLE_CLAIMANT:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    const-string v1, "FORMABLE_CIV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->FORMABLE_CIV:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    .line 49
    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    const-string v1, "FORMABLE_CLAIMANT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->FORMABLE_CLAIMANT:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    .line 47
    invoke-static {}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->$values()[Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->$VALUES:[Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;
    .registers 1

    .line 47
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->$VALUES:[Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_CivSelect$SelectMode;

    return-object v0
.end method
