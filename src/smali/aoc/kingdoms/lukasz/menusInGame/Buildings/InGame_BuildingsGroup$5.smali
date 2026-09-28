.class Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$5;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;
.source "InGame_BuildingsGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z
    .param p6, "imageID"    # I

    .line 151
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$5;->this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public action()V
    .registers 2

    .line 164
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBuildings()V

    .line 165
    return-void
.end method

.method public getTime()J
    .registers 3

    .line 154
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    return-wide v0
.end method

.method public onHovered()V
    .registers 2

    .line 159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBuildings()V

    .line 160
    return-void
.end method
