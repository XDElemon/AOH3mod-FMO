.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Infrastructure;
.source "InGame_ProvinceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;ILjava/lang/String;IIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;
    .param p2, "nProvinceID"    # I
    .param p3, "sText"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "nPosX"    # I
    .param p6, "nPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I

    .line 1035
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Infrastructure;-><init>(ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 8

    .line 1043
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->actionInfrastructure(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1044
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 1051
    :cond_42
    return-void
.end method

.method public actionElementPPM()V
    .registers 1

    .line 1060
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->actionInfrastructure()V

    .line 1061
    return-void
.end method

.method public buildElementHover()V
    .registers 3

    .line 1055
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->iProvinceID:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverInfrastructure(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1056
    return-void
.end method

.method public getSFX()I
    .registers 2

    .line 1038
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getInfrastructure()I

    move-result v0

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"    # Z

    .line 1080
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Infrastructure;->setIsHovered(Z)V

    .line 1082
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->PROVINCE_INFO_HOVER_INFRASTRUCTURE:Z

    if-eqz v0, :cond_24

    .line 1083
    if-nez p1, :cond_24

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

    if-ne v0, v1, :cond_24

    .line 1084
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 1087
    :cond_24
    return-void
.end method

.method public updateHovered()V
    .registers 6

    .line 1065
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Infrastructure;->updateHovered()V

    .line 1067
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->PROVINCE_INFO_HOVER_INFRASTRUCTURE:Z

    if-eqz v0, :cond_35

    .line 1068
    sget-wide v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverTime:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-wide v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->HOVER_TIME:J

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_35

    .line 1069
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$18;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1070
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_35

    .line 1071
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 1076
    :cond_35
    return-void
.end method
