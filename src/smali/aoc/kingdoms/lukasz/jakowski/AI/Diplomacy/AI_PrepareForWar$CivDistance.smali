.class public Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;
.super Ljava/lang/Object;
.source "AI_PrepareForWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CivDistance"
.end annotation


# instance fields
.field public civID:I

.field public distance:F


# direct methods
.method public constructor <init>(IF)V
    .registers 3
    .param p1, "civID"    # I
    .param p2, "distance"    # F

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->civID:I

    .line 408
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    .line 409
    return-void
.end method
