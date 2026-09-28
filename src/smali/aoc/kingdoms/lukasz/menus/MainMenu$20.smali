.class Laoc/kingdoms/lukasz/menus/MainMenu$20;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .line 427
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu$20;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 9

    .line 429
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 430
    .local v0, "var10000":Laoc/kingdoms/lukasz/menu/MenuManager;
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu$20$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$20;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$20;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$20;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$20;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$20;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$20;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$20;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$20;->getHeight()I

    move-result v6

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu$20$1;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu$20;IIII)V

    invoke-static {v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 435
    return-void
.end method

.method public buildElementHover()V
    .registers 2

    .line 438
    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu;->getHoverAbout()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu$20;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 439
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 442
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$20;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p1, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_d

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    :goto_d
    return-object v0
.end method
