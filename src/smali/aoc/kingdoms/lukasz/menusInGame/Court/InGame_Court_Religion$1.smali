.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;
.source "InGame_Court_Religion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;IIIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;
    .param p2, "religionID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I

    .line 78
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 4

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$1;->religionID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getHoverReligion(II)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 82
    return-void
.end method
