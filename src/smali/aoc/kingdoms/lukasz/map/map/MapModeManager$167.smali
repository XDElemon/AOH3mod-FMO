.class Laoc/kingdoms/lukasz/map/map/MapModeManager$167;
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

    .line 3690
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$167;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 2

    .line 3703
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 3705
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    .line 3707
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->setCursorDefault()V

    .line 3708
    return-void
.end method

.method public enableViewAction()V
    .registers 2

    .line 3693
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 3697
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    .line 3698
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_Goods_InvestInEconomy()V

    .line 3699
    return-void
.end method
