.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;
.super Ljava/lang/Object;
.source "AI_BudgetDefault.java"


# instance fields
.field public c:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "civID"    # I
    .param p2, "turnID"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->c:I

    .line 15
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_BudgetDefault;->t:I

    .line 16
    return-void
.end method
