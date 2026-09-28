.class public Laoc/kingdoms/lukasz/menu/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu/Menu$MenuClose;
    }
.end annotation


# instance fields
.field private final COLOR_SCROLL_POSITION:Lcom/badlogic/gdx/graphics/Color;

.field private final COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

.field private final COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

.field public final SCROLL_MENU_UPDATE:F

.field private closeable:Z

.field public drawScrollPositionAlways:Z

.field public drawScrollPositionAlways2:Z

.field private fScrollNewMenuPosX:F

.field private fScrollNewMenuPosY:F

.field private iHeight:I

.field private iMaxSliderPositionX:I

.field protected iMaxSliderPositionY:I

.field private iMenuElementsSize:I

.field private iMenuPosX:I

.field private iMenuPosY:I

.field private iNewMenuPositionX:I

.field private iNewMenuPositionY:I

.field private iPosX:I

.field private iPosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iWidth:I

.field private lockHoverOverMenuBackground:Z

.field public menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

.field private menuElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;"
        }
    .end annotation
.end field

.field private menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

.field public scrollExtraPosX:I

.field private scrollModeX:Z

.field private scrollModeY:Z

.field private scrollableX:Z

.field private scrollableY:Z

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->lockHoverOverMenuBackground:Z

    .line 42
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->closeable:Z

    .line 86
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    .line 93
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    .line 98
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    .line 101
    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    .line 103
    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    .line 105
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    .line 108
    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    .line 110
    iput v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    .line 226
    const v2, 0x3f7851ec    # 0.97f

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->SCROLL_MENU_UPDATE:F

    .line 318
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways:Z

    .line 319
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways2:Z

    .line 320
    iput v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    .line 322
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da0a0a1

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3d20a0a1

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION:Lcom/badlogic/gdx/graphics/Color;

    .line 323
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e70f0f1

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3f028283

    const v4, 0x3ed8d8d9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

    .line 324
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8c8c8d

    const v2, 0x3f19999a    # 0.6f

    const v4, 0x3ef0f0f1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menu/Menu;)Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu/Menu;

    .line 18
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    return-object v0
.end method

.method private drawView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 277
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 278
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 279
    return-void
.end method

.method private final getMenuElementIsInView_X(I)Z
    .registers 5
    .param p1, "i"    # I

    .line 443
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 444
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    if-lt v0, v1, :cond_33

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_bb

    :cond_33
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 445
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    if-le v0, v1, :cond_80

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_bb

    .line 447
    :cond_80
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_bd

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_bd

    :cond_bb
    const/4 v0, 0x1

    goto :goto_be

    :cond_bd
    const/4 v0, 0x0

    .line 443
    :goto_be
    return v0
.end method

.method private final getMenuElementIsInView_Y(I)Z
    .registers 5
    .param p1, "i"    # I

    .line 433
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 434
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_33

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 435
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_c0

    :cond_33
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 436
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_80

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 437
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_c0

    :cond_80
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 439
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    if-gt v0, v1, :cond_c2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_c2

    :cond_c0
    const/4 v0, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v0, 0x0

    .line 433
    :goto_c3
    return v0
.end method

.method private final resetScrollINFO()V
    .registers 2

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    .line 633
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 2

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 552
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu_Sound()V

    .line 553
    return-void
.end method

.method public actionCloseMenu_Sound()V
    .registers 3

    .line 556
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 557
    return-void
.end method

.method public actionElement(I)V
    .registers 3
    .param p1, "nMenuElementID"    # I

    .line 532
    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->actionElement()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 535
    goto :goto_c

    .line 533
    :catch_8
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 536
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public actionElementPPM(I)V
    .registers 3
    .param p1, "nMenuElementID"    # I

    .line 540
    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->actionElementPPM()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 543
    goto :goto_c

    .line 541
    :catch_8
    move-exception v0

    .line 542
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 544
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z

    .line 282
    invoke-virtual {p0, p1, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V

    .line 284
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 285
    return-void
.end method

.method public closeMenu()V
    .registers 1

    .line 889
    return-void
.end method

.method public disableButtons()V
    .registers 1

    .line 888
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 893
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->dispose()V

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 895
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 272
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->drawView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 273
    return-void
.end method

.method public final drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "menuIsActive"    # Z

    .line 497
    if-eqz p2, :cond_3f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenuResizeMode()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMoveMenu_ByTitleMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 498
    :cond_12
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 499
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->patt:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->patt:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    neg-int v4, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 500
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 502
    :cond_3f
    return-void
.end method

.method public drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "isHovered"    # Z

    .line 507
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getCloseMenuMode()Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p4, :cond_22

    .line 508
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btnh_close:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    .line 509
    invoke-interface {v1}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    .line 510
    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result v2

    add-int/2addr v2, p3

    .line 508
    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_66

    .line 512
    :cond_22
    if-eqz p5, :cond_4f

    .line 513
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ed9999a    # 0.425f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 515
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btnh_close:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    .line 516
    invoke-interface {v1}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    .line 517
    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result v2

    add-int/2addr v2, p3

    .line 515
    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 519
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_66

    .line 522
    :cond_4f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    .line 523
    invoke-interface {v1}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    .line 524
    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result v2

    add-int/2addr v2, p3

    .line 522
    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 526
    :goto_66
    return-void
.end method

.method public drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "nMenuElementID"    # I

    .line 310
    :try_start_0
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenuElementID()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsActive(ZI)Z

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->drawMenuElementHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 313
    goto :goto_1e

    .line 311
    :catch_1d
    move-exception v0

    .line 314
    :goto_1e
    return-void
.end method

.method public drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z

    .line 288
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 290
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu_Scroll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 291
    return-void
.end method

.method public final drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 472
    const v0, 0x3e48b439

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 473
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 474
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v13

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 475
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    const/4 v5, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 476
    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v10

    const/4 v11, -0x1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 477
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 478
    return-void
.end method

.method public final drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z

    .line 403
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_4a

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_49

    .line 405
    :try_start_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 407
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 408
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0, p4, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsActive(ZI)Z

    move-result v6

    iget-boolean v7, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_41} :catch_42

    .line 413
    :cond_41
    goto :goto_46

    .line 411
    :catch_42
    move-exception v1

    .line 412
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_43
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_4a

    .line 403
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 417
    .end local v0    # "i":I
    :cond_49
    goto :goto_4e

    .line 415
    :catch_4a
    move-exception v0

    .line 416
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 418
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4e
    return-void
.end method

.method public final drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 481
    const v0, 0x3e48b439

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 482
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenuResizeLEFT()Z

    move-result v0

    const v6, 0x3eb33333    # 0.35f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_80

    .line 483
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v4

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v4, v4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 485
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v7, v7, v7, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 486
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto/16 :goto_108

    .line 488
    :cond_80
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v2, v2, v3

    sub-int v2, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v4

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v4, v4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 490
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v7, v7, v7, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 491
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 493
    :goto_108
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 494
    return-void
.end method

.method public drawMenu_Scroll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z

    .line 294
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionX(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 295
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionY(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 296
    return-void
.end method

.method public drawScrollPositionX(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z

    .line 367
    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways:Z

    if-nez v0, :cond_6

    if-eqz p4, :cond_148

    :cond_6
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    if-eqz v0, :cond_148

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    if-ge v0, v1, :cond_148

    .line 372
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenu_MoveInnerElements()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 373
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_25

    .line 375
    :cond_20
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 378
    :goto_25
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 379
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v2, v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int v3, v0, p2

    .line 380
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    mul-int v2, v2, v4

    div-int/lit8 v2, v2, 0x64

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    .line 381
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    .line 382
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    mul-int v0, v0, v2

    div-int/lit8 v0, v0, 0x64

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    .line 378
    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    .line 385
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 386
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int v2, v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    .line 387
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    .line 388
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    .line 389
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    .line 385
    const/high16 v7, -0x3d4c0000    # -90.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 392
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_148} :catch_149

    .line 396
    :cond_148
    goto :goto_14a

    .line 394
    :catch_149
    move-exception v0

    .line 397
    :goto_14a
    return-void
.end method

.method public drawScrollPositionY(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z

    .line 328
    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways2:Z

    if-eqz v0, :cond_177

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    if-eqz v0, :cond_177

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    if-ge v0, v1, :cond_177

    .line 334
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenu_MoveInnerElements()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 335
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_23

    .line 337
    :cond_1e
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 340
    :goto_23
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 341
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v3, v0, p2

    .line 342
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int v2, v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 344
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    mul-int v0, v0, v2

    div-int/lit8 v0, v0, 0x64

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v6, v0, v2

    .line 340
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 346
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 347
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v3, v0, p2

    .line 348
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int v2, v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v2, v4

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    mul-int v2, v2, v4

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    .line 349
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    .line 346
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 352
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v3, v0, p2

    .line 354
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int v2, v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 356
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    mul-int v0, v0, v2

    div-int/lit8 v6, v0, 0x64

    .line 352
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 358
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_177} :catch_178

    .line 362
    :cond_177
    goto :goto_17c

    .line 360
    :catch_178
    move-exception v0

    .line 361
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 363
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_17c
    return-void
.end method

.method public drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 457
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-eqz v0, :cond_1b

    .line 458
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v5

    move-object v2, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 461
    :cond_1b
    if-eqz p4, :cond_37

    .line 462
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenuResizeMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 463
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 464
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_37

    .line 465
    :cond_2c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMoveMenu_ByTitleMode()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 466
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 469
    :cond_37
    :goto_37
    return-void
.end method

.method public endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 299
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 301
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 303
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getCloseable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 304
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->CLOSE_HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    if-ne p5, v0, :cond_13

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_15
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/Menu;->drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 306
    :cond_1d
    return-void
.end method

.method public extraAction()V
    .registers 1

    .line 267
    return-void
.end method

.method public final getCloseable()Z
    .registers 2

    .line 855
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->closeable:Z

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 789
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    return v0
.end method

.method public final getLockHoverOverMenuBackground()Z
    .registers 2

    .line 885
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->lockHoverOverMenuBackground:Z

    return v0
.end method

.method public final getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;
    .registers 3
    .param p1, "iID"    # I

    .line 694
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    return-object v0
.end method

.method public getMenuElementIsActive(ZI)Z
    .registers 5
    .param p1, "menuIsActive"    # Z
    .param p2, "i"    # I

    .line 451
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenuElementID()I

    move-result v1

    if-ne p2, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public final getMenuElementsSize()I
    .registers 2

    .line 690
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    return v0
.end method

.method public getMenuPosX()I
    .registers 2

    .line 843
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    return v0
.end method

.method public getMenuPosY()I
    .registers 2

    .line 823
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    return v0
.end method

.method public final getMinHeight()I
    .registers 3

    .line 807
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getMinWidth()I
    .registers 3

    .line 782
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    return v0

    .line 783
    :catch_3
    move-exception v0

    .line 784
    .local v0, "ex":Ljava/lang/Exception;
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    return v1
.end method

.method public final getMoveable()Z
    .registers 2

    .line 859
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getMoveable()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public final getNewMenuPosX()I
    .registers 2

    .line 831
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    return v0
.end method

.method public final getNewMenuPosY()I
    .registers 2

    .line 827
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    return v0
.end method

.method public getPosX()I
    .registers 2

    .line 703
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 724
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    return v0
.end method

.method public final getResizable()Z
    .registers 2

    .line 863
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getResizable()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public final getScrollModeY()Z
    .registers 2

    .line 881
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    return v0
.end method

.method public final getScrollPosY()I
    .registers 2

    .line 872
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    return v0
.end method

.method public final getScrollableX()Z
    .registers 2

    .line 835
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    return v0
.end method

.method public final getScrollableY()Z
    .registers 2

    .line 815
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    return v0
.end method

.method public final getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .registers 2

    .line 811
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    .line 847
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 738
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    return v0
.end method

.method public initCloseMenu()V
    .registers 2

    .line 52
    new-instance v0, Laoc/kingdoms/lukasz/menu/Menu$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/Menu$1;-><init>(Laoc/kingdoms/lukasz/menu/Menu;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    .line 77
    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;)V
    .registers 18
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    .line 116
    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V
    .registers 19
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;Z)V"
        }
    .end annotation

    .line 119
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    .line 120
    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V
    .registers 20
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "visible"    # Z
    .param p8, "closeable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZ)V"
        }
    .end annotation

    .line 123
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    .line 124
    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V
    .registers 15
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "visible"    # Z
    .param p8, "initWithBackButton"    # Z
    .param p9, "closeable"    # Z
    .param p10, "lockHoverOverMenuBackground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 145
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    iput p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    .line 146
    iput p3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    .line 147
    iput p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    .line 148
    iput p5, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    .line 150
    iput-boolean p9, p0, Laoc/kingdoms/lukasz/menu/Menu;->closeable:Z

    .line 151
    iput-boolean p7, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    .line 153
    iput-boolean p10, p0, Laoc/kingdoms/lukasz/menu/Menu;->lockHoverOverMenuBackground:Z

    .line 155
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    .line 156
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    .line 158
    if-eqz p8, :cond_96

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "tempMaxY":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge v1, v2, :cond_56

    .line 162
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_53

    .line 163
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    .line 161
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 167
    .end local v1    # "i":I
    :cond_56
    const/4 v1, 0x0

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 169
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v2, p5, v2

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_81

    .line 170
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    goto :goto_96

    .line 172
    :cond_81
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 176
    .end local v0    # "tempMaxY":I
    :cond_96
    :goto_96
    iput-object p6, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    .line 178
    if-eqz p9, :cond_9d

    .line 179
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->initCloseMenu()V

    .line 182
    :cond_9d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    .line 183
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    .line 185
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 186
    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;)V
    .registers 18
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    .line 128
    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V
    .registers 19
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "closeable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;Z)V"
        }
    .end annotation

    .line 131
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    .line 132
    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V
    .registers 20
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "visible"    # Z
    .param p8, "closeable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZ)V"
        }
    .end annotation

    .line 135
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    .line 136
    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZ)V
    .registers 21
    .param p1, "menuTitle"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p7, "visible"    # Z
    .param p8, "closeable"    # Z
    .param p9, "lockHoverOverMenuBackground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 139
    .local p6, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    .line 140
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 546
    return-void
.end method

.method public onHovered()V
    .registers 1

    .line 559
    return-void
.end method

.method public onMenuPressed()V
    .registers 1

    .line 548
    return-void
.end method

.method public final scrollTheMenu()V
    .registers 6

    .line 610
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    const/4 v1, 0x1

    const v2, 0x3fb9999a    # 1.45f

    if-eqz v0, :cond_30

    .line 611
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    if-lez v0, :cond_30

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    if-lez v0, :cond_30

    .line 612
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v4, v4, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_30

    .line 613
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    .line 614
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    .line 619
    :cond_30
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    if-eqz v0, :cond_54

    .line 620
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    if-lez v0, :cond_54

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    if-lez v0, :cond_54

    .line 621
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_54

    .line 622
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    .line 623
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    .line 628
    :cond_54
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;->resetScrollINFO()V

    .line 629
    return-void
.end method

.method public setHeight(I)V
    .registers 6
    .param p1, "iHeight"    # I

    .line 793
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    .line 795
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinHeight()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 796
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    .line 799
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-lt v0, v1, :cond_39

    .line 800
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-eqz v3, :cond_35

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    :cond_35
    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    .line 803
    :cond_39
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    .line 804
    return-void
.end method

.method public final setMenuElement(ILaoc/kingdoms/lukasz/menu_element/MenuElement;)V
    .registers 5
    .param p1, "iID"    # I
    .param p2, "nMenuElement"    # Laoc/kingdoms/lukasz/menu_element/MenuElement;

    .line 698
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 700
    return-void
.end method

.method public final setMenuPosX(I)V
    .registers 2
    .param p1, "iMenuPosX"    # I

    .line 839
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    .line 840
    return-void
.end method

.method public final setMenuPosY(I)V
    .registers 2
    .param p1, "iMenuPosY"    # I

    .line 819
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    .line 820
    return-void
.end method

.method public setPosX(I)V
    .registers 3
    .param p1, "iPosX"    # I

    .line 707
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    .line 708
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    .line 709
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    .line 710
    return-void
.end method

.method public final setPosX_Force(I)V
    .registers 4
    .param p1, "iPosX"    # I

    .line 717
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    .line 718
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    .line 719
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    .line 720
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    .line 721
    return-void
.end method

.method public setPosX_Just(I)V
    .registers 2
    .param p1, "iPosX"    # I

    .line 713
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    .line 714
    return-void
.end method

.method public setPosY(I)V
    .registers 3
    .param p1, "iPosY"    # I

    .line 728
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    .line 729
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    .line 730
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    .line 731
    return-void
.end method

.method public setPosY_Just(I)V
    .registers 2
    .param p1, "iPosY"    # I

    .line 734
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    .line 735
    return-void
.end method

.method public final setScrollPosX(I)V
    .registers 3
    .param p1, "iScrollPosX"    # I

    .line 876
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    .line 877
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    .line 878
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 3
    .param p1, "iScrollPosY"    # I

    .line 867
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    .line 868
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    .line 869
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 851
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    .line 852
    return-void
.end method

.method public setWidth(I)Z
    .registers 4
    .param p1, "iWidth"    # I

    .line 742
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_16

    .line 743
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 744
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    .line 756
    const/4 v0, 0x0

    return v0

    .line 746
    :cond_13
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    .line 748
    return v1

    .line 752
    :cond_16
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    .line 753
    return v1
.end method

.method public setWidth_Resize(I)Z
    .registers 5
    .param p1, "iWidth"    # I

    .line 760
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2c

    .line 761
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_1e

    .line 762
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result p1

    .line 763
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    .line 765
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    .line 766
    const/4 v0, 0x0

    return v0

    .line 768
    :cond_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    .line 769
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    .line 770
    return v1

    .line 774
    :cond_2c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    .line 775
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    .line 776
    return v1
.end method

.method public final stopScrolling()V
    .registers 2

    .line 636
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;->resetScrollINFO()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    .line 638
    return-void
.end method

.method public update()V
    .registers 6

    .line 229
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    const v1, 0x3f7851ec    # 0.97f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_26

    .line 230
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_24

    .line 231
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    float-to-int v4, v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    .line 232
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    goto :goto_26

    .line 234
    :cond_24
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    .line 238
    :cond_26
    :goto_26
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    if-eqz v0, :cond_46

    .line 239
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_44

    .line 240
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    .line 241
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    goto :goto_46

    .line 243
    :cond_44
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    .line 247
    :cond_46
    :goto_46
    const/4 v0, 0x0

    .line 249
    .local v0, "updateMenuElementsInView":Z
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    if-eqz v1, :cond_56

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    if-eq v1, v2, :cond_56

    .line 250
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_56
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    if-eq v1, v2, :cond_61

    .line 256
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    .line 258
    const/4 v0, 0x1

    .line 262
    :cond_61
    if-eqz v0, :cond_66

    .line 263
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    .line 265
    :cond_66
    return-void
.end method

.method public final updateButtonWidth(III)I
    .registers 7
    .param p1, "iButtonID"    # I
    .param p2, "iStartPosX"    # I
    .param p3, "iMinWidth"    # I

    .line 673
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    if-le v0, p3, :cond_24

    .line 674
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    goto :goto_2b

    .line 676
    :cond_24
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    .line 679
    :goto_2b
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 681
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    .line 683
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    return v0
.end method

.method public updateLanguage()V
    .registers 3

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 219
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateLanguage()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_12

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v0    # "i":I
    :cond_11
    goto :goto_16

    .line 221
    :catch_12
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 224
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .registers 4

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge v0, v1, :cond_22

    .line 422
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsInView_Y(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsInView_X(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public updateMenuElements_IsInView_X()V
    .registers 4

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge v0, v1, :cond_17

    .line 428
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsInView_X(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public final updateMenuPosX(I)V
    .registers 5
    .param p1, "nMenuPosX"    # I

    .line 565
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_13

    .line 566
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    .line 567
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_37

    .line 568
    :cond_13
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_35

    .line 569
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    sub-int/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    .line 570
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_37

    .line 572
    :cond_35
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    .line 576
    :goto_37
    goto :goto_39

    .line 574
    :catch_38
    move-exception v0

    .line 577
    :goto_39
    return-void
.end method

.method public final updateMenuPosY(I)V
    .registers 6
    .param p1, "nMenuPosY"    # I

    .line 581
    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 582
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    .line 583
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 585
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    .line 586
    return-void

    .line 589
    :cond_13
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    const/4 v2, 0x1

    if-le p1, v0, :cond_28

    .line 590
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    .line 591
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 593
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    goto :goto_4e

    .line 595
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_4c

    .line 596
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    sub-int/2addr v0, v3

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    .line 597
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 599
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    goto :goto_4e

    .line 602
    :cond_4c
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 606
    :goto_4e
    goto :goto_50

    .line 604
    :catch_4f
    move-exception v0

    .line 607
    :goto_50
    return-void
.end method

.method public final updateScrollable()V
    .registers 5

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge v1, v2, :cond_7d

    .line 194
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    if-le v2, v3, :cond_42

    .line 195
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    .line 198
    :cond_42
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    if-le v2, v3, :cond_7a

    .line 199
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    .line 193
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 203
    .end local v1    # "i":I
    :cond_7d
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_88

    const/4 v1, 0x1

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    .line 204
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    if-le v1, v2, :cond_92

    const/4 v0, 0x1

    :cond_92
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    .line 206
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    if-eqz v0, :cond_9d

    .line 207
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    .line 209
    :cond_9d
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    if-eqz v0, :cond_a6

    .line 210
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    .line 212
    :cond_a6
    return-void
.end method

.method public final updatedButtonsWidth(II)V
    .registers 6
    .param p1, "iStartPosX"    # I
    .param p2, "iMinWidth"    # I

    .line 643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 644
    invoke-virtual {p0, v0, p1, p2}, Laoc/kingdoms/lukasz/menu/Menu;->updateButtonWidth(III)I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    .end local v0    # "i":I
    :cond_12
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    .line 648
    return-void
.end method

.method public final updatedButtonsWidthFromToID(IIII)V
    .registers 8
    .param p1, "iStartButtonID"    # I
    .param p2, "iEndButtonID"    # I
    .param p3, "iStartPosX"    # I
    .param p4, "iMinWidth"    # I

    .line 659
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 660
    invoke-virtual {p0, v0, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->updateButtonWidth(III)I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    .end local v0    # "i":I
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    .line 664
    return-void
.end method

.method public final updatedButtonsWidth_Padding(III)V
    .registers 6
    .param p1, "iStartPosX"    # I
    .param p2, "iMinWidth"    # I
    .param p3, "iPadding"    # I

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 652
    invoke-virtual {p0, v0, p1, p2}, Laoc/kingdoms/lukasz/menu/Menu;->updateButtonWidth(III)I

    move-result v1

    add-int/2addr v1, p3

    add-int/2addr p1, v1

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 655
    .end local v0    # "i":I
    :cond_10
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    .line 656
    return-void
.end method
