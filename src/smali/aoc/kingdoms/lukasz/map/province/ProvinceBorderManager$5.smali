.class Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$5;
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

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetProvinceID()V
    .registers 1

    .line 337
    return-void
.end method

.method public setProvinceID(I)V
    .registers 2
    .param p1, "nProvinceID"    # I

    .line 332
    return-void
.end method

.method public update()V
    .registers 1

    .line 342
    return-void
.end method
