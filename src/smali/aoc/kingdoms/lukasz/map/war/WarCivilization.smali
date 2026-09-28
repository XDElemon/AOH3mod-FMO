.class public Laoc/kingdoms/lukasz/map/war/WarCivilization;
.super Ljava/lang/Object;
.source "WarCivilization.java"


# instance fields
.field public iCasualties:I

.field public iCivID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 6
    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "nCivID"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 6
    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    .line 11
    iput p1, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 12
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "iCivID"    # I
    .param p2, "iCasualties"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 6
    iput v0, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    .line 15
    iput p1, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 16
    iput p2, p0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    .line 17
    return-void
.end method
