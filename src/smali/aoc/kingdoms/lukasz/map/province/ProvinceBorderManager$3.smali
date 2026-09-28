.class Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$3;
.super Ljava/lang/Object;
.source "ProvinceBorderManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetProvinceID()V
    .registers 1

    .line 301
    return-void
.end method

.method public setProvinceID(I)V
    .registers 2
    .param p1, "nProvinceID"    # I

    .line 295
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateDrawProvinceBorder_SelectCiv_ByProvinceID(I)V

    .line 296
    return-void
.end method

.method public update()V
    .registers 1

    .line 306
    return-void
.end method
