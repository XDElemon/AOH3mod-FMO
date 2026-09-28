.class Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonIcon;
.source "InGame_Peace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I

    .line 456
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonIcon;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 459
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    .line 460
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iput v1, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    .line 461
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    goto :goto_19

    .line 464
    :cond_10
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iput v2, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    .line 466
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    .line 467
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_PeacePopulation()V

    .line 469
    :goto_19
    return-void
.end method

.method public buildElementHover()V
    .registers 7

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Population"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 481
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 482
    return-void
.end method

.method public isActive()Z
    .registers 3

    .line 486
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
