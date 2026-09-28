.class Laoc/kingdoms/lukasz/menusInGame/InGame$15;
.super Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;
.source "InGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame;I)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame;
    .param p2, "iconImageID"    # I

    .line 1269
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 1277
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    if-nez v0, :cond_a

    .line 1278
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapTime:J

    .line 1281
    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    .line 1282
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->hideAnimation:Z

    xor-int/2addr v1, v0

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->hideAnimation:Z

    .line 1284
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1286
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    .line 1287
    return-void
.end method

.method public buildElementHover()V
    .registers 7

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    if-nez v4, :cond_15

    const-string v4, "HideMinimap"

    goto :goto_17

    :cond_15
    const-string v4, "ShowMinimap"

    :goto_17
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1313
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1314
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 1323
    if-eqz p1, :cond_5

    .line 1324
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 1325
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1326
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 1329
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->buttonColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getFlipY()Z
    .registers 2

    .line 1301
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getPosX()I
    .registers 3

    .line 1291
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 1296
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 1272
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    return v0
.end method

.method public getVisible()Z
    .registers 2

    .line 1318
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 1334
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
