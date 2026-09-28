.class public Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;
.super Ljava/lang/Object;
.source "MercenariesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/MercenariesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BestArmy"
.end annotation


# instance fields
.field public iArmyID:I

.field public iUnitID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iUnitID"    # I
    .param p2, "iArmyID"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iUnitID:I

    .line 41
    iput p2, p0, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iArmyID:I

    .line 42
    return-void
.end method
