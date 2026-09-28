.class public Laoc/kingdoms/lukasz/jakowski/ScrollManager;
.super Ljava/lang/Object;
.source "ScrollManager.java"


# static fields
.field private static final DEFAULT_SCROLL:I = 0xf

.field private static iScroll:I

.field private static lScrollTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    const/16 v0, 0xf

    sput v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    .line 9
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->lScrollTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final getIsScrollableX_MenuHovered(I)Z
    .registers 3
    .param p0, "menuID"    # I

    .line 92
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableX()Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_12

    return v0

    .line 95
    :catch_12
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 93
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_14
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method

.method protected static final getIsScrollableY_MenuHovered(I)Z
    .registers 3
    .param p0, "menuID"    # I

    .line 119
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableY()Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_12

    return v0

    .line 122
    :catch_12
    move-exception v1

    .line 123
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 120
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_14
    move-exception v1

    .line 121
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method

.method protected static final getIsScrollable_Hovered_MenuElement()Z
    .registers 3

    .line 150
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v2, v2, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v2, v2, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getScrollable()Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1d} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1d} :catch_1e

    return v0

    .line 153
    :catch_1e
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 151
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_20
    move-exception v1

    .line 152
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    return v0
.end method

.method protected static final scrollHoveredMenuElement(I)V
    .registers 3
    .param p0, "nChange"    # I

    .line 160
    :try_start_0
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

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->scrollByWheel(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 163
    goto :goto_20

    .line 161
    :catch_1c
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 164
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method protected static final scrollHoveredMenu_X(II)V
    .registers 6
    .param p0, "menuID"    # I
    .param p1, "nChange"    # I

    .line 102
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->stopScrolling()V

    .line 103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    .line 105
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/HoverManager;->actionMove_Hover(IIZ)Z
    :try_end_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3d} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_47

    .line 110
    :catch_3e
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_48

    .line 106
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_47
    nop

    .line 115
    :goto_48
    return-void
.end method

.method protected static final scrollHoveredMenu_Y(II)V
    .registers 6
    .param p0, "menuID"    # I
    .param p1, "nChange"    # I

    .line 130
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->stopScrolling()V

    .line 131
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosY()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/HoverManager;->actionMove_Hover(IIZ)Z
    :try_end_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3d} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_47

    .line 138
    :catch_3e
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_48

    .line 134
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_47
    nop

    .line 143
    :goto_48
    return-void
.end method

.method public static final scrolled(I)Z
    .registers 4
    .param p0, "amount"    # I

    .line 13
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/HoverManager;->getHoveredMenuID_Scroll(II)I

    move-result v0

    .line 15
    .local v0, "isAnyScrollableMenuHovered":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->getIsScrollable_Hovered_MenuElement()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 16
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->updateScroll()V

    .line 17
    sget v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    neg-int v1, v1

    mul-int v1, v1, p0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrollHoveredMenuElement(I)V

    goto :goto_57

    .line 19
    :cond_20
    if-ltz v0, :cond_46

    .line 20
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->getIsScrollableY_MenuHovered(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->updateScroll()V

    .line 22
    sget v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    neg-int v1, v1

    mul-int v1, v1, p0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrollHoveredMenu_Y(II)V

    goto :goto_57

    .line 24
    :cond_34
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->getIsScrollableX_MenuHovered(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 25
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->updateScroll()V

    .line 26
    sget v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    neg-int v1, v1

    mul-int v1, v1, p0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrollHoveredMenu_X(II)V

    goto :goto_57

    .line 37
    :cond_46
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-gez v1, :cond_57

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-gez v1, :cond_57

    .line 38
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->Scroll(I)V

    .line 42
    :cond_57
    :goto_57
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playHover()V
    :try_end_5c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5c} :catch_6c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5c} :catch_67
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_5c} :catch_62
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_5c} :catch_5d

    .end local v0    # "isAnyScrollableMenuHovered":I
    goto :goto_70

    .line 49
    :catch_5d
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/ArithmeticException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_71

    .line 47
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    :catch_62
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/StackOverflowError;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/lang/StackOverflowError;
    goto :goto_70

    .line 45
    :catch_67
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_70

    .line 43
    :catch_6c
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 51
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_70
    nop

    .line 53
    :goto_71
    const/4 v0, 0x1

    return v0
.end method

.method protected static final updateHoveredMenuElement_Hover(II)V
    .registers 6
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 73
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_59

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_59

    .line 74
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

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v2, v2, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v3, v3, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, p0, p1, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateHover(IIII)V
    :try_end_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4f} :catch_55
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_59

    .line 80
    :catch_50
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 76
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_55
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_59
    :goto_59
    nop

    .line 85
    :goto_5a
    return-void
.end method

.method protected static final updateScroll()V
    .registers 5

    .line 57
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->lScrollTime:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_26

    .line 58
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->lScrollTime:J

    .line 59
    sget v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    .line 61
    sget v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    const/16 v1, 0x4b

    if-le v0, v1, :cond_2e

    .line 62
    sput v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    goto :goto_2e

    .line 66
    :cond_26
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->lScrollTime:J

    .line 67
    const/16 v0, 0xf

    sput v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    .line 69
    :cond_2e
    :goto_2e
    return-void
.end method
