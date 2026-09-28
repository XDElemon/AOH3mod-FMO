.class Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$1;
.super Ljava/lang/Object;
.source "ProvinceBorderManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetProvinceID()V
    .registers 1

    .line 170
    return-void
.end method

.method public setProvinceID(I)V
    .registers 2
    .param p1, "nProvinceID"    # I

    .line 168
    return-void
.end method

.method public update()V
    .registers 1

    .line 172
    return-void
.end method
