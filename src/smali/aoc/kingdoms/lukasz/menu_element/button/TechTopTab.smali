.class public Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TechTopTab.java"

# instance fields
.field public bSelected:Z

.field public iHomeX:I

.field public iHomeY:I

.field public owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;

.field public sTopID:Ljava/lang/String;

.field public static dbgTBG:I

.field public static dbgDRW:I

# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 16

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    const-string v0, "nTTNEW"
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I
    iput p5, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeY:I

    const/4 v3, 0x0
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z

    move-object v0, p0
    move-object v1, p3
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    const/4 v3, -0x1
    move v4, p4
    move v5, p5
    move v6, p6
    const/4 v7, 0x1
    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIZ)V
    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V

    return-void
.end method

# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12

    sget v0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgDRW:I
    const/4 v1, 0x3
    if-lt v0, v1, :d_go
    goto :d_skip

    :d_go
    add-int/lit8 v1, v0, 0x1
    sput v1, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgDRW:I
    const-string v2, "nTTDRAW call"
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :d_skip
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/button/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    return-void
.end method

.method public actionElement()V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nTTCLICK "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " @"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ","
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->onTopTabClicked(Ljava/lang/String;)V
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 16

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I
    move-result v0
    add-int/2addr v0, p2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I
    move-result v1
    add-int/2addr v1, p3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I
    move-result v2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I
    move-result v3

    # --- nTTD one-shot probe ---
    sget v7, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgTBG:I
    const/4 v8, 0x3
    if-lt v7, v8, :dbg_go
    goto :dbg_skip

    :dbg_go
    add-int/lit8 v8, v7, 0x1
    sput v8, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgTBG:I
    const-string v4, "nTTD id="
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD posX"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I
    move-result v7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD posY"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I
    move-result v7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD w"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD h"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD trX"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    move v7, p2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD trY"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    move v7, p3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD scrX"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    move v7, v0
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD scrY"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    move v7, v1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD pickX"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I
    move-result v7
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I
    move-result v8
    add-int/2addr v7, v8
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD pickY"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I
    move-result v7
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosY()I
    move-result v8
    add-int/2addr v7, v8
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD rectX"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I
    move-result v7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD rectY"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I
    move-result v7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD rectW"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I
    move-result v7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    const-string v4, "nTTD rectH"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I
    move-result v7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :dbg_skip

    iget-boolean v5, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z
    if-nez v5, :db_hover
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;
    const v7, 0x3e99999a
    const v8, 0x3f0ccccd
    const v9, 0x3f4ccccd
    const v10, 0x3f733333
    invoke-direct {v4, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V
    goto :db_fill

    :db_hover
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsHovered()Z
    move-result v5
    if-nez v5, :db_norm
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;
    const v7, 0x3e6147ae
    const v8, 0x3eae147b
    const v9, 0x3ee147ae
    const v10, 0x3f666666
    invoke-direct {v4, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V
    goto :db_fill

    :db_norm
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;
    const v7, 0x3e051eb8
    const v8, 0x3e3851ec
    const v9, 0x3e75c28f
    const v10, 0x3f59999a
    invoke-direct {v4, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :db_fill
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;
    move-object v6, p1
    move v7, v0
    move v8, v1
    move v9, v2
    move v10, v3
    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-boolean v7, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z
    if-nez v7, :db_b2
    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    goto :db_white

    :db_b2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsHovered()Z
    move-result v7
    if-nez v7, :db_white
    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :db_white
    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z
    return-void
.end method
