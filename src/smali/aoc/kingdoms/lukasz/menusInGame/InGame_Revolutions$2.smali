.class Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;
.source "InGame_Revolutions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "fontID"    # I

    .line 91
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElementPPM()V
    .registers 3

    .line 111
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 112
    return-void
.end method

.method public buildElementHover()V
    .registers 3

    .line 96
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;->id:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverPopulation(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 97
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 106
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorPopulation(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public setCurrent(I)V
    .registers 2
    .param p1, "nCurrent"    # I

    .line 101
    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;->id:I

    .line 102
    return-void
.end method
