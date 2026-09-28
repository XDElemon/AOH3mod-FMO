.class Laoc/kingdoms/lukasz/map/map/MapModeManager$6;
.super Laoc/kingdoms/lukasz/map/map/MapMode;
.source "MapModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapModeManager;
    .param p2, "drawProvinces"    # Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;
    .param p3, "provinceHoverBuild"    # Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    .line 458
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 1

    .line 471
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 472
    return-void
.end method

.method public enableViewAction()V
    .registers 2

    .line 461
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 463
    const v0, -0xbde31

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosX:I

    .line 464
    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosY:I

    .line 465
    const v0, -0x3bbdc000    # -777.0f

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyScale:F

    .line 466
    const/16 v0, -0x309

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    .line 467
    return-void
.end method
