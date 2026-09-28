.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;
.super Ljava/lang/Object;
.source "CivilizationLegacy.java"


# instance fields
.field public id:I

.field public lvl:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "iID"    # I
    .param p2, "iLevelID"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    .line 14
    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    .line 15
    return-void
.end method
