.class public Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriceChange"
.end annotation


# instance fields
.field public expiresTurnID:I

.field public priceChange:F

.field public resourceID:I


# direct methods
.method public constructor <init>(IFI)V
    .registers 4
    .param p1, "resourceID"    # I
    .param p2, "priceChange"    # F
    .param p3, "expiresTurnID"    # I

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    .line 163
    iput p2, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->priceChange:F

    .line 164
    iput p3, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->expiresTurnID:I

    .line 165
    return-void
.end method
