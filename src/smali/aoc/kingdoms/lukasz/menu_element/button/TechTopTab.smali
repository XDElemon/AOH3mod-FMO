.class public Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TechTopTab.java"

# instance fields
.field public bSelected:Z

.field public iHomeX:I

.field public iHomeY:I

.field public owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;

.field public sTopID:Ljava/lang/String;

# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
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

    return-void
.end method

# virtual methods
.method public actionElement()V
    .registers 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V
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
    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;
    move-object v7, p1
    move v8, v0
    move v9, v1
    move v10, v2
    move v11, v3
    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

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
