.class public Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BudgetIncomeProduction.java"


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

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->lTime:J

    .line 46
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->lTime2:J

    .line 50
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 56

    .line 52
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 55
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v0, v1

    .line 57
    .local v23, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 59
    .local v13, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v24

    .line 60
    .local v24, "menuX":I
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

    add-int v25, v0, v1

    .line 62
    .local v25, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v26, v0, 0x2

    .line 63
    .local v26, "buttonYPadding":I
    move/from16 v11, v23

    .line 64
    .local v11, "buttonX":I
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 66
    .local v16, "buttonY":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    .line 68
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v1, v12

    add-int v27, v0, v1

    .line 69
    .local v27, "tIconMaxW":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v28, v0, v1

    .line 70
    .local v28, "tButtonH":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x5

    div-int/lit8 v29, v0, 0x5

    .line 72
    .local v29, "tButtonH2":I
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 73
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "+999 999"

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 74
    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v3, v12

    add-int v30, v2, v3

    .line 75
    .local v30, "tButtonRightW":I
    mul-int/lit8 v2, v23, 0x2

    sub-int v2, v13, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sub-int v31, v2, v30

    .line 77
    .local v31, "tButtonW":I
    const/4 v2, 0x0

    .line 82
    .local v2, "iRow":I
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "TotalIncome"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    add-int/lit8 v17, v2, 0x1

    .end local v2    # "iRow":I
    .local v17, "iRow":I
    rem-int/2addr v2, v12

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_af

    const/16 v18, 0x1

    goto :goto_b1

    :cond_af
    const/16 v18, 0x0

    :goto_b1
    move-object v2, v9

    move/from16 v5, v23

    move/from16 v6, v16

    const/4 v12, 0x1

    move/from16 v7, v31

    move/from16 v8, v28

    move-object v1, v9

    move/from16 v9, v27

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v3, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v2, v3

    const/16 v9, 0x64

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v1, v23, v31

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v1

    move-object/from16 v33, v0

    .end local v0    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .local v33, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    move-object v0, v7

    const/4 v8, 0x5

    move-object/from16 v1, p0

    move/from16 v4, v16

    move/from16 v5, v30

    move/from16 v6, v28

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;IIII)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
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

    add-int v16, v16, v0

    .line 111
    iget v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 112
    .local v1, "fGold":F
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "TotalExpenses"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goldNegative:I

    add-int/lit8 v34, v17, 0x1

    const/4 v2, 0x2

    .end local v17    # "iRow":I
    .local v34, "iRow":I
    rem-int/lit8 v17, v17, 0x2

    if-nez v17, :cond_13f

    const/16 v17, 0x1

    goto :goto_141

    :cond_13f
    const/16 v17, 0x0

    :goto_141
    move-object v2, v0

    move/from16 v5, v23

    move/from16 v6, v16

    move/from16 v7, v31

    move/from16 v8, v28

    const/16 v12, 0x64

    move/from16 v9, v27

    move-object/from16 v20, v10

    move/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    cmpl-float v2, v1, v21

    if-ltz v2, :cond_168

    move-object/from16 v10, v20

    goto :goto_16a

    :cond_168
    const-string v10, "-"

    :goto_16a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-static {v2, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v0, v23, v31

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v0

    move-object v0, v7

    move v8, v1

    .end local v1    # "fGold":F
    .local v8, "fGold":F
    move-object/from16 v1, p0

    move/from16 v4, v16

    move/from16 v5, v30

    move/from16 v6, v28

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;IIII)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 141
    iget v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v1, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    iget v1, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float v10, v0, v1

    .line 142
    .end local v8    # "fGold":F
    .local v10, "fGold":F
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$3;

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

    const-string v8, ""

    cmpl-float v1, v10, v21

    if-lez v1, :cond_1f4

    move-object/from16 v1, v20

    goto :goto_1f5

    :cond_1f4
    move-object v1, v8

    :goto_1f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v0, v23, 0x2

    sub-int v7, v13, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0xa

    add-int v17, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v23

    move/from16 v6, v16

    move-object v15, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 177
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 179
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    int-to-float v0, v0

    const v17, 0x3e99999a    # 0.3f

    mul-float v0, v0, v17

    float-to-int v9, v0

    .line 180
    .local v9, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    int-to-float v0, v0

    const v22, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v22

    float-to-int v8, v0

    .line 182
    .local v8, "r1W":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$4;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-eqz v0, :cond_263

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_261

    goto :goto_264

    :cond_261
    const/4 v2, 0x0

    goto :goto_265

    :cond_263
    const/4 v1, 0x1

    :goto_264
    const/4 v2, 0x1

    :goto_265
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v0, v1, :cond_26b

    const/4 v3, 0x1

    goto :goto_26c

    :cond_26b
    const/4 v3, 0x0

    :goto_26c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v36, v0, v1

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v6, v11

    move-object v12, v7

    move/from16 v7, v16

    move/from16 v40, v8

    .end local v8    # "r1W":I
    .local v40, "r1W":I
    move v8, v9

    move/from16 v41, v9

    .end local v9    # "r0W":I
    .local v41, "r0W":I
    move/from16 v9, v36

    move/from16 v36, v10

    .end local v10    # "fGold":F
    .local v36, "fGold":F
    move/from16 v10, v37

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 212
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$5;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v10, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b8

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v0, v10, :cond_2b6

    goto :goto_2b8

    :cond_2b6
    const/4 v2, 0x0

    goto :goto_2b9

    :cond_2b8
    :goto_2b8
    const/4 v2, 0x1

    :goto_2b9
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v0, v10, :cond_2bf

    const/4 v3, 0x1

    goto :goto_2c0

    :cond_2bf
    const/4 v3, 0x0

    :goto_2c0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Resource"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v37, v0, v1

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move v6, v11

    move/from16 v7, v16

    move/from16 v8, v41

    move/from16 v9, v37

    move-object/from16 v37, v15

    const/4 v15, 0x3

    move/from16 v10, v38

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 242
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$6;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v10, 0x4

    if-eq v0, v10, :cond_309

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v9, 0x5

    if-ne v0, v9, :cond_307

    goto :goto_30a

    :cond_307
    const/4 v2, 0x0

    goto :goto_30b

    :cond_309
    const/4 v9, 0x5

    :goto_30a
    const/4 v2, 0x1

    :goto_30b
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v0, v9, :cond_311

    const/4 v3, 0x1

    goto :goto_312

    :cond_311
    const/4 v3, 0x0

    :goto_312
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Economy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v32, v0, v1

    sget v35, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move v6, v11

    move/from16 v7, v16

    const/4 v15, 0x6

    move/from16 v8, v40

    move/from16 v9, v32

    move/from16 v10, v35

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 272
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$7;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v10, 0x7

    if-eq v0, v15, :cond_358

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v0, v10, :cond_356

    goto :goto_358

    :cond_356
    const/4 v2, 0x0

    goto :goto_359

    :cond_358
    :goto_358
    const/4 v2, 0x1

    :goto_359
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v0, v10, :cond_35f

    const/4 v3, 0x1

    goto :goto_360

    :cond_35f
    const/4 v3, 0x0

    :goto_360
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Income"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move v6, v11

    move/from16 v7, v16

    move/from16 v8, v40

    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v0, v16, v0

    .line 305
    .end local v16    # "buttonY":I
    .local v0, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_3a1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_3a3

    :cond_3a1
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_3a3
    move v8, v1

    .line 306
    .local v8, "buttonH":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v13, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x5

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v1, v1, v17

    float-to-int v10, v1

    .line 307
    .end local v41    # "r0W":I
    .local v10, "r0W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v22

    float-to-int v9, v1

    .line 309
    .end local v40    # "r1W":I
    .local v9, "r1W":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 311
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3cb
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_405

    .line 312
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ltz v2, :cond_402

    .line 313
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_402
    add-int/lit8 v1, v1, 0x1

    goto :goto_3cb

    .line 317
    .end local v1    # "i":I
    :cond_405
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const-string v6, "None"

    if-lez v1, :cond_862

    .line 318
    const/4 v1, 0x1

    move/from16 v22, v0

    .line 320
    .end local v0    # "buttonY":I
    .local v1, "tID":I
    .local v22, "buttonY":I
    :goto_410
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_84e

    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "toAddID":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-nez v2, :cond_455

    .line 324
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_41c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_450

    .line 325
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44d

    .line 326
    move v0, v2

    .line 324
    :cond_44d
    add-int/lit8 v2, v2, 0x1

    goto :goto_41c

    :cond_450
    move v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x3

    .end local v2    # "o":I
    goto/16 :goto_5fb

    .line 330
    :cond_455
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_494

    .line 331
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_45b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48f

    .line 332
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48c

    .line 333
    move v0, v2

    .line 331
    :cond_48c
    add-int/lit8 v2, v2, 0x1

    goto :goto_45b

    :cond_48f
    move v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x3

    .end local v2    # "o":I
    goto/16 :goto_5fb

    .line 337
    :cond_494
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4db

    .line 338
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_49a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d6

    .line 339
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d3

    .line 340
    move v0, v2

    .line 338
    :cond_4d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_49a

    :cond_4d6
    move v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x3

    .end local v2    # "o":I
    goto/16 :goto_5fb

    .line 344
    :cond_4db
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_521

    .line 345
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_4e1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_51d

    .line 346
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51a

    .line 347
    move v0, v2

    .line 345
    :cond_51a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e1

    :cond_51d
    move v3, v0

    const/4 v4, 0x4

    .end local v2    # "o":I
    goto/16 :goto_5fb

    .line 351
    :cond_521
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_55c

    .line 352
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_527
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_559

    .line 353
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v16

    cmpl-float v3, v3, v16

    if-lez v3, :cond_556

    .line 354
    move v0, v2

    .line 352
    :cond_556
    add-int/lit8 v2, v2, 0x1

    goto :goto_527

    :cond_559
    move v3, v0

    .end local v2    # "o":I
    goto/16 :goto_5fb

    .line 358
    :cond_55c
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v2, v12, :cond_596

    .line 359
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_561
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_593

    .line 360
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v16

    cmpg-float v3, v3, v16

    if-gez v3, :cond_590

    .line 361
    move v0, v2

    .line 359
    :cond_590
    add-int/lit8 v2, v2, 0x1

    goto :goto_561

    :cond_593
    move v3, v0

    .end local v2    # "o":I
    goto/16 :goto_5fb

    .line 365
    :cond_596
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    if-ne v2, v15, :cond_5c7

    .line 366
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_59b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c5

    .line 367
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v3

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v16

    cmpg-float v3, v3, v16

    if-gez v3, :cond_5c2

    .line 368
    move v0, v2

    .line 366
    :cond_5c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_59b

    :cond_5c5
    move v3, v0

    .end local v2    # "o":I
    goto :goto_5fb

    .line 372
    :cond_5c7
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iSortID:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5fa

    .line 373
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_5cd
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f8

    .line 374
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v3

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v16

    cmpl-float v3, v3, v16

    if-lez v3, :cond_5f4

    .line 375
    move v0, v2

    .line 373
    :cond_5f4
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x7

    goto :goto_5cd

    :cond_5f8
    move v3, v0

    goto :goto_5fb

    .line 372
    .end local v2    # "o":I
    :cond_5fa
    move v3, v0

    .line 380
    .end local v0    # "toAddID":I
    .local v3, "toAddID":I
    :goto_5fb
    move/from16 v11, v23

    .line 382
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v32, v1, 0x1

    .end local v1    # "tID":I
    .local v32, "tID":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    move-result-object v16

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_645

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_647

    :cond_645
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_647
    move/from16 v17, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v19, 0x2

    mul-int/lit8 v35, v0, 0x2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v15

    const/16 v40, 0x7

    move v15, v3

    .end local v3    # "toAddID":I
    .local v15, "toAddID":I
    move/from16 v3, v17

    const/16 v41, 0x4

    move/from16 v4, v35

    const/16 v17, 0x3

    move v5, v11

    move-object/from16 v54, v6

    move/from16 v6, v22

    move/from16 v35, v13

    move-object v13, v7

    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v13, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v35, "menuWidth":I
    move v7, v10

    move/from16 v42, v9

    .end local v9    # "r1W":I
    .local v42, "r1W":I
    move/from16 v9, v37

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v0, v11

    .line 408
    .end local v11    # "buttonX":I
    .local v0, "buttonX":I
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ltz v2, :cond_711

    .line 409
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$9;

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v12

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v9, v2

    move/from16 v37, v10

    .end local v10    # "r0W":I
    .local v37, "r0W":I
    move-object/from16 v10, p0

    const/16 v7, 0x64

    const/16 v39, 0x5

    const/16 v43, 0x1

    move-object v5, v13

    move/from16 v6, v35

    .end local v13    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v35    # "menuWidth":I
    .local v5, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "menuWidth":I
    move v13, v0

    move-object v4, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v4, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v14, v22

    move-object/from16 v1, p0

    move/from16 v44, v6

    move v7, v15

    move-object/from16 v6, v16

    const/16 v38, 0x3

    const/16 v45, 0x6

    .end local v6    # "menuWidth":I
    .end local v15    # "toAddID":I
    .local v7, "toAddID":I
    .local v44, "menuWidth":I
    move/from16 v15, v37

    move/from16 v16, v8

    move/from16 v17, v3

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v54

    goto :goto_742

    .line 416
    .end local v4    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v5    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "toAddID":I
    .end local v37    # "r0W":I
    .end local v44    # "menuWidth":I
    .restart local v10    # "r0W":I
    .restart local v13    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "toAddID":I
    .restart local v35    # "menuWidth":I
    :cond_711
    move-object/from16 v1, p0

    move/from16 v37, v10

    move-object v5, v13

    move-object v4, v14

    move v7, v15

    move-object/from16 v6, v16

    move/from16 v44, v35

    const/16 v38, 0x3

    const/16 v39, 0x5

    const/16 v43, 0x1

    const/16 v45, 0x6

    .end local v10    # "r0W":I
    .end local v13    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "toAddID":I
    .end local v35    # "menuWidth":I
    .restart local v4    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v5    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "toAddID":I
    .restart local v37    # "r0W":I
    .restart local v44    # "menuWidth":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v15, v54

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    sget v48, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v49, -0x1

    move-object/from16 v46, v2

    move/from16 v50, v0

    move/from16 v51, v22

    move/from16 v52, v37

    move/from16 v53, v8

    invoke-direct/range {v46 .. v53}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :goto_742
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 420
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$10;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v9

    const/16 v10, 0x64

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/4 v13, -0x1

    move-object v9, v2

    move-object/from16 v10, p0

    move v14, v0

    move-object v3, v15

    move/from16 v15, v22

    move/from16 v16, v42

    move/from16 v17, v8

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v9

    add-int v11, v0, v2

    .line 470
    .end local v0    # "buttonX":I
    .restart local v11    # "buttonX":I
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(II)F

    move-result v9

    .line 471
    .end local v36    # "fGold":F
    .local v9, "fGold":F
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$11;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v2, v9, v21

    if-lez v2, :cond_7e2

    move-object/from16 v2, v20

    goto :goto_7e3

    :cond_7e2
    move-object v2, v6

    :goto_7e3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v12, 0x64

    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object v0, v10

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v15, v3

    move v3, v11

    move-object v12, v4

    .end local v4    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v12, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v4, v22

    move/from16 v16, v11

    move-object v11, v5

    .end local v5    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "buttonX":I
    move/from16 v5, v42

    move-object/from16 v18, v6

    move/from16 v17, v9

    move/from16 v9, v44

    .end local v44    # "menuWidth":I
    .local v9, "menuWidth":I
    .local v17, "fGold":F
    move v6, v8

    move/from16 v44, v8

    const/16 v35, 0x64

    move v8, v7

    .end local v7    # "toAddID":I
    .local v8, "toAddID":I
    .local v44, "buttonH":I
    move v7, v13

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v22, v22, v0

    .line 515
    invoke-interface {v11, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 516
    .end local v8    # "toAddID":I
    move v13, v9

    move-object v7, v11

    move-object v14, v12

    move-object v6, v15

    move/from16 v11, v16

    move/from16 v36, v17

    move/from16 v1, v32

    move/from16 v10, v37

    move/from16 v9, v42

    move/from16 v8, v44

    const/4 v12, 0x5

    const/4 v15, 0x6

    move-object/from16 v37, v18

    goto/16 :goto_410

    .line 320
    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v16    # "buttonX":I
    .end local v17    # "fGold":F
    .end local v32    # "tID":I
    .end local v37    # "r0W":I
    .end local v42    # "r1W":I
    .end local v44    # "buttonH":I
    .restart local v1    # "tID":I
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "buttonH":I
    .local v9, "r1W":I
    .restart local v10    # "r0W":I
    .local v11, "buttonX":I
    .local v13, "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v36    # "fGold":F
    :cond_84e
    move/from16 v44, v8

    move/from16 v42, v9

    move/from16 v37, v10

    move/from16 v16, v11

    move v9, v13

    move-object v12, v14

    const/16 v38, 0x3

    move-object/from16 v14, p0

    move-object v11, v7

    .line 517
    .end local v1    # "tID":I
    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "buttonH":I
    .end local v10    # "r0W":I
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v9, "menuWidth":I
    .local v11, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v16    # "buttonX":I
    .restart local v37    # "r0W":I
    .restart local v42    # "r1W":I
    .restart local v44    # "buttonH":I
    move/from16 v7, v16

    move/from16 v8, v22

    goto :goto_8a8

    .line 519
    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v16    # "buttonX":I
    .end local v22    # "buttonY":I
    .end local v37    # "r0W":I
    .end local v42    # "r1W":I
    .end local v44    # "buttonH":I
    .local v0, "buttonY":I
    .restart local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "buttonH":I
    .local v9, "r1W":I
    .restart local v10    # "r0W":I
    .local v11, "buttonX":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :cond_862
    move-object v15, v6

    move/from16 v44, v8

    move/from16 v42, v9

    move/from16 v37, v10

    move v1, v11

    move v9, v13

    move-object v12, v14

    const/16 v38, 0x3

    const/16 v43, 0x1

    move-object/from16 v14, p0

    move-object v11, v7

    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "buttonH":I
    .end local v10    # "r0W":I
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v1, "buttonX":I
    .local v9, "menuWidth":I
    .local v11, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v37    # "r0W":I
    .restart local v42    # "r1W":I
    .restart local v44    # "buttonH":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v23, 0x2

    sub-int v21, v9, v3

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v18, -0x1

    move-object v15, v2

    move/from16 v19, v23

    move/from16 v20, v0

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v22, v0, v2

    move v7, v1

    move/from16 v8, v22

    .line 535
    .end local v0    # "buttonY":I
    .end local v1    # "buttonX":I
    .local v7, "buttonX":I
    .local v8, "buttonY":I
    :goto_8a8
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v25

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 537
    .local v15, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v13, 0x0

    invoke-direct {v0, v13, v13, v9, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$12;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "IncomeProduction"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, v14, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v0, v9

    .end local v9    # "menuWidth":I
    .local v0, "menuWidth":I
    move-object/from16 v9, p0

    move-object v1, v11

    .end local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v11, v24

    move-object v2, v12

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v12, v25

    const/4 v3, 0x0

    move v13, v0

    move-object v4, v14

    move v14, v15

    move v5, v15

    .end local v15    # "menuHeight":I
    .local v5, "menuHeight":I
    move-object v15, v2

    invoke-virtual/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 551
    iput-boolean v3, v4, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->drawScrollPositionAlways:Z

    .line 552
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

    .line 556
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 557
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 560
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 561
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 562
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getHeight()I

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

    .line 564
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 565
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 576
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 577
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->lTime2:J

    .line 578
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 569
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 571
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProduction;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "IncomeProduction"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 572
    return-void
.end method
