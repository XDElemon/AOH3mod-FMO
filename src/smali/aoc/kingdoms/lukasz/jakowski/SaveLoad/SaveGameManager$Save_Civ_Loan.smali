.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_Civ_Loan"
.end annotation


# instance fields
.field public c:I

.field public e:I

.field public l:F

.field public n:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILaoc/kingdoms/lukasz/map/Loan;)V
    .registers 4
    .param p1, "civID"    # I
    .param p2, "loan"    # Laoc/kingdoms/lukasz/map/Loan;

    .line 2148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2149
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->c:I

    .line 2150
    iget v0, p2, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->l:F

    .line 2151
    iget v0, p2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->n:F

    .line 2152
    iget v0, p2, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->e:I

    .line 2153
    return-void
.end method
