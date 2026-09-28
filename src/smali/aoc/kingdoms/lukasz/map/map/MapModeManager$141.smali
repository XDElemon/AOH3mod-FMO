.class Laoc/kingdoms/lukasz/map/map/MapModeManager$141;
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

    .line 2793
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 3

    .line 2816
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 2817
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    .line 2818
    return-void
.end method

.method public enableViewAction()V
    .registers 7

    .line 2796
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 2797
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    .line 2799
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_24

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_24

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    goto :goto_28

    :cond_24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 2801
    .local v0, "activeCivID":I
    :goto_28
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 2802
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_61

    .line 2803
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    .line 2801
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2807
    .end local v2    # "i":I
    :cond_64
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    const v4, 0x3f733333    # 0.95f

    mul-float v3, v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    .line 2809
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_72
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_ac

    .line 2810
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/menu/Colors;->getPopulationColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iput-object v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 2809
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 2812
    .end local v2    # "i":I
    :cond_ac
    return-void
.end method
