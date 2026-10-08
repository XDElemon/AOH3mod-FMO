.class public Laoc/kingdoms/lukasz/map/province/Province;
.super Ljava/lang/Object;
.source "Province.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;
    }
.end annotation


# instance fields
.field public BaseDevelopment:F

.field public accessToMainSea:Z

.field public aiArmyScore:F

.field public aiBuildScore:F

.field public aiDistanceToCapital:F

.field public aiInvestScore:F

.field public aiMoveArmyAtWarScore:F

.field public aiMoveArmyAtWarScore_DistanceFromArmy:F

.field public aiPeaceCivID:I

.field public aiPeaceScore:I

.field public aiRebelsIndependenceChecked:Z

.field public aiRecruitArmyScore:I

.field public aiScore_CoresReligion:F

.field private belowZeroPosX:Z

.field public buildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public buildingsConstruction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public cityScale:F

.field public coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

.field private drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

.field private drawCities:Z

.field public drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

.field public drawInMapMode:Z

.field private drawProvince:Z

.field public fBaseGrowthRate:F

.field public fProvinceIncome:F

.field public fProvinceIncomeEconomy:F

.field public fProvinceIncomeProduction:F

.field public fProvinceIncomeTaxation:F

.field public fProvinceMaintenance:F

.field public fProvinceValue:F

.field public fogDrawArmy:Z

.field public fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

.field public haveACore:Z

.field private haveCity:Z

.field private iArmiesSize:I

.field public iBattlesInProvince:I

.field public iBuildingsConstructionSize:I

.field public iBuildingsLimit:I

.field public iBuildingsSize:I

.field public iCenterShiftX:I

.field public iCenterShiftY:I

.field private iCenterX:I

.field private iCenterX_Real:I

.field private iCenterY:I

.field private iCenterY_Real:I

.field private iCitiesSize:I

.field private iCivRegionID:I

.field private iContinentID:I

.field public iCoresSize:I

.field private iGeoRegionID:I

.field public iInfrastructureMax:I

.field private iLevelOfPort:I

.field private iMapModeRegion:I

.field private iMaxX:I

.field private iMaxX_Real:I

.field private iMaxY:I

.field private iMaxY_Real:I

.field private iMinX:I

.field private iMinX_Real:I

.field private iMinY:I

.field private iMinY_Real:I

.field public iNeighboringProvincesSize:I

.field public iNeighboringSeaProvincesSize:I

.field private iPointsSize:I

.field private iPortShiftX:I

.field private iPortShiftY:I

.field private iProvinceBordersLandByLandSize:I

.field private iProvinceBordersLandBySeaSize:I

.field private iProvinceBordersSeaBySeaSize:I

.field public iProvinceDevelopInfrastructureSize:I

.field public iProvinceID:I

.field public iProvinceIncreaseGrowthRateSize:I

.field public iProvinceIncreaseManpowerSize:I

.field public iProvinceIncreaseTaxEfficiencySize:I

.field public iProvinceInvestSize:I

.field public iProvinceNameLength_Minus1:I

.field private iResourceID:I

.field private iShiftX:I

.field private iShiftY:I

.field private iTerrainTypeID:I

.field private iTranslateProvincePosX:I

.field public isCapital:Z

.field private lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field private lCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/City;",
            ">;"
        }
    .end annotation
.end field

.field public lNeighboringProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lNeighboringSeaProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersLandByLand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersLandBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersSeaBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdatedDevastation:F

.field public peaceTreatyIsTaken:Z

.field public peaceTreatyIsToTake:Z

.field public provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

.field private provinceBG:Laoc/kingdoms/lukasz/textures/Image;

.field public provinceBGExtraY:I

.field public provinceColor:Lcom/badlogic/gdx/graphics/Color;

.field public provinceDevelopInfrastructureDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceIncreaseManpowerDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceInvestDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

.field public provincePopulationSize:I

.field public provincePopulationTotal:I

.field public religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

.field private sProvinceName:Ljava/lang/String;

.field private sProvinceNameUpperCase:Ljava/lang/String;

.field private seaProvince:Z

.field public was:Z

.field public wasAI:Z

.field public wasBattleEnded:Z

.field public wasBattleStart:Z

.field public wasCities:Z

.field public wasCivRegion:Z

.field public wasPlayer:Z

.field public wasRetreat:Z

.field public wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

.field public wonderID:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 9
    .param p1, "nProvinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p2, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    .local p3, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBGExtraY:I

    .line 112
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    .line 116
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    .line 118
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    .line 119
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    .line 122
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    .line 124
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_DEFAULT:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    .line 127
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    .line 130
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    .line 133
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    .line 136
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    .line 139
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    .line 141
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    .line 143
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_DEFAULT:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    .line 145
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    .line 148
    new-instance v3, Laoc/kingdoms/lukasz/map/province/Province$1;

    invoke-direct {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province$1;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    .line 150
    const/4 v3, -0x1

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    .line 151
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 153
    new-instance v4, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    .line 155
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 157
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 159
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 161
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 165
    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceName:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    .line 167
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I

    .line 169
    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iContinentID:I

    .line 173
    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTerrainTypeID:I

    .line 175
    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iResourceID:I

    .line 177
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    .line 180
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    .line 181
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->seaProvince:Z

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    .line 184
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawCities:Z

    .line 185
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    .line 186
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    .line 190
    const/4 v4, 0x0

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    .line 192
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    .line 193
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    .line 194
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    .line 198
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    .line 202
    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    .line 206
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z

    .line 207
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    .line 209
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    .line 210
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 214
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 216
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 217
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    .line 219
    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    .line 221
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiRecruitArmyScore:I

    .line 223
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    .line 225
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 226
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    .line 230
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    .line 247
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->belowZeroPosX:Z

    .line 250
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    .line 251
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    .line 254
    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCivRegionID:I

    .line 256
    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMapModeRegion:I

    .line 258
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    .line 259
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    .line 260
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasCities:Z

    .line 261
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasAI:Z

    .line 262
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasPlayer:Z

    .line 263
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    .line 264
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 265
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleEnded:Z

    .line 266
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I

    .line 268
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawInMapMode:Z

    .line 270
    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    .line 281
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    .line 287
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    .line 288
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    .line 289
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    .line 432
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 437
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$2;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province$2;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    .line 1045
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$4;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province$4;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    .line 3572
    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lastUpdatedDevastation:F

    .line 386
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    .line 388
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    .line 389
    iput-object p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    .line 391
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPointsSize:I

    .line 393
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    .line 394
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15d
    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPointsSize:I

    if-ge v1, v3, :cond_1dc

    .line 397
    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-le v3, v4, :cond_17f

    .line 398
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    .line 401
    :cond_17f
    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-ge v3, v4, :cond_19d

    .line 402
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    .line 405
    :cond_19d
    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-le v3, v4, :cond_1bb

    .line 406
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    .line 409
    :cond_1bb
    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-ge v3, v4, :cond_1d9

    .line 410
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    .line 396
    :cond_1d9
    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    .line 414
    .end local v1    # "i":I
    :cond_1dc
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX_Real:I

    .line 415
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY_Real:I

    .line 417
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX:I

    .line 418
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY:I

    .line 420
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    .line 421
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX:I

    .line 422
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    .line 423
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY:I

    .line 425
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    if-gez v1, :cond_239

    const/4 v0, 0x1

    :cond_239
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->belowZeroPosX:Z

    .line 427
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    if-le v0, v1, :cond_245

    .line 428
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    .line 430
    :cond_245
    return-void
.end method

.method public static logDupAdd(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .registers 14

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "um_dup:prov="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":dh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " || "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0x6

    if-le v5, v6, :cond_3c

    const/16 v5, 0x6

    :cond_3c
    const/4 v6, 0x0

    :goto_3d
    if-ge v6, v5, :cond_50

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIRDBG"

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static upyPr(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;III)V
    .registers 12
    .param p0, "prov"    # Laoc/kingdoms/lukasz/map/province/Province;
    .param p1, "div"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "sy"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upy:p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":j="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

.method public static upySk(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;I)V
    .registers 10
    .param p0, "prov"    # Laoc/kingdoms/lukasz/map/province/Province;
    .param p1, "div"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .param p2, "i"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upySk:p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    .registers 6
    .param p1, "nArmy"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 449
    if-eqz p1, :cond_97

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_97

    .line 450
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_1b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_ARMIES:Z

    if-eqz v0, :cond_1b

    .line 452
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;-><init>(Ljava/lang/String;Laoc/kingdoms/lukasz/map/army/ArmyDivision;Z)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTask_ArmyWidth(Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;)V

    .line 455
    :cond_1b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v0, :cond_5f

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "um_add:prov="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":dh="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIRDBG"

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5f

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->logDupAdd(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V

    goto :goto_97

    .line 456
    :cond_5f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 459
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 460
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 462
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v0, :cond_82

    .line 463
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addArmyPosition(ILjava/lang/String;)V

    goto :goto_91

    .line 465
    :cond_82
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addArmyPosition(ILjava/lang/String;)V

    .line 468
    :goto_91
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->checkForBattle()V

    .line 470
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    return-object v0

    .line 473
    :cond_97
    :goto_97
    const/4 v0, 0x0

    return-object v0
.end method

.method public final addArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    .registers 7
    .param p1, "nArmy"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 477
    if-eqz p1, :cond_5c

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_5c

    .line 478
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v0, :cond_21

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_21

    const-string v1, "AIRDBG"

    const-string v2, "ald_dup_skip"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_21
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 479
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 482
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 483
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 485
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v0, :cond_4a

    .line 486
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addArmyPosition(ILjava/lang/String;)V

    goto :goto_59

    .line 488
    :cond_4a
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addArmyPosition(ILjava/lang/String;)V

    .line 493
    :goto_59
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    return-object v0

    .line 496
    :cond_5c
    const/4 v0, 0x0

    return-object v0
.end method

.method public final addArmy_MoveUnits(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .registers 5
    .param p1, "nArmy"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 500
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_35

    .line 501
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_19

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_ARMIES:Z

    if-eqz v0, :cond_19

    .line 503
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;-><init>(Ljava/lang/String;Laoc/kingdoms/lukasz/map/army/ArmyDivision;Z)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTask_ArmyWidth(Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;)V

    .line 506
    :cond_19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 507
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 510
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 511
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 513
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->checkForBattle()V

    .line 515
    :cond_35
    return-void
.end method

.method public final addBuildingConstruction(II)Z
    .registers 8
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2484
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2485
    return v1

    .line 2488
    :cond_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    if-lt v0, v2, :cond_11

    .line 2489
    return v1

    .line 2492
    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v0, :cond_2e

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-eq v0, v2, :cond_2e

    .line 2493
    return v1

    .line 2496
    :cond_2e
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v0, :cond_53

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    if-eq v0, v2, :cond_53

    .line 2497
    return v1

    .line 2500
    :cond_53
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v0, :cond_78

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-eq v0, v2, :cond_78

    .line 2501
    return v1

    .line 2504
    :cond_78
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0

    if-gez v0, :cond_8b

    .line 2505
    return v1

    .line 2508
    :cond_8b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8c
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v2, :cond_b0

    .line 2509
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v2

    if-ne v2, p1, :cond_ad

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v2

    if-ne v2, p2, :cond_ad

    .line 2510
    return v1

    .line 2508
    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 2514
    .end local v0    # "i":I
    :cond_b0
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 2515
    return v1

    .line 2518
    :cond_b7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v2, v3, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_d3

    .line 2519
    return v1

    .line 2522
    :cond_d3
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    .line 2523
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v1, v2, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v1

    .line 2524
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v2, v3, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;-><init>(IIII)V

    .line 2526
    .local v0, "nConstruction":Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v3, v4, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2528
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2529
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    .line 2531
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceBuildingsUnderConstruction(I)V

    .line 2533
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_12f

    .line 2534
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    .line 2537
    :cond_12f
    const/4 v1, 0x1

    return v1
.end method

.method public final addBuildingConstruction_Load(Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;)V
    .registers 4
    .param p1, "nConstruction"    # Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    .line 2477
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2478
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    .line 2480
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceBuildingsUnderConstruction(I)V

    .line 2481
    return-void
.end method

.method public final addCity(Laoc/kingdoms/lukasz/map/map/City;)V
    .registers 3
    .param p1, "oCity"    # Laoc/kingdoms/lukasz/map/map/City;

    .line 2237
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2239
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    .line 2241
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    .line 2242
    return-void
.end method

.method public addCore(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 3280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_28

    .line 3281
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_25

    .line 3282
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne p1, v1, :cond_24

    .line 3283
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3285
    :cond_24
    return-void

    .line 3280
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3289
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3290
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 3292
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3293
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4d
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_8f

    .line 3294
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v1, v3, :cond_8c

    .line 3295
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3297
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3299
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 3300
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 3301
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3303
    goto :goto_8f

    .line 3293
    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 3307
    .end local v0    # "i":I
    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->checkProvince(II)V

    .line 3308
    return-void
.end method

.method public final addCoreCreation()Z
    .registers 4

    .line 3358
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3359
    return v1

    .line 3362
    :cond_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3363
    return v1

    .line 3366
    :cond_d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-nez v0, :cond_75

    .line 3367
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_75

    .line 3368
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 3370
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3372
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceCoreCreation(I)V

    .line 3374
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    .line 3376
    const/4 v0, 0x1

    return v0

    .line 3380
    :cond_75
    return v1
.end method

.method public final addCoreCreation_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 3384
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3385
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3386
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceCoreCreation(I)V

    .line 3388
    :cond_1a
    return-void
.end method

.method public addCore_Just(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 3221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_28

    .line 3222
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_25

    .line 3223
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne p1, v1, :cond_24

    .line 3224
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3226
    :cond_24
    return-void

    .line 3221
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3230
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3231
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 3233
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateHaveACore()V

    .line 3234
    return-void
.end method

.method public addDevelopInfrastructure()Z
    .registers 2

    .line 3434
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addDevelopInfrastructure(I)Z

    move-result v0

    return v0
.end method

.method public addDevelopInfrastructure(I)Z
    .registers 5
    .param p1, "iCivID_Paying"    # I

    .line 3438
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCost(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 3439
    return v2

    .line 3442
    :cond_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCostLegacy(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 3443
    return v2

    .line 3446
    :cond_27
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    if-lt v0, v1, :cond_33

    .line 3447
    return v2

    .line 3450
    :cond_33
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 3451
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCostLegacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 3453
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureTime(I)I

    move-result v0

    .line 3454
    .local v0, "investTime":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3455
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    .line 3457
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceDevelopInfrastructure(I)V

    .line 3459
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addDevelopedInfrastructure(I)V

    .line 3461
    return v2
.end method

.method public addDevelopInfrastructure_Free()Z
    .registers 4

    .line 3472
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    if-lt v0, v1, :cond_d

    .line 3473
    const/4 v0, 0x0

    return v0

    .line 3476
    :cond_d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureTime(I)I

    move-result v0

    .line 3477
    .local v0, "investTime":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3478
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    .line 3480
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceDevelopInfrastructure(I)V

    .line 3482
    const/4 v1, 0x1

    return v1
.end method

.method public addDevelopInfrastructure_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 3465
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3466
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    .line 3468
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceDevelopInfrastructure(I)V

    .line 3469
    return-void
.end method

.method public addIncreaseGrowthRateInProvince()Z
    .registers 2

    .line 2973
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addIncreaseGrowthRateInProvince(I)Z
    .registers 6
    .param p1, "iCivID_Paying"    # I

    .line 2977
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 2978
    const/4 v0, 0x0

    return v0

    .line 2981
    :cond_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2983
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateTime(I)I

    move-result v0

    .line 2984
    .local v0, "investTime":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2985
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    .line 2987
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseGrowthRate(I)V

    .line 2989
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_GROWTH:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addIncreasedGrowthRate(I)V

    .line 2991
    const/4 v1, 0x1

    return v1
.end method

.method public addIncreaseGrowthRateInProvince_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 2995
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2996
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    .line 2998
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseGrowthRate(I)V

    .line 2999
    return-void
.end method

.method public addIncreaseManpowerInProvince()Z
    .registers 2

    .line 2861
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseManpowerInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addIncreaseManpowerInProvince(I)Z
    .registers 6
    .param p1, "iCivID_Paying"    # I

    .line 2865
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 2866
    return v2

    .line 2869
    :cond_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 2870
    return v2

    .line 2873
    :cond_27
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2874
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 2876
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreseManpowerTime(I)I

    move-result v0

    .line 2877
    .local v0, "investTime":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2878
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    .line 2880
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseManpower(I)V

    .line 2882
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_GROWTH:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addIncreasedManpower(I)V

    .line 2884
    const/4 v1, 0x1

    return v1
.end method

.method public addIncreaseManpowerInProvince_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 2888
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2889
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    .line 2891
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseManpower(I)V

    .line 2892
    return-void
.end method

.method public addIncreaseTaxEfficiencyInProvince()Z
    .registers 2

    .line 2917
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addIncreaseTaxEfficiencyInProvince(I)Z
    .registers 6
    .param p1, "iCivID_Paying"    # I

    .line 2921
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 2922
    return v2

    .line 2925
    :cond_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 2926
    return v2

    .line 2929
    :cond_27
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2930
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 2932
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreasTaxEfficiencyTime(I)I

    move-result v0

    .line 2933
    .local v0, "investTime":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2934
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    .line 2936
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseTaxEfficiency(I)V

    .line 2938
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_GROWTH:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addIncreasedTaxEfficiency(I)V

    .line 2940
    const/4 v1, 0x1

    return v1
.end method

.method public addIncreaseTaxEfficiencyInProvince_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 2944
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2945
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    .line 2947
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseTaxEfficiency(I)V

    .line 2948
    return-void
.end method

.method public addInvestInProvince()Z
    .registers 2

    .line 2795
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addInvestInProvince(I)Z
    .registers 6
    .param p1, "iCivID_Paying"    # I

    .line 2799
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 2800
    return v2

    .line 2803
    :cond_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 2804
    return v2

    .line 2807
    :cond_27
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2808
    return v2

    .line 2811
    :cond_30
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2812
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 2814
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestTime(I)I

    move-result v0

    .line 2815
    .local v0, "investTime":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2816
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    .line 2818
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceInvest(I)V

    .line 2820
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addInvestedInEconomy(I)V

    .line 2822
    const/4 v1, 0x1

    return v1
.end method

.method public addInvestInProvince_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 2826
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2827
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    .line 2829
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceInvest(I)V

    .line 2830
    return-void
.end method

.method public final addNeighboringProvince(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 2116
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2117
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    .line 2118
    return-void
.end method

.method public final addNeighboringSeaProvince(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 2132
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    .line 2135
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAccessToMainSea()V

    .line 2136
    return-void
.end method

.method public final addNewBuilding(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V
    .registers 5
    .param p1, "nBuilding"    # Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    .line 2671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_30

    .line 2672
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    if-ne v1, v2, :cond_2d

    .line 2673
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void

    .line 2671
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2677
    .end local v0    # "i":I
    :cond_30
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2678
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    .line 2680
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    if-ltz v0, :cond_56

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_56

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerAirport(II)V

    :cond_56
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ltz v0, :cond_6b

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_6b

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    :cond_6b
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ltz v0, :cond_80

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_80

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    :cond_80
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ltz v0, :cond_95

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_95

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    .line 2681
    :cond_95
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void
.end method

.method public final addNewBuilding_LoadScenario(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V
    .registers 6
    .param p1, "nBuilding"    # Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    .line 2682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_30

    .line 2683
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    if-ne v1, v2, :cond_2d

    .line 2684
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void

    .line 2682
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2688
    .end local v0    # "i":I
    :cond_30
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2689
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    .line 2691
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    .line 2693
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    if-ltz v0, :cond_66

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_66

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerAirport(II)V

    :cond_66
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ltz v0, :cond_7b

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_7b

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    :cond_7b
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ltz v0, :cond_90

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_90

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    :cond_90
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ltz v0, :cond_a5

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, v0, :cond_a5

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    .line 2694
    :cond_a5
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void
.end method

.method public final addProvinceBorder(ILjava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "nWithProvinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p2, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_17

    .line 311
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_14

    .line 312
    return-void

    .line 310
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_18
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v0, v1, :cond_2e

    .line 317
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_2b

    .line 318
    return-void

    .line 316
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 322
    .end local v0    # "i":I
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_45

    .line 323
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_42

    .line 324
    return-void

    .line 322
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 328
    .end local v0    # "i":I
    :cond_45
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 329
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    .line 332
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_d1

    .line 334
    :cond_79
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_8a

    goto :goto_ae

    .line 342
    :cond_8a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    .line 345
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_d1

    .line 335
    :cond_ae
    :goto_ae
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    .line 338
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 347
    :goto_d1
    return-void
.end method

.method public final addReligionConversion()Z
    .registers 5

    .line 3160
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3161
    return v1

    .line 3164
    :cond_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    if-eq v0, v2, :cond_80

    .line 3165
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_80

    .line 3166
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 3168
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3170
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->removeProvince(I)V

    .line 3172
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceConvertReligion(I)V

    .line 3173
    const/4 v0, 0x1

    return v0

    .line 3177
    :cond_80
    return v1
.end method

.method public final addReligionConversion_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 3181
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 3182
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3183
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceConvertReligion(I)V

    .line 3185
    :cond_22
    return-void
.end method

.method public final addWonderConstruction_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 3065
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3066
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3067
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceWonderConstruction(I)V

    .line 3069
    :cond_1e
    return-void
.end method

.method public final armyDestroyed(Ljava/lang/String;)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .line 936
    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    if-nez v0, :cond_7

    .line 937
    return-void

    .line 940
    :cond_7
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_4e

    .line 941
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/map/province/Province$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ARMY_DESTROYED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ArmyDestroyed"

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/map/province/Province$3;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 949
    :cond_4e
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    .line 952
    goto :goto_56

    .line 950
    :catch_52
    move-exception v0

    .line 951
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 953
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_56
    return-void
.end method

.method public final armyRetreat(Ljava/lang/String;I)I
    .registers 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "extraArmyY"    # I

    .line 957
    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 959
    .local v0, "tArmyID":I
    if-ltz v0, :cond_1c1

    .line 960
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 962
    .local v1, "iCivID":I
    if-gez v1, :cond_19

    .line 963
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    .line 964
    const/4 v2, 0x0

    return v2

    .line 967
    :cond_19
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/war/WarManager;->retreatToProvinceID(II)I

    move-result v2

    .line 969
    .local v2, "retreatToProvinceID":I
    if-gez v2, :cond_9f

    .line 970
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v3, "tempRetreatTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-lez v4, :cond_6b

    .line 973
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_6b

    .line 974
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 975
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    if-eq v5, v6, :cond_68

    .line 976
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 982
    .end local v4    # "i":I
    :cond_6b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_87

    .line 983
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    goto :goto_9c

    .line 986
    :cond_87
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v4

    if-lez v4, :cond_9c

    .line 987
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    move v2, v4

    .line 990
    .end local v3    # "tempRetreatTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9c
    :goto_9c
    move v8, v2

    goto/16 :goto_189

    .line 992
    :cond_9f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .restart local v3    # "tempRetreatTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_a5
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_16b

    .line 995
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v1, v5, :cond_167

    .line 996
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    if-eq v5, v6, :cond_f0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-nez v5, :cond_f0

    .line 997
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_f0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_f1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_167

    .line 1002
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v1, v6, :cond_164

    .line 1003
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    if-eq v6, v7, :cond_164

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_164

    .line 1004
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_164
    add-int/lit8 v5, v5, 0x1

    goto :goto_f1

    .line 994
    .end local v5    # "j":I
    :cond_167
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a5

    .line 1011
    .end local v4    # "i":I
    :cond_16b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_188

    .line 1012
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    move v8, v2

    goto :goto_189

    .line 1011
    :cond_188
    move v8, v2

    .line 1016
    .end local v2    # "retreatToProvinceID":I
    .end local v3    # "tempRetreatTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "retreatToProvinceID":I
    :goto_189
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_198

    .line 1017
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    .line 1020
    :cond_198
    const/4 v2, -0x1

    if-ltz v8, :cond_1c0

    .line 1021
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 1023
    return v2

    .line 1026
    :cond_1aa
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b2} :catch_1c2

    add-int/lit8 v9, p2, 0x1

    .end local p2    # "extraArmyY":I
    .local v9, "extraArmyY":I
    const/4 v7, 0x1

    move v4, v8

    move-object v5, p1

    move v6, p2

    :try_start_1b8
    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bb} :catch_1bd

    move p2, v9

    goto :goto_1c1

    .line 1035
    .end local v0    # "tArmyID":I
    .end local v1    # "iCivID":I
    .end local v8    # "retreatToProvinceID":I
    :catch_1bd
    move-exception v0

    move p2, v9

    goto :goto_1c3

    .line 1032
    .end local v9    # "extraArmyY":I
    .restart local v0    # "tArmyID":I
    .restart local v1    # "iCivID":I
    .restart local v8    # "retreatToProvinceID":I
    .restart local p2    # "extraArmyY":I
    :cond_1c0
    return v2

    .line 1037
    .end local v0    # "tArmyID":I
    .end local v1    # "iCivID":I
    .end local v8    # "retreatToProvinceID":I
    :cond_1c1
    :goto_1c1
    goto :goto_1c6

    .line 1035
    :catch_1c2
    move-exception v0

    .line 1036
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1c3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1039
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1c6
    return p2
.end method

.method public final atomicBombDropped()I
    .registers 10

    .line 3646
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v0

    .line 3649
    .local v0, "nPopBefore":I
    :try_start_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCasualties(I)F

    move-result v1

    .line 3651
    .local v1, "populationCasualtiesPerc":F
    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_39

    .line 3652
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationSize()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "k":I
    :goto_17
    if-ltz v2, :cond_39

    .line 3653
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v4

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v1

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_bf

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-int v5, v5

    :try_start_33
    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    .line 3652
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 3657
    .end local v2    # "k":I
    :cond_39
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_ECONOMY:F

    const v6, 0x3c23d70a    # 0.01f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v4, v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    .line 3659
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_55
    if-ltz v2, :cond_a6

    .line 3660
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int/2addr v4, v3

    .local v4, "j":I
    :goto_5e
    if-ltz v4, :cond_9c

    .line 3661
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v6, v6

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v7, v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_ARMY:F

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 3660
    add-int/lit8 v4, v4, -0x1

    goto :goto_5e

    .line 3664
    .end local v4    # "j":I
    :cond_9c
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 3659
    add-int/lit8 v2, v2, -0x1

    goto :goto_55

    .line 3667
    .end local v2    # "i":I
    :cond_a6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_DEVASTATION:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    .line 3669
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3670
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_be} :catch_bf

    .line 3673
    .end local v1    # "populationCasualtiesPerc":F
    goto :goto_c3

    .line 3671
    :catch_bf
    move-exception v1

    .line 3672
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3675
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_c3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public final autoAssimilate()V
    .registers 6

    .line 2365
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2366
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_70

    .line 2367
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v1

    .line 2369
    .local v1, "population":Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eq v2, v3, :cond_6d

    .line 2370
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_MIN:I

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_PERC:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2372
    .local v2, "tPop":I
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_ALL_IF_BELOW:I

    if-ge v3, v4, :cond_51

    .line 2373
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    move v2, v3

    .line 2376
    :cond_51
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationOfCivID(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    .line 2377
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_71

    .line 2366
    .end local v1    # "population":Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
    .end local v2    # "tPop":I
    :cond_6d
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 2383
    .end local v0    # "i":I
    :cond_70
    goto :goto_75

    .line 2381
    :catch_71
    move-exception v0

    .line 2382
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2384
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_75
    return-void
.end method

.method public final buildDistanceToCapital()V
    .registers 3

    .line 1677
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_3b

    .line 1678
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    div-float/2addr v0, v1

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    .line 1680
    :cond_3b
    return-void
.end method

.method public final buildPopulation_LoadGame()V
    .registers 4

    .line 2387
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    .line 2389
    const/4 v0, 0x0

    .line 2391
    .local v0, "tPopTotal":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v1, v2, :cond_2c

    .line 2392
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v2

    add-int/2addr v0, v2

    .line 2391
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2395
    .end local v1    # "i":I
    :cond_2c
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2396
    return-void
.end method

.method public final buildProvinceBG(Z)V
    .registers 27
    .param p1, "overwriteExistingFiles"    # Z

    .line 1328
    move-object/from16 v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 1330
    .local v1, "tempMapScaleBefore":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "data/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "scales/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "AvailableScales.txt"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 1331
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1332
    .local v6, "tempT":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1334
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v8, "tempL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    array-length v10, v7

    if-ge v9, v10, :cond_50

    .line 1336
    aget-object v10, v7, v9

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 1339
    .end local v9    # "i":I
    :cond_50
    const/4 v9, 0x1

    .line 1340
    .local v9, "addStandardScale":Z
    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v11, -0x4

    const/4 v12, 0x1

    if-ne v10, v11, :cond_59

    const/4 v10, 0x1

    goto :goto_5a

    :cond_59
    const/4 v10, 0x0

    .line 1342
    .local v10, "addScale1":Z
    :goto_5a
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_7c

    .line 1343
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-ne v13, v14, :cond_79

    .line 1344
    const/4 v9, 0x0

    .line 1345
    goto :goto_7c

    .line 1342
    :cond_79
    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    .line 1349
    .end local v11    # "i":I
    :cond_7c
    :goto_7c
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_94

    .line 1350
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v12, :cond_91

    .line 1351
    const/4 v10, 0x0

    .line 1352
    goto :goto_94

    .line 1349
    :cond_91
    add-int/lit8 v11, v11, 0x1

    goto :goto_7d

    .line 1356
    .end local v11    # "i":I
    :cond_94
    :goto_94
    if-eqz v9, :cond_b6

    .line 1357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_b6
    if-eqz v10, :cond_c9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-eq v11, v12, :cond_c9

    .line 1361
    const-string v11, "1"

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_c9
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_ca
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_427

    .line 1365
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 1367
    const-string v13, "/"

    if-nez p1, :cond_12c

    .line 1368
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v14

    if-eqz v14, :cond_12c

    .line 1369
    move/from16 v22, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    const/4 v15, 0x1

    goto/16 :goto_416

    .line 1373
    :cond_12c
    new-instance v14, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v15, v15, v12

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    move-object/from16 v16, v2

    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v12, v12, v2

    sub-int/2addr v15, v12

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v2, v2, v12

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    move-object/from16 v17, v6

    .end local v6    # "tempT":Ljava/lang/String;
    .local v17, "tempT":Ljava/lang/String;
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v12, v12, v6

    sub-int/2addr v2, v12

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v14, v15, v2, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v2, v14

    .line 1375
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v6, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1377
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    if-nez v6, :cond_16b

    .line 1378
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePoints_Cut()V

    .line 1381
    :cond_16b
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_16c
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    if-ge v6, v12, :cond_3a7

    .line 1382
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_173
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v14

    if-ge v12, v14, :cond_39a

    .line 1383
    const/4 v14, 0x1

    .line 1386
    .local v14, "addCrop":Z
    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v15

    if-nez v15, :cond_1c0

    .line 1387
    const/4 v15, 0x0

    .local v15, "z":I
    sget-object v18, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    move-object/from16 v19, v7

    .end local v7    # "tagsSPLITED":[Ljava/lang/String;
    .local v19, "tagsSPLITED":[Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "zSize":I
    :goto_18f
    if-ge v15, v7, :cond_1b9

    .line 1388
    move/from16 v18, v7

    .end local v7    # "zSize":I
    .local v18, "zSize":I
    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    move/from16 v20, v9

    .end local v9    # "addStandardScale":Z
    .local v20, "addStandardScale":Z
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v9

    add-int/2addr v7, v12

    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    move/from16 v21, v10

    .end local v10    # "addScale1":Z
    .local v21, "addScale1":Z
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v9, v9, v10

    add-int/2addr v9, v6

    invoke-static {v15, v7, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains_Cut(III)Z

    move-result v7

    if-eqz v7, :cond_1b0

    .line 1389
    const/4 v14, 0x0

    .line 1387
    :cond_1b0
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v18

    move/from16 v9, v20

    move/from16 v10, v21

    goto :goto_18f

    .end local v18    # "zSize":I
    .end local v20    # "addStandardScale":Z
    .end local v21    # "addScale1":Z
    .restart local v7    # "zSize":I
    .restart local v9    # "addStandardScale":Z
    .restart local v10    # "addScale1":Z
    :cond_1b9
    move/from16 v18, v7

    move/from16 v20, v9

    move/from16 v21, v10

    .end local v7    # "zSize":I
    .end local v9    # "addStandardScale":Z
    .end local v10    # "addScale1":Z
    .restart local v18    # "zSize":I
    .restart local v20    # "addStandardScale":Z
    .restart local v21    # "addScale1":Z
    goto :goto_1c6

    .line 1386
    .end local v15    # "z":I
    .end local v18    # "zSize":I
    .end local v19    # "tagsSPLITED":[Ljava/lang/String;
    .end local v20    # "addStandardScale":Z
    .end local v21    # "addScale1":Z
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "addStandardScale":Z
    .restart local v10    # "addScale1":Z
    :cond_1c0
    move-object/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    .line 1394
    .end local v7    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "addStandardScale":Z
    .end local v10    # "addScale1":Z
    .restart local v19    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v20    # "addStandardScale":Z
    .restart local v21    # "addScale1":Z
    :goto_1c6
    if-nez v14, :cond_1cd

    .line 1395
    move/from16 v22, v1

    const/4 v15, 0x1

    goto/16 :goto_38e

    .line 1398
    :cond_1cd
    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v9, v9, v10

    add-int/2addr v9, v12

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v15

    add-int/2addr v10, v6

    invoke-static {v7, v9, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_231

    .line 1399
    const/4 v7, 0x1

    .line 1401
    .local v7, "add":Z
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_1e9
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_225

    .line 1402
    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v15

    if-le v10, v15, :cond_21a

    .line 1403
    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    move/from16 v18, v14

    .end local v14    # "addCrop":Z
    .local v18, "addCrop":Z
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v15, v15, v14

    add-int/2addr v15, v12

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    move/from16 v22, v1

    .end local v1    # "tempMapScaleBefore":I
    .local v22, "tempMapScaleBefore":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v1

    add-int/2addr v14, v6

    invoke-static {v10, v15, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 1404
    const/4 v1, 0x0

    move v7, v1

    .end local v7    # "add":Z
    .local v1, "add":Z
    goto :goto_21e

    .line 1402
    .end local v18    # "addCrop":Z
    .end local v22    # "tempMapScaleBefore":I
    .local v1, "tempMapScaleBefore":I
    .restart local v7    # "add":Z
    .restart local v14    # "addCrop":Z
    :cond_21a
    move/from16 v22, v1

    move/from16 v18, v14

    .line 1401
    .end local v1    # "tempMapScaleBefore":I
    .end local v14    # "addCrop":Z
    .restart local v18    # "addCrop":Z
    .restart local v22    # "tempMapScaleBefore":I
    :cond_21e
    :goto_21e
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v18

    move/from16 v1, v22

    goto :goto_1e9

    .end local v18    # "addCrop":Z
    .end local v22    # "tempMapScaleBefore":I
    .restart local v1    # "tempMapScaleBefore":I
    .restart local v14    # "addCrop":Z
    :cond_225
    move/from16 v22, v1

    move/from16 v18, v14

    .line 1409
    .end local v1    # "tempMapScaleBefore":I
    .end local v9    # "a":I
    .end local v14    # "addCrop":Z
    .restart local v18    # "addCrop":Z
    .restart local v22    # "tempMapScaleBefore":I
    if-eqz v7, :cond_22e

    .line 1410
    invoke-virtual {v2, v12, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 1412
    .end local v7    # "add":Z
    :cond_22e
    const/4 v15, 0x1

    goto/16 :goto_38e

    .line 1414
    .end local v18    # "addCrop":Z
    .end local v22    # "tempMapScaleBefore":I
    .restart local v1    # "tempMapScaleBefore":I
    .restart local v14    # "addCrop":Z
    :cond_231
    move/from16 v22, v1

    move/from16 v18, v14

    .end local v1    # "tempMapScaleBefore":I
    .end local v14    # "addCrop":Z
    .restart local v18    # "addCrop":Z
    .restart local v22    # "tempMapScaleBefore":I
    const/4 v1, 0x0

    .line 1416
    .local v1, "add":Z
    const/4 v7, 0x0

    .line 1418
    .local v7, "check":Z
    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x1

    add-int/2addr v10, v14

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    invoke-static {v9, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_254

    .line 1419
    const/4 v7, 0x1

    .line 1422
    :cond_254
    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-static {v9, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_271

    .line 1423
    const/4 v7, 0x1

    .line 1426
    :cond_271
    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    invoke-static {v9, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_28e

    .line 1427
    const/4 v7, 0x1

    .line 1430
    :cond_28e
    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-static {v9, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_2ab

    .line 1431
    const/4 v7, 0x1

    .line 1434
    :cond_2ab
    if-nez v7, :cond_2b0

    .line 1435
    const/4 v15, 0x1

    goto/16 :goto_38e

    .line 1438
    :cond_2b0
    const/4 v9, 0x0

    .line 1440
    .local v9, "edn":Z
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2b2
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v14

    if-ge v10, v14, :cond_2e1

    .line 1441
    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v14

    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    move/from16 v23, v1

    .end local v1    # "add":Z
    .local v23, "add":Z
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v15, v15, v1

    add-int/2addr v15, v12

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    move/from16 v24, v7

    .end local v7    # "check":Z
    .local v24, "check":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v7

    add-int/2addr v1, v6

    invoke-static {v14, v15, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_2da

    .line 1442
    const/4 v9, 0x1

    .line 1443
    goto :goto_2e5

    .line 1440
    :cond_2da
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v23

    move/from16 v7, v24

    goto :goto_2b2

    .end local v23    # "add":Z
    .end local v24    # "check":Z
    .restart local v1    # "add":Z
    .restart local v7    # "check":Z
    :cond_2e1
    move/from16 v23, v1

    move/from16 v24, v7

    .line 1447
    .end local v1    # "add":Z
    .end local v7    # "check":Z
    .end local v10    # "a":I
    .restart local v23    # "add":Z
    .restart local v24    # "check":Z
    :goto_2e5
    if-eqz v9, :cond_2ea

    .line 1448
    const/4 v15, 0x1

    goto/16 :goto_38e

    .line 1451
    :cond_2ea
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_2eb
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v1, v7, :cond_386

    .line 1452
    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    if-le v7, v10, :cond_381

    .line 1453
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x1

    add-int/2addr v10, v14

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    invoke-static {v7, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_31c

    .line 1454
    const/4 v7, 0x1

    .line 1455
    .end local v23    # "add":Z
    .local v7, "add":Z
    move v1, v7

    const/4 v15, 0x1

    goto/16 :goto_389

    .line 1458
    .end local v7    # "add":Z
    .restart local v23    # "add":Z
    :cond_31c
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-static {v7, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_33e

    .line 1459
    const/4 v7, 0x1

    .line 1460
    .end local v23    # "add":Z
    .restart local v7    # "add":Z
    move v1, v7

    const/4 v15, 0x1

    goto :goto_389

    .line 1463
    .end local v7    # "add":Z
    .restart local v23    # "add":Z
    :cond_33e
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    invoke-static {v7, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_360

    .line 1464
    const/4 v7, 0x1

    .line 1465
    .end local v23    # "add":Z
    .restart local v7    # "add":Z
    move v1, v7

    const/4 v15, 0x1

    goto :goto_389

    .line 1468
    .end local v7    # "add":Z
    .restart local v23    # "add":Z
    :cond_360
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v14

    add-int/2addr v10, v12

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    add-int/2addr v14, v6

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-static {v7, v10, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_382

    .line 1469
    const/4 v7, 0x1

    .line 1470
    .end local v23    # "add":Z
    .restart local v7    # "add":Z
    move v1, v7

    goto :goto_389

    .line 1452
    .end local v7    # "add":Z
    .restart local v23    # "add":Z
    :cond_381
    const/4 v15, 0x1

    .line 1451
    :cond_382
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2eb

    :cond_386
    const/4 v15, 0x1

    move/from16 v1, v23

    .line 1475
    .end local v23    # "add":Z
    .local v1, "add":Z
    :goto_389
    if-eqz v1, :cond_38e

    .line 1476
    invoke-virtual {v2, v12, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 1382
    .end local v1    # "add":Z
    .end local v9    # "edn":Z
    .end local v18    # "addCrop":Z
    .end local v24    # "check":Z
    :cond_38e
    :goto_38e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v1, v22

    goto/16 :goto_173

    .end local v19    # "tagsSPLITED":[Ljava/lang/String;
    .end local v20    # "addStandardScale":Z
    .end local v21    # "addScale1":Z
    .end local v22    # "tempMapScaleBefore":I
    .local v1, "tempMapScaleBefore":I
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    .local v9, "addStandardScale":Z
    .local v10, "addScale1":Z
    :cond_39a
    move/from16 v22, v1

    move-object/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    const/4 v15, 0x1

    .line 1381
    .end local v1    # "tempMapScaleBefore":I
    .end local v7    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "addStandardScale":Z
    .end local v10    # "addScale1":Z
    .end local v12    # "x":I
    .restart local v19    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v20    # "addStandardScale":Z
    .restart local v21    # "addScale1":Z
    .restart local v22    # "tempMapScaleBefore":I
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16c

    .end local v19    # "tagsSPLITED":[Ljava/lang/String;
    .end local v20    # "addStandardScale":Z
    .end local v21    # "addScale1":Z
    .end local v22    # "tempMapScaleBefore":I
    .restart local v1    # "tempMapScaleBefore":I
    .restart local v7    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "addStandardScale":Z
    .restart local v10    # "addScale1":Z
    :cond_3a7
    move/from16 v22, v1

    move-object/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    const/4 v15, 0x1

    .line 1482
    .end local v1    # "tempMapScaleBefore":I
    .end local v6    # "y":I
    .end local v7    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "addStandardScale":Z
    .end local v10    # "addScale1":Z
    .restart local v19    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v20    # "addStandardScale":Z
    .restart local v21    # "addScale1":Z
    .restart local v22    # "tempMapScaleBefore":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 1484
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 1487
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- PROVINCE DATA GENERATED "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " --"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    .line 1364
    .end local v2    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_416
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v1, v22

    const/4 v12, 0x1

    goto/16 :goto_ca

    .end local v16    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "tempT":Ljava/lang/String;
    .end local v19    # "tagsSPLITED":[Ljava/lang/String;
    .end local v20    # "addStandardScale":Z
    .end local v21    # "addScale1":Z
    .end local v22    # "tempMapScaleBefore":I
    .restart local v1    # "tempMapScaleBefore":I
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v6, "tempT":Ljava/lang/String;
    .restart local v7    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "addStandardScale":Z
    .restart local v10    # "addScale1":Z
    :cond_427
    move/from16 v22, v1

    move-object/from16 v16, v2

    .line 1490
    .end local v1    # "tempMapScaleBefore":I
    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v11    # "i":I
    .restart local v16    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v22    # "tempMapScaleBefore":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROVINCE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AoC"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    move/from16 v2, v22

    .end local v22    # "tempMapScaleBefore":I
    .local v2, "tempMapScaleBefore":I
    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 1493
    return-void
.end method

.method public final buildProvinceBG_Just(Z)V
    .registers 23
    .param p1, "overwriteExistingFiles"    # Z

    .line 1496
    move-object/from16 v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 1498
    .local v1, "tempMapScaleBefore":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "data/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "scales/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "AvailableScales.txt"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 1499
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1500
    .local v6, "tempT":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1502
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v8, "tempL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    array-length v10, v7

    if-ge v9, v10, :cond_50

    .line 1504
    aget-object v10, v7, v9

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 1507
    .end local v9    # "i":I
    :cond_50
    const/4 v9, 0x1

    .line 1508
    .local v9, "addStandardScale":Z
    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v11, -0x4

    const/4 v12, 0x1

    if-ne v10, v11, :cond_59

    const/4 v10, 0x1

    goto :goto_5a

    :cond_59
    const/4 v10, 0x0

    .line 1510
    .local v10, "addScale1":Z
    :goto_5a
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_7c

    .line 1511
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-ne v13, v14, :cond_79

    .line 1512
    const/4 v9, 0x0

    .line 1513
    goto :goto_7c

    .line 1510
    :cond_79
    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    .line 1517
    .end local v11    # "i":I
    :cond_7c
    :goto_7c
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_94

    .line 1518
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v12, :cond_91

    .line 1519
    const/4 v10, 0x0

    .line 1520
    goto :goto_94

    .line 1517
    :cond_91
    add-int/lit8 v11, v11, 0x1

    goto :goto_7d

    .line 1524
    .end local v11    # "i":I
    :cond_94
    :goto_94
    if-eqz v9, :cond_b6

    .line 1525
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_b6
    if-eqz v10, :cond_c9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-eq v11, v12, :cond_c9

    .line 1529
    const-string v11, "1"

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    :cond_c9
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_ca
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_229

    .line 1533
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 1535
    const-string v12, "/"

    if-nez p1, :cond_129

    .line 1536
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v13

    if-eqz v13, :cond_129

    .line 1537
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v9

    move/from16 v20, v10

    goto/16 :goto_21b

    .line 1541
    :cond_129
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v14, v14, v15

    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    move-object/from16 v16, v2

    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v15, v15, v2

    sub-int/2addr v14, v15

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v2, v2, v15

    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    move-object/from16 v17, v6

    .end local v6    # "tempT":Ljava/lang/String;
    .local v17, "tempT":Ljava/lang/String;
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v15, v15, v6

    sub-int/2addr v2, v15

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v13, v14, v2, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v2, v13

    .line 1543
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v6, v13, v13, v13, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1545
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    if-nez v6, :cond_168

    .line 1546
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePoints_Cut()V

    .line 1549
    :cond_168
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_169
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v13

    if-ge v6, v13, :cond_1af

    .line 1550
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_170
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_1a6

    .line 1551
    const/4 v14, 0x1

    .line 1554
    .local v14, "addCrop":Z
    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object/from16 v18, v7

    .end local v7    # "tagsSPLITED":[Ljava/lang/String;
    .local v18, "tagsSPLITED":[Ljava/lang/String;
    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    move/from16 v19, v9

    .end local v9    # "addStandardScale":Z
    .local v19, "addStandardScale":Z
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v9

    add-int/2addr v7, v13

    iget v9, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    move/from16 v20, v10

    .end local v10    # "addScale1":Z
    .local v20, "addScale1":Z
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v9, v9, v10

    add-int/2addr v9, v6

    invoke-static {v15, v7, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_19d

    .line 1555
    const/4 v7, 0x1

    .line 1557
    .local v7, "add":Z
    if-eqz v7, :cond_19d

    .line 1558
    invoke-virtual {v2, v13, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    .line 1550
    .end local v7    # "add":Z
    .end local v14    # "addCrop":Z
    :cond_19d
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v18

    move/from16 v9, v19

    move/from16 v10, v20

    goto :goto_170

    .end local v18    # "tagsSPLITED":[Ljava/lang/String;
    .end local v19    # "addStandardScale":Z
    .end local v20    # "addScale1":Z
    .local v7, "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "addStandardScale":Z
    .restart local v10    # "addScale1":Z
    :cond_1a6
    move-object/from16 v18, v7

    move/from16 v19, v9

    move/from16 v20, v10

    .line 1549
    .end local v7    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "addStandardScale":Z
    .end local v10    # "addScale1":Z
    .end local v13    # "x":I
    .restart local v18    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v19    # "addStandardScale":Z
    .restart local v20    # "addScale1":Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_169

    .end local v18    # "tagsSPLITED":[Ljava/lang/String;
    .end local v19    # "addStandardScale":Z
    .end local v20    # "addScale1":Z
    .restart local v7    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "addStandardScale":Z
    .restart local v10    # "addScale1":Z
    :cond_1af
    move-object/from16 v18, v7

    move/from16 v19, v9

    move/from16 v20, v10

    .line 1564
    .end local v6    # "y":I
    .end local v7    # "tagsSPLITED":[Ljava/lang/String;
    .end local v9    # "addStandardScale":Z
    .end local v10    # "addScale1":Z
    .restart local v18    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v19    # "addStandardScale":Z
    .restart local v20    # "addScale1":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 1566
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 1568
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/Toast;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- PROVINCE DATA GENERATED "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    .line 1532
    .end local v2    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_21b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v9, v19

    move/from16 v10, v20

    goto/16 :goto_ca

    .end local v16    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v17    # "tempT":Ljava/lang/String;
    .end local v18    # "tagsSPLITED":[Ljava/lang/String;
    .end local v19    # "addStandardScale":Z
    .end local v20    # "addScale1":Z
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v6, "tempT":Ljava/lang/String;
    .restart local v7    # "tagsSPLITED":[Ljava/lang/String;
    .restart local v9    # "addStandardScale":Z
    .restart local v10    # "addScale1":Z
    :cond_229
    move-object/from16 v16, v2

    .line 1571
    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v11    # "i":I
    .restart local v16    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROVINCE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AoC"

    invoke-interface {v2, v4, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput v1, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 1574
    return-void
.end method

.method public buildWonder()Z
    .registers 5

    .line 3047
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    const/4 v1, 0x0

    if-ltz v0, :cond_69

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_69

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-nez v0, :cond_69

    .line 3048
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->getWonderConstructionCost(II)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_28

    .line 3049
    return v1

    .line 3052
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->getWonderConstructionCost(II)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 3053
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v1, v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ConstructionTime:I

    sget-object v2, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v2, v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ConstructionTime:I

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3055
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceWonderConstruction(I)V

    .line 3057
    const/4 v0, 0x1

    return v0

    .line 3061
    :cond_69
    return v1
.end method

.method public buildingBuilt(II)Z
    .registers 5
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_26

    .line 2599
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 2600
    const/4 v1, 0x1

    return v1

    .line 2598
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2604
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final cancelBuildingConstruction(III)Z
    .registers 10
    .param p1, "nCivID"    # I
    .param p2, "building"    # I
    .param p3, "buildingID"    # I

    .line 2541
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2542
    return v1

    .line 2545
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v2, :cond_8f

    .line 2546
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v2

    if-ne v2, p2, :cond_8b

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v2

    if-ne v2, p3, :cond_8b

    .line 2547
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v3, v4, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    .line 2548
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2550
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2551
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    .line 2553
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-nez v1, :cond_7a

    .line 2554
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceBuildingsUnderConstruction(I)V

    .line 2557
    :cond_7a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_89

    .line 2558
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    .line 2560
    :cond_89
    const/4 v1, 0x1

    return v1

    .line 2545
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 2564
    .end local v0    # "i":I
    :cond_8f
    return v1
.end method

.method public final checkForBattle()V
    .registers 7

    .line 4011
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9f

    .line 4012
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_9f

    .line 4013
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v2, :cond_9b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v2, :cond_9b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 4014
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_69

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v2, :cond_69

    .line 4015
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v2, v3, v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->joinBattle(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;I)V

    goto :goto_9f

    .line 4017
    :cond_69
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v2, :cond_97

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_97

    .line 4018
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v2, v3, v4, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->joinBattle(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;I)V

    goto :goto_9f

    .line 4021
    :cond_97
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->startBattle()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9a} :catch_a0

    .line 4024
    goto :goto_9f

    .line 4012
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 4030
    .end local v0    # "i":I
    :cond_9f
    :goto_9f
    goto :goto_a4

    .line 4028
    :catch_a0
    move-exception v0

    .line 4029
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4031
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a4
    return-void
.end method

.method public final clearArmiesCivID(I)V
    .registers 6
    .param p1, "nRemoveAllArmiesCivID"    # I

    .line 620
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_45

    .line 621
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne p1, v1, :cond_42

    .line 622
    if-gez p1, :cond_28

    .line 623
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    goto :goto_3d

    .line 625
    :cond_28
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeArmyPosition(ILjava/lang/String;)V

    .line 628
    :goto_3d
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 620
    :cond_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 632
    .end local v0    # "i":I
    :cond_45
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 635
    goto :goto_52

    .line 633
    :catch_4e
    move-exception v0

    .line 634
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 636
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_52
    return-void
.end method

.method public final clearArmies_ScenarioEditor()V
    .registers 2

    .line 639
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 641
    return-void
.end method

.method public final clearCities()V
    .registers 2

    .line 2253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    .line 2254
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    .line 2255
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    .line 2256
    return-void
.end method

.method public clearCores()V
    .registers 2

    .line 3274
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3275
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 3276
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3277
    return-void
.end method

.method public final clearData()V
    .registers 4

    .line 60
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 63
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->clearPopulationData()V

    .line 65
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 66
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    .line 68
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    .line 71
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_DEFAULT:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    .line 73
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    .line 76
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    .line 79
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    .line 82
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    .line 85
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 86
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    .line 90
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_DEFAULT:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    .line 91
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    .line 93
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setWonderBuilt(Z)V

    .line 94
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 96
    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    .line 98
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 100
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 101
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 102
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 104
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 108
    return-void
.end method

.method public final clearPopulationData()V
    .registers 3

    .line 2399
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2400
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2401
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    .line 2402
    return-void
.end method

.method public final destroyBuilding(II)V
    .registers 6
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_8c

    .line 2696
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_88

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_88

    .line 2697
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v1, p1, p2, v2}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    .line 2699
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2700
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    .line 2702
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 2703
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    if-ltz v0, :cond_51

    if-ne p1, v0, :cond_51

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->unregisterAirport(II)V

    :cond_51
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ltz v0, :cond_62

    if-ne p1, v0, :cond_62

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->unregisterRadar(I)V

    :cond_62
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ltz v0, :cond_73

    if-ne p1, v0, :cond_73

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->unregisterRadar(I)V

    :cond_73
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ltz v0, :cond_84

    if-ne p1, v0, :cond_84

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->unregisterRadar(I)V

    .line 2704
    :cond_84
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void

    .line 2695
    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2707
    .end local v0    # "i":I
    :cond_8c
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void
.end method

.method public final destroyBuilding_ScenarioEditor(II)V
    .registers 5
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_35

    .line 2711
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_32

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_32

    .line 2712
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2713
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    .line 2714
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void

    .line 2710
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2717
    .end local v0    # "i":I
    :cond_35
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V

    return-void
.end method

.method public disbandRegiment(Ljava/lang/String;Ljava/util/List;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;)Z"
        }
    .end annotation

    .line 730
    .local p2, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 732
    .local v0, "armyID":I
    if-ltz v0, :cond_47

    .line 733
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 735
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_16
    const/4 v3, 0x1

    if-ge v1, v2, :cond_31

    .line 736
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v4, v5, v3, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(Ljava/lang/String;ZI)Z

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 739
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_31
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-nez v1, :cond_40

    .line 740
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy_UnassignGeneral(I)V

    .line 741
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_46

    .line 743
    :cond_40
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 744
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_48

    .line 747
    :goto_46
    return v3

    .line 751
    .end local v0    # "armyID":I
    :cond_47
    goto :goto_4c

    .line 749
    :catch_48
    move-exception v0

    .line 750
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 753
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4c
    const/4 v0, 0x0

    return v0
.end method

.method public final disposeProvinceBG()V
    .registers 2

    .line 1318
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1319
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "scale"    # F
    .param p5, "nAlpha"    # I

    .line 1251
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    int-to-float v1, p5

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    sget-boolean v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    if-eqz v4, :cond_44

    iget v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airReachFilter(I)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3ecccccd    # 0.4f

    iget v6, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    move v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v8

    mul-float v9, v9, v7

    add-float v6, v6, v9

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    move v9, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v8

    mul-float v9, v9, v7

    add-float v8, v8, v9

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    move v9, v4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v4

    mul-float v9, v9, v7

    add-float v4, v4, v9

    invoke-virtual {p1, v6, v8, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1252
    :cond_44
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-double v1, v1

    .line 1253
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    int-to-float v2, v2

    mul-float v2, v2, p4

    float-to-double v2, v2

    .line 1254
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v3, v3, p4

    .line 1252
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    .line 1258
    goto :goto_69

    .line 1256
    :catch_68
    move-exception v0

    .line 1259
    :goto_69
    return-void
.end method

.method public final drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fAlpha"    # F

    .line 443
    const/4 v0, 0x0

    .local v0, "iArmyID":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_f

    .line 444
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-interface {v1, p1, v2, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "iArmyID":I
    :cond_f
    return-void
.end method

.method public final drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F
    .param p4, "fAlpha2"    # F
    .param p5, "fontScale"    # F

    .line 2187
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_18

    .line 2188
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    .line 2190
    :cond_18
    return-void
.end method

.method public final drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F
    .param p4, "fAlpha2"    # F
    .param p5, "fontScale"    # F

    .line 2193
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_18

    .line 2194
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    .line 2196
    :cond_18
    return-void
.end method

.method public final drawCities_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 2217
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_12

    .line 2218
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    .line 2220
    :cond_12
    return-void
.end method

.method public final drawCities_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 2211
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_16

    .line 2212
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    .line 2214
    :cond_16
    return-void
.end method

.method public final drawCities_InGame_CivFlagWar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 2223
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_12

    .line 2224
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital_CivFlag_War(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    .line 2226
    :cond_12
    return-void
.end method

.method public final drawCities_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F
    .param p4, "fAlpha2"    # F
    .param p5, "fontScale"    # F

    .line 2199
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_18

    .line 2200
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    .line 2202
    :cond_18
    return-void
.end method

.method public final drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F
    .param p4, "fAlpha2"    # F
    .param p5, "fontScale"    # F

    .line 2205
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_18

    .line 2206
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    .line 2208
    :cond_18
    return-void
.end method

.method public final drawCities_NamesNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F
    .param p4, "fAlpha2"    # F
    .param p5, "fontScale"    # F

    .line 2229
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_17

    .line 2230
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_NameNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    .line 2232
    :cond_17
    return-void
.end method

.method public final drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1054
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1055
    return-void
.end method

.method public final drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1058
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 1059
    return-void
.end method

.method public final drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1169
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1170
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 1169
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1171
    return-void
.end method

.method public final drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fProvinceAlpha"    # F

    const-string v4, "afd:enter"

    const-string v5, "e"

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afdIn()V

    sget-boolean v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    if-eqz v4, :cond_4a

    iget v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airReachFilter(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afdHit(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3ecccccd    # 0.4f

    iget v6, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v6

    mul-float v10, v10, v9

    add-float v6, v6, v10

    iget v7, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v7

    mul-float v10, v10, v9

    add-float v7, v7, v10

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v8

    mul-float v10, v10, v9

    add-float v8, v8, v10

    invoke-virtual {p1, v6, v7, v8, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 1176
    :cond_4a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1177
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 1176
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1178
    return-void
.end method

.method public final drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1196
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1197
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 1196
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1198
    return-void
.end method

.method public final drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fProvinceAlpha"    # F

    .line 1201
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1203
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1204
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 1203
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1205
    return-void
.end method

.method public final drawLandProvince_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fProvinceAlpha"    # F

    .line 1181
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1183
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1184
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 1183
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1185
    return-void
.end method

.method protected final drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fAlpha"    # F

    .line 1208
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    if-gez v0, :cond_23

    .line 1209
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3a

    .line 1212
    :cond_23
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1215
    :goto_3a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    const-string v2, "u_maskScale"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 1216
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    const-string v2, "u_maskScaleY"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 1218
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1219
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1221
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int v3, v0, v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1223
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int v4, v0, v2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 1224
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v0, v0, v2

    float-to-int v5, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v0, v0, v2

    float-to-int v6, v0

    .line 1221
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1226
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1227
    return-void
.end method

.method public final drawOccupiedProvince_Religion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1230
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:F

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1232
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_63

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    :cond_63
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    mul-float v1, v1, v0

    .line 1234
    .local v1, "fMapScale":F
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    div-float/2addr v2, v4

    const-string v4, "u_maskScale"

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 1235
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    div-float/2addr v2, v4

    const-string v4, "u_maskScaleY"

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 1237
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1238
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1240
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int v4, v0, v3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1242
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int v5, v0, v3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 1243
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v0, v0, v3

    float-to-int v6, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v0, v0, v3

    float-to-int v7, v0

    .line 1240
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1245
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1246
    return-void
.end method

.method protected final drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "lineWidth"    # F
    .param p3, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v0, v1, :cond_17

    .line 295
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2, p3, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_18
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_2e

    .line 299
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2, p3, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 302
    .end local v0    # "i":I
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_45

    .line 303
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2, p3, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 305
    .end local v0    # "i":I
    :cond_45
    return-void
.end method

.method public final drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1126
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1127
    return-void

    .line 1130
    :cond_7
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_25

    .line 1136
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1138
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v3, v3

    .line 1136
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_3c

    .line 1142
    :cond_25
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1144
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 1142
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1147
    :goto_3c
    return-void
.end method

.method public final drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "imgProvince"    # Laoc/kingdoms/lukasz/textures/Image;

    .line 1151
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1c

    .line 1152
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1154
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v2, v2

    .line 1152
    invoke-virtual {p2, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_31

    .line 1158
    :cond_1c
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1160
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 1158
    invoke-virtual {p2, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 1165
    :goto_31
    goto :goto_36

    .line 1163
    :catch_32
    move-exception v0

    .line 1164
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1166
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method public final drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "scale"    # F
    .param p5, "nAlpha"    # I

    .line 1278
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    int-to-float v1, p5

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getWastelandColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1279
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-double v1, v1

    .line 1280
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    int-to-float v2, v2

    mul-float v2, v2, p4

    float-to-double v2, v2

    .line 1281
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v3, v3, p4

    .line 1279
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 1283
    return-void
.end method

.method public final draw_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "scale"    # F
    .param p5, "nAlpha"    # I

    .line 1264
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getMetProvince(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1265
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    int-to-float v1, p5

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    .line 1267
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-double v1, v1

    .line 1268
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    int-to-float v2, v2

    mul-float v2, v2, p4

    float-to-double v2, v2

    .line 1269
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v3, v3, p4

    .line 1267
    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_38} :catch_39

    .line 1274
    :cond_38
    goto :goto_3d

    .line 1272
    :catch_39
    move-exception v0

    .line 1273
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/map/province/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 1275
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_3d
    return-void
.end method

.method public final getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .registers 5
    .param p1, "i"    # I

    .line 645
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 646
    :catch_9
    move-exception v0

    .line 650
    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    return-object v0
.end method

.method public final getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1d

    .line 686
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 687
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1e

    return-object v1

    .line 685
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 692
    .end local v0    # "i":I
    :cond_1d
    goto :goto_22

    .line 690
    :catch_1e
    move-exception v0

    .line 691
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 694
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getArmyKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .registers 4
    .param p1, "nKey"    # Ljava/lang/String;

    .line 877
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_21

    .line 878
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 879
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_22

    return-object v1

    .line 877
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 884
    .end local v0    # "i":I
    :cond_21
    goto :goto_26

    .line 882
    :catch_22
    move-exception v0

    .line 883
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 886
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getArmyKeyID(Ljava/lang/String;)I
    .registers 4
    .param p1, "nKey"    # Ljava/lang/String;

    .line 849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_19

    .line 850
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1a

    if-eqz v1, :cond_16

    .line 851
    return v0

    .line 849
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 856
    .end local v0    # "i":I
    :cond_19
    goto :goto_1b

    .line 854
    :catch_1a
    move-exception v0

    .line 858
    :goto_1b
    const/4 v0, -0x1

    return v0
.end method

.method public final getArmyKeyID(Ljava/lang/String;I)I
    .registers 5
    .param p1, "nKey"    # Ljava/lang/String;
    .param p2, "iCivID"    # I

    .line 863
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_25

    .line 864
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v1, p2, :cond_22

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_26

    if-eqz v1, :cond_22

    .line 865
    return v0

    .line 863
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 870
    .end local v0    # "i":I
    :cond_25
    goto :goto_2a

    .line 868
    :catch_26
    move-exception v0

    .line 869
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 872
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a
    const/4 v0, -0x1

    return v0
.end method

.method public final getArmyRegimentSize_InProvince()I
    .registers 5

    .line 894
    const/4 v0, 0x0

    .line 896
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v1, v2, :cond_24

    .line 897
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 898
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v0, v2

    .line 896
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 902
    .end local v1    # "i":I
    :cond_24
    return v0
.end method

.method public static columnShiftFor(II)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0
    if-nez v0, :r6d163_done

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    :r6d163_loop
    if-ge v1, v2, :r6d163_after

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5
    if-nez v5, :r6d163_next

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;
    if-eqz v6, :r6d163_ground

    const-string v7, "airhq_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    if-eqz v7, :r6d163_ground

    add-int/lit8 v3, v3, 0x1

    goto :r6d163_next

    :r6d163_ground
    add-int/lit8 v4, v4, 0x1

    :r6d163_next
    add-int/lit8 v1, v1, 0x1

    goto :r6d163_loop

    :r6d163_after
    invoke-static {p0, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->csf(III)V

    if-lez v3, :r6d163_done

    if-lez v4, :r6d163_done

    if-eqz p1, :r6d163_gret

    const/16 v7, 0x41

    return v7

    :r6d163_gret
    const/16 v7, -0x24

    return v7

    :r6d163_done
    const/4 v7, 0x0

    return v7
.end method

.method public final getArmySize()I
    .registers 2

    .line 890
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    return v0
.end method

.method public getBaseEconomy()F
    .registers 2

    .line 2405
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    return v0
.end method

.method public final getBelowZero()Z
    .registers 2

    .line 1945
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->belowZeroPosX:Z

    return v0
.end method

.method public getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    .registers 3
    .param p1, "i"    # I

    .line 2720
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    return-object v0
.end method

.method public getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;
    .registers 3
    .param p1, "i"    # I

    .line 2724
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    return-object v0
.end method

.method public getBuildingsConstruction_MaintenanceCosts()F
    .registers 7

    .line 2728
    const/4 v0, 0x0

    .line 2730
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v1, v2, :cond_a6

    .line 2731
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v3

    aget v2, v2, v3

    .line 2734
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    const/4 v4, 0x0

    if-eqz v3, :cond_9f

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v5

    aget v3, v3, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9f

    .line 2735
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_MAINTENANCE_COST:F

    mul-float v4, v4, v3

    goto :goto_a0

    :cond_9f
    nop

    :goto_a0
    add-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 2730
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 2739
    .end local v1    # "i":I
    :cond_a6
    return v0
.end method

.method public getBuildingsLimit_FreeSlots()I
    .registers 3

    .line 2785
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getCenterX()I
    .registers 2

    .line 1603
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX:I

    return v0
.end method

.method public final getCenterX_Real()I
    .registers 2

    .line 1611
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX_Real:I

    return v0
.end method

.method public final getCenterY()I
    .registers 2

    .line 1607
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY:I

    return v0
.end method

.method public final getCenterY_Real()I
    .registers 2

    .line 1615
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY_Real:I

    return v0
.end method

.method public final getCitiesSize()I
    .registers 2

    .line 2249
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    return v0
.end method

.method public final getCity(I)Laoc/kingdoms/lukasz/map/map/City;
    .registers 3
    .param p1, "i"    # I

    .line 2245
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    return-object v0
.end method

.method public final getCivID()I
    .registers 2

    .line 1689
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    return v0
.end method

.method public final getCivRegionID()I
    .registers 2

    .line 1949
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCivRegionID:I

    return v0
.end method

.method public final getConstructionID(II)I
    .registers 5
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v1, :cond_25

    .line 2589
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_22

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_22

    .line 2590
    return v0

    .line 2588
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2594
    .end local v0    # "i":I
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method public final getContinent()I
    .registers 2

    .line 1965
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iContinentID:I

    return v0
.end method

.method public getCore(I)I
    .registers 3
    .param p1, "id"    # I

    .line 3339
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 3340
    :catch_15
    move-exception v0

    .line 3344
    const/4 v0, 0x0

    return v0
.end method

.method public getDevastation()F
    .registers 2

    .line 3569
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->getDevastation()F

    move-result v0

    return v0
.end method

.method public final getDrawCities()Z
    .registers 2

    .line 2259
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawCities:Z

    return v0
.end method

.method public final getDrawProvince()Z
    .registers 2

    .line 1669
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    return v0
.end method

.method public getEconomy()F
    .registers 2

    .line 2409
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->getEconomy()F

    move-result v0

    return v0
.end method

.method public getEconomyWithBonuses()F
    .registers 3

    .line 2413
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->getEconomy()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->Economy:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getFogDrawArmy()Z
    .registers 2

    .line 4184
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    return v0
.end method

.method public getFortDefense()I
    .registers 4

    .line 3683
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_DEFAULT:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_FORT_LVL:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_GROWTH_RATE_LVL:F

    .line 3685
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortDefense:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL:F

    .line 3687
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getManpower()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-gez v1, :cond_45

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_FORT_DEFENSE:F

    goto :goto_47

    :cond_45
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_47
    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3683
    return v0
.end method

.method public getFortDefense_Manpower()I
    .registers 3

    .line 3691
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getManpower()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFortLevel()I
    .registers 2

    .line 3679
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    return v0
.end method

.method public final getGeoRegion()I
    .registers 2

    .line 1973
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iGeoRegionID:I

    return v0
.end method

.method public final getGrowthRate()F
    .registers 2

    .line 2005
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    return v0
.end method

.method public final getGrowthRateWithBonuses()F
    .registers 5

    .line 2009
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    add-float/2addr v0, v1

    .line 2010
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getIncreasedGrowthRate()F

    move-result v1

    add-float/2addr v0, v1

    .line 2011
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->getColonizationGrowthRateExtra()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    .line 2012
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_GROWTH_RATE_PER_LVL:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    .line 2009
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getGrowthRateWithBonuses_WithoutColonizationBonus()F
    .registers 6

    .line 2016
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    add-float/2addr v0, v1

    .line 2017
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getIncreasedGrowthRate()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    .line 2018
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 2016
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2018
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_GROWTH_RATE_PER_LVL:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    mul-float v0, v0, v2

    .line 2016
    return v0
.end method

.method public final getInfrastructure()I
    .registers 2

    .line 3420
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->getInfrastructure()I

    move-result v0

    return v0
.end method

.method public final getLevelOfPort()I
    .registers 2

    .line 1997
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    return v0
.end method

.method public getLoot()F
    .registers 2

    .line 4002
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->getLoot()F

    move-result v0

    return v0
.end method

.method public getManpower()F
    .registers 2

    .line 2461
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getManpower()F

    move-result v0

    return v0
.end method

.method public final getMapModeRegionID()I
    .registers 2

    .line 1957
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMapModeRegion:I

    return v0
.end method

.method public final getMaxX()I
    .registers 2

    .line 1583
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX:I

    return v0
.end method

.method public final getMaxY()I
    .registers 2

    .line 1591
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY:I

    return v0
.end method

.method public final getMinX()I
    .registers 2

    .line 1579
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    return v0
.end method

.method public final getMinY()I
    .registers 2

    .line 1587
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    return v0
.end method

.method public final getNeighboringProvinces(I)I
    .registers 3
    .param p1, "i"    # I

    .line 2108
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getNeighboringProvincesSize()I
    .registers 2

    .line 2162
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    return v0
.end method

.method public final getNeighboringSeaProvinces(I)I
    .registers 3
    .param p1, "i"    # I

    .line 2112
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getNeighboringSeaProvincesSize()I
    .registers 2

    .line 2166
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    return v0
.end method

.method public final getPointsSize()I
    .registers 2

    .line 1657
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPointsSize:I

    return v0
.end method

.method public final getPointsX(I)I
    .registers 4
    .param p1, "i"    # I

    .line 1595
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final getPointsY(I)I
    .registers 4
    .param p1, "i"    # I

    .line 1599
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final getPopulationCivID(I)I
    .registers 3
    .param p1, "nID"    # I

    .line 2283
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v0

    return v0
.end method

.method public final getPopulationID(I)I
    .registers 3
    .param p1, "nID"    # I

    .line 2279
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v0

    return v0
.end method

.method public final getPopulationOfCivID(I)I
    .registers 5
    .param p1, "nCivID"    # I

    .line 2291
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    .line 2293
    .local v0, "population":Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v1, v2, :cond_23

    .line 2294
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 2295
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v2

    return v2

    .line 2293
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2299
    .end local v1    # "i":I
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public final getPopulationSize()I
    .registers 2

    .line 2287
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    return v0
.end method

.method public getPopulationTotal()I
    .registers 2

    .line 2267
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    return v0
.end method

.method public final getPortShiftX()I
    .registers 2

    .line 1639
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftX:I

    return v0
.end method

.method public final getPortShiftY()I
    .registers 2

    .line 1643
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftY:I

    return v0
.end method

.method public final getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;
    .registers 2

    .line 1314
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method

.method public final getProvinceBordersAll(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .registers 6
    .param p1, "withProvinceID"    # I

    .line 2052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_1f

    .line 2053
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 2054
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object v1

    .line 2052
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2058
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v0, v1, :cond_3e

    .line 2059
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_3b

    .line 2060
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object v1

    .line 2058
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 2064
    .end local v0    # "i":I
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3f
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_5d

    .line 2065
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_5a

    .line 2066
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object v1

    .line 2064
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 2070
    .end local v0    # "i":I
    :cond_5d
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .registers 6
    .param p1, "withProvinceID"    # I

    .line 2075
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_1f

    .line 2076
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 2077
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object v1

    .line 2075
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2081
    .end local v0    # "i":I
    :cond_1f
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getProvinceBordersLandByLand()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation

    .line 2040
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBordersLandByLandSize()I
    .registers 2

    .line 2028
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    return v0
.end method

.method public final getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .registers 6
    .param p1, "withProvinceID"    # I

    .line 2086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v0, v1, :cond_1f

    .line 2087
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 2088
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object v1

    .line 2086
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2092
    .end local v0    # "i":I
    :cond_1f
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getProvinceBordersLandBySea()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation

    .line 2044
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBordersLandBySeaSize()I
    .registers 2

    .line 2032
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    return v0
.end method

.method public final getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .registers 6
    .param p1, "withProvinceID"    # I

    .line 2096
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_1f

    .line 2097
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 2098
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object v1

    .line 2096
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2102
    .end local v0    # "i":I
    :cond_1f
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getProvinceBordersSeaBySea()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBordersSeaBySeaSize()I
    .registers 2

    .line 2036
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    return v0
.end method

.method public final getProvinceBuildingsMaintenance()F
    .registers 4

    .line 3154
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public final getProvinceID()I
    .registers 2

    .line 1685
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    return v0
.end method

.method public getProvinceIncome()F
    .registers 2

    .line 2449
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    return v0
.end method

.method public final getProvinceMaintenance()F
    .registers 5

    .line 3147
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceMaintenanceEconomy(II)F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceMaintenanceTax(II)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceMaintenanceManpower(II)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    .line 3150
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_PROVINCE_MAINTENANCE:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_PROVINCE_MAINTENANCE_PER_LVL:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 3149
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v0, v1

    .line 3147
    return v0
.end method

.method public final getProvinceName()Ljava/lang/String;
    .registers 2

    .line 2170
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvinceNameUpperCase()Ljava/lang/String;
    .registers 2

    .line 2174
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvinceValue_Economy()F
    .registers 4

    .line 4170
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_ECONOMY_MAX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_ECONOMY:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final getProvinceValue_GrowthRate()F
    .registers 4

    .line 4174
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_GROWTH_RATE_MAX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_GROWTH_RATE:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getReligion()I
    .registers 2

    .line 2417
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getReligionID()I

    move-result v0

    return v0
.end method

.method public final getResourceID()I
    .registers 2

    .line 1989
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iResourceID:I

    return v0
.end method

.method public final getRevolutionaryRisk_MonhtlyChange()F
    .registers 6

    .line 3608
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange_CivStability()F

    move-result v0

    .line 3609
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange_WarWeariness()F

    move-result v1

    add-float/2addr v0, v1

    .line 3610
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    mul-float v0, v0, v1

    .line 3612
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange_BudgetTaxation()F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    .line 3608
    return v0
.end method

.method public final getRevolutionaryRisk_MonhtlyChange_BudgetTaxation()F
    .registers 3

    .line 3640
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_UNREST_PER_MONTH:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getRevolutionaryRisk_MonhtlyChange_CivStability()F
    .registers 7

    .line 3616
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_54

    .line 3617
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_PER_POINT:F

    .line 3619
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-eq v3, v4, :cond_34

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_DIFFERENT_RELIGION_PER_POINT:F

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    add-float/2addr v2, v3

    .line 3620
    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v3, :cond_3b

    goto :goto_3f

    :cond_3b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_NON_CORE_PER_POINT:F

    :goto_3f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_PERC_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_PERC_GROWTH_RATE:F

    .line 3621
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    mul-float v0, v0, v2

    .line 3617
    return v0

    .line 3625
    :cond_54
    return v1
.end method

.method public final getRevolutionaryRisk_MonhtlyChange_WarWeariness()F
    .registers 6

    .line 3629
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_58

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_PER_POINT:F

    .line 3632
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-eq v3, v4, :cond_38

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_DIFFERENT_RELIGION_PER_POINT:F

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    add-float/2addr v2, v3

    .line 3633
    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v3, :cond_3f

    goto :goto_43

    :cond_3f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_NON_CORE_PER_POINT:F

    :goto_43
    add-float/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_PERC_MIN:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_PERC_GROWTH_RATE:F

    .line 3634
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    mul-float v2, v2, v1

    mul-float v1, v0, v2

    goto :goto_59

    .line 3636
    :cond_58
    nop

    .line 3629
    :goto_59
    return v1
.end method

.method public getRevulutionaryRisk()F
    .registers 2

    .line 3104
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v0

    return v0
.end method

.method public final getSeaProvince()Z
    .registers 2

    .line 1884
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->seaProvince:Z

    return v0
.end method

.method public final getShiftX()I
    .registers 2

    .line 1619
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftX:I

    return v0
.end method

.method public final getShiftY()I
    .registers 2

    .line 1623
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftY:I

    return v0
.end method

.method public getSiegeProgress()F
    .registers 3

    .line 3695
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getTaxEfficiency()F
    .registers 2

    .line 2439
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getTaxEfficiency()F

    move-result v0

    return v0
.end method

.method public getTaxEfficiencyWithBonuses()F
    .registers 5

    .line 2443
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getTaxEfficiency()F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalTaxEfficiency:F

    add-float/2addr v0, v1

    .line 2445
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_TAX_EFFICIENCY_PER_LVL:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    .line 2443
    return v0
.end method

.method public final getTerrainID()I
    .registers 2

    .line 1981
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTerrainTypeID:I

    return v0
.end method

.method public final getTranslateProvincePosX()I
    .registers 2

    .line 1661
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    return v0
.end method

.method public getUsedBuildingsSlots()I
    .registers 3

    .line 2789
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getWarScore()F
    .registers 2

    .line 3912
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore(I)F

    move-result v0

    return v0
.end method

.method public final getWarScore(I)F
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 3916
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public final getWasteland()I
    .registers 2

    .line 1888
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getWastelandLevel()I

    move-result v0

    return v0
.end method

.method public getWonderBuilt()Z
    .registers 2

    .line 2473
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->isWonderBuilt()Z

    move-result v0

    return v0
.end method

.method public haveACore(I)Z
    .registers 4
    .param p1, "iCivID"    # I

    .line 3348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_20

    .line 3349
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1d

    .line 3350
    const/4 v1, 0x1

    return v1

    .line 3348
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3354
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public final haveArmy(I)Z
    .registers 4
    .param p1, "civID"    # I

    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_16

    .line 675
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v1, p1, :cond_13

    .line 676
    const/4 v1, 0x1

    return v1

    .line 674
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 680
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public haveResearchBuilding()Z
    .registers 4

    .line 3035
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_4b

    .line 3036
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v1, :cond_48

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_48

    .line 3037
    const/4 v1, 0x1

    return v1

    .line 3035
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3041
    .end local v0    # "i":I
    :cond_4b
    const/4 v0, 0x0

    return v0
.end method

.method public final invasionMoveArmies()V
    .registers 4

    .line 3902
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_3e

    .line 3903
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_3b

    .line 3904
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v1, :cond_3b

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v1, :cond_3b

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v1, :cond_3b

    .line 3905
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->moveInvasion(Ljava/lang/String;)Z

    .line 3902
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3909
    .end local v0    # "i":I
    :cond_3e
    return-void
.end method

.method public final isEnemyArmyInProvince(I)Z
    .registers 4
    .param p1, "civID"    # I

    .line 699
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1a

    .line 700
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1b

    if-eqz v1, :cond_17

    .line 701
    const/4 v1, 0x1

    return v1

    .line 699
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 706
    .end local v0    # "i":I
    :cond_1a
    goto :goto_1f

    .line 704
    :catch_1b
    move-exception v0

    .line 705
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 708
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final isOccupied()Z
    .registers 2

    .line 1876
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final isUnderConstruction(II)Z
    .registers 5
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v1, :cond_26

    .line 2569
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 2570
    const/4 v1, 0x1

    return v1

    .line 2568
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2574
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final loadProvinceBG()V
    .registers 11

    .line 1289
    const-string v0, "/"

    const-string v1, "scales/"

    const-string v2, "data/"

    const-string v3, "map/"

    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_SEA_PROVINCES:Z

    if-nez v5, :cond_16

    .line 1290
    return-void

    .line 1293
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    const/4 v7, 0x1

    const/4 v8, -0x4

    if-ne v6, v8, :cond_3b

    const/4 v6, 0x1

    goto :goto_46

    :cond_3b
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v6, v6

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v6, v9

    float-to-int v6, v6

    :goto_46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 1294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    if-ne v2, v8, :cond_84

    goto :goto_8f

    :cond_84
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v2, v3

    float-to-int v7, v2

    :goto_8f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 1296
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 1298
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 1299
    nop

    .line 1300
    .end local v0    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    goto :goto_c4

    .line 1302
    :cond_be
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG(Z)V

    .line 1303
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V
    :try_end_c4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_c4} :catch_c5

    .line 1310
    :goto_c4
    goto :goto_e7

    .line 1305
    :catch_c5
    move-exception v0

    .line 1306
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build province BG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG(Z)V

    .line 1309
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    .line 1311
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_e7
    return-void
.end method

.method public final lootProvince(I)V
    .registers 5
    .param p1, "nCivID"    # I

    .line 3985
    if-gez p1, :cond_3

    .line 3986
    return-void

    .line 3989
    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 3990
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLoot(F)V

    .line 3992
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevastationOccupiedProvince(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    .line 3993
    return-void
.end method

.method public final mergeUnits(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 785
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 787
    .local v0, "listSize":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_96

    .line 788
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    .line 789
    .local v1, "armyWithGeneral":I
    const/4 v2, 0x0

    .line 791
    .local v2, "armyWithGeneralID":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_34

    .line 792
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v4

    .line 794
    .local v4, "tID":I
    if-ltz v4, :cond_31

    .line 795
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v5, :cond_2d

    .line 796
    move v1, v4

    .line 797
    move v2, v3

    .line 798
    goto :goto_34

    .line 800
    :cond_2d
    if-gez v1, :cond_31

    .line 801
    move v1, v4

    .line 802
    move v2, v3

    .line 791
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 807
    .end local v3    # "i":I
    .end local v4    # "tID":I
    :cond_34
    :goto_34
    if-ltz v1, :cond_96

    .line 808
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v3, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    if-ge v4, v0, :cond_68

    .line 811
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v5

    .line 813
    .local v5, "tID":I
    if-ltz v5, :cond_65

    .line 814
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4b
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v6, v7, :cond_65

    .line 815
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 810
    .end local v6    # "j":I
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 820
    .end local v4    # "i":I
    .end local v5    # "tID":I
    :cond_68
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 822
    .local v4, "out":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    .line 823
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 825
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v0, v5

    .line 827
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7a
    if-ge v5, v0, :cond_95

    .line 828
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    .line 830
    .local v6, "armyKeyID":I
    if-ltz v6, :cond_92

    iget v7, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v6, v7, :cond_92

    .line 831
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy_UnassignGeneral(I)V

    .line 832
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_97

    .line 827
    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 836
    .end local v5    # "i":I
    .end local v6    # "armyKeyID":I
    :cond_95
    return-object v4

    .line 842
    .end local v0    # "listSize":I
    .end local v1    # "armyWithGeneral":I
    .end local v2    # "armyWithGeneralID":I
    .end local v3    # "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v4    # "out":Ljava/lang/String;
    :cond_96
    goto :goto_9b

    .line 840
    :catch_97
    move-exception v0

    .line 841
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 844
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final occupyProvince()V
    .registers 15

    .line 3802
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 3804
    const/4 v0, 0x0

    .line 3805
    .local v0, "bestCivID":I
    const/4 v1, 0x0

    .line 3807
    .local v1, "bestArmy":I
    const/4 v2, 0x0

    .line 3808
    .local v2, "notifyPlayer":Z
    const/4 v3, 0x0

    .line 3810
    .local v3, "notifyPlayerPositive":Z
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_13

    .line 3811
    const/4 v2, 0x1

    .line 3812
    const/4 v3, 0x0

    .line 3815
    :cond_13
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-ge v4, v5, :cond_4f

    .line 3816
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 3817
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v5, v6, :cond_38

    .line 3818
    const/4 v2, 0x1

    .line 3819
    const/4 v3, 0x1

    .line 3822
    :cond_38
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    if-le v5, v1, :cond_4c

    .line 3823
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v0, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 3824
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v1, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 3815
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 3829
    .end local v4    # "i":I
    :cond_4f
    if-eqz v0, :cond_1ae

    .line 3830
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalProvincesValue()V

    .line 3832
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    .line 3835
    if-gez v0, :cond_6b

    .line 3836
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    goto :goto_7a

    .line 3838
    :cond_6b
    if-lez v0, :cond_7a

    .line 3839
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->lootProvince(I)V

    .line 3840
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->occupyProvince_DecreaseGrowthRate()V

    .line 3841
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents_Siege(II)V

    .line 3844
    :cond_7a
    :goto_7a
    if-eqz v2, :cond_c2

    .line 3845
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v13, Laoc/kingdoms/lukasz/map/province/Province$14;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-eqz v3, :cond_8e

    const-string v8, "SiegeWon"

    goto :goto_90

    :cond_8e
    const-string v8, "SiegeLost"

    :goto_90
    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 3846
    if-eqz v3, :cond_b3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_b5

    :cond_b3
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_b5
    move-object v11, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v12

    move-object v5, v13

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Laoc/kingdoms/lukasz/map/province/Province$14;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    .line 3845
    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 3854
    :cond_c2
    const/4 v4, 0x0

    if-eqz v4, :cond_1a9

    .line 3855
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_c6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_1a9

    .line 3856
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v5

    if-nez v5, :cond_1a5

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v5, v6, :cond_1a5

    .line 3857
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v5

    if-lez v5, :cond_159

    .line 3858
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_1a5

    .line 3859
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    .line 3862
    if-gez v0, :cond_122

    .line 3863
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    .line 3866
    :cond_122
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v5

    if-eqz v5, :cond_1a5

    .line 3867
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    .line 3868
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 3869
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->lootProvince(I)V

    .line 3871
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    goto :goto_1a5

    .line 3876
    :cond_159
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    .line 3879
    if-gez v0, :cond_16f

    .line 3880
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    .line 3883
    :cond_16f
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v5

    if-eqz v5, :cond_1a5

    .line 3884
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    .line 3885
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 3886
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->lootProvince(I)V

    .line 3888
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    .line 3855
    :cond_1a5
    :goto_1a5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c6

    .line 3895
    .end local v4    # "i":I
    :cond_1a9
    if-eqz v2, :cond_1ae

    .line 3896
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    .line 3899
    :cond_1ae
    return-void
.end method

.method public final occupyProvince_DecreaseGrowthRate()V
    .registers 4

    .line 3981
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->OCCUPY_PROVINCE_DECREASE_GROWTH_RATE:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    .line 3982
    return-void
.end method

.method public final removeArmy(I)V
    .registers 6
    .param p1, "i"    # I

    .line 542
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 544
    .local v0, "tCivID":I
    if-gez v0, :cond_20

    .line 545
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    goto :goto_35

    .line 547
    :cond_20
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeArmyPosition(ILjava/lang/String;)V

    .line 550
    :goto_35
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 551
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 553
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 554
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    .line 557
    .end local v0    # "tCivID":I
    goto :goto_4d

    .line 555
    :catch_49
    move-exception v0

    .line 556
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 558
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method

.method public final removeArmy(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    if-eqz p1, :cond_4d

    const-string v2, "airhq_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um_rm:prov="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AIRDBG"

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    :try_start_2d
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_48

    .line 594
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v1, :cond_45

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 595
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_2d
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_45} :catch_49

    .line 593
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 601
    .end local v0    # "i":I
    :cond_48
    goto :goto_4d

    .line 599
    :catch_49
    move-exception v0

    .line 600
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 602
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-void
.end method

.method public final removeArmyCivID(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 576
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1a

    .line 577
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v1, p1, :cond_17

    .line 578
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 576
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 582
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 584
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 585
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 588
    goto :goto_2d

    .line 586
    :catch_29
    move-exception v0

    .line 587
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 589
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method public final removeArmy_MoveUnits(I)V
    .registers 4
    .param p1, "i"    # I

    .line 562
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 564
    .local v0, "tCivID":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    .line 567
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 568
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 571
    .end local v0    # "tCivID":I
    goto :goto_22

    .line 569
    :catch_1e
    move-exception v0

    .line 570
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 572
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method public final removeArmy_MoveUnits(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_18

    .line 608
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 609
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy_MoveUnits(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_19

    .line 610
    return-void

    .line 607
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 615
    .end local v0    # "i":I
    :cond_18
    goto :goto_1d

    .line 613
    :catch_19
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 616
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method public final removeArmy_UnassignGeneral(I)V
    .registers 4
    .param p1, "i"    # I

    .line 532
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v0, :cond_27

    .line 533
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 537
    :cond_27
    goto :goto_2c

    .line 535
    :catch_28
    move-exception v0

    .line 536
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 538
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public removeCore(I)V
    .registers 5
    .param p1, "iCivID"    # I

    .line 3311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_2c

    .line 3312
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_29

    .line 3313
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3314
    goto :goto_2c

    .line 3311
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3318
    .end local v0    # "i":I
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 3320
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3321
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_40
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_65

    .line 3322
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_62

    .line 3323
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3324
    goto :goto_65

    .line 3321
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 3328
    .end local v0    # "i":I
    :cond_65
    :goto_65
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3330
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 3331
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 3332
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3334
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->checkProvince(II)V

    .line 3335
    return-void
.end method

.method public removeCore_ScenarioEditor(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 3237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_3f

    .line 3238
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3c

    .line 3239
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3240
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 3241
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateHaveACore()V

    .line 3242
    return-void

    .line 3237
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3245
    .end local v0    # "i":I
    :cond_3f
    return-void
.end method

.method public final removeNeighboringProvince(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 2121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    if-ge v0, v1, :cond_1c

    .line 2122
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 2123
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2124
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    .line 2126
    return-void

    .line 2121
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2129
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public final removeNeighboringSeaProvince(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 2139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    if-ge v0, v1, :cond_1f

    .line 2140
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 2141
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2142
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    .line 2144
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAccessToMainSea()V

    .line 2145
    return-void

    .line 2139
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2148
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public final removeProvinceBorder(I)V
    .registers 4
    .param p1, "withProvinceID"    # I

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_24

    .line 351
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_21

    .line 352
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    .line 354
    return-void

    .line 350
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_25
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v0, v1, :cond_48

    .line 359
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_45

    .line 360
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    .line 362
    return-void

    .line 358
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 366
    .end local v0    # "i":I
    :cond_48
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_49
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_6c

    .line 367
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_69

    .line 368
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    .line 370
    return-void

    .line 366
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 373
    .end local v0    # "i":I
    :cond_6c
    return-void
.end method

.method public final resetColonizationData()V
    .registers 3

    .line 4144
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationStartedTurnID(I)V

    .line 4145
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationGrowthRateExtra(I)V

    .line 4146
    return-void
.end method

.method public final resetSiegeData()V
    .registers 4

    .line 3948
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setSiegeProgress(F)V

    .line 3949
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege(IZ)V

    .line 3950
    return-void
.end method

.method public final retakeOccupiedProvince()V
    .registers 15

    .line 3699
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    .line 3701
    .local v0, "warKey":Ljava/lang/String;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalProvincesValue()V

    .line 3703
    const/4 v1, 0x0

    .line 3704
    .local v1, "notifyPlayer":Z
    const/4 v2, 0x0

    .line 3706
    .local v2, "notifyPlayerPositive":Z
    const/4 v3, 0x0

    if-eqz v0, :cond_d9

    .line 3708
    :try_start_24
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore()F

    move-result v4

    .line 3709
    .local v4, "fWarScore":F
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd_Province(FIII)F

    move-result v5

    move v4, v5

    .line 3711
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 3712
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v6, v4

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 3713
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget v6, v5, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    sub-float/2addr v6, v4

    iput v6, v5, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    goto :goto_95

    .line 3716
    :cond_7d
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 3717
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget v6, v5, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    add-float/2addr v6, v4

    iput v6, v5, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    .line 3720
    :goto_95
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v6, v5, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    .line 3722
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v5

    if-nez v5, :cond_c5

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 3723
    :cond_c5
    const/4 v1, 0x1

    .line 3724
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ce} :catch_d5

    if-ne v5, v6, :cond_d2

    const/4 v5, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v5, 0x0

    :goto_d3
    move v2, v5

    .line 3729
    .end local v4    # "fWarScore":F
    :cond_d4
    goto :goto_d9

    .line 3727
    :catch_d5
    move-exception v4

    .line 3728
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3733
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_d9
    :goto_d9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    if-gez v4, :cond_119

    .line 3734
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V

    .line 3736
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-ge v4, v5, :cond_119

    .line 3737
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v5, v6, :cond_116

    .line 3738
    const/4 v1, 0x1

    .line 3739
    const/4 v2, 0x1

    .line 3740
    goto :goto_119

    .line 3736
    :cond_116
    add-int/lit8 v4, v4, 0x1

    goto :goto_f1

    .line 3745
    .end local v4    # "i":I
    :cond_119
    :goto_119
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 3746
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    .line 3748
    if-eqz v1, :cond_173

    .line 3749
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v13, Laoc/kingdoms/lukasz/map/province/Province$13;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-eqz v2, :cond_13f

    const-string v8, "SiegeWon"

    goto :goto_141

    :cond_13f
    const-string v8, "SiegeLost"

    :goto_141
    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    .line 3750
    if-eqz v2, :cond_164

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_166

    :cond_164
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_166
    move-object v11, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v12

    move-object v5, v13

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Laoc/kingdoms/lukasz/map/province/Province$13;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    .line 3749
    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 3758
    :cond_173
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_174
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_276

    .line 3759
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v5

    if-nez v5, :cond_272

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v5, v6, :cond_272

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-eqz v5, :cond_272

    .line 3760
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    .line 3762
    if-eqz v0, :cond_238

    .line 3764
    :try_start_1be
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore(I)F

    move-result v5

    .line 3765
    .local v5, "fWarScore":F
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd_Province(FIII)F

    move-result v6

    move v5, v6

    .line 3767
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v6

    if-eqz v6, :cond_21b

    .line 3768
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v7, v5

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 3769
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    iget v7, v6, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    sub-float/2addr v7, v5

    iput v7, v6, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    goto :goto_233

    .line 3772
    :cond_21b
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 3773
    sget-object v6, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/War;

    iget v7, v6, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    add-float/2addr v7, v5

    iput v7, v6, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_233} :catch_234

    .line 3777
    .end local v5    # "fWarScore":F
    :goto_233
    goto :goto_238

    .line 3775
    :catch_234
    move-exception v5

    .line 3776
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3780
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_238
    :goto_238
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    .line 3782
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v5

    if-eqz v5, :cond_267

    .line 3783
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 3784
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    .line 3787
    :cond_267
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    .line 3758
    :cond_272
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_174

    .line 3791
    .end local v4    # "i":I
    :cond_276
    if-eqz v1, :cond_27b

    .line 3792
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    .line 3794
    :cond_27b
    return-void
.end method

.method public final retakeOccupiedProvince_Peace()V
    .registers 4

    .line 3797
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 3798
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    .line 3799
    return-void
.end method

.method public final setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 6
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 1322
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1323
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 1324
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 1325
    return-void
.end method

.method public final setCivID(I)V
    .registers 11
    .param p1, "nCivID"    # I

    .line 1701
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 1702
    return-void

    .line 1705
    :cond_f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_51

    .line 1706
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeProvince(I)V

    .line 1708
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_51

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1709
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    .line 1710
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    .line 1714
    :cond_51
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    if-ne v0, v4, :cond_73

    const/4 v0, 0x1

    goto :goto_74

    :cond_73
    const/4 v0, 0x0

    .line 1716
    .local v0, "updateBonuses":Z
    :goto_74
    if-eqz v0, :cond_9d

    .line 1717
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_77
    iget v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v4, v5, :cond_9d

    .line 1718
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v7

    invoke-static {v5, v6, v7, v1}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    .line 1717
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 1722
    .end local v4    # "i":I
    :cond_9d
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$5;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildCivilizationsRegion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v6

    invoke-direct {v1, p0, v4, v6}, Laoc/kingdoms/lukasz/map/province/Province$5;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1733
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCivStability"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-direct {v1, p0, v4, v7}, Laoc/kingdoms/lukasz/map/province/Province$6;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1739
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$7;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildNeighbors"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-direct {v1, p0, v4, v8}, Laoc/kingdoms/lukasz/map/province/Province$7;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1747
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    .line 1748
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    .line 1751
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$8;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-direct {v1, p0, v4, v6}, Laoc/kingdoms/lukasz/map/province/Province$8;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1757
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$9;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-direct {v1, p0, v4, v6}, Laoc/kingdoms/lukasz/map/province/Province$9;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1764
    if-eqz v0, :cond_19b

    .line 1765
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_175
    iget v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v1, v4, :cond_19b

    .line 1766
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v7

    invoke-static {v4, v6, v7, v3}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    .line 1765
    add-int/lit8 v1, v1, 0x1

    goto :goto_175

    .line 1770
    .end local v1    # "i":I
    :cond_19b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v1

    if-lez v1, :cond_1dc

    .line 1771
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince(I)V

    .line 1773
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v1, :cond_1dc

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 1774
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v1, v4, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    .line 1775
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v1, v4, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    .line 1780
    :cond_1dc
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_1e9

    .line 1781
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceConvertReligion(I)V

    .line 1783
    :cond_1e9
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_1f6

    .line 1784
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceCoreCreation(I)V

    .line 1787
    :cond_1f6
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 1788
    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 1790
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 1791
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1fe
    iget v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v1, v4, :cond_222

    .line 1792
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v4, v6, :cond_21f

    .line 1793
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 1794
    goto :goto_222

    .line 1791
    :cond_21f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fe

    .line 1798
    .end local v1    # "i":I
    :cond_222
    :goto_222
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_23b

    .line 1799
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    if-eq v1, v3, :cond_23b

    .line 1800
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 1804
    :cond_23b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 1805
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner(IZ)V

    .line 1807
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    .line 1809
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Laoc/kingdoms/lukasz/map/province/Province$10;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1819
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    if-eqz v1, :cond_26e

    .line 1820
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->redrawnProvinces()V

    .line 1823
    :cond_26e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->buildDistanceToCapital()V

    .line 1824
    return-void
.end method

.method public final setCivID_Just(I)V
    .registers 5
    .param p1, "nCivID"    # I

    .line 1693
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    .line 1694
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    .line 1697
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner(IZ)V

    .line 1698
    return-void
.end method

.method public final setCivID_LoadScenario(I)V
    .registers 3
    .param p1, "nCivID"    # I

    .line 1870
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    .line 1873
    return-void
.end method

.method public final setCivID_RemoveOldAddNewToCiv(I)V
    .registers 5
    .param p1, "nCivID"    # I

    .line 1827
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 1828
    return-void

    .line 1831
    :cond_f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-lez v0, :cond_51

    .line 1832
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeProvince(I)V

    .line 1834
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_51

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1835
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    .line 1836
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    .line 1840
    :cond_51
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    .line 1841
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    .line 1844
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->clearCores()V

    .line 1845
    if-lez p1, :cond_74

    .line 1846
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addCore_Just(I)V

    .line 1849
    :cond_74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner(IZ)V

    .line 1851
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-lez v0, :cond_bf

    .line 1852
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince(I)V

    .line 1854
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_bf

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1855
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    .line 1856
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    .line 1859
    :cond_bf
    return-void
.end method

.method public final setCivRegionID(I)V
    .registers 2
    .param p1, "iCivRegionID"    # I

    .line 1953
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCivRegionID:I

    .line 1954
    return-void
.end method

.method public final setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nCivID"    # I
    .param p3, "nAlpha"    # F

    .line 1074
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 1076
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1082
    return-void
.end method

.method public final setCivilizationProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nCivID"    # I
    .param p3, "nAlpha"    # F

    .line 1085
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 1086
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 1088
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1089
    return-void
.end method

.method public final setContinent(I)V
    .registers 2
    .param p1, "iContinentID"    # I

    .line 1969
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iContinentID:I

    .line 1970
    return-void
.end method

.method public setDevastation(F)V
    .registers 4
    .param p1, "fDevastation"    # F

    .line 3575
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_MAX:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3577
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->getDevastation()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_45

    .line 3578
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->setDevastation(F)V

    .line 3580
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lastUpdatedDevastation:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_INCOME_PER_DEVASTATION_CHANGE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_45

    .line 3581
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lastUpdatedDevastation:F

    .line 3583
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3584
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3587
    :cond_45
    return-void
.end method

.method public final setDrawCities(Z)V
    .registers 2
    .param p1, "drawCities"    # Z

    .line 2263
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawCities:Z

    .line 2264
    return-void
.end method

.method public final setDrawProvince(Z)V
    .registers 2
    .param p1, "drawProvince"    # Z

    .line 1673
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    .line 1674
    return-void
.end method

.method public setEconomy(F)V
    .registers 4
    .param p1, "fEconomy"    # F

    .line 2453
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->setEconomy(F)V

    .line 2454
    return-void
.end method

.method public setFogDrawArmy(Z)V
    .registers 3
    .param p1, "nFogDrawArmy"    # Z

    .line 4188
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    .line 4190
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    if-eqz v0, :cond_e

    .line 4191
    new-instance v0, Laoc/kingdoms/lukasz/map/province/Province$15;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province$15;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    goto :goto_15

    .line 4199
    :cond_e
    new-instance v0, Laoc/kingdoms/lukasz/map/province/Province$16;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province$16;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    .line 4206
    :goto_15
    return-void
.end method

.method public final setGeoRegion(I)V
    .registers 2
    .param p1, "iGeoRegionID"    # I

    .line 1977
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iGeoRegionID:I

    .line 1978
    return-void
.end method

.method public final setGrowthRate(F)V
    .registers 2
    .param p1, "fGrowthRate"    # F

    .line 2022
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    .line 2023
    return-void
.end method

.method public final setInfrastructure(I)V
    .registers 4
    .param p1, "niInfrastructure"    # I

    .line 3424
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->setInfrastructure(I)V

    .line 3425
    return-void
.end method

.method public final setIsCapital(Z)V
    .registers 3
    .param p1, "nIsCapital"    # Z

    .line 3515
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(ZZ)V

    .line 3516
    return-void
.end method

.method public final setIsCapital(ZZ)V
    .registers 8
    .param p1, "nIsCapital"    # Z
    .param p2, "init"    # Z

    .line 3520
    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_a6

    .line 3521
    :cond_6
    if-eqz p1, :cond_2a

    .line 3522
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    .line 3523
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MONTHLY_INCOME:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    .line 3524
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_FORT_LVL:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    goto :goto_9e

    .line 3527
    :cond_2a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    .line 3528
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MONTHLY_INCOME:F

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    .line 3529
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_FORT_LVL:I

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    .line 3531
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_a7

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4f
    if-ltz v0, :cond_96

    .line 3533
    :try_start_51
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-eqz v1, :cond_8e

    .line 3534
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    .line 3536
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_8e} :catch_8f

    .line 3540
    :cond_8e
    goto :goto_93

    .line 3538
    :catch_8f
    move-exception v1

    .line 3539
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_90
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3531
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_93
    add-int/lit8 v0, v0, -0x1

    goto :goto_4f

    .line 3543
    .end local v0    # "i":I
    :cond_96
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    .line 3546
    :goto_9e
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    .line 3548
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3550
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a6} :catch_a7

    .line 3554
    :cond_a6
    goto :goto_ab

    .line 3552
    :catch_a7
    move-exception v0

    .line 3553
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3555
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ab
    return-void
.end method

.method public final setLevelOfPort(I)V
    .registers 2
    .param p1, "iLevelOfPort"    # I

    .line 2001
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    .line 2002
    return-void
.end method

.method public setLoot(F)V
    .registers 5
    .param p1, "fLoot"    # F

    .line 4006
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->setLoot(F)V

    .line 4007
    return-void
.end method

.method public setManpower(F)V
    .registers 4
    .param p1, "fManpower"    # F

    .line 2465
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->setManpower(F)V

    .line 2466
    return-void
.end method

.method public final setMapModeRegionID(I)V
    .registers 2
    .param p1, "iMapModeRegion"    # I

    .line 1961
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMapModeRegion:I

    .line 1962
    return-void
.end method

.method public final setOccupiedByCivID(I)V
    .registers 7
    .param p1, "nOccupiedByCivID"    # I

    .line 3920
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    .line 3922
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    .line 3924
    .local v0, "warKey":Ljava/lang/String;
    if-eqz v0, :cond_94

    .line 3926
    :try_start_19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore()F

    move-result v1

    .line 3927
    .local v1, "fWarScore":F
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v1, p1, v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd_Province(FIII)F

    move-result v2

    move v1, v2

    .line 3929
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 3930
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 3931
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget v3, v2, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    add-float/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    goto :goto_72

    .line 3934
    :cond_59
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v3, v1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 3935
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget v3, v2, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    sub-float/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    .line 3938
    :goto_72
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    .line 3940
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_WAR_WEARINESS_OCCUPIED_PROVINCE:F

    mul-float v3, v3, v1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_8f} :catch_90

    .line 3943
    .end local v1    # "fWarScore":F
    goto :goto_94

    .line 3941
    :catch_90
    move-exception v1

    .line 3942
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3945
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_94
    :goto_94
    return-void
.end method

.method public final setPopulationOfCivID(II)Z
    .registers 8
    .param p1, "nCivID"    # I
    .param p2, "nPopulation"    # I

    .line 2305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v0, v2, :cond_9e

    .line 2306
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_9a

    .line 2307
    if-gtz p2, :cond_70

    .line 2308
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_56

    .line 2309
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2310
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2312
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    .line 2313
    return v3

    .line 2316
    :cond_56
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->MIN_POPULATION:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->setPopulation(I)V

    .line 2317
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->MIN_POPULATION:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    goto :goto_99

    .line 2321
    :cond_70
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2322
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/2addr v2, p2

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2324
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->setPopulation(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_99} :catch_9f

    .line 2326
    :goto_99
    return v1

    .line 2305
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2331
    .end local v0    # "i":I
    :cond_9e
    goto :goto_a3

    .line 2329
    :catch_9f
    move-exception v0

    .line 2330
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2334
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a3
    if-lez p2, :cond_d6

    .line 2335
    :try_start_a5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v0

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    invoke-direct {v2, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2336
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/2addr v0, p2

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2338
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_d0} :catch_d1

    goto :goto_d6

    .line 2340
    :catch_d1
    move-exception v0

    .line 2341
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_d7

    .line 2342
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_d6
    :goto_d6
    nop

    .line 2344
    :goto_d7
    return v1
.end method

.method public final setPortShiftX(I)V
    .registers 2
    .param p1, "iPortShiftX"    # I

    .line 1647
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftX:I

    .line 1648
    return-void
.end method

.method public final setPortShiftY(I)V
    .registers 2
    .param p1, "iPortShiftY"    # I

    .line 1651
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftY:I

    .line 1652
    return-void
.end method

.method public final setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fAlpha"    # F

    .line 1065
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    .line 1066
    return-void
.end method

.method public final setProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fAlpha"    # F

    .line 1070
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    .line 1071
    return-void
.end method

.method public final setProvinceName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sProvinceName"    # Ljava/lang/String;

    .line 2178
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceName:Ljava/lang/String;

    .line 2180
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    .line 2181
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I

    .line 2182
    return-void
.end method

.method public setReligion(I)V
    .registers 5
    .param p1, "iReligionID"    # I

    .line 2421
    if-ltz p1, :cond_30

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v0

    if-ge p1, v0, :cond_30

    .line 2422
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->setReligionID(I)V

    .line 2424
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_30

    .line 2425
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->checkProvince(II)V

    .line 2428
    :cond_30
    return-void
.end method

.method public setReligion_LoadScenario(I)V
    .registers 4
    .param p1, "iReligionID"    # I

    .line 2431
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->setReligionID(I)V

    .line 2433
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_30

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    if-eq p1, v0, :cond_30

    .line 2434
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->addProvince(I)V

    .line 2436
    :cond_30
    return-void
.end method

.method public final setResourceID(I)V
    .registers 2
    .param p1, "iResourceID"    # I

    .line 1993
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iResourceID:I

    .line 1994
    return-void
.end method

.method public setRevulutionaryRisk(F)V
    .registers 5
    .param p1, "fRevolutionaryRisk"    # F

    .line 3108
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAX_UNREST:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->setRevolutionaryRisk(F)V

    .line 3109
    return-void
.end method

.method public final setShiftX(I)V
    .registers 4
    .param p1, "iShiftX"    # I

    .line 1627
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftX:I

    .line 1629
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    .line 1630
    return-void
.end method

.method public final setShiftY(I)V
    .registers 4
    .param p1, "iShiftY"    # I

    .line 1633
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftY:I

    .line 1635
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    .line 1636
    return-void
.end method

.method public setTaxEfficiency(F)V
    .registers 3
    .param p1, "fTaxEfficiency"    # F

    .line 2457
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->setTaxEfficiency(F)V

    .line 2458
    return-void
.end method

.method public final setTerrainID(I)V
    .registers 2
    .param p1, "iTerrainTypeID"    # I

    .line 1985
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTerrainTypeID:I

    .line 1986
    return-void
.end method

.method public final setTranslateProvincePosX(I)V
    .registers 2
    .param p1, "iTranslateProvincePosX"    # I

    .line 1665
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    .line 1666
    return-void
.end method

.method public final setWasteland(I)V
    .registers 8
    .param p1, "wastelandLevel"    # I

    .line 1892
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setWastelandLevel(I)V

    .line 1894
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_20f

    .line 1895
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_f6

    .line 1896
    if-ltz p1, :cond_81

    .line 1897
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_4e

    .line 1898
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1899
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_20b

    .line 1902
    :cond_4e
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_69

    const/4 v4, 0x1

    :cond_69
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1903
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_20b

    .line 1907
    :cond_81
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_c2

    .line 1908
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_aa

    const/4 v4, 0x1

    :cond_aa
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1909
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_20b

    .line 1912
    :cond_c2
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_dd

    goto :goto_de

    :cond_dd
    const/4 v2, 0x0

    :goto_de
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1913
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_20b

    .line 1918
    :cond_f6
    if-ltz p1, :cond_179

    .line 1919
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_136

    .line 1920
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1921
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_20b

    .line 1924
    :cond_136
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_159

    const/4 v4, 0x1

    :cond_159
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1925
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_20b

    .line 1929
    :cond_179
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_1c9

    .line 1930
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_1aa

    const/4 v4, 0x1

    :cond_1aa
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1931
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto :goto_20b

    .line 1934
    :cond_1c9
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v3, v5, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    const/4 v2, 0x0

    :goto_1ed
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    .line 1935
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    .line 1894
    :goto_20b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 1941
    .end local v0    # "i":I
    :cond_20f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setUpdateProvincesInView(Z)V

    .line 1942
    return-void
.end method

.method public setWonderBuilt(Z)V
    .registers 3
    .param p1, "built"    # Z

    .line 2469
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->setWonderBuilt(Z)V

    .line 2470
    return-void
.end method

.method public final splitInHalf(I)V
    .registers 7
    .param p1, "i"    # I

    .line 758
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_7a

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v0, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v1, "nArmyRegiment2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_18
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v2, v3, :cond_52

    .line 763
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3c

    .line 764
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 766
    :cond_3c
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 770
    .end local v2    # "a":I
    :cond_52
    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 771
    new-instance v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-direct {v2, v3, v4, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 773
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 774
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7b

    .line 780
    .end local v0    # "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v1    # "nArmyRegiment2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :cond_7a
    goto :goto_7f

    .line 778
    :catch_7b
    move-exception v0

    .line 779
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 781
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7f
    return-void
.end method

.method public final startBattle()V
    .registers 11

    .line 4035
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4036
    .local v0, "tAttackingDiv":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4038
    .local v1, "tDefendingDiv":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1b

    .line 4039
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4038
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4042
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    .line 4044
    .restart local v2    # "i":I
    const/4 v3, 0x0

    .line 4046
    .local v3, "rebels":Z
    :goto_1d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_18e

    .line 4047
    add-int/lit8 v5, v2, 0x1

    .local v5, "j":I
    :goto_27
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v5, v7, :cond_183

    .line 4048
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v7, :cond_17f

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v7, :cond_17f

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_17f

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_17f

    .line 4049
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_17f

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v7, :cond_6f

    const-string v8, "airhq_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_80

    :cond_6f
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v7, :cond_7f

    const-string v8, "airhq_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_85

    :cond_7f
    goto :goto_8a

    :cond_80
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgSbSkip(Ljava/lang/String;)V

    goto/16 :goto_17f

    :cond_85
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgSbSkip(Ljava/lang/String;)V

    goto/16 :goto_17f

    .line 4050
    :goto_8a
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getWarKey(II)Ljava/lang/String;

    move-result-object v7

    .line 4052
    .local v7, "tKey":Ljava/lang/String;
    if-nez v7, :cond_b9

    .line 4053
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 4056
    :cond_b9
    if-eqz v7, :cond_122

    sget-object v8, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_122

    .line 4057
    sget-object v8, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v8

    if-eqz v8, :cond_f3

    .line 4058
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4059
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4061
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4062
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4064
    goto/16 :goto_183

    .line 4066
    :cond_f3
    sget-object v8, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 4067
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4068
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4070
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4071
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4073
    goto :goto_183

    .line 4077
    :cond_122
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ltz v8, :cond_132

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v8, :cond_17f

    :cond_132
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq v8, v9, :cond_17f

    .line 4078
    const/4 v3, 0x1

    .line 4080
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v8, :cond_164

    .line 4081
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4082
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4084
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4085
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4087
    goto :goto_183

    .line 4090
    :cond_164
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4091
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4093
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4094
    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 4096
    goto :goto_183

    .line 4047
    .end local v7    # "tKey":Ljava/lang/String;
    :cond_17f
    :goto_17f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    .line 4103
    .end local v5    # "j":I
    :cond_183
    :goto_183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_18a

    .line 4104
    goto :goto_18e

    .line 4046
    :cond_18a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    .line 4108
    :cond_18e
    :goto_18e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_23b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_23b

    .line 4109
    add-int/2addr v2, v6

    .line 4111
    if-eqz v3, :cond_1d5

    .line 4112
    :goto_19d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v2, v4, :cond_22d

    .line 4113
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_1d2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_1d2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    if-nez v4, :cond_1d2

    .line 4114
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v4, :cond_1cb

    .line 4115
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d2

    .line 4118
    :cond_1cb
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4112
    :cond_1d2
    :goto_1d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_19d

    .line 4124
    :cond_1d5
    :goto_1d5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-ge v2, v5, :cond_22d

    .line 4125
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v5, :cond_22a

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v5, :cond_22a

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    if-nez v5, :cond_22a

    .line 4126
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_20f

    .line 4127
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22a

    .line 4129
    :cond_20f
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_22a

    .line 4130
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4124
    :cond_22a
    :goto_22a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d5

    .line 4136
    :cond_22d
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    new-instance v5, Laoc/kingdoms/lukasz/map/battles/Battle;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-direct {v5, v6, v0, v1}, Laoc/kingdoms/lukasz/map/battles/Battle;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->addBattle(Laoc/kingdoms/lukasz/map/battles/Battle;)V
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23b} :catch_23c

    .line 4140
    .end local v0    # "tAttackingDiv":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    .end local v1    # "tDefendingDiv":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    .end local v2    # "i":I
    .end local v3    # "rebels":Z
    :cond_23b
    goto :goto_240

    .line 4138
    :catch_23c
    move-exception v0

    .line 4139
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 4141
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_240
    return-void
.end method

.method public final underConstruction(II)F
    .registers 6
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v1, :cond_40

    .line 2579
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_3d

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_3d

    .line 2580
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1

    .line 2578
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2584
    .end local v0    # "i":I
    :cond_40
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public updateAccessToMainSea()V
    .registers 4

    .line 2151
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    .line 2153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    if-ge v0, v1, :cond_1e

    .line 2154
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1b

    .line 2155
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    .line 2156
    return-void

    .line 2153
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2159
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public final updateAfterEconomyChange()V
    .registers 1

    .line 2853
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 2854
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 2855
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 2856
    return-void
.end method

.method public final updateAfterReligionConversion()V
    .registers 3

    .line 3211
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3213
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 3214
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 3215
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3216
    return-void
.end method

.method public final updateArmyPosY()V
    .registers 9

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->up(I)V

    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I

    const/4 v5, 0x0

    .local v5, "jAir":I
    :goto_2
    :try_start_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v2, :cond_38

    .line 520
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v3, :cond_16

    invoke-static {p0, v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->upySk(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;I)V

    goto :goto_35

    .line 521
    :cond_16
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    # === r6d161：空军师与陆军错开（空军用自己的槽位计数 v5）===
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v3, :r6d161_ground

    const-string v4, "airhq_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :r6d161_ground

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    mul-int v3, v3, v5

    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-static {p0, v2, v0, v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->upyPr(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :r6d161_ground
    # === r6d161 end ===

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    mul-int v3, v3, v1

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-static {p0, v2, v0, v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->upyPr(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;III)V

    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_39

    .line 522
    add-int/lit8 v1, v1, 0x1

    .line 519
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 527
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_38
    # === r6d165：横向分列（第二遍遍历，用本方法自己的计数 v5=空军数 / v1=陆军数）===
    :r6d165_try_start
    const/4 v0, 0x0

    :r6d165_loop
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v2, :r6d165_end

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z
    if-nez v3, :r6d165_next

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v3, :r6d165_havekey

    const-string v4, "airhq_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    :r6d165_havekey
    const/4 v6, 0x0

    if-lez v5, :r6d165_base

    if-lez v1, :r6d165_base

    const/16 v6, 0x41

    if-eqz v7, :r6d165_neg

    goto :r6d165_base

    :r6d165_neg
    const/16 v6, -0x24

    :r6d165_base
    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v4
    neg-int v4, v4
    div-int/lit8 v4, v4, 0x2
    add-int/2addr v4, v6
    iput v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v3, v7, v6, v4}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->upx(IIII)V

    :r6d165_next
    add-int/lit8 v0, v0, 0x1

    goto :r6d165_loop

    :r6d165_end
    :r6d165_try_end
    goto :r6d165_out

    :r6d165_catch
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :r6d165_out
    nop

    .catch Ljava/lang/Exception; {:r6d165_try_start .. :r6d165_try_end} :r6d165_catch
    # === r6d165 end ===
    goto :goto_3d

    .line 525
    :catch_39
    move-exception v0

    .line 526
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 528
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method public final updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regimentKey"    # Ljava/lang/String;
    .param p3, "numOfSoldiers"    # I
    .param p4, "morale"    # F

    .line 655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_70

    .line 656
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 657
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_12
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v1, v2, :cond_6c

    .line 658
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 659
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 660
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iput p3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 661
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iput p4, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_68} :catch_71

    .line 662
    return-void

    .line 657
    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 665
    .end local v1    # "j":I
    :cond_6c
    return-void

    .line 655
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 670
    .end local v0    # "i":I
    :cond_70
    goto :goto_75

    .line 668
    :catch_71
    move-exception v0

    .line 669
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 671
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_75
    return-void
.end method

.method public final updateArmy_BattleSummary(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 907
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_a3

    .line 908
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 909
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 910
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 911
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 913
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    if-nez v1, :cond_47

    .line 914
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_9e

    .line 917
    :cond_47
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v1, :cond_9e

    .line 918
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v1, :cond_79

    .line 919
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_9e

    .line 922
    :cond_79
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9e} :catch_a4

    .line 926
    :cond_9e
    :goto_9e
    return-void

    .line 907
    :cond_9f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    .line 931
    .end local v0    # "i":I
    :cond_a3
    goto :goto_a8

    .line 929
    :catch_a4
    move-exception v0

    .line 930
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 932
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a8
    return-void
.end method

.method public final updateBuildingLimit()V
    .registers 4

    .line 2781
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_DEFAULT:I

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_CAPITAL:I

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_SLOT_PER_ECONOMY:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->BuildingSlots:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    .line 2782
    return-void
.end method

.method public updateBuildingsUnderConstrucion(I)V
    .registers 8
    .param p1, "turns"    # I

    .line 2608
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_4
    if-ltz v0, :cond_19e

    .line 2609
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    iget v3, v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    sub-int/2addr v3, p1

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    .line 2611
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    if-gtz v2, :cond_19a

    .line 2613
    :try_start_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_32

    .line 2614
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->bc:I

    add-int/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->bc:I

    .line 2617
    :cond_32
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addBuildingsConstructed(I)V

    .line 2618
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    packed-switch v2, :pswitch_data_1a0

    goto :goto_91

    .line 2632
    :pswitch_59
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addCapitalBuildingsConstructed(I)V

    goto :goto_91

    .line 2628
    :pswitch_67
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addEconomyBuildingsConstructed(I)V

    .line 2629
    goto :goto_91

    .line 2624
    :pswitch_75
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addMilitaryBuildingsConstructed(I)V

    .line 2625
    goto :goto_91

    .line 2620
    :pswitch_83
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addAdministrativeBuildingsConstructed(I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_90} :catch_92

    .line 2621
    nop

    .line 2638
    :goto_91
    goto :goto_96

    .line 2636
    :catch_92
    move-exception v2

    .line 2637
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2640
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_96
    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    .line 2642
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "Airport"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->buildAirport(II)Laoc/kingdoms/lukasz/map/battles/Airport;

    .line 2644
    :cond_105
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-eqz v2, :cond_16b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_16b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_16b

    .line 2645
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 2646
    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 2648
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    aget-object v3, v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "BuildingConstructed"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 2653
    :cond_16b
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2654
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    .line 2656
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-nez v2, :cond_185

    .line 2657
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceBuildingsUnderConstruction(I)V

    .line 2660
    :cond_185
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 2661
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 2663
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_19a

    .line 2664
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    .line 2608
    :cond_19a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    .line 2668
    .end local v0    # "j":I
    :cond_19e
    return-void

    nop

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_83
        :pswitch_75
        :pswitch_67
        :pswitch_59
    .end packed-switch
.end method

.method public final updateCityScale()V
    .registers 4

    .line 3029
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    .line 3030
    return-void
.end method

.method public final updateCoreCreation(I)V
    .registers 5
    .param p1, "turns"    # I

    .line 3391
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_47

    .line 3392
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    sub-int/2addr v1, p1

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 3394
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_47

    .line 3395
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 3397
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3399
    new-instance v0, Laoc/kingdoms/lukasz/map/province/Province$12;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCivStability"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province$12;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 3406
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceCoreCreation(I)V

    .line 3409
    :cond_47
    return-void
.end method

.method public updateCoresSize()V
    .registers 2

    .line 3270
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 3271
    return-void
.end method

.method public updateCores_AfterRemoveCiv(I)V
    .registers 5
    .param p1, "nRemoveCivID"    # I

    .line 3248
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_7a

    .line 3249
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_44

    .line 3250
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 3252
    :cond_44
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_77

    .line 3253
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3254
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    .line 3248
    :cond_77
    :goto_77
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3257
    .end local v0    # "i":I
    :cond_7a
    return-void
.end method

.method public final updateDevastation()V
    .registers 3

    .line 3560
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3561
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_PER_MONTH_OCCUPIED:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    goto :goto_1f

    .line 3564
    :cond_13
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_PER_MONTH_DEFAULT:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    .line 3566
    :goto_1f
    return-void
.end method

.method public updateDevelopInfrastructure()V
    .registers 4

    .line 3486
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    if-lez v0, :cond_77

    .line 3487
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 3489
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_77

    .line 3490
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3491
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    .line 3493
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setInfrastructure(I)V

    .line 3495
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    if-nez v0, :cond_48

    .line 3496
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceDevelopInfrastructure(I)V

    .line 3499
    :cond_48
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3500
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 3501
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 3503
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveResearchBuilding()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 3504
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 3507
    :cond_6e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3510
    :cond_77
    return-void
.end method

.method public updateDrawArmy()V
    .registers 2

    .line 4149
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmy(I)Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    .line 4150
    return-void
.end method

.method public updateHaveACore()V
    .registers 4

    .line 3260
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_29

    .line 3262
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_26

    .line 3263
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    .line 3264
    return-void

    .line 3261
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3267
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method public final updateIncomeEconomy()V
    .registers 2

    .line 3129
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    .line 3130
    return-void
.end method

.method public final updateIncomeProduction()V
    .registers 3

    .line 3133
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(II)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    .line 3134
    return-void
.end method

.method public final updateIncomeTaxation()V
    .registers 2

    .line 3125
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(I)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    .line 3126
    return-void
.end method

.method public updateIncreaseGrowthRate()V
    .registers 6

    .line 3002
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    if-lez v0, :cond_84

    .line 3003
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 3005
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getIncreasedGrowthRate()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_GROWTH:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->setIncreasedGrowthRate(F)V

    .line 3007
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 3008
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 3010
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_84

    .line 3011
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3012
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    .line 3014
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateCityScale()V

    .line 3016
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    if-nez v0, :cond_6a

    .line 3017
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceIncreaseGrowthRate(I)V

    .line 3020
    :cond_6a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->haveResearchBuilding()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3021
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 3022
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3026
    :cond_84
    return-void
.end method

.method public updateIncreaseManpower()V
    .registers 5

    .line 2895
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    if-lez v0, :cond_5a

    .line 2896
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 2898
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_GROWTH:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    .line 2900
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_5a

    .line 2901
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2902
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    .line 2904
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 2906
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    if-nez v0, :cond_5a

    .line 2907
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceIncreaseManpower(I)V

    .line 2911
    :cond_5a
    return-void
.end method

.method public final updateIncreasePopulationOfCivID(II)V
    .registers 6
    .param p1, "nCivID"    # I
    .param p2, "nPopulation"    # I

    .line 2348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v0, v1, :cond_28

    .line 2349
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v1

    .line 2351
    .local v1, "population":Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 2352
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->setPopulation(I)V

    .line 2353
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/2addr v2, p2

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2354
    return-void

    .line 2348
    .end local v1    # "population":Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2358
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2359
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/2addr v0, p2

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2360
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    .line 2361
    return-void
.end method

.method public updateIncreaseTaxEfficiency()V
    .registers 5

    .line 2951
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    if-lez v0, :cond_5d

    .line 2952
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 2954
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiency()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_GROWTH:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    .line 2956
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_5d

    .line 2957
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2958
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    .line 2960
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 2961
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2963
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    if-nez v0, :cond_5d

    .line 2964
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceIncreaseTaxEfficiency(I)V

    .line 2968
    :cond_5d
    return-void
.end method

.method public final updateInfrastructureMax()V
    .registers 5

    .line 3428
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_DEFAULT:I

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_CAPITAL:I

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_PER_ECONOMY:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_PER_GROWTH_RATE:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaxInfrastructure:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_LVL:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    .line 3429
    return-void
.end method

.method public updateInvestEconomy()V
    .registers 5

    .line 2833
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-lez v0, :cond_5f

    .line 2834
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 2836
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    .line 2838
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_5f

    .line 2839
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2840
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    .line 2842
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAfterEconomyChange()V

    .line 2843
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2845
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-nez v0, :cond_5f

    .line 2846
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceInvest(I)V

    .line 2850
    :cond_5f
    return-void
.end method

.method public final updateIsUnderSiege()V
    .registers 4

    .line 3953
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 3954
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_45

    .line 3956
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v1, :cond_42

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v1, :cond_42

    .line 3957
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3958
    return-void

    .line 3955
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .end local v0    # "i":I
    :cond_45
    goto :goto_6f

    .line 3964
    :cond_46
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_47
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_6f

    .line 3965
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v1, :cond_6c

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v1, :cond_6c

    .line 3966
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 3967
    return-void

    .line 3964
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 3973
    .end local v0    # "i":I
    :cond_6f
    :goto_6f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 3974
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    .line 3976
    :cond_79
    return-void
.end method

.method public final updateLoot()V
    .registers 3

    .line 3996
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3997
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getLoot()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->LOOT_PROVINCE_RECOVERY_PER_MONTH:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLoot(F)V

    .line 3999
    :cond_12
    return-void
.end method

.method public final updatePopulationGrowth()V
    .registers 5

    .line 3414
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->POPULATION_GROWTH_PER_MONTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreasePopulationOfCivID(II)V

    .line 3415
    return-void
.end method

.method public final updatePopulationOfProvince()V
    .registers 4

    .line 2271
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v0, v1, :cond_20

    .line 2274
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    .line 2273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2276
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method public final updateProvinceIncome()V
    .registers 4

    .line 3114
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    .line 3116
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncomeTaxation()V

    .line 3117
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncomeEconomy()V

    .line 3118
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncomeProduction()V

    .line 3119
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    add-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    add-float/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    .line 3121
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceMaintenance()V

    .line 3122
    return-void
.end method

.method public final updateProvinceMaintenance()V
    .registers 3

    .line 3137
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBuildingsMaintenance()F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceMaintenance()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    .line 3139
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 3140
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    .line 3142
    :cond_19
    return-void
.end method

.method public final updateProvinceValue()V
    .registers 3

    .line 4155
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_BASE:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    .line 4157
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceValue_Economy()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    .line 4158
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceValue_GrowthRate()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    .line 4160
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_2b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4161
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_WONDER_BUILT:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    .line 4164
    :cond_2b
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_38

    .line 4165
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_CAPITAL:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    .line 4167
    :cond_38
    return-void
.end method

.method public final updateRegiment(ILjava/util/List;)Z
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;)Z"
        }
    .end annotation

    .line 713
    .local p2, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 714
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    .line 715
    const/4 v0, 0x0

    return v0

    .line 718
    :cond_b
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 719
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateRegiment(Ljava/util/List;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 723
    goto :goto_21

    .line 721
    :catch_1d
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 725
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method public final updateReligionConversion(I)V
    .registers 5
    .param p1, "turns"    # I

    .line 3188
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_52

    .line 3189
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    sub-int/2addr v1, p1

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 3191
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_52

    .line 3192
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    .line 3194
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3196
    new-instance v0, Laoc/kingdoms/lukasz/map/province/Province$11;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCivStability"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province$11;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 3203
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceConvertReligion(I)V

    .line 3205
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAfterReligionConversion()V

    .line 3208
    :cond_52
    return-void
.end method

.method public final updateRevolutionaryRisk()V
    .registers 10

    .line 3592
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAX_UNREST:F

    .line 3595
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v2

    .line 3596
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange()F

    move-result v3

    add-float/2addr v2, v3

    .line 3594
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 3593
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3592
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->setRevolutionaryRisk(F)V

    .line 3599
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_99

    .line 3600
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->SEND_NOTIFICATION_IF_UNREST_OVER:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_99

    .line 3601
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Unrest"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "% - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->revolutionRisk:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification_Unrest(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 3604
    :cond_99
    return-void
.end method

.method public final updateSeaProvince()V
    .registers 3

    .line 1880
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0

    const/4 v1, -0x1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->seaProvince:Z

    .line 1881
    return-void
.end method

.method public updateWonderConstruction()V
    .registers 6

    .line 3072
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_9d

    .line 3073
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 3075
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_9d

    .line 3076
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setWonderBuilt(Z)V

    .line 3077
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    .line 3079
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceWonderConstruction(I)V

    .line 3081
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    .line 3082
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    .line 3084
    sget-object v0, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v0, v0, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Legacy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5b

    .line 3085
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v1, v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Legacy:F

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 3088
    :cond_5b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_8b

    .line 3089
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 3090
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 3092
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "WonderConstructed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 3096
    :cond_8b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Wonder()Z

    move-result v0

    if-eqz v0, :cond_9d

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->iProvinceID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v0, v1, :cond_9d

    .line 3097
    sput-boolean v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->rebuildMenu:Z

    .line 3101
    :cond_9d
    return-void
.end method
