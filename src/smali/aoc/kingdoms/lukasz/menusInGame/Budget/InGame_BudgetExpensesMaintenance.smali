.class public Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BudgetExpensesMaintenance.java"


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

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->lTime:J

    .line 43
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->lTime2:J

    .line 47
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 45

    .line 49
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 52
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v0, v1

    .line 54
    .local v19, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 56
    .local v13, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v20

    .line 57
    .local v20, "menuX":I
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

    add-int v21, v0, v1

    .line 59
    .local v21, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v22, v0, 0x2

    .line 60
    .local v22, "buttonYPadding":I
    move/from16 v11, v19

    .line 61
    .local v11, "buttonX":I
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 63
    .local v16, "buttonY":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    .line 65
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

    add-int v23, v0, v1

    .line 66
    .local v23, "tIconMaxW":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v24, v0, v1

    .line 67
    .local v24, "tButtonH":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x5

    div-int/lit8 v25, v0, 0x5

    .line 69
    .local v25, "tButtonH2":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "+999 999"

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v2, v12

    add-int v26, v0, v2

    .line 71
    .local v26, "tButtonRightW":I
    mul-int/lit8 v0, v19, 0x2

    sub-int v0, v13, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v2

    sub-int v27, v0, v26

    .line 73
    .local v27, "tButtonW":I
    const/4 v0, 0x0

    .line 78
    .local v0, "iRow":I
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "TotalIncome"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    add-int/lit8 v17, v0, 0x1

    .end local v0    # "iRow":I
    .local v17, "iRow":I
    rem-int/2addr v0, v12

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_ad

    const/4 v0, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v0, 0x0

    :goto_ae
    move-object v2, v9

    move/from16 v5, v19

    move/from16 v6, v16

    const/4 v12, 0x1

    move/from16 v7, v27

    move/from16 v8, v24

    move-object v1, v9

    move/from16 v9, v23

    move v10, v0

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v2, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v1, v2

    const/16 v9, 0x64

    invoke-static {v1, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v0, v19, v27

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v1

    move-object v0, v7

    const/4 v8, 0x5

    move-object/from16 v1, p0

    move/from16 v4, v16

    move/from16 v5, v26

    move/from16 v6, v24

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;IIII)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
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

    .line 107
    iget v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 108
    .local v1, "fGold":F
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "TotalExpenses"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goldNegative:I

    add-int/lit8 v28, v17, 0x1

    const/4 v2, 0x2

    .end local v17    # "iRow":I
    .local v28, "iRow":I
    rem-int/lit8 v17, v17, 0x2

    if-nez v17, :cond_13a

    const/16 v17, 0x1

    goto :goto_13c

    :cond_13a
    const/16 v17, 0x0

    :goto_13c
    move-object v2, v0

    move/from16 v5, v19

    move/from16 v6, v16

    move/from16 v7, v27

    move/from16 v8, v24

    const/16 v12, 0x64

    move/from16 v9, v23

    move-object/from16 v32, v10

    move/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-"

    const/16 v34, 0x0

    cmpl-float v2, v1, v34

    if-ltz v2, :cond_165

    move-object/from16 v10, v32

    goto :goto_167

    :cond_165
    move-object/from16 v10, v33

    :goto_167
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-static {v2, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v0, v19, v27

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v0

    move-object v0, v7

    move v8, v1

    .end local v1    # "fGold":F
    .local v8, "fGold":F
    move-object/from16 v1, p0

    move/from16 v4, v16

    move/from16 v5, v26

    move/from16 v6, v24

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;IIII)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
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

    .line 137
    iget v0, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v1, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    iget v1, v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float v10, v0, v1

    .line 138
    .end local v8    # "fGold":F
    .local v10, "fGold":F
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$3;

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

    cmpl-float v1, v10, v34

    if-lez v1, :cond_1f1

    move-object/from16 v1, v32

    goto :goto_1f2

    :cond_1f1
    move-object v1, v8

    :goto_1f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v0, v19, 0x2

    sub-int v7, v13, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0xa

    add-int v17, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v19

    move/from16 v6, v16

    move-object v15, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
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

    .line 172
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 174
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    int-to-float v0, v0

    const v17, 0x3e99999a    # 0.3f

    mul-float v0, v0, v17

    float-to-int v9, v0

    .line 175
    .local v9, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    int-to-float v0, v0

    const v32, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v32

    float-to-int v8, v0

    .line 177
    .local v8, "r1W":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$4;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-eqz v0, :cond_260

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25e

    goto :goto_261

    :cond_25e
    const/4 v2, 0x0

    goto :goto_262

    :cond_260
    const/4 v1, 0x1

    :goto_261
    const/4 v2, 0x1

    :goto_262
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v0, v1, :cond_268

    const/4 v3, 0x1

    goto :goto_269

    :cond_268
    const/4 v3, 0x0

    :goto_269
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v35, v0, v1

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v6, v11

    move-object v12, v7

    move/from16 v7, v16

    move/from16 v39, v8

    .end local v8    # "r1W":I
    .local v39, "r1W":I
    move v8, v9

    move/from16 v40, v9

    .end local v9    # "r0W":I
    .local v40, "r0W":I
    move/from16 v9, v35

    move/from16 v35, v10

    .end local v10    # "fGold":F
    .local v35, "fGold":F
    move/from16 v10, v36

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
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

    .line 207
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$5;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v10, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b5

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v0, v10, :cond_2b3

    goto :goto_2b5

    :cond_2b3
    const/4 v2, 0x0

    goto :goto_2b6

    :cond_2b5
    :goto_2b5
    const/4 v2, 0x1

    :goto_2b6
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v0, v10, :cond_2bc

    const/4 v3, 0x1

    goto :goto_2bd

    :cond_2bc
    const/4 v3, 0x0

    :goto_2bd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Population"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v36, v0, v1

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move v6, v11

    move/from16 v7, v16

    move/from16 v8, v40

    move/from16 v9, v36

    move-object/from16 v36, v15

    const/4 v15, 0x3

    move/from16 v10, v37

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
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

    .line 237
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$6;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v10, 0x4

    if-eq v0, v10, :cond_306

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v9, 0x5

    if-ne v0, v9, :cond_304

    goto :goto_307

    :cond_304
    const/4 v2, 0x0

    goto :goto_308

    :cond_306
    const/4 v9, 0x5

    :goto_307
    const/4 v2, 0x1

    :goto_308
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v0, v9, :cond_30e

    const/4 v3, 0x1

    goto :goto_30f

    :cond_30e
    const/4 v3, 0x0

    :goto_30f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Economy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v29, v0, v1

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move v6, v11

    move/from16 v7, v16

    const/4 v15, 0x6

    move/from16 v8, v39

    move/from16 v9, v29

    move/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
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

    .line 267
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$7;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v10, 0x7

    if-eq v0, v15, :cond_355

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v0, v10, :cond_353

    goto :goto_355

    :cond_353
    const/4 v2, 0x0

    goto :goto_356

    :cond_355
    :goto_355
    const/4 v2, 0x1

    :goto_356
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v0, v10, :cond_35c

    const/4 v3, 0x1

    goto :goto_35d

    :cond_35c
    const/4 v3, 0x0

    :goto_35d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MaintenanceCost"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move v6, v11

    move/from16 v7, v16

    move/from16 v8, v39

    move/from16 v10, v29

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
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

    .line 300
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_39e

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_3a0

    :cond_39e
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_3a0
    move v8, v0

    .line 301
    .local v8, "buttonH":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x5

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v17

    float-to-int v10, v0

    .line 302
    .end local v40    # "r0W":I
    .local v10, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v13, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v32

    float-to-int v9, v0

    .line 304
    .end local v39    # "r1W":I
    .local v9, "r1W":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 306
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_3ec

    .line 307
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c8

    .line 310
    .end local v0    # "i":I
    :cond_3ec
    const/4 v0, 0x1

    move/from16 v29, v11

    move/from16 v5, v16

    move v11, v0

    .line 312
    .end local v16    # "buttonY":I
    .local v5, "buttonY":I
    .local v11, "tID":I
    .local v29, "buttonX":I
    :goto_3f2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7b4

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "toAddID":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-nez v1, :cond_437

    .line 316
    const/4 v1, 0x1

    .local v1, "o":I
    :goto_3fe
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_432

    .line 317
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

    if-eqz v2, :cond_42f

    .line 318
    move v0, v1

    .line 316
    :cond_42f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3fe

    :cond_432
    move v3, v0

    const/4 v4, 0x4

    const/4 v6, 0x3

    .end local v1    # "o":I
    goto/16 :goto_5cd

    .line 322
    :cond_437
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_476

    .line 323
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_43d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_471

    .line 324
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

    if-eqz v2, :cond_46e

    .line 325
    move v0, v1

    .line 323
    :cond_46e
    add-int/lit8 v1, v1, 0x1

    goto :goto_43d

    :cond_471
    move v3, v0

    const/4 v4, 0x4

    const/4 v6, 0x3

    .end local v1    # "o":I
    goto/16 :goto_5cd

    .line 329
    :cond_476
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b1

    .line 330
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_47c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4ac

    .line 331
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    if-le v2, v3, :cond_4a9

    .line 332
    move v0, v1

    .line 330
    :cond_4a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_47c

    :cond_4ac
    move v3, v0

    const/4 v4, 0x4

    const/4 v6, 0x3

    .end local v1    # "o":I
    goto/16 :goto_5cd

    .line 336
    :cond_4b1
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_4eb

    .line 337
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_4b7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e7

    .line 338
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    if-ge v2, v3, :cond_4e4

    .line 339
    move v0, v1

    .line 337
    :cond_4e4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b7

    :cond_4e7
    move v3, v0

    const/4 v4, 0x4

    .end local v1    # "o":I
    goto/16 :goto_5cd

    .line 343
    :cond_4eb
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_526

    .line 344
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_4f1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_523

    .line 345
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_520

    .line 346
    move v0, v1

    .line 344
    :cond_520
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f1

    :cond_523
    move v3, v0

    .end local v1    # "o":I
    goto/16 :goto_5cd

    .line 350
    :cond_526
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v1, v12, :cond_560

    .line 351
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_52b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_55d

    .line 352
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_55a

    .line 353
    move v0, v1

    .line 351
    :cond_55a
    add-int/lit8 v1, v1, 0x1

    goto :goto_52b

    :cond_55d
    move v3, v0

    .end local v1    # "o":I
    goto/16 :goto_5cd

    .line 357
    :cond_560
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    if-ne v1, v15, :cond_595

    .line 358
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_565
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_593

    .line 359
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_590

    .line 360
    move v0, v1

    .line 358
    :cond_590
    add-int/lit8 v1, v1, 0x1

    goto :goto_565

    :cond_593
    move v3, v0

    .end local v1    # "o":I
    goto :goto_5cd

    .line 364
    :cond_595
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iSortID:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5cc

    .line 365
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_59b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5ca

    .line 366
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5c6

    .line 367
    move v0, v1

    .line 365
    :cond_5c6
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x7

    goto :goto_59b

    :cond_5ca
    move v3, v0

    goto :goto_5cd

    .line 364
    .end local v1    # "o":I
    :cond_5cc
    move v3, v0

    .line 372
    .end local v0    # "toAddID":I
    .local v3, "toAddID":I
    :goto_5cd
    move/from16 v16, v19

    .line 374
    .end local v29    # "buttonX":I
    .local v16, "buttonX":I
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v29, v11, 0x1

    .end local v11    # "tID":I
    .local v29, "tID":I
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ". "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_617

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_619

    :cond_617
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_619
    move/from16 v17, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v18, 0x2

    mul-int/lit8 v30, v0, 0x2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object v0, v2

    move-object v15, v1

    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v11

    move v11, v3

    const/16 v36, 0x7

    .end local v3    # "toAddID":I
    .local v11, "toAddID":I
    move/from16 v3, v17

    const/16 v39, 0x4

    move/from16 v4, v30

    move/from16 v30, v5

    .end local v5    # "buttonY":I
    .local v30, "buttonY":I
    move/from16 v5, v16

    const/16 v17, 0x3

    move/from16 v6, v30

    move/from16 v40, v13

    move-object v13, v7

    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v13, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v40, "menuWidth":I
    move v7, v10

    move/from16 v41, v9

    .end local v9    # "r1W":I
    .local v41, "r1W":I
    move/from16 v9, v32

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v0, v16, v0

    .line 399
    .end local v16    # "buttonX":I
    .local v0, "buttonX":I
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$9;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    move-object v9, v2

    move/from16 v31, v10

    .end local v10    # "r0W":I
    .local v31, "r0W":I
    move-object/from16 v10, p0

    move v7, v11

    .end local v11    # "toAddID":I
    .local v7, "toAddID":I
    move-object v11, v3

    const/16 v6, 0x64

    const/16 v32, 0x2

    const/16 v38, 0x5

    const/16 v42, 0x1

    move-object v1, v13

    move/from16 v3, v40

    .end local v13    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v40    # "menuWidth":I
    .local v1, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "menuWidth":I
    move v13, v5

    move-object v5, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v5, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v14, v0

    move-object v6, v15

    const/16 v37, 0x3

    const/16 v43, 0x6

    move/from16 v15, v30

    move/from16 v16, v31

    move/from16 v17, v8

    move/from16 v18, v4

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;IIIIIII)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 407
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$10;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/4 v13, -0x1

    move-object v9, v2

    move-object/from16 v10, p0

    move v14, v0

    move/from16 v16, v41

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;IIIIIII)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v9, v0, v2

    .line 455
    .end local v0    # "buttonX":I
    .local v9, "buttonX":I
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    .line 456
    .end local v35    # "fGold":F
    .local v10, "fGold":F
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$11;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v2, v10, v34

    if-lez v2, :cond_74e

    move-object/from16 v2, v33

    goto :goto_74f

    :cond_74e
    move-object v2, v6

    :goto_74f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v12, 0x64

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object v0, v11

    move-object v15, v1

    .end local v1    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move v14, v3

    .end local v3    # "menuWidth":I
    .local v14, "menuWidth":I
    move v3, v9

    move/from16 v4, v30

    move-object v12, v5

    .end local v5    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v12, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v5, v41

    move-object/from16 v16, v6

    const/16 v17, 0x64

    move v6, v8

    move/from16 v18, v8

    move v8, v7

    .end local v7    # "toAddID":I
    .local v8, "toAddID":I
    .local v18, "buttonH":I
    move v7, v13

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
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

    move/from16 v7, v30

    .end local v30    # "buttonY":I
    .local v7, "buttonY":I
    add-int v5, v7, v0

    .line 500
    .end local v7    # "buttonY":I
    .local v5, "buttonY":I
    invoke-interface {v15, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 501
    .end local v8    # "toAddID":I
    move/from16 v35, v10

    move v13, v14

    move-object v7, v15

    move-object/from16 v36, v16

    move/from16 v8, v18

    move/from16 v11, v29

    move/from16 v10, v31

    const/4 v15, 0x6

    move/from16 v29, v9

    move-object v14, v12

    move/from16 v9, v41

    const/4 v12, 0x5

    goto/16 :goto_3f2

    .line 515
    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "buttonH":I
    .end local v31    # "r0W":I
    .end local v41    # "r1W":I
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "buttonH":I
    .local v9, "r1W":I
    .local v10, "r0W":I
    .local v11, "tID":I
    .local v13, "menuWidth":I
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v29, "buttonX":I
    .restart local v35    # "fGold":F
    :cond_7b4
    move-object v15, v7

    move/from16 v18, v8

    move/from16 v41, v9

    move/from16 v31, v10

    move-object v12, v14

    const/16 v37, 0x3

    move v7, v5

    move v14, v13

    .end local v5    # "buttonY":I
    .end local v8    # "buttonH":I
    .end local v9    # "r1W":I
    .end local v10    # "r0W":I
    .end local v13    # "menuWidth":I
    .local v7, "buttonY":I
    .restart local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "menuWidth":I
    .restart local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "buttonH":I
    .restart local v31    # "r0W":I
    .restart local v41    # "r1W":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v21

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 517
    .local v8, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v13, 0x0

    invoke-direct {v0, v13, v13, v14, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$12;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ProvinceMaintenance"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, p0

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v0, v9

    move v1, v11

    .end local v11    # "tID":I
    .local v1, "tID":I
    move/from16 v11, v20

    move-object v2, v12

    .end local v12    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v12, v21

    const/4 v3, 0x0

    move v13, v14

    move v4, v14

    .end local v14    # "menuWidth":I
    .local v4, "menuWidth":I
    move v14, v8

    move-object v5, v15

    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v15, v2

    invoke-virtual/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 531
    iput-boolean v3, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->drawScrollPositionAlways:Z

    .line 532
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

    .line 536
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 537
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 540
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 541
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 542
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getHeight()I

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

    .line 544
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 545
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 556
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 557
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->lTime2:J

    .line 558
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 549
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 551
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesMaintenance;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceMaintenance"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 552
    return-void
.end method
