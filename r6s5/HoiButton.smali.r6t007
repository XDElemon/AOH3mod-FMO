.class public Laoc/kingdoms/lukasz/menus/HoiButton;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "HoiButton.java"


# instance fields
.field private actionMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 16
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "mode"    # I

    move-object v0, p0
    move-object v1, p1
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I
    const/4 v3, -0x1
    move v4, p2
    move v5, p3
    move v6, p4
    move v7, p5
    const/4 v8, 0x1
    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIIZ)V

    iput p6, p0, Laoc/kingdoms/lukasz/menus/HoiButton;->actionMode:I

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    iget v0, p0, Laoc/kingdoms/lukasz/menus/HoiButton;->actionMode:I

    if-eqz v0, :m_continue

    const/4 v1, 0x1
    if-eq v0, v1, :m_newgame

    const/4 v1, 0x2
    if-eq v0, v1, :m_load

    const/4 v1, 0x3
    if-eq v0, v1, :m_settings
    invoke-static {}, Laoc/kingdoms/lukasz/menus/HoiBox;->closeBox()V
    return-void

    :m_settings

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->MAINMENU:Laoc/kingdoms/lukasz/menu/View;
    sput-object v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->goBackToMenu:Laoc/kingdoms/lukasz/menu/View;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SETTINGS:Laoc/kingdoms/lukasz/menu/View;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V
    return-void

    :m_continue
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGame()V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;
    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;
    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I
    if-eq v0, v1, :cond_mc
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;
    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V
    :cond_mc
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawExtraDetails()V
    return-void

    :m_newgame
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIOS:Laoc/kingdoms/lukasz/menu/View;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_Scenarios()V
    return-void

    :m_load
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_GAMES_LIST:Laoc/kingdoms/lukasz/menu/View;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    if-eqz p4, :cond_hover

    const v0, 0x3e851eb8
    const v1, 0x3e8a3d71
    const v2, 0x3ea3d70a
    const v3, 0x3f733333
    goto :set_color

    :cond_hover
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/HoiButton;->getIsHovered()Z
    move-result v9
    if-eqz v9, :cond_normal

    const v0, 0x3e4ccccd
    const v1, 0x3e570a3d
    const v2, 0x3e800000
    const v3, 0x3f6b851f
    goto :set_color

    :cond_normal
    const v0, 0x3e051eb8
    const v1, 0x3e0f5c29
    const v2, 0x3e2e147b
    const v3, 0x3f6147ae

    :set_color
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;
    move-object v5, p1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/HoiButton;->getPosX()I
    move-result v6
    add-int v6, v6, p2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/HoiButton;->getPosY()I
    move-result v7
    add-int v7, v7, p3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/HoiButton;->getWidth()I
    move-result v8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/HoiButton;->getHeight()I
    move-result v9
    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    return-void
.end method
