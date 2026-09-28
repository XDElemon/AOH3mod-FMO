.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;
.source "InGame_BudgetExpensesBuildingsMaintenance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I

    .line 75
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public getTextToDraw()Ljava/lang/String;
    .registers 5

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->lastValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_88

    .line 79
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    .line 80
    .local v0, "fVal":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_41

    const-string v3, "+"

    goto :goto_43

    :cond_41
    const-string v3, ""

    :goto_43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x64

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->setText(Ljava/lang/String;)V

    .line 81
    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->lastValue:F

    .line 83
    cmpl-float v1, v0, v2

    if-nez v1, :cond_6b

    .line 84
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 85
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 86
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_88

    .line 87
    :cond_6b
    cmpl-float v1, v0, v2

    if-lez v1, :cond_7c

    .line 88
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 89
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 90
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_88

    .line 92
    :cond_7c
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 93
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 94
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$1;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    .line 98
    .end local v0    # "fVal":F
    :cond_88
    :goto_88
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
