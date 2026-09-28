.class public Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VassalsToRelease"
.end annotation


# instance fields
.field public iCivID:I

.field public iNumOfProvinces:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iCivID"    # I
    .param p2, "iNumOfProvinces"    # I

    .line 3326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3324
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    .line 3327
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    .line 3328
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    .line 3329
    return-void
.end method
