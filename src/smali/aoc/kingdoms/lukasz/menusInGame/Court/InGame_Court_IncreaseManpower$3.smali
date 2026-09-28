.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect;
.source "InGame_Court_IncreaseManpower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I

    .line 90
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 93
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->CLICK_X_TIMES:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->CLICK_X_TIMES:I

    .line 95
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->CLICK_X_TIMES:I

    if-ge v0, v1, :cond_c

    .line 96
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->CLICK_X_TIMES:I

    .line 98
    :cond_c
    return-void
.end method
