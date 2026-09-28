.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$18;
.super Laoc/kingdoms/lukasz/menu_element/IconCourt;
.source "InGame_CourtOptions2.java"


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V
    .registers 11
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "nMenuElementID"    # I
    .param p9, "nWidth_Draw"    # I

    move-object v0, p0

    move-object p0, p2

    move p1, p3

    move p2, p4

    move p3, p5

    move p4, p6

    move p5, p7

    move p6, p8

    move p7, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/IconCourt;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_AirForce()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AirForce(Z)V

    return-void

    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AirForce(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    return-void
.end method
