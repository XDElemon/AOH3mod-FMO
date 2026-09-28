.class public Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;
.super Ljava/lang/Object;
.source "AI_ValuesBuild.java"


# instance fields
.field public BUILD_CHANGE_BUILDING_CHANCE:I

.field public BUILD_CHANGE_UPGRADE_CAPITAL_BUILDING_CHANCE:I

.field public BUILD_INVEST_AT_WAR:Z

.field public BUILD_LIMIT:[I

.field public BUILD_MAX_RESEARCH_UPGRADE_CAPITAL_CHANCE:I

.field public BUILD_MIN_BALANCE:F

.field public BUILD_NO_BUILDINGS_INVEST_ECONOMY:I

.field public BUILD_NO_BUILDINGS_NEXT_TYPE:I

.field public BUILD_NO_BUILDINGS_PRODUCTION_BUILDING:I

.field public BUILD_NO_BUILDINGS_TAX_EFFICIENCY:I

.field public BUILD_PRIORITIZE_ECONOMY_IF_INCOME_BELOW:F

.field public BUILD_PRIORITIZE_RESEARCH:Z

.field public BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT:I

.field public BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM:I

.field public BUILD_PRIORITIZE_RESEARCH_PERC:F

.field public BUILD_RESEARCH_MIN_BALANCE:F

.field public BUILD_RESOURCE_PROVINCES:I

.field public BUILD_SCORE_CAPITAL:[I

.field public BUILD_SCORE_CAPITAL_TOTAL:I

.field public BUILD_SCORE_CONSTRUCTED_BUILDINGS_MODIFIER:F

.field public BUILD_SCORE_CONSTRUCTION_COST:F

.field public BUILD_SCORE_DIFFERENT_RELIGION:F

.field public BUILD_SCORE_DISTANCE_FROM_CAPITAL:F

.field public BUILD_SCORE_MANPOWER_PER_GROWTH_RATE:F

.field public BUILD_SCORE_MIN:F

.field public BUILD_SCORE_NON_CORE:F

.field public BUILD_SCORE_PER_ECONOMY:F

.field public BUILD_SCORE_PER_GROWTH_RATE:F

.field public BUILD_SCORE_PER_INFRASTRUCTURE:F

.field public BUILD_SCORE_PER_MANPOWER:F

.field public BUILD_SCORE_PER_PRICE_OF_RESOURCE:F

.field public BUILD_SCORE_PER_PROVINCE_MAINTENANCE_REDUCTION:F

.field public BUILD_SCORE_PER_PROVINCE_VALUE:F

.field public BUILD_SCORE_PER_TAX_EFFICIENCY:F

.field public BUILD_SCORE_RESEARCH_PER_GROWTH_RATE:F

.field public BUILD_SCORE_SAME_CONTINENT_AS_CAPITAL:F

.field public BUILD_SCORE_TAX_EFFICIENCY_PER_GROWTH_RATE:F

.field public BUILD_SCORE_TERRAIN_CONSTRUCTION_COST:F

.field public BUILD_WONDER_CHANCE:I

.field public CHOOSE_BUILD_TYPE_LIMIT:I

.field public DEVELOP_INFRASTRUCTURE_MIN_LEFT_GOLD:I

.field public DEVELOP_INFRASTRUCTURE_RANDOM:I

.field public DEVELOP_INFRASTRUCTURE_SCORE_DISTANCE:I

.field public DEVELOP_INFRASTRUCTURE_SCORE_GROWTH_RATE:I

.field public DEVELOP_INFRASTRUCTURE_SCORE_RANDOM:I

.field public DONT_BUILD_LEGACY_BUILDING_IF_LEGACY_OVER:I

.field public INCREASE_GROWTH_RATE_MIN_LEFT_GOLD:I

.field public INCREASE_GROWTH_RATE_RANDOM:I

.field public INCREASE_GROWTH_RATE_SCORE_RANDOM:I

.field public INCREASE_MANPOWER_MIN_LEFT_GOLD:I

.field public INCREASE_MANPOWER_RANDOM:I

.field public INCREASE_MANPOWER_SCORE_RANDOM:I

.field public INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD:I

.field public INCREASE_TAX_EFFICIENCY_RANDOM:I

.field public INCREASE_TAX_EFFICIENCY_SCORE_DISTANCE:I

.field public INCREASE_TAX_EFFICIENCY_SCORE_GROWTH_RATE:I

.field public INCREASE_TAX_EFFICIENCY_SCORE_RANDOM:I

.field public INVEST_IN_ECONOMY_AFTER_INCREASE_TAXATION_IN_PROVINCE_CHANCE:I

.field public INVEST_IN_ECONOMY_MAX_VALUE_INCREASE_GROWTH_RATE_CHANCE:I

.field public INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

.field public INVEST_IN_ECONOMY_RANDOM:I

.field public INVEST_IN_ECONOMY_SCORE_DISTANCE:I

.field public INVEST_IN_ECONOMY_SCORE_GROWTH_RATE:I

.field public INVEST_IN_ECONOMY_SCORE_PAYOFF:I

.field public INVEST_IN_ECONOMY_SCORE_RANDOM:I

.field public MAX_RESEARCH_EXPENSES_PERC_OF_INCOME:F

.field public UPGRADE_CAPITAL_BUILDINGS_IF_INCOME_OVER:F

.field public UPGRADE_CAPITAL_BUILDINGS_LIMIT:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MIN:F

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_INVEST_AT_WAR:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH:Z

    .line 14
    const v1, 0x3f51eb85    # 0.82f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_PERC:F

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT:I

    .line 16
    const/4 v1, 0x2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM:I

    .line 18
    const v1, 0x3e0a3d71    # 0.135f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->MAX_RESEARCH_EXPENSES_PERC_OF_INCOME:F

    .line 22
    const v1, 0x41033333    # 8.2f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_ECONOMY_IF_INCOME_BELOW:F

    .line 24
    const v1, 0x411fd70a    # 9.99f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->UPGRADE_CAPITAL_BUILDINGS_IF_INCOME_OVER:F

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->UPGRADE_CAPITAL_BUILDINGS_LIMIT:I

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MIN_BALANCE:F

    .line 30
    const v1, 0x400ccccd    # 2.2f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_RESEARCH_MIN_BALANCE:F

    .line 32
    const/16 v1, 0x19

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_BUILDING_CHANCE:I

    .line 34
    const/16 v2, 0x28

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_UPGRADE_CAPITAL_BUILDING_CHANCE:I

    .line 36
    const/16 v2, 0x23

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MAX_RESEARCH_UPGRADE_CAPITAL_CHANCE:I

    .line 38
    const/16 v3, 0x1f4

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DONT_BUILD_LEGACY_BUILDING_IF_LEGACY_OVER:I

    .line 40
    const/4 v3, 0x3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->CHOOSE_BUILD_TYPE_LIMIT:I

    .line 42
    const/16 v4, 0xf

    new-array v5, v4, [I

    fill-array-data v5, :array_f0

    iput-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_LIMIT:[I

    .line 59
    const/16 v5, 0x7d

    const/16 v6, 0x64

    const/16 v7, 0x4b

    filled-new-array {v5, v6, v7, v1}, [I

    move-result-object v5

    iput-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    .line 65
    const/16 v5, 0x113

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    .line 67
    const/16 v5, 0x1c

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_RESOURCE_PROVINCES:I

    .line 71
    const/16 v5, 0x3c

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_NEXT_TYPE:I

    .line 72
    const/16 v5, 0x50

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_INVEST_ECONOMY:I

    .line 73
    const/16 v5, 0x5a

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_TAX_EFFICIENCY:I

    .line 74
    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_PRODUCTION_BUILDING:I

    .line 78
    const/4 v6, 0x4

    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_RANDOM:I

    .line 79
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_RANDOM:I

    .line 80
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_RANDOM:I

    .line 81
    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_MANPOWER_RANDOM:I

    .line 82
    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_GROWTH_RATE_RANDOM:I

    .line 84
    const/16 v3, 0x2a

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_AFTER_INCREASE_TAXATION_IN_PROVINCE_CHANCE:I

    .line 86
    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_RANDOM:I

    .line 87
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_GROWTH_RATE:I

    .line 88
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_DISTANCE:I

    .line 89
    const/16 v1, 0x46

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_PAYOFF:I

    .line 91
    const/16 v1, 0x47

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MAX_VALUE_INCREASE_GROWTH_RATE_CHANCE:I

    .line 93
    const/16 v1, 0xa

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_RANDOM:I

    .line 94
    const/16 v2, 0x14

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_GROWTH_RATE:I

    .line 95
    const/16 v3, 0x1e

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_DISTANCE:I

    .line 97
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_RANDOM:I

    .line 98
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_GROWTH_RATE:I

    .line 99
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_DISTANCE:I

    .line 101
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_MANPOWER_SCORE_RANDOM:I

    .line 103
    iput v7, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_GROWTH_RATE_SCORE_RANDOM:I

    .line 107
    const/16 v1, 0x41

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

    .line 108
    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD:I

    .line 109
    const/16 v1, 0x96

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_MANPOWER_MIN_LEFT_GOLD:I

    .line 110
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_GROWTH_RATE_MIN_LEFT_GOLD:I

    .line 111
    iput v7, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_MIN_LEFT_GOLD:I

    .line 115
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_SAME_CONTINENT_AS_CAPITAL:F

    .line 116
    const/high16 v2, -0x3c860000    # -250.0f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DISTANCE_FROM_CAPITAL:F

    .line 118
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_MAINTENANCE_REDUCTION:F

    .line 120
    const/high16 v3, 0x42480000    # 50.0f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TERRAIN_CONSTRUCTION_COST:F

    .line 121
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTION_COST:F

    .line 123
    const/high16 v3, 0x41c80000    # 25.0f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_INFRASTRUCTURE:F

    .line 124
    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_GROWTH_RATE:F

    .line 126
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_TAX_EFFICIENCY:F

    .line 127
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_ECONOMY:F

    .line 128
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_MANPOWER:F

    .line 130
    const/high16 v2, 0x41480000    # 12.5f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PRICE_OF_RESOURCE:F

    .line 132
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_VALUE:F

    .line 134
    const v1, 0x3eb33333    # 0.35f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTED_BUILDINGS_MODIFIER:F

    .line 138
    const v1, -0x3bc48000    # -750.0f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_NON_CORE:F

    .line 139
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DIFFERENT_RELIGION:F

    .line 143
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_RESEARCH_PER_GROWTH_RATE:F

    .line 144
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MANPOWER_PER_GROWTH_RATE:F

    .line 145
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TAX_EFFICIENCY_PER_GROWTH_RATE:F

    .line 149
    const/16 v0, 0x11

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_WONDER_CHANCE:I

    return-void

    :array_f0
    .array-data 4
        0x6
        0x5
        0x2
        0x4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x6
        0x4
        0x2
        0x1
        0x2
        0x4
    .end array-data
.end method
