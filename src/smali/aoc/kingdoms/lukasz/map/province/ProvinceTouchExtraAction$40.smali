.class Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$40;
.super Ljava/lang/Object;
.source "ProvinceTouchExtraAction.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionUp_SetActiveProvinceID_ExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(IIII)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I
    .param p4, "button"    # I

    .line 1291
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_8

    .line 1292
    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->actionUpdateData(Z)V

    .line 1294
    :cond_8
    return-void
.end method
