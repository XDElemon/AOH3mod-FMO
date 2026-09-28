.class public Laoc/kingdoms/lukasz/map/map/MapModeManager;
.super Ljava/lang/Object;
.source "MapModeManager.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x1f4

.field public static PROVINCE_BLUE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_RED:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

.field public static diplomacyActiveCivID:I

.field public static diplomacyColorsPosX:I

.field public static diplomacyColorsPosY:I

.field public static diplomacyScale:F

.field public static fAlphaAnimation:F

.field public static lTime:J


# instance fields
.field public ECONOMY_MAX:F

.field public MODE_ALLIANCES:I

.field public MODE_BUILDING:I

.field public MODE_CIV_ECONOMY_HOVER:I

.field public MODE_CIV_POPULATION_HOVER:I

.field public MODE_CIV_STABILITY_HOVER:I

.field public MODE_COLONIZE_CHOOSE_PROVINCE:I

.field public MODE_CONVERT_RELIGION:I

.field public MODE_CORE:I

.field public MODE_DECLARE_WAR:I

.field public MODE_DEFAULT:I

.field public MODE_DEFAULT_TERRAIN:I

.field public MODE_DEFENSE_LEVEL:I

.field public MODE_DEFENSIVE_PACTS:I

.field public MODE_DEVASTATION:I

.field public MODE_DEVELOP_INFRASTRUCTURE:I

.field public MODE_DIPLOMACY:I

.field public MODE_DIPLOMACY_DAMAGE_RELATIONS:I

.field public MODE_DIPLOMACY_IMPROVE_RELATIONS:I

.field public MODE_DISEASES:I

.field public MODE_ECONOMY:I

.field public MODE_FORM_CIV:I

.field public MODE_GOODS:I

.field public MODE_GOVERNMENT:I

.field public MODE_INCREASE_GROWTH_RATE:I

.field public MODE_INCREASE_MANPOWER:I

.field public MODE_INCREASE_TAX_EFFICIENCY:I

.field public MODE_INFRASTRUCTURE:I

.field public MODE_INVEST_IN_ECONOMY:I

.field public MODE_LOOT:I

.field public MODE_MERCENARIES_CHOOSE_PROVINCE:I

.field public MODE_MOVE_CAPITAL:I

.field public MODE_NEW_ARMY_CHOOSE_PROVINCE:I

.field public MODE_NON_AGGRESSION_PACTS:I

.field public MODE_NUKE_CHOOSE_PROVINCE:I

.field public MODE_PEACE_VIEW:I

.field public MODE_POPULATION:I

.field public MODE_PROVINCE_DEVASTATION_HOVER:I

.field public MODE_PROVINCE_ECONOMY_HOVER:I

.field public MODE_PROVINCE_EXPENSES_HOVER:I

.field public MODE_PROVINCE_FORTS_HOVER:I

.field public MODE_PROVINCE_GROWTH_RATE_HOVER:I

.field public MODE_PROVINCE_INCOME:I

.field public MODE_PROVINCE_INCOME_HOVER:I

.field public MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

.field public MODE_PROVINCE_LOOT_HOVER:I

.field public MODE_PROVINCE_MANPOWER_HOVER:I

.field public MODE_PROVINCE_MANPOWER_HOVER_PLAYER:I

.field public MODE_PROVINCE_POPULATION_HOVER:I

.field public MODE_PROVINCE_PROVINCE_INCOME_HOVER:I

.field public MODE_PROVINCE_PROVINCE_VALUE_HOVER:I

.field public MODE_PROVINCE_RELIGION_HOVER:I

.field public MODE_PROVINCE_TAX:I

.field public MODE_PROVINCE_TAX_EFFICIENCY_HOVER:I

.field public MODE_PROVINCE_UNREST_HOVER:I

.field public MODE_RECRUIT_ARMY:I

.field public MODE_RELEASE_VASSAL:I

.field public MODE_RELIGION:I

.field public MODE_SELL_PROVINCES:I

.field public MODE_SPECIAL_ALLIANCE_VIEW:I

.field public MODE_TERRAIN:I

.field public MODE_UNREST:I

.field public MODE_WARS:I

.field public MODE_WAR_VIEW:I

.field public MODE_WONDERS:I

.field public POPULATION_MAX:I

.field public PROVINCE_INCOME_MAX:F

.field public PROVINCE_MANPOWER_MAX:F

.field public TAX_MAX:F

.field public iActiveMapModeID:I

.field public lMapModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 68
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8c8c8d

    const v2, 0x3f028283

    const v3, 0x3e70f0f1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 69
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3e008081

    const v5, 0x3f35b5b6

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED:Lcom/badlogic/gdx/graphics/Color;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f52d2d3

    const v2, 0x3f48c8c9

    invoke-direct {v0, v1, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ebebebf

    const v5, 0x3f169697

    const v6, 0x3e0c8c8d

    invoke-direct {v0, v6, v1, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6bebec

    const/4 v5, 0x0

    invoke-direct {v0, v5, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb4b4b5

    const v3, 0x3f66e6e7

    const v6, 0x3e20a0a1

    invoke-direct {v0, v6, v1, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f57d7d8

    invoke-direct {v0, v1, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e48c8c9

    invoke-direct {v0, v2, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    .line 173
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    .line 175
    sput v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    .line 5241
    const v0, -0xbde31

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosX:I

    .line 5242
    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosY:I

    .line 5243
    const v0, -0x3bbdc000    # -777.0f

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyScale:F

    .line 5244
    const/16 v0, -0x309

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 83
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT_TERRAIN:I

    .line 85
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_POPULATION:I

    .line 86
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ECONOMY:I

    .line 87
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME:I

    .line 88
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME_HOVER:I

    .line 89
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_EXPENSES_HOVER:I

    .line 90
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    .line 91
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_ECONOMY_HOVER:I

    .line 92
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER_PLAYER:I

    .line 93
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_GROWTH_RATE_HOVER:I

    .line 94
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER:I

    .line 95
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_ECONOMY_HOVER:I

    .line 96
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX_EFFICIENCY_HOVER:I

    .line 97
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_POPULATION_HOVER:I

    .line 98
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_RELIGION_HOVER:I

    .line 99
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_FORTS_HOVER:I

    .line 100
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_INCOME_HOVER:I

    .line 101
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

    .line 102
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_LOOT_HOVER:I

    .line 103
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_VALUE_HOVER:I

    .line 104
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_DEVASTATION_HOVER:I

    .line 105
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_UNREST_HOVER:I

    .line 106
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX:I

    .line 107
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_TERRAIN:I

    .line 108
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    .line 109
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    .line 110
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WONDERS:I

    .line 111
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    .line 112
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    .line 113
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    .line 114
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    .line 115
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSE_LEVEL:I

    .line 116
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    .line 117
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DISEASES:I

    .line 119
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    .line 120
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ALLIANCES:I

    .line 121
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSIVE_PACTS:I

    .line 122
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NON_AGGRESSION_PACTS:I

    .line 124
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    .line 125
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    .line 126
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    .line 127
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    .line 128
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    .line 129
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    .line 130
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    .line 131
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    .line 133
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SELL_PROVINCES:I

    .line 135
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    .line 137
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    .line 139
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    .line 141
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_STABILITY_HOVER:I

    .line 143
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    .line 144
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    .line 145
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    .line 147
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    .line 148
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    .line 149
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    .line 150
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DECLARE_WAR:I

    .line 152
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_FORM_CIV:I

    .line 154
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SPECIAL_ALLIANCE_VIEW:I

    .line 156
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WAR_VIEW:I

    .line 157
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    .line 158
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    .line 4985
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    .line 4999
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    .line 5013
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    .line 5027
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    .line 5029
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    .line 189
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$3;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$2;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    .line 312
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$6;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$4;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$5;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    .line 475
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$9;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$7;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$8;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$8;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$9;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    .line 525
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$12;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$10;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$10;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$11;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$11;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$12;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    .line 575
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$15;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$13;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$13;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$14;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$14;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$15;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DECLARE_WAR:I

    .line 631
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$18;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$16;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$16;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$17;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$17;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$18;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    .line 658
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$21;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$19;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$19;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$20;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$20;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$21;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ALLIANCES:I

    .line 726
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$24;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$22;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$22;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$23;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$23;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$24;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSIVE_PACTS:I

    .line 794
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$27;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$25;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$25;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$26;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$26;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$27;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NON_AGGRESSION_PACTS:I

    .line 862
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$30;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$28;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$28;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$29;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$29;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$30;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    .line 896
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$33;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$31;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$31;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$32;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$32;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$33;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SELL_PROVINCES:I

    .line 933
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$36;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$34;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$34;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$35;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$35;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$36;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    .line 967
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$39;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$37;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$37;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$38;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$38;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$39;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_FORM_CIV:I

    .line 1006
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$42;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$40;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$40;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$41;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$41;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$42;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SPECIAL_ALLIANCE_VIEW:I

    .line 1037
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$45;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$43;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$43;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$44;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$44;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$45;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WAR_VIEW:I

    .line 1076
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$48;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$46;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$46;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$47;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$47;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$48;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    .line 1151
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$51;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$49;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$49;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$50;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$50;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$51;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    .line 1180
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$54;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$52;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$52;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$53;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$53;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$54;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT_TERRAIN:I

    .line 1256
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$57;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$55;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$55;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$56;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$56;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$57;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_POPULATION:I

    .line 1335
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$60;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$58;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$58;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$59;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$59;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$60;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ECONOMY:I

    .line 1412
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$63;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$61;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$61;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$62;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$62;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$63;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    .line 1494
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$66;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$64;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$64;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$65;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$65;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$66;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX:I

    .line 1571
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$69;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$67;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$67;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$68;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$68;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$69;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    .line 1632
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$72;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$70;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$70;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$71;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$71;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$72;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    .line 1699
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$75;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$73;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$73;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$74;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$74;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$75;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSE_LEVEL:I

    .line 1766
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$78;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$76;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$76;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$77;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$77;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$78;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DISEASES:I

    .line 1863
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$81;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$79;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$79;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$80;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$80;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$81;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    .line 1932
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$84;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$82;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$82;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$83;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$83;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$84;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    .line 2003
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$87;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$85;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$85;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$86;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$86;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$87;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    .line 2093
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$90;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$88;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$88;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$89;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$89;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$90;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME_HOVER:I

    .line 2132
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$93;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$91;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$91;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$92;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$92;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$93;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_EXPENSES_HOVER:I

    .line 2171
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$94;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$94;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$95;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$95;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    .line 2215
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$99;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$97;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$97;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$98;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$98;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$99;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_ECONOMY_HOVER:I

    .line 2259
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$102;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$100;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$100;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$101;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$101;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$102;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER_PLAYER:I

    .line 2298
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$105;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$103;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$103;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$104;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$104;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$105;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_STABILITY_HOVER:I

    .line 2333
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$108;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$106;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$106;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$107;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$107;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$108;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_UNREST_HOVER:I

    .line 2370
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$111;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$109;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$109;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$110;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$110;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$111;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER:I

    .line 2411
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$112;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$112;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$113;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$113;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX_EFFICIENCY_HOVER:I

    .line 2452
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$117;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$115;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$115;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$116;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$116;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$117;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_ECONOMY_HOVER:I

    .line 2493
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$120;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$118;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$118;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$119;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$119;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$120;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_FORTS_HOVER:I

    .line 2534
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$123;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$121;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$121;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$122;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$122;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$123;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_INCOME_HOVER:I

    .line 2575
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$124;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$124;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$125;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$125;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

    .line 2616
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$129;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$127;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$127;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$128;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$128;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$129;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_VALUE_HOVER:I

    .line 2657
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$132;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$130;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$130;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$131;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$131;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$132;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_LOOT_HOVER:I

    .line 2698
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$135;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$133;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$133;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$134;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$134;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$135;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_DEVASTATION_HOVER:I

    .line 2739
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$138;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$136;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$136;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$137;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$137;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$138;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_GROWTH_RATE_HOVER:I

    .line 2780
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$139;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$139;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$140;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$140;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_POPULATION_HOVER:I

    .line 2821
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$144;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$142;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$142;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$143;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$143;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$144;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_RELIGION_HOVER:I

    .line 2878
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$147;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$145;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$145;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$146;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$146;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$147;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME:I

    .line 2955
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$150;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$148;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$148;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$149;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$149;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$150;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    .line 3043
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$153;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$151;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$151;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$152;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$152;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$153;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    .line 3125
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$156;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$154;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$154;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$155;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$155;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$156;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    .line 3356
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapMode;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$157;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$157;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$158;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$158;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_TERRAIN:I

    .line 3413
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$161;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$159;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$159;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$160;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$160;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$161;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    .line 3527
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$164;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$162;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$162;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$163;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$163;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$164;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WONDERS:I

    .line 3627
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$167;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$165;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$165;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$166;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$166;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$167;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    .line 3712
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$170;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$168;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$168;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$169;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$169;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$170;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    .line 3878
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$173;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$171;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$171;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$172;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$172;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$173;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    .line 4043
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$176;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$174;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$174;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$175;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$175;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$176;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    .line 4186
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$179;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$177;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$177;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$178;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$178;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$179;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    .line 4340
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$182;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$180;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$180;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$181;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$181;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$182;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    .line 4442
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$185;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$183;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$183;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$184;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$184;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$185;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    .line 4618
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$188;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$186;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$186;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$187;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$187;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$188;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    .line 4773
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$191;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$189;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$189;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$190;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$190;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$191;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    .line 4976
    return-void
.end method

.method private final addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I
    .registers 3
    .param p1, "nMapMode"    # Laoc/kingdoms/lukasz/map/map/MapMode;

    .line 4979
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4980
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static drawProvinces_DefaultHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 5402
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    .line 5404
    .local v0, "fProvinceAlpha":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 5406
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_25

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_22

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    goto :goto_29

    :cond_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    goto :goto_27

    :cond_25
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    :goto_27
    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 5408
    .local v1, "activeCivID":I
    :goto_29
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_eb

    .line 5409
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_8f

    .line 5410
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_8c

    .line 5411
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_7f

    .line 5412
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5413
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5414
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_8c

    .line 5417
    :cond_7f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5409
    :cond_8c
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 5422
    .end local v2    # "i":I
    :cond_8f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_90
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_e9

    .line 5423
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_e6

    .line 5424
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_d9

    .line 5425
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5426
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5427
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_e6

    .line 5430
    :cond_d9
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5422
    :cond_e6
    :goto_e6
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    .end local v2    # "i":I
    :cond_e9
    goto/16 :goto_19b

    .line 5438
    :cond_eb
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ec
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_143

    .line 5439
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_140

    .line 5440
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_135

    .line 5441
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5442
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5443
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_140

    .line 5446
    :cond_135
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5438
    :cond_140
    :goto_140
    add-int/lit8 v2, v2, 0x1

    goto :goto_ec

    .line 5451
    .end local v2    # "i":I
    :cond_143
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_144
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_19b

    .line 5452
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_198

    .line 5453
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_18d

    .line 5454
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5455
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5456
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_198

    .line 5459
    :cond_18d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5451
    :cond_198
    :goto_198
    add-int/lit8 v2, v2, 0x1

    goto :goto_144

    .line 5465
    .end local v2    # "i":I
    :cond_19b
    :goto_19b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19e} :catch_19f

    .line 5470
    .end local v0    # "fProvinceAlpha":F
    .end local v1    # "activeCivID":I
    goto :goto_1ac

    .line 5466
    :catch_19f
    move-exception v0

    .line 5467
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5469
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 5471
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1ac
    return-void
.end method

.method public static drawProvinces_DefaultHover_Player(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 5475
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    .line 5477
    .local v0, "fProvinceAlpha":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 5479
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 5481
    .local v1, "activeCivID":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_cd

    .line 5482
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_71

    .line 5483
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_6e

    .line 5484
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_61

    .line 5485
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5486
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5487
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_6e

    .line 5490
    :cond_61
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5482
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 5495
    .end local v2    # "i":I
    :cond_71
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_72
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_cb

    .line 5496
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_c8

    .line 5497
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_bb

    .line 5498
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5499
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5500
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_c8

    .line 5503
    :cond_bb
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5495
    :cond_c8
    :goto_c8
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .end local v2    # "i":I
    :cond_cb
    goto/16 :goto_17d

    .line 5511
    :cond_cd
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ce
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_125

    .line 5512
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_122

    .line 5513
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_117

    .line 5514
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5515
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5516
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_122

    .line 5519
    :cond_117
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5511
    :cond_122
    :goto_122
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 5524
    .end local v2    # "i":I
    :cond_125
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_126
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_17d

    .line 5525
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eqz v3, :cond_17a

    .line 5526
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v1, :cond_16f

    .line 5527
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v4, v4, v0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 5528
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 5529
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_17a

    .line 5532
    :cond_16f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 5524
    :cond_17a
    :goto_17a
    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    .line 5538
    .end local v2    # "i":I
    :cond_17d
    :goto_17d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_180} :catch_181

    .line 5543
    .end local v0    # "fProvinceAlpha":F
    .end local v1    # "activeCivID":I
    goto :goto_18e

    .line 5539
    :catch_181
    move-exception v0

    .line 5540
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5542
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 5544
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_18e
    return-void
.end method

.method public static getProvinceHover_Default()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 6

    .line 5548
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_48

    .line 5549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5550
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5552
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5553
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5554
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5555
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5557
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_49

    return-object v2

    .line 5561
    .end local v0    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v1    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    :cond_48
    goto :goto_4a

    .line 5559
    :catch_49
    move-exception v0

    .line 5563
    :goto_4a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final updateAlpha()V
    .registers 6

    .line 178
    sget-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-lez v5, :cond_26

    .line 179
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    const v1, 0x3f0ccccd    # 0.55f

    add-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    goto :goto_28

    .line 182
    :cond_26
    sput v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    .line 184
    :goto_28
    return-void
.end method

.method public static final updateDiplomacyProvinceColor(Z)V
    .registers 10
    .param p0, "updateActive"    # Z

    .line 5247
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_26

    sget v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    if-ne v0, v1, :cond_26

    sget v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    if-ne v0, v1, :cond_26

    sget v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v0, v1, :cond_563

    .line 5248
    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosX:I

    .line 5249
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosY:I

    .line 5250
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyScale:F

    .line 5252
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    .line 5254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_2d6

    .line 5255
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_2d2

    .line 5257
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v1, v4, :cond_8c

    .line 5258
    if-eqz p0, :cond_2d2

    .line 5259
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5264
    :cond_8c
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 5265
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5269
    :cond_ae
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v1, v4, :cond_d4

    .line 5270
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5273
    :cond_d4
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v1, v4, :cond_fa

    .line 5274
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5277
    :cond_fa
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 5278
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5281
    :cond_128
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 5282
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5285
    :cond_156
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 5286
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5289
    :cond_184
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 5290
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5293
    :cond_1b2
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 5294
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5297
    :cond_1e0
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 5298
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5301
    :cond_20e
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 5302
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_2d2

    .line 5305
    :cond_23c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_269

    .line 5306
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2d2

    .line 5310
    :cond_269
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v1

    float-to-int v1, v1

    .line 5312
    .local v1, "tempRelation":I
    if-nez v1, :cond_29d

    .line 5313
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 5314
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_2d2

    .line 5316
    :cond_29d
    if-lez v1, :cond_2b9

    .line 5317
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v6, v1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    neg-float v7, v7

    float-to-int v7, v7

    invoke-static {v4, v5, v6, v7, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2d2

    .line 5320
    :cond_2b9
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v6, v1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v7, v7

    float-to-int v7, v7

    invoke-static {v4, v5, v6, v7, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 5254
    .end local v1    # "tempRelation":I
    :cond_2d2
    :goto_2d2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_43

    .line 5327
    .end local v0    # "i":I
    :cond_2d6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2d7
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_563

    .line 5328
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_55f

    .line 5330
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v1, v4, :cond_319

    .line 5331
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5335
    :cond_319
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_33b

    .line 5336
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5340
    :cond_33b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v1, v4, :cond_361

    .line 5341
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5344
    :cond_361
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v1, v4, :cond_387

    .line 5345
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5348
    :cond_387
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b5

    .line 5349
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5352
    :cond_3b5
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e3

    .line 5353
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5356
    :cond_3e3
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_411

    .line 5357
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5360
    :cond_411
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43f

    .line 5361
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5364
    :cond_43f
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46d

    .line 5365
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5368
    :cond_46d
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49b

    .line 5369
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5372
    :cond_49b
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c9

    .line 5373
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_55f

    .line 5376
    :cond_4c9
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f6

    .line 5377
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_55f

    .line 5381
    :cond_4f6
    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v1

    float-to-int v1, v1

    .line 5383
    .restart local v1    # "tempRelation":I
    if-nez v1, :cond_52a

    .line 5384
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v5, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 5385
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_55f

    .line 5387
    :cond_52a
    if-lez v1, :cond_546

    .line 5388
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v7, v1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    neg-float v8, v8

    float-to-int v8, v8

    invoke-static {v5, v6, v7, v8, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iput-object v5, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_55f

    .line 5391
    :cond_546
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v7, v1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v8, v8

    float-to-int v8, v8

    invoke-static {v5, v6, v7, v8, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iput-object v5, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    .line 5327
    .end local v1    # "tempRelation":I
    :cond_55f
    :goto_55f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2d7

    .line 5397
    .end local v0    # "i":I
    :cond_563
    return-void
.end method

.method public static final updateRightMenu()V
    .registers 2

    .line 162
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->stateVisible:Z

    if-eqz v0, :cond_e

    .line 163
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 164
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->lTime:J

    goto :goto_14

    .line 167
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Right(Z)V

    .line 169
    :goto_14
    return-void
.end method


# virtual methods
.method public final disableAllViews()V
    .registers 3

    .line 5226
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    if-eqz v0, :cond_14

    .line 5227
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 5228
    .local v0, "tempActive":I
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 5230
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 5233
    .end local v0    # "tempActive":I
    :cond_14
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateViews()V

    .line 5234
    return-void
.end method

.method public final setActiveViewID(I)V
    .registers 6
    .param p1, "iID"    # I

    .line 5193
    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 5194
    return-void

    .line 5196
    :cond_8
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    if-ne v1, p1, :cond_1c

    .line 5197
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 5198
    .local v1, "tempActive":I
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 5201
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 5202
    .end local v1    # "tempActive":I
    goto :goto_3a

    .line 5204
    :cond_1c
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 5205
    .restart local v1    # "tempActive":I
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 5207
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    .line 5210
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 5212
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 5215
    .end local v1    # "tempActive":I
    :goto_3a
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->updateDrawOver()V

    .line 5216
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawExtraDetails()V

    .line 5217
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateExtraAction()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    .line 5220
    goto :goto_47

    .line 5218
    :catch_44
    move-exception v1

    .line 5219
    .local v1, "ex":Ljava/lang/Exception;
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    .line 5222
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_47
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateViews()V

    .line 5223
    return-void
.end method

.method public final updateCurrentWarsView()V
    .registers 4

    .line 5066
    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5068
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 5069
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v2

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5068
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5071
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public final updateMaxEconomy()V
    .registers 4

    .line 5002
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    .line 5004
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 5005
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2d

    .line 5006
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    .line 5004
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5010
    .end local v0    # "i":I
    :cond_30
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    .line 5011
    return-void
.end method

.method public final updateMaxPopulation()V
    .registers 4

    .line 4988
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    .line 4990
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 4991
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_2a

    .line 4992
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    .line 4990
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4996
    .end local v0    # "i":I
    :cond_2d
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    .line 4997
    return-void
.end method

.method public final updateMaxProvinceIncome()V
    .registers 4

    .line 5032
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    .line 5034
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 5035
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    .line 5036
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    .line 5034
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5040
    .end local v0    # "i":I
    :cond_31
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    .line 5041
    return-void
.end method

.method public final updateMaxTax()V
    .registers 4

    .line 5016
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    .line 5018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 5019
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2f

    .line 5020
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    .line 5018
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5024
    .end local v0    # "i":I
    :cond_32
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    .line 5025
    return-void
.end method

.method public final updatePeaceView(Ljava/lang/String;)V
    .registers 7
    .param p1, "nKey"    # Ljava/lang/String;

    .line 5113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_11

    .line 5114
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5118
    .end local v0    # "i":I
    :cond_11
    :try_start_11
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 5121
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a2

    .line 5122
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_a0

    .line 5123
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 5124
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5126
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_TAKE_PROVINCES_FROM_ALLIES:Z

    if-eqz v3, :cond_65

    .line 5127
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v4

    if-nez v4, :cond_61

    const/4 v4, 0x1

    goto :goto_62

    :cond_61
    const/4 v4, 0x0

    :goto_62
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_9d

    .line 5130
    :cond_65
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v4, v0, :cond_7f

    const/4 v4, 0x1

    goto :goto_80

    :cond_7f
    const/4 v4, 0x0

    :goto_80
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_9d

    .line 5133
    :cond_83
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 5134
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5135
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 5122
    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .end local v0    # "i":I
    :cond_a0
    goto/16 :goto_116

    .line 5140
    :cond_a2
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_a3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_116

    .line 5141
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 5142
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5143
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_113

    .line 5145
    :cond_c4
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 5146
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5148
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_TAKE_PROVINCES_FROM_ALLIES:Z

    if-eqz v3, :cond_f6

    .line 5149
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v4

    if-nez v4, :cond_f2

    const/4 v4, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v4, 0x0

    :goto_f3
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_113

    .line 5152
    :cond_f6
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v4, v0, :cond_110

    const/4 v4, 0x1

    goto :goto_111

    :cond_110
    const/4 v4, 0x0

    :goto_111
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 5140
    :cond_113
    :goto_113
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 5158
    .end local v0    # "i":I
    :cond_116
    :goto_116
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_TAKE_PROVINCES_FROM_ALLIES:Z

    if-eqz v0, :cond_157

    .line 5159
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_156

    .line 5160
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_153

    .line 5161
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v2, :cond_153

    .line 5162
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-nez v2, :cond_153

    .line 5164
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z

    .line 5159
    :cond_153
    add-int/lit8 v0, v0, 0x1

    goto :goto_11d

    .end local v0    # "i":I
    :cond_156
    goto :goto_1c9

    .line 5169
    :cond_157
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 5170
    .local v0, "aggressor":I
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 5172
    .local v2, "defender":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_1c9

    .line 5173
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_1c6

    .line 5174
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v4, :cond_1c6

    .line 5175
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-nez v4, :cond_1c6

    .line 5177
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eq v4, v0, :cond_1c0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v2, :cond_1c6

    .line 5178
    :cond_1c0
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iput-boolean v1, v4, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c6} :catch_1ca

    .line 5172
    :cond_1c6
    add-int/lit8 v3, v3, 0x1

    goto :goto_17c

    .line 5186
    .end local v0    # "aggressor":I
    .end local v2    # "defender":I
    .end local v3    # "i":I
    :cond_1c9
    :goto_1c9
    goto :goto_1ce

    .line 5184
    :catch_1ca
    move-exception v0

    .line 5185
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5187
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1ce
    return-void
.end method

.method public final updateSpecialAllianceView()V
    .registers 5

    .line 5044
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 5045
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5046
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 5044
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5050
    .end local v0    # "i":I
    :cond_17
    :try_start_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5051
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 5053
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_4d
    if-ltz v0, :cond_6e

    .line 5054
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5053
    add-int/lit8 v0, v0, -0x1

    goto :goto_4d

    .line 5057
    .end local v0    # "i":I
    :cond_6e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_7f
    if-ltz v0, :cond_a0

    .line 5058
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_9d} :catch_a1

    .line 5057
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    .line 5062
    .end local v0    # "i":I
    :cond_a0
    goto :goto_a5

    .line 5060
    :catch_a1
    move-exception v0

    .line 5061
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5063
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a5
    return-void
.end method

.method public final updateViews()V
    .registers 1

    .line 5237
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces()V

    .line 5238
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverBuild()V

    .line 5239
    return-void
.end method

.method public final updateWarView(Ljava/lang/String;)V
    .registers 6
    .param p1, "nKey"    # Ljava/lang/String;

    .line 5074
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_11

    .line 5075
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5074
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5079
    .end local v0    # "i":I
    :cond_11
    :try_start_11
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 5080
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->buildBiggestCitiesLines_Province(II)V

    .line 5082
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a3

    .line 5083
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_64
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_a2

    .line 5084
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 5085
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5086
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_9f

    .line 5088
    :cond_85
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 5089
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5090
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 5083
    :cond_9f
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .end local v0    # "i":I
    :cond_a2
    goto :goto_e2

    .line 5095
    :cond_a3
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_a4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v0, v3, :cond_e2

    .line 5096
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 5097
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5098
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_df

    .line 5100
    :cond_c5
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 5101
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 5102
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_df} :catch_e3

    .line 5095
    :cond_df
    :goto_df
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 5109
    .end local v0    # "i":I
    :cond_e2
    :goto_e2
    goto :goto_e7

    .line 5107
    :catch_e3
    move-exception v0

    .line 5108
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 5110
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e7
    return-void
.end method
