.class public Laoc/kingdoms/lukasz/menu/HoverManager;
.super Ljava/lang/Object;
.source "HoverManager.java"


# static fields
.field public static HOVER_MOBILE_TIME_VISIBLE:I

.field protected static hoverMobileTime:J

.field public static hoverTime:J


# instance fields
.field public hoverActiveMenuElementID:I

.field public hoverActiveMenuTitleCloseHovered:Z

.field public hoverActiveMenuTitleID:I

.field public hoverActiveSliderMenuID:I

.field public lHoverLoadedTemporaryImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverTime:J

    .line 27
    sput-wide v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverMobileTime:J

    .line 28
    const/16 v0, 0x61a8

    sput v0, Laoc/kingdoms/lukasz/menu/HoverManager;->HOVER_MOBILE_TIME_VISIBLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    .line 22
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleCloseHovered:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final actionMove_Hover(IIZ)Z
    .registers 11
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "updateHoveredElementAfterScrollingTheMenu"    # Z

    .line 82
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    if-eqz v0, :cond_e

    .line 83
    return v1

    .line 87
    :cond_e
    :try_start_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 88
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    .line 89
    return v2

    .line 92
    :cond_1d
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    .line 93
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleCloseHovered:Z

    .line 95
    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_163

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I
    :try_end_28
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e .. :try_end_28} :catch_581
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_28} :catch_57c

    if-ltz v0, :cond_163

    .line 97
    :try_start_2a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_15b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 98
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    if-eq v0, v3, :cond_15b

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_15e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 101
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v3

    add-int/2addr v0, v3

    if-lt p1, v0, :cond_15e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 102
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_15e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 103
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v3

    add-int/2addr v0, v3

    if-lt p2, v0, :cond_15e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 104
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v3

    add-int/2addr v0, v3

    if-gt p2, v0, :cond_15e

    .line 106
    return v2

    .line 110
    :cond_15b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_15e} :catch_15f
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2a .. :try_end_15e} :catch_581
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_15e} :catch_57c

    .line 116
    :cond_15e
    goto :goto_163

    .line 112
    :catch_15f
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_160
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V
    :try_end_163
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_160 .. :try_end_163} :catch_581
    .catch Ljava/lang/NullPointerException; {:try_start_160 .. :try_end_163} :catch_57c

    .line 120
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_163
    :goto_163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_164
    :try_start_164
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_573

    .line 121
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_56f

    .line 122
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v3

    if-lt p1, v3, :cond_405

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 123
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_405

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 124
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    if-lt p2, v3, :cond_405

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 125
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_405

    .line 127
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_217
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v4

    if-ge v3, v4, :cond_3e9

    .line 128
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_3e5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->canBeHovered()Z

    move-result v4

    if-eqz v4, :cond_3e5

    .line 129
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v5

    add-int/2addr v4, v5

    if-lt p1, v4, :cond_3e5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 130
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-gt p1, v4, :cond_3e5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 131
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v5

    add-int/2addr v4, v5

    if-lt p2, v4, :cond_3e5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 132
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v5

    add-int/2addr v4, v5

    if-gt p2, v4, :cond_3e5

    .line 134
    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    if-ne v4, v5, :cond_377

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-eq v4, v3, :cond_3e4

    .line 135
    :cond_377
    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v4, :cond_383

    iget v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v4, :cond_383

    .line 136
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    goto :goto_386

    .line 139
    :cond_383
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->resetAnimation()V

    .line 142
    :goto_386
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    .line 143
    iput v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    .line 145
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v4, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverTime:J

    .line 147
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    iget v5, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    .line 148
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    iget v5, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->buildElementHover()V

    .line 150
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredFlag()V

    .line 152
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    iget v5, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->playSFX_Hovered()Z

    move-result v4

    if-eqz v4, :cond_3e4

    .line 155
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playHover()V

    .line 159
    :cond_3e4
    return v2

    .line 127
    :cond_3e5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_217

    .line 164
    .end local v3    # "j":I
    :cond_3e9
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getLockHoverOverMenuBackground()Z

    move-result v3

    if-eqz v3, :cond_56f

    .line 166
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    .line 167
    return v2

    .line 171
    :cond_405
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    if-eqz v3, :cond_56f

    .line 172
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v3

    if-lt p1, v3, :cond_56f

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 173
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_56f

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 174
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p2, v3, :cond_56f

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 175
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    if-gt p2, v3, :cond_56f

    .line 177
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getCloseable()Z

    move-result v3

    if-eqz v3, :cond_563

    .line 178
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result v3

    if-lt p1, v3, :cond_563

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 179
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v4}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_Width()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_563

    .line 180
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result v3

    if-lt p2, v3, :cond_563

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 181
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v4}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_Height()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_563

    .line 183
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleCloseHovered:Z

    .line 188
    :cond_563
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    .line 190
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I
    :try_end_56e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_164 .. :try_end_56e} :catch_574
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_164 .. :try_end_56e} :catch_581
    .catch Ljava/lang/NullPointerException; {:try_start_164 .. :try_end_56e} :catch_57c

    .line 191
    return v2

    .line 120
    :cond_56f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_164

    .line 200
    .end local v0    # "i":I
    :cond_573
    goto :goto_578

    .line 196
    :catch_574
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_575
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_578
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V
    :try_end_57b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_575 .. :try_end_57b} :catch_581
    .catch Ljava/lang/NullPointerException; {:try_start_575 .. :try_end_57b} :catch_57c

    goto :goto_585

    .line 207
    :catch_57c
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_586

    .line 203
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_581
    move-exception v0

    .line 205
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 211
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_585
    nop

    .line 213
    :goto_586
    return v1
.end method

.method public final getHoveredMenuID_Scroll(II)I
    .registers 8
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    :try_start_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_19a

    .line 221
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_196

    .line 222
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    if-lt p1, v2, :cond_eb

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 223
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_eb

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 224
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    if-lt p2, v2, :cond_eb

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 225
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_eb

    .line 227
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableX()Z

    move-result v2

    if-nez v2, :cond_e4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableY()Z

    move-result v2

    if-eqz v2, :cond_196

    .line 228
    :cond_e4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v1

    return v1

    .line 232
    :cond_eb
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    if-eqz v2, :cond_196

    .line 233
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    if-lt p1, v2, :cond_196

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 234
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_196

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 235
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_196

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 236
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2
    :try_end_193
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_193} :catch_19b

    if-gt p2, v2, :cond_196

    .line 238
    return v1

    .line 220
    :cond_196
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 247
    .end local v0    # "i":I
    :cond_19a
    goto :goto_19f

    .line 243
    :catch_19b
    move-exception v0

    .line 245
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 249
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_19f
    return v1
.end method

.method protected final getMenuElementHover_IsInView()Z
    .registers 3

    .line 310
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_35

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_35

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getMenuElement_Hover_IsNull()Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_28} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_28} :catch_2c

    if-nez v0, :cond_35

    .line 311
    const/4 v0, 0x1

    return v0

    .line 317
    :catch_2c
    move-exception v0

    .line 319
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 313
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_31
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 321
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_35
    nop

    .line 323
    :goto_36
    const/4 v0, 0x0

    return v0
.end method

.method protected final isSomethingHovered()Z
    .registers 4

    .line 298
    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v1, :cond_22

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v1, :cond_22

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1f} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1f} :catch_23

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 301
    :catch_23
    move-exception v1

    .line 302
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 299
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_25
    move-exception v1

    .line 300
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method

.method public final loadHoverLoadedTemporaryImage(Ljava/lang/String;)I
    .registers 7
    .param p1, "sFile"    # Ljava/lang/String;

    .line 376
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-direct {v2, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_1b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1b} :catch_1c

    return v0

    .line 379
    :catch_1c
    move-exception v1

    .line 380
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    const-string v4, "gfx/imageNotFound.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final rebuildHoverAfterRebuildMenu()V
    .registers 3

    .line 36
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_37

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_37

    .line 37
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->buildElementHover()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    .line 42
    :cond_37
    goto :goto_39

    .line 40
    :catch_38
    move-exception v0

    .line 43
    :goto_39
    return-void
.end method

.method public final resetHoverActive_Menu()V
    .registers 4

    .line 328
    const/4 v0, -0x1

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v1, :cond_5f

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v1, :cond_5f

    .line 329
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    .line 330
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->resetElementHover()V

    .line 332
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    .line 333
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    .line 335
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    .line 337
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredFlag()V

    .line 339
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_49
    if-ltz v1, :cond_5e

    .line 340
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 341
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_60

    .line 339
    add-int/lit8 v1, v1, -0x1

    goto :goto_49

    .line 344
    .end local v1    # "i":I
    :cond_5e
    return-void

    .line 348
    :cond_5f
    goto :goto_61

    .line 346
    :catch_60
    move-exception v1

    .line 350
    :goto_61
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    .line 351
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    .line 353
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    .line 354
    return-void
.end method

.method public final resetHoverActive_Menu_Force()V
    .registers 3

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    .line 358
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    .line 360
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    .line 362
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredFlag()V

    .line 365
    :try_start_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_27

    .line 366
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 367
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_28

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 371
    .end local v0    # "i":I
    :cond_27
    goto :goto_2c

    .line 369
    :catch_28
    move-exception v0

    .line 370
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 372
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final udpateMobile()V
    .registers 7

    .line 255
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid:Z

    if-eqz v0, :cond_19

    .line 256
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->getMenuElementHover_IsInView()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-wide v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverMobileTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget v4, Laoc/kingdoms/lukasz/menu/HoverManager;->HOVER_MOBILE_TIME_VISIBLE:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_19

    .line 257
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    .line 260
    :cond_19
    return-void
.end method

.method protected final updateElementHover_Animation()V
    .registers 7

    .line 279
    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3e

    .line 280
    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_TIME:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_INTERVAL:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    .line 282
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    const v4, 0x3fd33333    # 1.65f

    mul-float v3, v3, v4

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    .line 284
    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_36

    .line 285
    sput v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    .line 288
    :cond_36
    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    .line 289
    sput v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    .line 292
    :cond_3e
    return-void
.end method

.method public final updateHoveredElement()V
    .registers 3

    .line 66
    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_51

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_51

    .line 68
    :try_start_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 69
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    if-eq v0, v1, :cond_4f

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateHovered()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4f} :catch_50

    .line 75
    :cond_4f
    goto :goto_51

    .line 73
    :catch_50
    move-exception v0

    .line 77
    :cond_51
    :goto_51
    return-void
.end method

.method public final updateHoveredFlag()V
    .registers 4

    .line 49
    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v1, :cond_28

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v1, :cond_28

    .line 50
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    if-eq v1, v2, :cond_2a

    .line 51
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    goto :goto_2a

    .line 55
    :cond_28
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 60
    :cond_2a
    :goto_2a
    goto :goto_31

    .line 57
    :catch_2b
    move-exception v1

    .line 58
    .local v1, "ex":Ljava/lang/Exception;
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 59
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 61
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method public final updateHoveredMenuElement_Hover(II)V
    .registers 7
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 264
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_4d

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_4d

    .line 265
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateHover(IIII)V
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_43} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_4d

    .line 271
    :catch_44
    move-exception v0

    .line 273
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4e

    .line 267
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_49
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 275
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_4d
    :goto_4d
    nop

    .line 276
    :goto_4e
    return-void
.end method
