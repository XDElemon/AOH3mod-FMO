.class public final enum Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
.super Ljava/lang/Enum;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menus/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menus/Dialog$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CONVERT_RELIGION_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CORE_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum CREATE_SCENARIO_REMOVE_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum DELETE_SAVE:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum ESCAPE_TO_MAIN_MENU:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum EXIT_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum EXIT_SCENARIO_EDITOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum FIRE_ADVISOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum GENERATE_PROVINCE_CONNECTIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum GENERATE_SUGGESTED_CIVILIZATIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum PAUSE_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum REVERSE_WASTELAND:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum TEXT:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

.field public static final enum UNLOCK_LEGACY:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 432
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "EXIT_GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 433
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "PAUSE_GAME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->PAUSE_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 434
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "FIRE_ADVISOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->FIRE_ADVISOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 435
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "UNLOCK_LEGACY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->UNLOCK_LEGACY:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 436
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "REVERSE_WASTELAND"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->REVERSE_WASTELAND:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 437
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "EXIT_SCENARIO_EDITOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_SCENARIO_EDITOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 438
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "DELETE_SAVE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->DELETE_SAVE:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 439
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "CREATE_SCENARIO_REMOVE_CIVILIZATION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_REMOVE_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 440
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "GENERATE_PROVINCE_CONNECTIONS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_PROVINCE_CONNECTIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 441
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "GENERATE_SUGGESTED_CIVILIZATIONS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_SUGGESTED_CIVILIZATIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 442
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "CREATE_SCENARIO_ASSIGN_CIVILIZATION"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 443
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "ESCAPE_TO_MAIN_MENU"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->ESCAPE_TO_MAIN_MENU:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 444
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "CORE_ALL_PROVINCES"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CORE_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 445
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "CONVERT_RELIGION_ALL_PROVINCES"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CONVERT_RELIGION_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 446
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "GO_TO_LINK"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 447
    new-instance v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const-string v1, "TEXT"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->TEXT:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    .line 431
    const/16 v0, 0x10

    new-array v0, v0, [Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->PAUSE_GAME:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->FIRE_ADVISOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v4

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->UNLOCK_LEGACY:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v5

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->REVERSE_WASTELAND:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v6

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->EXIT_SCENARIO_EDITOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v7

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->DELETE_SAVE:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v8

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_REMOVE_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v9

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_PROVINCE_CONNECTIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v10

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GENERATE_SUGGESTED_CIVILIZATIONS:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v11

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CREATE_SCENARIO_ASSIGN_CIVILIZATION:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v12

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->ESCAPE_TO_MAIN_MENU:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v13

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CORE_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v14

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->CONVERT_RELIGION_ALL_PROVINCES:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->TEXT:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    aput-object v1, v0, v15

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->$VALUES:[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 450
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 431
    const-class v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;
    .registers 1

    .line 431
    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->$VALUES:[Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    return-object v0
.end method
