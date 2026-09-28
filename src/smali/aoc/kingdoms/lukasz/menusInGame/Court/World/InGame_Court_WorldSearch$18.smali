.class Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Economy;
.source "InGame_Court_WorldSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;
    .param p2, "nProvinceID"    # I
    .param p3, "sText"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "nPosX"    # I
    .param p6, "nPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I

    .line 739
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Economy;-><init>(ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 8

    .line 752
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->actionEconomy(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 753
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 760
    :cond_42
    return-void
.end method

.method public buildElementHover()V
    .registers 3

    .line 747
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->iProvinceID:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverEconomy(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 748
    return-void
.end method

.method public getSFX()I
    .registers 2

    .line 742
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getEconomy()I

    move-result v0

    return v0
.end method
