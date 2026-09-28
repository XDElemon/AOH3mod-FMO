.class Laoc/kingdoms/lukasz/map/map/MapModeManager$161;
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

    .line 3504
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$161;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 2

    .line 3518
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 3520
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    .line 3522
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateRightMenu()V

    .line 3523
    return-void
.end method

.method public enableViewAction()V
    .registers 2

    .line 3507
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 3509
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iActiveResID:I

    .line 3510
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_RightGoods()V

    .line 3512
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    .line 3513
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_Goods()V

    .line 3514
    return-void
.end method
