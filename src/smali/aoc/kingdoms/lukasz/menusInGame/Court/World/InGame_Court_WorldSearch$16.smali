.class Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Manpower;
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

    .line 689
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Manpower;-><init>(ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 6

    .line 697
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->actionManpower(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 698
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menu/ClickAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getMenuPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getMenuPosY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu/ClickAnimation;-><init>(IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 700
    :cond_3e
    return-void
.end method

.method public buildElementHover()V
    .registers 4

    .line 709
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->iProvinceID:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverManpower(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 710
    return-void
.end method

.method public getImageID()I
    .registers 2

    .line 704
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 692
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickIncreaseManpower()I

    move-result v0

    return v0
.end method
