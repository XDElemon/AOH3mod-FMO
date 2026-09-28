.class public final enum Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;
.super Ljava/lang/Enum;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PickerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

.field public static final enum CIV_COLOR_INGAME:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

.field public static final enum CIV_COLOR_NEWGAME:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

.field public static final enum CREATE_CIV_DIVISION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

.field public static final enum CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

.field public static final enum CREATE_CIV_OVERLAY:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

.field public static final enum GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

.field public static final enum NONE_ACTION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;
    .registers 3

    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->NONE_ACTION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_DIVISION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_OVERLAY:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CIV_COLOR_NEWGAME:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CIV_COLOR_INGAME:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 85
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const-string v1, "NONE_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->NONE_ACTION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 86
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const-string v1, "GAMECIVS_EDIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 87
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const-string v1, "CREATE_CIV_EDIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 89
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const-string v1, "CREATE_CIV_DIVISION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_DIVISION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 90
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const-string v1, "CREATE_CIV_OVERLAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_OVERLAY:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 92
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const-string v1, "CIV_COLOR_NEWGAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CIV_COLOR_NEWGAME:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 93
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    const-string v1, "CIV_COLOR_INGAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CIV_COLOR_INGAME:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 84
    invoke-static {}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->$values()[Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->$VALUES:[Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 84
    const-class v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;
    .registers 1

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->$VALUES:[Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    return-object v0
.end method
