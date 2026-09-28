.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonLegacy.java"


# instance fields
.field public currentLvl:I

.field public iUnlockWidth:I

.field public legacyID:I

.field public sUnlock:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIII)V
    .registers 20
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "legacyID"    # I
    .param p4, "currentLvl"    # I

    .line 39
    move-object v12, p0

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 40
    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    .line 41
    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    .line 43
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 45
    add-int/lit8 v0, v14, 0x1

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v1, v1

    if-ge v0, v1, :cond_71

    .line 46
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Unlock"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->sUnlock:Ljava/lang/String;

    goto :goto_7b

    .line 48
    :cond_71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Max"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->sUnlock:Ljava/lang/String;

    .line 51
    :goto_7b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->sUnlock:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 52
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->iUnlockWidth:I

    .line 53
    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 17

    .line 139
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getText()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Clear;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Unlocked"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v6, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Clear;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 147
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    const/high16 v4, 0x42c80000    # 100.0f

    const-string v6, "%"

    const-string v9, " / "

    const-string v10, "+"

    const-string v11, "-"

    const/4 v13, 0x0

    const-string v14, ""

    if-eqz v3, :cond_172

    .line 148
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ConstructionCost"

    invoke-virtual {v12, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b8
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_15a

    .line 151
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 152
    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-nez v12, :cond_dd

    move-object v8, v11

    goto :goto_121

    .line 153
    :cond_dd
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_fa

    move-object v8, v10

    goto :goto_fb

    :cond_fa
    move-object v8, v14

    :goto_fb
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 155
    :goto_121
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_128

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_12a

    :cond_128
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_12a
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_131

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_133

    :cond_131
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_133
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 151
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_156

    .line 158
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_156
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b8

    .line 161
    .end local v3    # "i":I
    :cond_15a
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 166
    :cond_172
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    if-eqz v3, :cond_25e

    .line 167
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "AdministrationBuildingsCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1a4
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_246

    .line 170
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 171
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_1c9

    move-object v8, v11

    goto :goto_20d

    .line 172
    :cond_1c9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1e6

    move-object v12, v10

    goto :goto_1e7

    :cond_1e6
    move-object v12, v14

    :goto_1e7
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    :goto_20d
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_214

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_216

    :cond_214
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_216
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_21d

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_21f

    :cond_21d
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_21f
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 170
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdministrationBuildingsCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_242

    .line 177
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_242
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a4

    .line 180
    .end local v3    # "i":I
    :cond_246
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 185
    :cond_25e
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    if-eqz v3, :cond_34a

    .line 186
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MilitaryBuildingsCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_290
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_332

    .line 189
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 190
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_2b5

    move-object v8, v11

    goto :goto_2f9

    .line 191
    :cond_2b5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2d2

    move-object v12, v10

    goto :goto_2d3

    :cond_2d2
    move-object v12, v14

    :goto_2d3
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    :goto_2f9
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_300

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_302

    :cond_300
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_302
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_309

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_30b

    :cond_309
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_30b
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 189
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MilitaryBuildingsCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_32e

    .line 196
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_32e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_290

    .line 199
    .end local v3    # "i":I
    :cond_332
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 204
    :cond_34a
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    if-eqz v3, :cond_436

    .line 205
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "EconomyBuildingsCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_37c
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_41e

    .line 208
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 209
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_3a1

    move-object v8, v11

    goto :goto_3e5

    .line 210
    :cond_3a1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3be

    move-object v12, v10

    goto :goto_3bf

    :cond_3be
    move-object v12, v14

    :goto_3bf
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 212
    :goto_3e5
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_3ec

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_3ee

    :cond_3ec
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_3ee
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_3f5

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3f7

    :cond_3f5
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_3f7
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 208
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->EconomyBuildingsCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_41a

    .line 215
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_41a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_37c

    .line 218
    .end local v3    # "i":I
    :cond_41e
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 223
    :cond_436
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    if-eqz v3, :cond_522

    .line 224
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ConstructionTime"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_468
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    array-length v7, v7

    if-ge v3, v7, :cond_50a

    .line 227
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 228
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_48d

    move-object v8, v11

    goto :goto_4d1

    .line 229
    :cond_48d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4aa

    move-object v12, v10

    goto :goto_4ab

    :cond_4aa
    move-object v12, v14

    :goto_4ab
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    :goto_4d1
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_4d8

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_4da

    :cond_4d8
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_4da
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_4e1

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4e3

    :cond_4e1
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_4e3
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 227
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ConstructionTime:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_506

    .line 234
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_506
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_468

    .line 237
    .end local v3    # "i":I
    :cond_50a
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 243
    :cond_522
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    if-eqz v3, :cond_60e

    .line 244
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "WonderConstructionCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_554
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_5f6

    .line 247
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 248
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_579

    move-object v8, v11

    goto :goto_5bd

    .line 249
    :cond_579
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_596

    move-object v12, v10

    goto :goto_597

    :cond_596
    move-object v12, v14

    :goto_597
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 251
    :goto_5bd
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_5c4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_5c6

    :cond_5c4
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_5c6
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_5cd

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5cf

    :cond_5cd
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_5cf
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 247
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->WonderConstructionCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_5f2

    .line 254
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_5f2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_554

    .line 257
    .end local v3    # "i":I
    :cond_5f6
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 262
    :cond_60e
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    if-eqz v3, :cond_6fa

    .line 263
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MaximumAmountOfGold"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_640
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    array-length v7, v7

    if-ge v3, v7, :cond_6e2

    .line 266
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 267
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_665

    move-object v8, v11

    goto :goto_6a9

    .line 268
    :cond_665
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_682

    move-object v12, v10

    goto :goto_683

    :cond_682
    move-object v12, v14

    :goto_683
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 270
    :goto_6a9
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_6b0

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_6b2

    :cond_6b0
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_6b2
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_6b9

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6bb

    :cond_6b9
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_6bb
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 266
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumAmountOfGold:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_6de

    .line 273
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_6de
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_640

    .line 276
    .end local v3    # "i":I
    :cond_6e2
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 281
    :cond_6fa
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    if-eqz v3, :cond_7e6

    .line 282
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Loot"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_72c
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    array-length v7, v7

    if-ge v3, v7, :cond_7ce

    .line 285
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 286
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_751

    move-object v8, v11

    goto :goto_795

    .line 287
    :cond_751
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_76e

    move-object v12, v10

    goto :goto_76f

    :cond_76e
    move-object v12, v14

    :goto_76f
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 289
    :goto_795
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_79c

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_79e

    :cond_79c
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_79e
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_7a5

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_7a7

    :cond_7a5
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_7a7
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 285
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Loot:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_7ca

    .line 292
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_7ca
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_72c

    .line 295
    .end local v3    # "i":I
    :cond_7ce
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 300
    :cond_7e6
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    if-eqz v3, :cond_8d0

    .line 301
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "TaxEfficiency"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_818
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    array-length v7, v7

    if-ge v3, v7, :cond_8b8

    .line 304
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 305
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_83d

    move-object v8, v11

    goto :goto_87f

    .line 306
    :cond_83d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_85a

    move-object v12, v10

    goto :goto_85b

    :cond_85a
    move-object v12, v14

    :goto_85b
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    aget v12, v12, v3

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 308
    :goto_87f
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_886

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_888

    :cond_886
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_888
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_88f

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_891

    :cond_88f
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_891
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 304
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->TaxEfficiency:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_8b4

    .line 311
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_8b4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_818

    .line 314
    .end local v3    # "i":I
    :cond_8b8
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 320
    :cond_8d0
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    if-eqz v3, :cond_9ba

    .line 321
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ProvinceMaintenance"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_902
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    array-length v7, v7

    if-ge v3, v7, :cond_9a2

    .line 324
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 325
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_927

    move-object v8, v11

    goto :goto_969

    .line 326
    :cond_927
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_944

    move-object v12, v10

    goto :goto_945

    :cond_944
    move-object v12, v14

    :goto_945
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    aget v12, v12, v3

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 328
    :goto_969
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_970

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_972

    :cond_970
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_972
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_979

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_97b

    :cond_979
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_97b
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 324
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProvinceMaintenance:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_99e

    .line 331
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_99e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_902

    .line 334
    .end local v3    # "i":I
    :cond_9a2
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 338
    :cond_9ba
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    if-eqz v3, :cond_aa6

    .line 339
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "BuildingsMaintenanceCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9ec
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_a8e

    .line 342
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 343
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_a11

    move-object v8, v11

    goto :goto_a55

    .line 344
    :cond_a11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a2e

    move-object v12, v10

    goto :goto_a2f

    :cond_a2e
    move-object v12, v14

    :goto_a2f
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 346
    :goto_a55
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_a5c

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_a5e

    :cond_a5c
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_a5e
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_a65

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_a67

    :cond_a65
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_a67
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 342
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingsMaintenanceCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_a8a

    .line 349
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_a8a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9ec

    .line 352
    .end local v3    # "i":I
    :cond_a8e
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 357
    :cond_aa6
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    if-eqz v3, :cond_b92

    .line 358
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ManpowerRecoverySpeed"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_ad8
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    array-length v7, v7

    if-ge v3, v7, :cond_b7a

    .line 361
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 362
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_afd

    move-object v8, v11

    goto :goto_b41

    .line 363
    :cond_afd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b1a

    move-object v12, v10

    goto :goto_b1b

    :cond_b1a
    move-object v12, v14

    :goto_b1b
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    aget v12, v12, v3

    mul-float v12, v12, v4

    const/16 v15, 0xa

    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 365
    :goto_b41
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_b48

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_b4a

    :cond_b48
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_b4a
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_b51

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_b53

    :cond_b51
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_b53
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 361
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoverySpeed:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_b76

    .line 368
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_b76
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ad8

    .line 371
    .end local v3    # "i":I
    :cond_b7a
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 376
    :cond_b92
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    if-eqz v3, :cond_c89

    .line 377
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MaximumManpower"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_bc4
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    array-length v7, v7

    if-ge v3, v7, :cond_c71

    .line 380
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 381
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    aget v8, v8, v3

    if-nez v8, :cond_be7

    move-object v4, v11

    goto :goto_c36

    .line 382
    :cond_be7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    aget v12, v12, v3

    if-lez v12, :cond_c02

    move-object v12, v10

    goto :goto_c03

    :cond_c02
    move-object v12, v14

    :goto_c03
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    aget v4, v4, v3

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 384
    :goto_c36
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_c3d

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_c3f

    :cond_c3d
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_c3f
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_c46

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_c48

    :cond_c46
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_c48
    invoke-direct {v7, v4, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 380
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxManpower:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_c6b

    .line 387
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_c6b
    add-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    goto/16 :goto_bc4

    .line 390
    .end local v3    # "i":I
    :cond_c71
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 395
    :cond_c89
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    if-eqz v3, :cond_d73

    .line 396
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Research"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_cbb
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    array-length v4, v4

    if-ge v3, v4, :cond_d5b

    .line 399
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 400
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_ce0

    move-object v7, v11

    goto :goto_d22

    .line 401
    :cond_ce0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_cfd

    move-object v8, v10

    goto :goto_cfe

    :cond_cfd
    move-object v8, v14

    :goto_cfe
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 403
    :goto_d22
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_d29

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_d2b

    :cond_d29
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_d2b
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_d32

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_d34

    :cond_d32
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_d34
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 399
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Research:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_d57

    .line 406
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_d57
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_cbb

    .line 409
    .end local v3    # "i":I
    :cond_d5b
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 414
    :cond_d73
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    if-eqz v3, :cond_e59

    .line 415
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ResearchPerMonth"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_da5
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    array-length v4, v4

    if-ge v3, v4, :cond_e41

    .line 418
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 419
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_dca

    move-object v7, v11

    goto :goto_e08

    .line 420
    :cond_dca
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_de7

    move-object v8, v10

    goto :goto_de8

    :cond_de7
    move-object v8, v14

    :goto_de8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 422
    :goto_e08
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_e0f

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_e11

    :cond_e0f
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_e11
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_e18

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_e1a

    :cond_e18
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_e1a
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 418
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ResearchPoints:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_e3d

    .line 425
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_e3d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_da5

    .line 428
    .end local v3    # "i":I
    :cond_e41
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 433
    :cond_e59
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    if-eqz v3, :cond_f43

    .line 434
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "GrowthRate"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e8b
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    array-length v4, v4

    if-ge v3, v4, :cond_f2b

    .line 437
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 438
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_eb0

    move-object v7, v11

    goto :goto_ef2

    .line 439
    :cond_eb0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_ecd

    move-object v8, v10

    goto :goto_ece

    :cond_ecd
    move-object v8, v14

    :goto_ece
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 441
    :goto_ef2
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_ef9

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_efb

    :cond_ef9
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_efb
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_f02

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_f04

    :cond_f02
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_f04
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 437
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GrowthRate:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_f27

    .line 444
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_f27
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e8b

    .line 447
    .end local v3    # "i":I
    :cond_f2b
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 452
    :cond_f43
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    if-eqz v3, :cond_102d

    .line 453
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "IncomeProduction"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_f75
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1015

    .line 456
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 457
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_f9a

    move-object v7, v11

    goto :goto_fdc

    .line 458
    :cond_f9a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_fb7

    move-object v8, v10

    goto :goto_fb8

    :cond_fb7
    move-object v8, v14

    :goto_fb8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 460
    :goto_fdc
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_fe3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_fe5

    :cond_fe3
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_fe5
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_fec

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_fee

    :cond_fec
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_fee
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 456
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeProduction:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1011

    .line 463
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1011
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f75

    .line 466
    .end local v3    # "i":I
    :cond_1015
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 471
    :cond_102d
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    if-eqz v3, :cond_111b

    .line 472
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "InvestInEconomyCost"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_105f
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1103

    .line 475
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 476
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1084

    move-object v7, v11

    goto :goto_10ca

    .line 477
    :cond_1084
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_10a1

    move-object v8, v10

    goto :goto_10a2

    :cond_10a1
    move-object v8, v14

    :goto_10a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 479
    :goto_10ca
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_10d1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_10d3

    :cond_10d1
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_10d3
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_10da

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_10dc

    :cond_10da
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_10dc
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 475
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->InvestInEconomyCost:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_10ff

    .line 482
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_10ff
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_105f

    .line 485
    .end local v3    # "i":I
    :cond_1103
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 490
    :cond_111b
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    const/16 v4, 0x64

    if-eqz v3, :cond_1209

    .line 491
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_114f
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_11f1

    .line 494
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 495
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_1174

    move-object v8, v11

    goto :goto_11b8

    .line 496
    :cond_1174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1191

    move-object v12, v10

    goto :goto_1192

    :cond_1191
    move-object v12, v14

    :goto_1192
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    aget v12, v12, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v12, v12, v15

    invoke-static {v12, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 498
    :goto_11b8
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_11bf

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_11c1

    :cond_11bf
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_11c1
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_11c8

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_11ca

    :cond_11c8
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_11ca
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 494
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseTaxEfficiencyCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_11ed

    .line 501
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_11ed
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_114f

    .line 504
    .end local v3    # "i":I
    :cond_11f1
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 509
    :cond_1209
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    if-eqz v3, :cond_12f5

    .line 510
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseGrowthRateCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_123b
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_12dd

    .line 513
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 514
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_1260

    move-object v8, v11

    goto :goto_12a4

    .line 515
    :cond_1260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_127d

    move-object v12, v10

    goto :goto_127e

    :cond_127d
    move-object v12, v14

    :goto_127e
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    aget v12, v12, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v12, v12, v15

    invoke-static {v12, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 517
    :goto_12a4
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_12ab

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_12ad

    :cond_12ab
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_12ad
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_12b4

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_12b6

    :cond_12b4
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_12b6
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 513
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncreaseGrowthRateCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_12d9

    .line 520
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_12d9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_123b

    .line 523
    .end local v3    # "i":I
    :cond_12dd
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v3, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 528
    :cond_12f5
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    if-eqz v3, :cond_13e1

    .line 529
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "DevelopInfrastructureCost"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1327
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    array-length v7, v7

    if-ge v3, v7, :cond_13c9

    .line 532
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 533
    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-nez v8, :cond_134c

    move-object v8, v11

    goto :goto_1390

    .line 534
    :cond_134c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    aget v12, v12, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1369

    move-object v12, v10

    goto :goto_136a

    :cond_1369
    move-object v12, v14

    :goto_136a
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    aget v12, v12, v3

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v12, v12, v15

    invoke-static {v12, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 536
    :goto_1390
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1397

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1399

    :cond_1397
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1399
    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v15, :cond_13a0

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_13a2

    :cond_13a0
    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_13a2
    invoke-direct {v7, v8, v12, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 532
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DevelopInfrastructureCost:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_13c5

    .line 539
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_13c5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1327

    .line 542
    .end local v3    # "i":I
    :cond_13c9
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 547
    :cond_13e1
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    if-eqz v3, :cond_14cb

    .line 548
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ProductionEfficiency"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1413
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    array-length v4, v4

    if-ge v3, v4, :cond_14b3

    .line 551
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 552
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1438

    move-object v7, v11

    goto :goto_147a

    .line 553
    :cond_1438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_1455

    move-object v8, v10

    goto :goto_1456

    :cond_1455
    move-object v8, v14

    :goto_1456
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 555
    :goto_147a
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1481

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1483

    :cond_1481
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1483
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_148a

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_148c

    :cond_148a
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_148c
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 551
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ProductionEfficiency:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_14af

    .line 558
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_14af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1413

    .line 561
    .end local v3    # "i":I
    :cond_14b3
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 566
    :cond_14cb
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    if-eqz v3, :cond_15ae

    .line 567
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "GeneralsAttack"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_14fd
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1596

    .line 570
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 571
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    aget v7, v7, v3

    if-nez v7, :cond_1520

    move-object v7, v11

    goto :goto_155d

    .line 572
    :cond_1520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    aget v8, v8, v3

    if-lez v8, :cond_153b

    move-object v8, v10

    goto :goto_153c

    :cond_153b
    move-object v8, v14

    :goto_153c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 574
    :goto_155d
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1564

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1566

    :cond_1564
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1566
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_156d

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_156f

    :cond_156d
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_156f
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 570
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralAttack:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1592

    .line 577
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_1592
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14fd

    .line 580
    .end local v3    # "i":I
    :cond_1596
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 585
    :cond_15ae
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    if-eqz v3, :cond_1691

    .line 586
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "GeneralsDefense"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_15e0
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1679

    .line 589
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 590
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    aget v7, v7, v3

    if-nez v7, :cond_1603

    move-object v7, v11

    goto :goto_1640

    .line 591
    :cond_1603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    aget v8, v8, v3

    if-lez v8, :cond_161e

    move-object v8, v10

    goto :goto_161f

    :cond_161e
    move-object v8, v14

    :goto_161f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 593
    :goto_1640
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1647

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1649

    :cond_1647
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1649
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1650

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1652

    :cond_1650
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1652
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 589
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralDefense:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1675

    .line 596
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_1675
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15e0

    .line 599
    .end local v3    # "i":I
    :cond_1679
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 604
    :cond_1691
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    if-eqz v3, :cond_1773

    .line 605
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RegimentsLimit"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_16c3
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    array-length v4, v4

    if-ge v3, v4, :cond_175b

    .line 608
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 609
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    aget v7, v7, v3

    if-nez v7, :cond_16e6

    move-object v7, v11

    goto :goto_1722

    .line 610
    :cond_16e6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    aget v8, v8, v3

    if-lez v8, :cond_1701

    move-object v8, v10

    goto :goto_1702

    :cond_1701
    move-object v8, v14

    :goto_1702
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 612
    :goto_1722
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1729

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_172b

    :cond_1729
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_172b
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1732

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1734

    :cond_1732
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1734
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 608
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RegimentsLimit:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1757

    .line 615
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    :cond_1757
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16c3

    .line 618
    .end local v3    # "i":I
    :cond_175b
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 623
    :cond_1773
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    if-eqz v3, :cond_1855

    .line 624
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "BattleWidth"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_17a5
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    array-length v4, v4

    if-ge v3, v4, :cond_183d

    .line 627
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 628
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    aget v7, v7, v3

    if-nez v7, :cond_17c8

    move-object v7, v11

    goto :goto_1804

    .line 629
    :cond_17c8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    aget v8, v8, v3

    if-lez v8, :cond_17e3

    move-object v8, v10

    goto :goto_17e4

    :cond_17e3
    move-object v8, v14

    :goto_17e4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 631
    :goto_1804
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_180b

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_180d

    :cond_180b
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_180d
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1814

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1816

    :cond_1814
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1816
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 627
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BattleWidth:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1839

    .line 634
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_1839
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17a5

    .line 637
    .end local v3    # "i":I
    :cond_183d
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 642
    :cond_1855
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    if-eqz v3, :cond_1939

    .line 643
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AllCharactersLifeExpectancy"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1887
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1921

    .line 646
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 647
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    aget v7, v7, v3

    if-nez v7, :cond_18aa

    move-object v7, v11

    goto :goto_18e8

    .line 648
    :cond_18aa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    aget v8, v8, v3

    if-lez v8, :cond_18c5

    move-object v8, v10

    goto :goto_18c6

    :cond_18c5
    move-object v8, v14

    :goto_18c6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v12, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    aget v12, v12, v3

    const-string v15, "YearsX"

    invoke-virtual {v8, v15, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 650
    :goto_18e8
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_18ef

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_18f1

    :cond_18ef
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_18f1
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_18f8

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_18fa

    :cond_18f8
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_18fa
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 646
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AllCharactersLifeExpectancy:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_191d

    .line 653
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_191d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1887

    .line 656
    .end local v3    # "i":I
    :cond_1921
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 661
    :cond_1939
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz v3, :cond_1a27

    .line 662
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_196b
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1a0f

    .line 665
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 666
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1990

    move-object v7, v11

    goto :goto_19d6

    .line 667
    :cond_1990
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_19ad

    move-object v8, v10

    goto :goto_19ae

    :cond_19ad
    move-object v8, v14

    :goto_19ae
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 669
    :goto_19d6
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_19dd

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_19df

    :cond_19dd
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_19df
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_19e6

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19e8

    :cond_19e6
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_19e8
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 665
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ManpowerRecoveryFromADisbandedArmy:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1a0b

    .line 672
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_1a0b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_196b

    .line 675
    .end local v3    # "i":I
    :cond_1a0f
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_DISBAND:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 680
    :cond_1a27
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    if-eqz v3, :cond_1b15

    .line 681
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Discipline"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1a59
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1afd

    .line 684
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 685
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1a7e

    move-object v7, v11

    goto :goto_1ac4

    .line 686
    :cond_1a7e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_1a9b

    move-object v8, v10

    goto :goto_1a9c

    :cond_1a9b
    move-object v8, v14

    :goto_1a9c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 688
    :goto_1ac4
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1acb

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1acd

    :cond_1acb
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1acd
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1ad4

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1ad6

    :cond_1ad4
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1ad6
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 684
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Discipline:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1af9

    .line 691
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1af9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a59

    .line 694
    .end local v3    # "i":I
    :cond_1afd
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 699
    :cond_1b15
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    if-eqz v3, :cond_1bf8

    .line 700
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "UnitsAttack"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1b47
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1be0

    .line 703
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 704
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    aget v7, v7, v3

    if-nez v7, :cond_1b6a

    move-object v7, v11

    goto :goto_1ba7

    .line 705
    :cond_1b6a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    aget v8, v8, v3

    if-lez v8, :cond_1b85

    move-object v8, v10

    goto :goto_1b86

    :cond_1b85
    move-object v8, v14

    :goto_1b86
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 707
    :goto_1ba7
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1bae

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1bb0

    :cond_1bae
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1bb0
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1bb7

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1bb9

    :cond_1bb7
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1bb9
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 703
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsAttack:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1bdc

    .line 710
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_1bdc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b47

    .line 713
    .end local v3    # "i":I
    :cond_1be0
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 718
    :cond_1bf8
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    if-eqz v3, :cond_1cdb

    .line 719
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "UnitsDefense"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1c2a
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1cc3

    .line 722
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 723
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    aget v7, v7, v3

    if-nez v7, :cond_1c4d

    move-object v7, v11

    goto :goto_1c8a

    .line 724
    :cond_1c4d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    aget v8, v8, v3

    if-lez v8, :cond_1c68

    move-object v8, v10

    goto :goto_1c69

    :cond_1c68
    move-object v8, v14

    :goto_1c69
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 726
    :goto_1c8a
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1c91

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1c93

    :cond_1c91
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1c93
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1c9a

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1c9c

    :cond_1c9a
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1c9c
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 722
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->UnitsDefense:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1cbf

    .line 729
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1cbf
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1c2a

    .line 732
    .end local v3    # "i":I
    :cond_1cc3
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 738
    :cond_1cdb
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    if-eqz v3, :cond_1dc9

    .line 739
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaxMorale"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1d0d
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1db1

    .line 742
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 743
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1d32

    move-object v7, v11

    goto :goto_1d78

    .line 744
    :cond_1d32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_1d4f

    move-object v8, v10

    goto :goto_1d50

    :cond_1d4f
    move-object v8, v14

    :goto_1d50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 746
    :goto_1d78
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1d7f

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1d81

    :cond_1d7f
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1d81
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1d88

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1d8a

    :cond_1d88
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1d8a
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 742
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxMorale:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1dad

    .line 749
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_1dad
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d0d

    .line 752
    .end local v3    # "i":I
    :cond_1db1
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 757
    :cond_1dc9
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    if-eqz v3, :cond_1eb7

    .line 758
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "SiegeEffectiveness"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1dfb
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1e9f

    .line 761
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 762
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1e20

    move-object v7, v11

    goto :goto_1e66

    .line 763
    :cond_1e20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_1e3d

    move-object v8, v10

    goto :goto_1e3e

    :cond_1e3d
    move-object v8, v14

    :goto_1e3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 765
    :goto_1e66
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1e6d

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1e6f

    :cond_1e6d
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1e6f
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1e76

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1e78

    :cond_1e76
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1e78
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 761
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->SiegeEffectiveness:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1e9b

    .line 768
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_1e9b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1dfb

    .line 771
    .end local v3    # "i":I
    :cond_1e9f
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 776
    :cond_1eb7
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    if-eqz v3, :cond_1fa1

    .line 777
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ImproveRelationsModifier"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1ee9
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1f89

    .line 780
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 781
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1f0e

    move-object v7, v11

    goto :goto_1f50

    .line 782
    :cond_1f0e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_1f2b

    move-object v8, v10

    goto :goto_1f2c

    :cond_1f2b
    move-object v8, v14

    :goto_1f2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 784
    :goto_1f50
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_1f57

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1f59

    :cond_1f57
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1f59
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_1f60

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1f62

    :cond_1f60
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_1f62
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 780
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImproveRelationsModifier:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_1f85

    .line 787
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_1f85
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1ee9

    .line 790
    .end local v3    # "i":I
    :cond_1f89
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 797
    :cond_1fa1
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    if-eqz v3, :cond_208f

    .line 798
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "IncomeFromVassals"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1fd3
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2077

    .line 801
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 802
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_1ff8

    move-object v7, v11

    goto :goto_203e

    .line 803
    :cond_1ff8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2015

    move-object v8, v10

    goto :goto_2016

    :cond_2015
    move-object v8, v14

    :goto_2016
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 805
    :goto_203e
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2045

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2047

    :cond_2045
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2047
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_204e

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2050

    :cond_204e
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2050
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 801
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->IncomeFromVassals:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2073

    .line 808
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :cond_2073
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1fd3

    .line 811
    .end local v3    # "i":I
    :cond_2077
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 816
    :cond_208f
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    if-eqz v3, :cond_217d

    .line 817
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "DiplomacyPoints"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_20c1
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2165

    .line 820
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 821
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_20e6

    move-object v7, v11

    goto :goto_212c

    .line 822
    :cond_20e6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2103

    move-object v8, v10

    goto :goto_2104

    :cond_2103
    move-object v8, v14

    :goto_2104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 824
    :goto_212c
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2133

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2135

    :cond_2133
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2135
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_213c

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_213e

    :cond_213c
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_213e
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 820
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiplomacyPoints:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2161

    .line 827
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_2161
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_20c1

    .line 830
    .end local v3    # "i":I
    :cond_2165
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 835
    :cond_217d
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    if-eqz v3, :cond_2267

    .line 836
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "LoanInterest"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_21af
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    array-length v4, v4

    if-ge v3, v4, :cond_224f

    .line 839
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 840
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_21d4

    move-object v7, v11

    goto :goto_2216

    .line 841
    :cond_21d4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_21f1

    move-object v8, v10

    goto :goto_21f2

    :cond_21f1
    move-object v8, v14

    :goto_21f2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 843
    :goto_2216
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_221d

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_221f

    :cond_221d
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_221f
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2226

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2228

    :cond_2226
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2228
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 839
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->LoanInterest:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_224b

    .line 846
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_224b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21af

    .line 849
    .end local v3    # "i":I
    :cond_224f
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 854
    :cond_2267
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    if-eqz v3, :cond_2349

    .line 855
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumNumberOfLoans"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2299
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2331

    .line 858
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 859
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    aget v7, v7, v3

    if-nez v7, :cond_22bc

    move-object v7, v11

    goto :goto_22f8

    .line 860
    :cond_22bc
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    aget v8, v8, v3

    if-lez v8, :cond_22d7

    move-object v8, v10

    goto :goto_22d8

    :cond_22d7
    move-object v8, v14

    :goto_22d8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 862
    :goto_22f8
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_22ff

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2301

    :cond_22ff
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2301
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2308

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_230a

    :cond_2308
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_230a
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 858
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumberOfLoans:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_232d

    .line 865
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_232d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2299

    .line 868
    .end local v3    # "i":I
    :cond_2331
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 873
    :cond_2349
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    if-eqz v3, :cond_242b

    .line 874
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaxNumOfAlliances"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_237b
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2413

    .line 877
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 878
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    aget v7, v7, v3

    if-nez v7, :cond_239e

    move-object v7, v11

    goto :goto_23da

    .line 879
    :cond_239e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    aget v8, v8, v3

    if-lez v8, :cond_23b9

    move-object v8, v10

    goto :goto_23ba

    :cond_23b9
    move-object v8, v14

    :goto_23ba
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 881
    :goto_23da
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_23e1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_23e3

    :cond_23e1
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_23e3
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_23ea

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_23ec

    :cond_23ea
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_23ec
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 877
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxNumOfAlliances:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_240f

    .line 884
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_240f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_237b

    .line 887
    .end local v3    # "i":I
    :cond_2413
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 892
    :cond_242b
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    if-eqz v3, :cond_250d

    .line 893
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumAdvisorSkillLevel"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_245d
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    array-length v4, v4

    if-ge v3, v4, :cond_24f5

    .line 896
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 897
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    aget v7, v7, v3

    if-nez v7, :cond_2480

    move-object v7, v11

    goto :goto_24bc

    .line 898
    :cond_2480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    aget v8, v8, v3

    if-lez v8, :cond_249b

    move-object v8, v10

    goto :goto_249c

    :cond_249b
    move-object v8, v14

    :goto_249c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 900
    :goto_24bc
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_24c3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_24c5

    :cond_24c3
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_24c5
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_24cc

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_24ce

    :cond_24cc
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_24ce
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 896
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorMaxLevel:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_24f1

    .line 903
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_24f1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_245d

    .line 906
    .end local v3    # "i":I
    :cond_24f5
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 911
    :cond_250d
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    if-eqz v3, :cond_25ef

    .line 912
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AdvisorPool"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_253f
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    array-length v4, v4

    if-ge v3, v4, :cond_25d7

    .line 915
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 916
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    aget v7, v7, v3

    if-nez v7, :cond_2562

    move-object v7, v11

    goto :goto_259e

    .line 917
    :cond_2562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    aget v8, v8, v3

    if-lez v8, :cond_257d

    move-object v8, v10

    goto :goto_257e

    :cond_257d
    move-object v8, v14

    :goto_257e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 919
    :goto_259e
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_25a5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_25a7

    :cond_25a5
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_25a7
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_25ae

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_25b0

    :cond_25ae
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_25b0
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 915
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorPoolSize:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_25d3

    .line 922
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_25d3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_253f

    .line 925
    .end local v3    # "i":I
    :cond_25d7
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 930
    :cond_25ef
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    if-eqz v3, :cond_26dd

    .line 931
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AdvisorCost"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2621
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    array-length v4, v4

    if-ge v3, v4, :cond_26c5

    .line 934
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 935
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_2646

    move-object v7, v11

    goto :goto_268c

    .line 936
    :cond_2646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2663

    move-object v8, v10

    goto :goto_2664

    :cond_2663
    move-object v8, v14

    :goto_2664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 938
    :goto_268c
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2693

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2695

    :cond_2693
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2695
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_269c

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_269e

    :cond_269c
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_269e
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 934
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AdvisorCost:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_26c1

    .line 941
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_26c1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2621

    .line 944
    .end local v3    # "i":I
    :cond_26c5
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 949
    :cond_26dd
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz v3, :cond_27bf

    .line 950
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_270f
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    array-length v4, v4

    if-ge v3, v4, :cond_27a7

    .line 953
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 954
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v7, v7, v3

    if-nez v7, :cond_2732

    move-object v7, v11

    goto :goto_276e

    .line 955
    :cond_2732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v8, v8, v3

    if-lez v8, :cond_274d

    move-object v8, v10

    goto :goto_274e

    :cond_274d
    move-object v8, v14

    :goto_274e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 957
    :goto_276e
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2775

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2777

    :cond_2775
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2777
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_277e

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2780

    :cond_277e
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2780
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 953
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_27a3

    .line 960
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_27a3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_270f

    .line 963
    .end local v3    # "i":I
    :cond_27a7
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->general:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 968
    :cond_27bf
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz v3, :cond_28a2

    .line 969
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_27f1
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    array-length v4, v4

    if-ge v3, v4, :cond_288a

    .line 972
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 973
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v7, v7, v3

    if-nez v7, :cond_2814

    move-object v7, v11

    goto :goto_2851

    .line 974
    :cond_2814
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v8, v8, v3

    if-lez v8, :cond_282f

    move-object v8, v10

    goto :goto_2830

    :cond_282f
    move-object v8, v14

    :goto_2830
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 976
    :goto_2851
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2858

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_285a

    :cond_2858
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_285a
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2861

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2863

    :cond_2861
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2863
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 972
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheMilitaryAcademy:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2886

    .line 979
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_2886
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_27f1

    .line 982
    .end local v3    # "i":I
    :cond_288a
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 987
    :cond_28a2
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz v3, :cond_2985

    .line 988
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_28d4
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    array-length v4, v4

    if-ge v3, v4, :cond_296d

    .line 991
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 992
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    aget v7, v7, v3

    if-nez v7, :cond_28f7

    move-object v7, v11

    goto :goto_2934

    .line 993
    :cond_28f7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    aget v8, v8, v3

    if-lez v8, :cond_2912

    move-object v8, v10

    goto :goto_2913

    :cond_2912
    move-object v8, v14

    :goto_2913
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 995
    :goto_2934
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_293b

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_293d

    :cond_293b
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_293d
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2944

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2946

    :cond_2944
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2946
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 991
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfTheSupremeCourt:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2969

    .line 998
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_2969
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_28d4

    .line 1001
    .end local v3    # "i":I
    :cond_296d
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->stability:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1006
    :cond_2985
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    if-eqz v3, :cond_2a68

    .line 1007
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumLevelOfCapitalCity"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_29b7
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2a50

    .line 1010
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1011
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    aget v7, v7, v3

    if-nez v7, :cond_29da

    move-object v7, v11

    goto :goto_2a17

    .line 1012
    :cond_29da
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    aget v8, v8, v3

    if-lez v8, :cond_29f5

    move-object v8, v10

    goto :goto_29f6

    :cond_29f5
    move-object v8, v14

    :goto_29f6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1014
    :goto_2a17
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2a1e

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2a20

    :cond_2a1e
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2a20
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2a27

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2a29

    :cond_2a27
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2a29
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1010
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaximumLevelOfCapitalCity:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2a4c

    .line 1017
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    :cond_2a4c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_29b7

    .line 1020
    .end local v3    # "i":I
    :cond_2a50
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1025
    :cond_2a68
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    if-eqz v3, :cond_2b56

    .line 1026
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "GeneralCost"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a9a
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2b3e

    .line 1029
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1030
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_2abf

    move-object v7, v11

    goto :goto_2b05

    .line 1031
    :cond_2abf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2adc

    move-object v8, v10

    goto :goto_2add

    :cond_2adc
    move-object v8, v14

    :goto_2add
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1033
    :goto_2b05
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2b0c

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2b0e

    :cond_2b0c
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2b0e
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2b15

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2b17

    :cond_2b15
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2b17
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1029
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GeneralCost:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2b3a

    .line 1036
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_2b3a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2a9a

    .line 1039
    .end local v3    # "i":I
    :cond_2b3e
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->general:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1044
    :cond_2b56
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    if-eqz v3, :cond_2c40

    .line 1045
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AggressiveExpansion"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2b88
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2c28

    .line 1048
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1049
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_2bad

    move-object v7, v11

    goto :goto_2bef

    .line 1050
    :cond_2bad
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2bca

    move-object v8, v10

    goto :goto_2bcb

    :cond_2bca
    move-object v8, v14

    :goto_2bcb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1052
    :goto_2bef
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2bf6

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2bf8

    :cond_2bf6
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2bf8
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2bff

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2c01

    :cond_2bff
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2c01
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1048
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AggressiveExpansion:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2c24

    .line 1055
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_2c24
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2b88

    .line 1058
    .end local v3    # "i":I
    :cond_2c28
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->war:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1064
    :cond_2c40
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    if-eqz v3, :cond_2d2e

    .line 1065
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "DiseasesDeathRate"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2c72
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2d16

    .line 1068
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1069
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_2c97

    move-object v7, v11

    goto :goto_2cdd

    .line 1070
    :cond_2c97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2cb4

    move-object v8, v10

    goto :goto_2cb5

    :cond_2cb4
    move-object v8, v14

    :goto_2cb5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1072
    :goto_2cdd
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2ce4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2ce6

    :cond_2ce4
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2ce6
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2ced

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2cef

    :cond_2ced
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2cef
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1068
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->DiseaseDeathRate:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2d12

    .line 1075
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_2d12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2c72

    .line 1078
    .end local v3    # "i":I
    :cond_2d16
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1083
    :cond_2d2e
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    if-eqz v3, :cond_2e18

    .line 1084
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RecruitmentTime"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2d60
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2e00

    .line 1087
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1088
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_2d85

    move-object v7, v11

    goto :goto_2dc7

    .line 1089
    :cond_2d85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2da2

    move-object v8, v10

    goto :goto_2da3

    :cond_2da2
    move-object v8, v14

    :goto_2da3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1091
    :goto_2dc7
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2dce

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2dd0

    :cond_2dce
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2dd0
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2dd7

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2dd9

    :cond_2dd7
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2dd9
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1087
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->RecruitmentTime:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2dfc

    .line 1094
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_2dfc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2d60

    .line 1097
    .end local v3    # "i":I
    :cond_2e00
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1102
    :cond_2e18
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    if-eqz v3, :cond_2f02

    .line 1103
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ArmyMovementSpeed"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2e4a
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2eea

    .line 1106
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1107
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_2e6f

    move-object v7, v11

    goto :goto_2eb1

    .line 1108
    :cond_2e6f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_2e8c

    move-object v8, v10

    goto :goto_2e8d

    :cond_2e8c
    move-object v8, v14

    :goto_2e8d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    aget v8, v8, v3

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1110
    :goto_2eb1
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2eb8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2eba

    :cond_2eb8
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2eba
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2ec1

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2ec3

    :cond_2ec1
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2ec3
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1106
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ArmyMovementSpeed:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2ee6

    .line 1113
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_2ee6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2e4a

    .line 1116
    .end local v3    # "i":I
    :cond_2eea
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1121
    :cond_2f02
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    if-eqz v3, :cond_2fe4

    .line 1122
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AdditionalBuildingsInProvince"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2f34
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2fcc

    .line 1125
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1126
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    aget v7, v7, v3

    if-nez v7, :cond_2f57

    move-object v7, v11

    goto :goto_2f93

    .line 1127
    :cond_2f57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    aget v8, v8, v3

    if-lez v8, :cond_2f72

    move-object v8, v10

    goto :goto_2f73

    :cond_2f72
    move-object v8, v14

    :goto_2f73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1129
    :goto_2f93
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_2f9a

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2f9c

    :cond_2f9a
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2f9c
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_2fa3

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2fa5

    :cond_2fa3
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_2fa5
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1125
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->BuildingSlot:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_2fc8

    .line 1132
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_2fc8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2f34

    .line 1135
    .end local v3    # "i":I
    :cond_2fcc
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->build:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1140
    :cond_2fe4
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    if-eqz v3, :cond_30c7

    .line 1141
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumInfrastructureLevel"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3016
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    array-length v4, v4

    if-ge v3, v4, :cond_30af

    .line 1144
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1145
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    aget v7, v7, v3

    if-nez v7, :cond_3039

    move-object v7, v11

    goto :goto_3076

    .line 1146
    :cond_3039
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    aget v8, v8, v3

    if-lez v8, :cond_3054

    move-object v8, v10

    goto :goto_3055

    :cond_3054
    move-object v8, v14

    :goto_3055
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    aget v8, v8, v3

    int-to-float v8, v8

    const/16 v12, 0xa

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1148
    :goto_3076
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_307d

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_307f

    :cond_307d
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_307f
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_3086

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3088

    :cond_3086
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_3088
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1144
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->MaxInfrastructure:[I

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_30ab

    .line 1151
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_30ab
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3016

    .line 1154
    .end local v3    # "i":I
    :cond_30af
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1160
    :cond_30c7
    sget-object v3, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    if-eqz v3, :cond_31b9

    .line 1161
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Devastation"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_30f9
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    array-length v4, v4

    if-ge v3, v4, :cond_31a1

    .line 1164
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    .line 1165
    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    aget v7, v7, v3

    cmpl-float v7, v7, v13

    if-nez v7, :cond_3122

    move-object v7, v11

    const/high16 v12, 0x42c80000    # 100.0f

    const/16 v15, 0xa

    goto :goto_3168

    .line 1166
    :cond_3122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    aget v8, v8, v3

    cmpl-float v8, v8, v13

    if-lez v8, :cond_313f

    move-object v8, v10

    goto :goto_3140

    :cond_313f
    move-object v8, v14

    :goto_3140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    aget v8, v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    const/16 v15, 0xa

    invoke-static {v8, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1168
    :goto_3168
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v8, :cond_316f

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_3171

    :cond_316f
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_3171
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ne v3, v12, :cond_3178

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_317a

    :cond_3178
    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    :goto_317a
    invoke-direct {v4, v7, v8, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    .line 1164
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Devastation:[F

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-eq v3, v4, :cond_319d

    .line 1171
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v9, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_319d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_30f9

    .line 1174
    .end local v3    # "i":I
    :cond_31a1
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1180
    :cond_31b9
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1184
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v4, v4

    if-lt v3, v4, :cond_31fe

    .line 1185
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Max"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_328c

    .line 1190
    :cond_31fe
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "LegacyPoints"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v7, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aget v7, v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_326c

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_326e

    :cond_326c
    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_326e
    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1197
    :goto_328c
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1198
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 57
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_38

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v0, p1, v1, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_da

    .line 60
    :cond_38
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_b9

    if-eqz p4, :cond_41

    goto :goto_b9

    .line 64
    :cond_41
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlackWhite:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 65
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v0, p1, v1, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 66
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 68
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ltz v0, :cond_da

    .line 69
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v4, v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v1, v1, v4

    const/high16 v4, 0x3e800000    # 0.25f

    add-float/2addr v1, v4

    invoke-direct {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v0, p1, v1, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 71
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_da

    .line 61
    :cond_b9
    :goto_b9
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v0, p1, v1, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 75
    :cond_da
    :goto_da
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;->bgAlpha:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1a9

    .line 76
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;->bgAlpha:F

    sub-float v1, v3, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    invoke-direct {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 80
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 81
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 83
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->ImageID:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 86
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 87
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 90
    :cond_1a9
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 93
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 98
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 99
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->iUnlockWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getTextHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->iUnlockWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getTextHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCornerAlpha(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 101
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 103
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->fontID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->sUnlock:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->iUnlockWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getTextHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 106
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 107
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->levelMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->levelFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 109
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    if-ltz v0, :cond_10f

    .line 110
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 111
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->levelMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->levelFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->levelMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->currentLvl:I

    add-int/lit8 v2, v2, 0x1

    mul-int v0, v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v2, v2

    div-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->levelMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 114
    :cond_10f
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 115
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->levelFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->levelFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_16e

    .line 123
    :cond_13e
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getTextToDraw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    invoke-interface {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;->getTextPosition()I

    move-result v1

    add-int/2addr v0, v1

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getTextHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 125
    :goto_16e
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 129
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats4(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()I
    .registers 2

    .line 134
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;->legacyID:I

    return v0
.end method
