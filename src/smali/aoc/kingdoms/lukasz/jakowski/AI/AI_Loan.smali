.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_Loan;
.super Ljava/lang/Object;
.source "AI_Loan.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canTakeLoan(I)Z
    .registers 3
    .param p0, "civID"    # I

    .line 8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->LOANS_LIMIT:I

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static takeLoan(I)Z
    .registers 4
    .param p0, "civID"    # I

    .line 20
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanMaxNumber(I)I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    .line 21
    return v2

    .line 24
    :cond_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->TAKE_LOAN_ONLY_IF_TREASURY_BELOW:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    .line 25
    return v2

    .line 28
    :cond_1e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->takeLoan()Z

    .line 30
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->reduceInflation()Z

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public static takeLoan_Chance(II)Z
    .registers 4
    .param p0, "civID"    # I
    .param p1, "chance"    # I

    .line 12
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, p1, :cond_f

    .line 13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Loan;->takeLoan(I)Z

    move-result v0

    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
