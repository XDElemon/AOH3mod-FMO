.class Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;
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

    .line 422
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

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

    .line 425
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 426
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iput v1, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    .line 427
    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    goto :goto_18

    .line 430
    :cond_f
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iput v2, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    .line 432
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    .line 433
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_PeaceVictoryPoints()V

    .line 435
    :goto_18
    return-void
.end method

.method public buildElementHover()V
    .registers 7

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "VictoryPoints"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 447
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 448
    return-void
.end method

.method public isActive()Z
    .registers 3

    .line 452
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->activeMapModeID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method
