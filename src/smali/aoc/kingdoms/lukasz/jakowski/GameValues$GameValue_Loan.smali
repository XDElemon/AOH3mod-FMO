.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Loan"
.end annotation


# instance fields
.field public LOAN_DAYS:I

.field public LOAN_DEFAULT_INTEREST:F

.field public LOAN_INFLATION:F

.field public LOAN_VALUE_BY_ECONOMY:F

.field public LOAN_VALUE_MIN:F

.field public LOAN_YEARS:I

.field public MAX_NUMBER_OF_LOANS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
