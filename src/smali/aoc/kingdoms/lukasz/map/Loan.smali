.class public Laoc/kingdoms/lukasz/map/Loan;
.super Ljava/lang/Object;
.source "Loan.java"


# instance fields
.field public fInterestPerMonth:F

.field public fLoanValue:F

.field public iExpires_TurnID:I


# direct methods
.method public constructor <init>(F)V
    .registers 4
    .param p1, "fLoanValue"    # F

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    .line 15
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    .line 17
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanMonthlyExpenses(F)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    .line 18
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;)V
    .registers 3
    .param p1, "nLoan"    # Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->l:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    .line 22
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->e:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    .line 24
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->n:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    .line 25
    return-void
.end method


# virtual methods
.method public getLoanValueLeft()F
    .registers 4

    .line 28
    iget v0, p0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    return v0
.end method
