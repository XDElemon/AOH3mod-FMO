.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;
.super Ljava/lang/Object;
.source "AI_CreateNewArmy.java"


# instance fields
.field public a:I

.field public n:I

.field public u:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "iUnitID"    # I
    .param p2, "iArmyID"    # I
    .param p3, "numOfRegiments"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->u:I

    .line 18
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->a:I

    .line 19
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    .line 20
    return-void
.end method
