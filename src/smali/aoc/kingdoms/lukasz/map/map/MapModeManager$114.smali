.class Laoc/kingdoms/lukasz/map/map/MapModeManager$114;
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

    .line 2424
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 3

    .line 2447
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 2448
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    .line 2449
    return-void
.end method

.method public enableViewAction()V
    .registers 6

    .line 2427
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 2428
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    const v1, 0x3e19999a    # 0.15f

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    .line 2430
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_25

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_25

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    goto :goto_29

    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 2432
    .local v0, "activeCivID":I
    :goto_29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 2433
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_60

    .line 2434
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    .line 2432
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2438
    .end local v1    # "i":I
    :cond_63
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    .line 2440
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_71
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_ac

    .line 2441
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/menu/Colors;->getProvinceTaxColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 2440
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 2443
    .end local v1    # "i":I
    :cond_ac
    return-void
.end method
