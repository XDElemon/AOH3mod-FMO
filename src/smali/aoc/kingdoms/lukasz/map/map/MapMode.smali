.class public Laoc/kingdoms/lukasz/map/map/MapMode;
.super Ljava/lang/Object;
.source "MapMode.java"


# instance fields
.field public drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

.field public provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V
    .registers 3
    .param p1, "drawProvinces"    # Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;
    .param p2, "provinceHoverBuild"    # Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapMode;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    .line 15
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/map/MapMode;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    .line 16
    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 1

    .line 19
    return-void
.end method

.method public enableViewAction()V
    .registers 1

    .line 18
    return-void
.end method

.method public playSFX_ProvinceClick()V
    .registers 4

    .line 22
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_PROVINCE:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->PERC_VOLUME_SELECT_PROVINCE:F

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 23
    return-void
.end method
