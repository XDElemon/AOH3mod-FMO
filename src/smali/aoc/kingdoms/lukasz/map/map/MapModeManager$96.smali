.class Laoc/kingdoms/lukasz/map/map/MapModeManager$96;
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

    .line 2185
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 3

    .line 2210
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 2211
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    .line 2212
    return-void
.end method

.method public enableViewAction()V
    .registers 6

    .line 2188
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 2189
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    const/4 v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    .line 2191
    sget v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    .line 2193
    .local v0, "civID":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 2194
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    if-le v2, v3, :cond_3f

    .line 2195
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    .line 2193
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2199
    .end local v1    # "i":I
    :cond_42
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    int-to-float v2, v2

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    .line 2201
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_52
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 2202
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

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/menu/Colors;->getPopulationColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 2201
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 2205
    .end local v1    # "i":I
    :cond_8f
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    .line 2206
    return-void
.end method
