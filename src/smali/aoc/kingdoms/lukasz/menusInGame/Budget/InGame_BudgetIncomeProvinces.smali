.class public Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BudgetIncomeProvinces.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# instance fields
.field public iActiveCivID:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime:J

    .line 39
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime2:J

    .line 43
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 53

    .line 45
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 48
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v0, v1

    .line 50
    .local v18, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 52
    .local v13, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v19

    .line 53
    .local v19, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v20, v0, v1

    .line 55
    .local v20, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x2

    mul-int/lit8 v21, v0, 0x2

    .line 56
    .local v21, "buttonYPadding":I
    move/from16 v9, v18

    .line 57
    .local v9, "buttonX":I
    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 59
    .local v10, "buttonY":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    .line 61
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v1, v11

    add-int v22, v0, v1

    .line 62
    .local v22, "tIconMaxW":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v23, v0, v1

    .line 63
    .local v23, "tButtonH":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    const/4 v8, 0x5

    div-int/lit8 v24, v0, 0x5

    .line 65
    .local v24, "tButtonH2":I
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    move-object v7, v0

    .line 66
    .local v7, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v1, "+999 999"

    invoke-virtual {v7, v0, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 67
    iget v0, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v1, v11

    add-int v25, v0, v1

    .line 68
    .local v25, "tButtonRightW":I
    mul-int/lit8 v0, v18, 0x2

    sub-int v0, v13, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    sub-int v26, v0, v25

    .line 70
    .local v26, "tButtonW":I
    const/16 v27, 0x0

    .line 134
    .local v27, "iRow":I
    iget v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v1, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    iget v1, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float v6, v0, v1

    .line 135
    .local v6, "fGold":F
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Balance"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+"

    const-string v4, ""

    const/16 v17, 0x0

    cmpl-float v1, v6, v17

    if-lez v1, :cond_e7

    move-object/from16 v1, v16

    goto :goto_e8

    :cond_e7
    move-object v1, v4

    :goto_e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x64

    invoke-static {v6, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v0, v18, 0x2

    sub-int v30, v13, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0xa

    add-int v31, v0, v1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v3, v28

    move-object/from16 v32, v4

    move/from16 v4, v29

    move-object v12, v5

    move/from16 v5, v18

    move/from16 v29, v6

    .end local v6    # "fGold":F
    .local v29, "fGold":F
    move v6, v10

    move-object/from16 v33, v7

    .end local v7    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .local v33, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    move/from16 v7, v30

    move/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v30, v10, v0

    .line 168
    .end local v10    # "buttonY":I
    .local v30, "buttonY":I
    sget v31, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 170
    .end local v9    # "buttonX":I
    .local v31, "buttonX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    int-to-float v0, v0

    const v35, 0x3e99999a    # 0.3f

    mul-float v0, v0, v35

    float-to-int v10, v0

    .line 171
    .local v10, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    int-to-float v0, v0

    const v36, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v36

    float-to-int v9, v0

    .line 173
    .local v9, "r1W":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$2;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v7, 0x0

    if-eqz v0, :cond_162

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v0, v12, :cond_160

    goto :goto_162

    :cond_160
    const/4 v2, 0x0

    goto :goto_163

    :cond_162
    :goto_162
    const/4 v2, 0x1

    :goto_163
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v0, v12, :cond_169

    const/4 v3, 0x1

    goto :goto_16a

    :cond_169
    const/4 v3, 0x0

    :goto_16a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v37, v0, v1

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move-object v11, v8

    move v8, v10

    move/from16 v41, v9

    .end local v9    # "r1W":I
    .local v41, "r1W":I
    move/from16 v9, v37

    move/from16 v37, v10

    .end local v10    # "r0W":I
    .local v37, "r0W":I
    move/from16 v10, v38

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v31, v31, v0

    .line 203
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$3;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v10, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b5

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v0, v10, :cond_1b3

    goto :goto_1b5

    :cond_1b3
    const/4 v2, 0x0

    goto :goto_1b6

    :cond_1b5
    :goto_1b5
    const/4 v2, 0x1

    :goto_1b6
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v0, v10, :cond_1bc

    const/4 v3, 0x1

    goto :goto_1bd

    :cond_1bc
    const/4 v3, 0x0

    :goto_1bd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Income"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v38, v0, v1

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v37

    move/from16 v9, v38

    move/from16 v10, v39

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v31, v31, v0

    .line 233
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$4;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_204

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v10, 0x5

    if-ne v0, v10, :cond_202

    goto :goto_205

    :cond_202
    const/4 v2, 0x0

    goto :goto_206

    :cond_204
    const/4 v10, 0x5

    :goto_205
    const/4 v2, 0x1

    :goto_206
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v0, v10, :cond_20c

    const/4 v3, 0x1

    goto :goto_20d

    :cond_20c
    const/4 v3, 0x0

    :goto_20d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Expenses"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v34, v0, v1

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v41

    move/from16 v9, v34

    move/from16 v10, v38

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v31, v31, v0

    .line 263
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$5;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v10, 0x7

    const/4 v9, 0x6

    if-eq v0, v9, :cond_254

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v0, v10, :cond_252

    goto :goto_254

    :cond_252
    const/4 v2, 0x0

    goto :goto_255

    :cond_254
    :goto_254
    const/4 v2, 0x1

    :goto_255
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v0, v10, :cond_25b

    const/4 v3, 0x1

    goto :goto_25c

    :cond_25b
    const/4 v3, 0x0

    :goto_25c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MonthlyIncome"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v34, v0, v1

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v41

    move/from16 v9, v34

    move/from16 v10, v38

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v30, v30, v0

    .line 296
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_29f

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_2a1

    :cond_29f
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_2a1
    move v8, v0

    .line 297
    .local v8, "buttonH":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x5

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v35

    float-to-int v11, v0

    .line 298
    .end local v37    # "r0W":I
    .local v11, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v36

    float-to-int v9, v0

    .line 300
    .end local v41    # "r1W":I
    .restart local v9    # "r1W":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 302
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_2ed

    .line 303
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c9

    .line 307
    .end local v0    # "i":I
    :cond_2ed
    const/4 v0, 0x1

    move v6, v0

    move/from16 v5, v30

    .line 309
    .end local v30    # "buttonY":I
    .local v5, "buttonY":I
    .local v6, "tID":I
    :goto_2f1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6d9

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "toAddID":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-nez v1, :cond_334

    .line 313
    const/4 v1, 0x1

    .local v1, "o":I
    :goto_2fd
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_331

    .line 314
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32e

    .line 315
    move v0, v1

    .line 313
    :cond_32e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2fd

    :cond_331
    move v4, v0

    .end local v1    # "o":I
    goto/16 :goto_500

    .line 319
    :cond_334
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v1, v12, :cond_370

    .line 320
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_339
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36d

    .line 321
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36a

    .line 322
    move v0, v1

    .line 320
    :cond_36a
    add-int/lit8 v1, v1, 0x1

    goto :goto_339

    :cond_36d
    move v4, v0

    .end local v1    # "o":I
    goto/16 :goto_500

    .line 326
    :cond_370
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a7

    .line 327
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_376
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a4

    .line 328
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3a1

    .line 329
    move v0, v1

    .line 327
    :cond_3a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_376

    :cond_3a4
    move v4, v0

    .end local v1    # "o":I
    goto/16 :goto_500

    .line 333
    :cond_3a7
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3de

    .line 334
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_3ad
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3db

    .line 335
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3d8

    .line 336
    move v0, v1

    .line 334
    :cond_3d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3ad

    :cond_3db
    move v4, v0

    .end local v1    # "o":I
    goto/16 :goto_500

    .line 340
    :cond_3de
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_416

    .line 341
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_3e4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_413

    .line 342
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_40f

    .line 343
    move v0, v1

    .line 341
    :cond_40f
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    goto :goto_3e4

    :cond_413
    move v4, v0

    .end local v1    # "o":I
    goto/16 :goto_500

    .line 347
    :cond_416
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-ne v1, v10, :cond_44c

    .line 348
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_41b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_449

    .line 349
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_446

    .line 350
    move v0, v1

    .line 348
    :cond_446
    add-int/lit8 v1, v1, 0x1

    goto :goto_41b

    :cond_449
    move v4, v0

    .end local v1    # "o":I
    goto/16 :goto_500

    .line 354
    :cond_44c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4a6

    .line 355
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_452
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a4

    .line 356
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v2, v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_49f

    .line 357
    move v0, v1

    .line 355
    :cond_49f
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x3

    goto :goto_452

    :cond_4a4
    move v4, v0

    .end local v1    # "o":I
    goto :goto_500

    .line 361
    :cond_4a6
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_4ff

    .line 362
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_4ac
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4fd

    .line 363
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v2, v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4f9

    .line 364
    move v0, v1

    .line 362
    :cond_4f9
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x7

    goto :goto_4ac

    :cond_4fd
    move v4, v0

    goto :goto_500

    .line 361
    .end local v1    # "o":I
    :cond_4ff
    move v4, v0

    .line 369
    .end local v0    # "toAddID":I
    .local v4, "toAddID":I
    :goto_500
    move/from16 v28, v18

    .line 371
    .end local v31    # "buttonX":I
    .local v28, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v31, v6, 0x1

    .end local v6    # "tID":I
    .local v31, "tID":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_54a

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_54c

    :cond_54a
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_54c
    move/from16 v32, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v34, 0x2

    mul-int/lit8 v35, v0, 0x2

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v10, v2

    move-object v2, v6

    move-object v6, v3

    const/16 v30, 0x6

    const/16 v37, 0x4

    move/from16 v3, v32

    move/from16 v51, v4

    const/16 v32, 0x7

    const/16 v38, 0x3

    .end local v4    # "toAddID":I
    .local v51, "toAddID":I
    move/from16 v4, v35

    move/from16 v35, v5

    .end local v5    # "buttonY":I
    .local v35, "buttonY":I
    move/from16 v5, v28

    move-object v12, v6

    move/from16 v6, v35

    move-object v15, v7

    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v7, v11

    move/from16 v40, v9

    .end local v9    # "r1W":I
    .local v40, "r1W":I
    move/from16 v9, v36

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v28, v28, v0

    .line 396
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, v51

    .end local v51    # "toAddID":I
    .local v9, "toAddID":I
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    const/16 v12, 0x64

    invoke-static {v2, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/16 v45, -0x1

    move-object/from16 v42, v0

    move/from16 v46, v28

    move/from16 v47, v35

    move/from16 v48, v11

    move/from16 v49, v8

    invoke-direct/range {v42 .. v50}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v28, v28, v0

    .line 399
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    invoke-static {v2, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v42, v0

    move/from16 v46, v28

    move/from16 v48, v40

    invoke-direct/range {v42 .. v50}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v28, v28, v0

    .line 402
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float v7, v0, v1

    .line 403
    .end local v29    # "fGold":F
    .local v7, "fGold":F
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v1, v7, v17

    if-lez v1, :cond_67e

    move-object/from16 v4, v16

    goto :goto_67f

    :cond_67e
    move-object v4, v10

    :goto_67f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, v28

    move/from16 v4, v35

    move/from16 v5, v40

    move-object v12, v6

    move v6, v8

    move/from16 v36, v7

    .end local v7    # "fGold":F
    .local v36, "fGold":F
    move/from16 v7, v29

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    move/from16 v7, v35

    .end local v35    # "buttonY":I
    .local v7, "buttonY":I
    add-int v5, v7, v0

    .line 447
    .end local v7    # "buttonY":I
    .restart local v5    # "buttonY":I
    invoke-interface {v15, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    .end local v9    # "toAddID":I
    move-object/from16 v32, v10

    move-object v7, v15

    move/from16 v6, v31

    move/from16 v29, v36

    move/from16 v9, v40

    const/4 v10, 0x5

    const/4 v12, 0x1

    move-object/from16 v15, p0

    move/from16 v31, v28

    goto/16 :goto_2f1

    .line 462
    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "buttonX":I
    .end local v36    # "fGold":F
    .end local v40    # "r1W":I
    .restart local v6    # "tID":I
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "r1W":I
    .restart local v29    # "fGold":F
    .local v31, "buttonX":I
    :cond_6d9
    move-object v15, v7

    move/from16 v40, v9

    const/16 v38, 0x3

    move v7, v5

    .end local v5    # "buttonY":I
    .end local v9    # "r1W":I
    .local v7, "buttonY":I
    .restart local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v40    # "r1W":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v20

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 464
    .local v12, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v10, 0x0

    invoke-direct {v0, v10, v10, v13, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$8;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ProvinceMonthlyIncome"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, p0

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v28, v6

    .end local v6    # "tID":I
    .local v28, "tID":I
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v0, 0x0

    const/16 v17, 0x1

    const/4 v1, 0x0

    move-object/from16 v10, v16

    move v2, v11

    .end local v11    # "r0W":I
    .local v2, "r0W":I
    move/from16 v11, v19

    move v3, v12

    .end local v12    # "menuHeight":I
    .local v3, "menuHeight":I
    move/from16 v12, v20

    move v4, v13

    .end local v13    # "menuWidth":I
    .local v4, "menuWidth":I
    move-object v5, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v5, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v14, v3

    move-object/from16 v6, p0

    move-object/from16 v30, v15

    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v30, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v15, v5

    move/from16 v16, v0

    invoke-virtual/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 478
    iput-boolean v1, v6, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->drawScrollPositionAlways:Z

    .line 479
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 483
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 484
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 487
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 488
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 489
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 491
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 492
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 503
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 504
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime2:J

    .line 505
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 496
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 498
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceMonthlyIncome"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 499
    return-void
.end method
