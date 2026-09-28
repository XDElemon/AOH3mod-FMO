.class public Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;
.super Ljava/lang/Object;
.source "ProvinceBorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBData"
.end annotation


# instance fields
.field public iProvinceID:I

.field public iWithProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "iWithProvinceID"    # I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    .line 162
    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    .line 163
    return-void
.end method
