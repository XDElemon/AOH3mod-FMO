.class Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;
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

.field lastValue:F

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

    .line 115
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;-><init>(Ljava/lang/String;IIIII)V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->lastValue:F

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 146
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->actionUnrest(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Revolutions_SavePos()V

    .line 149
    :cond_d
    return-void
.end method

.method public actionElementPPM()V
    .registers 3

    .line 153
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 154
    return-void
.end method

.method public buildElementHover()V
    .registers 4

    .line 131
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->id:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverUnrest(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 132
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 141
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorNegative(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 4

    .line 121
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->lastValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_40

    .line 122
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->lastValue:F

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->lastValue:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->setText(Ljava/lang/String;)V

    .line 126
    :cond_40
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrent(I)V
    .registers 2
    .param p1, "nCurrent"    # I

    .line 136
    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;->id:I

    .line 137
    return-void
.end method
