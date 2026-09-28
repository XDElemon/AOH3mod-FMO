.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;
.super Ljava/lang/Object;
.source "CivilizationRegionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;
    }
.end annotation


# static fields
.field public static CIVILIZATIONS_NAMES_TIME:J

.field public static CIVILIZATIONS_NAMES_TIME_HIDE:J

.field public static CIVILIZATION_NAMES_ALPHA:F

.field public static NUM_OF_REGIONS_IN_VIEW:I

.field public static civsRegionsAlpha:F

.field public static drawHideAnimation:Z

.field public static isProvinceAssigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static lRegions_Civs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static lRegions_Civs_RegionsID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

.field public static oldTransformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public static updateRegionsInView:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->civsRegionsAlpha:F

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    .line 226
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->NUM_OF_REGIONS_IN_VIEW:I

    .line 343
    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    .line 344
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    .line 345
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    .line 346
    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 14
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView2()V

    return-void
.end method

.method public static final buildCivilizationsRegion(I)V
    .registers 4
    .param p0, "nCivID"    # I

    .line 54
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->clearCivRegions_Just()V

    .line 56
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 58
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 61
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 62
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 65
    .end local v0    # "i":I
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 66
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 67
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->createCivilizationRegion(I)V

    .line 68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateIsProvinceAssigned(IZ)V

    .line 65
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 72
    .end local v0    # "i":I
    :cond_7d
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_9e

    .line 82
    goto :goto_9f

    .line 80
    :catch_9e
    move-exception v0

    .line 83
    :goto_9f
    return-void
.end method

.method public static final buildCivilizationsRegions()V
    .registers 3

    .line 29
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 30
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->clearCivRegions_Just()V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    .end local v0    # "i":I
    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_17
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 35
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 36
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 38
    .end local v0    # "i":I
    :cond_32
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_33
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_67

    .line 39
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_64

    .line 40
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_64

    .line 42
    const/4 v1, 0x1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateIsProvinceAssigned(IZ)V

    .line 43
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->createCivilizationRegion(I)V

    .line 38
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 47
    .end local v0    # "i":I
    :cond_67
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegions_TextOver()V

    .line 50
    return-void
.end method

.method public static final buildCivilizationsRegions_TextOver()V
    .registers 2

    .line 96
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 97
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegions_TextOver(I)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public static final buildCivilizationsRegions_TextOver(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 102
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegionsSize()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 103
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildRegionPath_TriedToUse()V

    .line 104
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildRegionPath()Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "j":I
    :cond_24
    return-void
.end method

.method public static final drawCivNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 115
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_30

    .line 116
    sget-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    if-eqz v0, :cond_2d

    .line 117
    sget-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    if-eqz v0, :cond_1e

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->update()V

    .line 119
    sput-boolean v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 122
    :cond_1e
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_Begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 123
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivRegions_Names_UpdateTimeHide()V

    .line 124
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 125
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_4e

    .line 128
    :cond_2d
    sput-wide v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    goto :goto_4e

    .line 132
    :cond_30
    sget-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    if-eqz v0, :cond_3b

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->update()V

    .line 134
    sput-boolean v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 137
    :cond_3b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_Begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 138
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivRegions_Names_UpdateTime()V

    .line 139
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 140
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    .line 143
    sput-wide v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    .line 146
    :goto_4e
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 147
    return-void
.end method

.method public static final declared-synchronized drawCivNames_Begin(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-class v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;

    monitor-enter v0

    .line 150
    :try_start_3
    sget v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v2, v2, v4

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    sput v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->civsRegionsAlpha:F

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oldTransformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 154
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->civsRegionsAlpha:F

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 155
    monitor-exit v0

    return-void

    .line 149
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catchall_37
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawCivNames_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 158
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oldTransformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 159
    return-void
.end method

.method protected static final drawCivRegions_Names2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_59

    if-ge v0, v1, :cond_58

    .line 383
    :try_start_9
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_51

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_17
    if-ltz v1, :cond_50

    .line 385
    :try_start_19
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_42} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_42} :catch_43

    .line 392
    goto :goto_48

    .line 389
    :catch_43
    move-exception v2

    .line 390
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_44
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 391
    nop

    .line 383
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 386
    :catch_4b
    move-exception v2

    .line 387
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView2()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_51

    .line 388
    nop

    .line 396
    .end local v1    # "j":I
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_50
    goto :goto_55

    .line 394
    :catch_51
    move-exception v1

    .line 395
    .local v1, "exr":Ljava/lang/Exception;
    :try_start_52
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_59

    .line 381
    .end local v1    # "exr":Ljava/lang/Exception;
    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    .end local v0    # "i":I
    :cond_58
    goto :goto_5d

    .line 398
    :catch_59
    move-exception v0

    .line 399
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 401
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5d
    return-void
.end method

.method protected static final drawCivRegions_Names2_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->NUM_OF_REGIONS_IN_VIEW:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_55

    if-ge v0, v1, :cond_54

    .line 407
    :try_start_5
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_4d

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_13
    if-ltz v1, :cond_4c

    .line 409
    :try_start_15
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivRegion_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_3e} :catch_47
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3e} :catch_3f

    .line 416
    goto :goto_44

    .line 413
    :catch_3f
    move-exception v2

    .line 414
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_40
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 415
    nop

    .line 407
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 410
    :catch_47
    move-exception v2

    .line 411
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView2()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_4d

    .line 412
    nop

    .line 420
    .end local v1    # "j":I
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_4c
    goto :goto_51

    .line 418
    :catch_4d
    move-exception v1

    .line 419
    .local v1, "exr":Ljava/lang/Exception;
    :try_start_4e
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_55

    .line 405
    .end local v1    # "exr":Ljava/lang/Exception;
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    .end local v0    # "i":I
    :cond_54
    goto :goto_59

    .line 422
    :catch_55
    move-exception v0

    .line 423
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 425
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_59
    return-void
.end method

.method public static final drawCivRegions_Names_UpdateTime()V
    .registers 5

    .line 349
    sget-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 350
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    .line 351
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    goto :goto_3e

    .line 354
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3e

    .line 355
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    .line 357
    sget v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    .line 358
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    .line 362
    :cond_3e
    :goto_3e
    return-void
.end method

.method public static final drawCivRegions_Names_UpdateTimeHide()V
    .registers 6

    .line 365
    sget-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 366
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    .line 367
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    goto :goto_3b

    .line 370
    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATIONS_NAMES_TIME_HIDE:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    .line 372
    sget v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3b

    .line 373
    sput v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->CIVILIZATION_NAMES_ALPHA:F

    .line 374
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawHideAnimation:Z

    .line 377
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static processProvince(I[I)V
    .registers 6
    .param p0, "provinceID"    # I
    .param p1, "tempCivs"    # [I

    .line 250
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_8a

    .line 251
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    .line 252
    .local v0, "civID":I
    aget v1, p1, v0

    .line 254
    .local v1, "civIndex":I
    if-lez v1, :cond_4c

    .line 255
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 256
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 259
    :cond_4c
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 261
    aput v1, p1, v0

    .line 263
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v2

    if-ltz v2, :cond_8a

    .line 265
    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v0    # "civID":I
    .end local v1    # "civIndex":I
    :cond_8a
    :goto_8a
    return-void
.end method

.method public static updateIsProvinceAssigned(IZ)V
    .registers 4
    .param p0, "nProvinceID"    # I
    .param p1, "nIsProvinceAssigned"    # Z

    .line 87
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->isProvinceAssigned:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 90
    goto :goto_b

    .line 88
    :catch_a
    move-exception v0

    .line 91
    :goto_b
    return-void
.end method

.method private static final updateRegionsInView2()V
    .registers 3

    .line 229
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs_RegionsID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    :try_start_a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    new-array v0, v0, [I

    .line 235
    .local v0, "tempCivs":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_1f

    .line 236
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->processProvince(I[I)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 239
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_20
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_2e

    .line 240
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->processProvince(I[I)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 243
    .end local v1    # "i":I
    :cond_2e
    sget-object v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->lRegions_Civs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->NUM_OF_REGIONS_IN_VIEW:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_36} :catch_37

    .line 246
    .end local v0    # "tempCivs":[I
    goto :goto_3b

    .line 244
    :catch_37
    move-exception v0

    .line 245
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public static final updateRenderer_CivNames()V
    .registers 2

    .line 162
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 163
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 164
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarios_NewGame()Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 165
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v0

    if-nez v0, :cond_5e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 166
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 169
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CIV_NAMES:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_47

    .line 170
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    goto :goto_65

    .line 182
    :cond_47
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CIV_NAMES:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_56

    .line 183
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    goto :goto_65

    .line 196
    :cond_56
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    goto :goto_65

    .line 210
    :cond_5e
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->oRenderer_CivRegionNames:Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;

    .line 222
    :goto_65
    return-void
.end method
