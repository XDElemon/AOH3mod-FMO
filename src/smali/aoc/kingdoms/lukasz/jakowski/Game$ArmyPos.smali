.class public Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArmyPos"
.end annotation


# instance fields
.field public iID:I

.field public iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "iID"    # I

    .line 3065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3066
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    .line 3067
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    .line 3068
    return-void
.end method
