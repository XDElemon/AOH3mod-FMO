.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;
.source "InGame_BudgetIncomeEconomy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I

    .line 109
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy;

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

    .line 112
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->lastValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6e

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 114
    .local v0, "fVal":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_27

    const-string v3, "-"

    goto :goto_29

    :cond_27
    const-string v3, ""

    :goto_29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x64

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->setText(Ljava/lang/String;)V

    .line 115
    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->lastValue:F

    .line 117
    cmpl-float v1, v0, v2

    if-nez v1, :cond_51

    .line 118
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 119
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 120
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6e

    .line 121
    :cond_51
    cmpl-float v1, v0, v2

    if-lez v1, :cond_62

    .line 122
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 123
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 124
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6e

    .line 126
    :cond_62
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 127
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 128
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeEconomy$2;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    .line 132
    .end local v0    # "fVal":F
    :cond_6e
    :goto_6e
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
