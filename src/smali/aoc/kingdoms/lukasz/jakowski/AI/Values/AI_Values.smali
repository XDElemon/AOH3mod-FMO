.class public Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;
.super Ljava/lang/Object;
.source "AI_Values.java"


# instance fields
.field public BUDGET_DECREASE_MILITARY_CHANCE:I

.field public BUDGET_DECREASE_MILITARY_TURNS_MIN:I

.field public BUDGET_DECREASE_MILITARY_TURNS_RANDOM:I

.field public BUDGET_DECREASE_TAXATION_IF_UNREST_IN_CAPITAL_OVER:I

.field public BUDGET_DECREASE_TAXATION_TURNS_MIN:I

.field public BUDGET_DECREASE_TAXATION_TURNS_RANDOM:I

.field public BUDGET_INCREASE_TAXATION_CHANCE:I

.field public BUDGET_INCREASE_TAXATION_IF_STABILITY_BELOW:I

.field public BUDGET_INCREASE_TAXATION_IF_UNREST_IN_CAPITAL_BELOW:I

.field public BUDGET_INCREASE_TAXATION_TURNS_MIN:I

.field public BUDGET_INCREASE_TAXATION_TURNS_RANDOM:I

.field public CHANGE_GOVERNMENT_CITY_STATE_IF_PROVINCES_OVER:I

.field public CHANGE_GOVERNMENT_MUST_BE_CHANGED_IF_TURN_OVER:I

.field public CHANGE_GOVERNMENT_TRIBAL_IF_PROVINCES_OVER:I

.field public COLONIZE_MIN_GOLD:I

.field public COLONIZE_MIN_MANPOWER_X_REGIMENTS:I

.field public COLONIZE_MIN_MANPOWER_X_REGIMENTS_TRIBAL:I

.field public COLONIZE_OVER_SEA_CHANCE:I

.field public COLONIZE_PROVINCES_LIMIT:I

.field public COLONIZE_PROVINCES_LIMIT_SEA:I

.field public COLONIZE_PROVINCES_LIMIT_TRIBAL:I

.field public COLONIZE_SCORE_PER_NEIGH_PROVINCE:I

.field public COLONIZE_SCORE_PRIORITIZE_CONTINENT_MODIFIER:F

.field public COLONIZE_TOP_CIVS:I

.field public COLONIZE_X_REGIMENTS_RANDOM:I

.field public INVEST_LIMIT_PER_TURN:I

.field public INVEST_LIMIT_PER_TURN_RANDOM_LIMIT:I

.field public INVEST_RANDOM_IF_PROVINCES_BELOW:I

.field public LOANS_LIMIT:I

.field public SCORE_BASE:I

.field public SCORE_DEVELOP_INFRASTRUCTURE_ECONOMY:I

.field public SCORE_INVEST_DIFFERENT_RELIGION:F

.field public SCORE_INVEST_ECONOMY_DISTANCE:I

.field public SCORE_INVEST_ECONOMY_DISTANCE_W_DIS:F

.field public SCORE_INVEST_ECONOMY_DISTANCE_W_GR:F

.field public SCORE_INVEST_ECONOMY_GROWTH_RATE:I

.field public SCORE_INVEST_ECONOMY_PER_INFRASTRUCTURE:I

.field public SCORE_INVEST_ECONOMY_RESOURCE_MIN:I

.field public SCORE_INVEST_ECONOMY_RESOURCE_PRICE:I

.field public SCORE_INVEST_NON_CORE:F

.field public TAKE_LOAN_CHANCE_BUILDING_ECONOMY:I

.field public TAKE_LOAN_CHANCE_INVEST_IN_ECONOMY:I

.field public TAKE_LOAN_ONLY_IF_TREASURY_BELOW:I

.field public UNLOCK_LEGACIES:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x8

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_IF_STABILITY_BELOW:I

    .line 6
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_IF_UNREST_IN_CAPITAL_BELOW:I

    .line 8
    const/16 v1, 0x11

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_CHANCE:I

    .line 9
    const/16 v1, 0xf5

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_TURNS_MIN:I

    .line 10
    const/16 v2, 0x1c2

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_INCREASE_TAXATION_TURNS_RANDOM:I

    .line 12
    const/16 v2, 0x2f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_TAXATION_IF_UNREST_IN_CAPITAL_OVER:I

    .line 13
    const/16 v2, 0x16d

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_TAXATION_TURNS_MIN:I

    .line 14
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_TAXATION_TURNS_RANDOM:I

    .line 16
    const/16 v2, 0xe

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_MILITARY_CHANCE:I

    .line 17
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_MILITARY_TURNS_MIN:I

    .line 18
    const/16 v1, 0x352

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->BUDGET_DECREASE_MILITARY_TURNS_RANDOM:I

    .line 22
    const/16 v1, 0x3e8

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_BASE:I

    .line 24
    const/16 v1, 0x50

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_LIMIT_PER_TURN:I

    .line 25
    const/16 v1, 0x14

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_LIMIT_PER_TURN_RANDOM_LIMIT:I

    .line 27
    const/4 v1, 0x4

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_RANDOM_IF_PROVINCES_BELOW:I

    .line 29
    const/16 v2, 0x64

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_RESOURCE_MIN:I

    .line 30
    const/16 v3, 0xc8

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_RESOURCE_PRICE:I

    .line 32
    const/16 v4, 0xf

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_PER_INFRASTRUCTURE:I

    .line 34
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_GROWTH_RATE:I

    .line 36
    const/16 v4, 0x19

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_DEVELOP_INFRASTRUCTURE_ECONOMY:I

    .line 38
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_DISTANCE:I

    .line 39
    const v3, 0x3e99999a    # 0.3f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_DISTANCE_W_GR:F

    .line 40
    const v3, 0x3f333333    # 0.7f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_DISTANCE_W_DIS:F

    .line 42
    const v3, -0x4119999a    # -0.45f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_NON_CORE:F

    .line 43
    const v3, -0x414ccccd    # -0.35f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_DIFFERENT_RELIGION:F

    .line 47
    const/4 v3, 0x5

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->UNLOCK_LEGACIES:I

    .line 49
    const/4 v4, 0x7

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_TOP_CIVS:I

    .line 51
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_MIN_GOLD:I

    .line 52
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_MIN_MANPOWER_X_REGIMENTS:I

    .line 53
    const/4 v2, 0x3

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_MIN_MANPOWER_X_REGIMENTS_TRIBAL:I

    .line 54
    const/16 v2, 0xa

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_X_REGIMENTS_RANDOM:I

    .line 56
    const/16 v3, 0x10

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_OVER_SEA_CHANCE:I

    .line 58
    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_PROVINCES_LIMIT:I

    .line 59
    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_PROVINCES_LIMIT_SEA:I

    .line 60
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_PROVINCES_LIMIT_TRIBAL:I

    .line 62
    const/16 v0, 0xfa

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_SCORE_PER_NEIGH_PROVINCE:I

    .line 64
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->COLONIZE_SCORE_PRIORITIZE_CONTINENT_MODIFIER:F

    .line 68
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->CHANGE_GOVERNMENT_CITY_STATE_IF_PROVINCES_OVER:I

    .line 69
    const/16 v0, 0x1d

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->CHANGE_GOVERNMENT_TRIBAL_IF_PROVINCES_OVER:I

    .line 70
    const v0, 0x8e94

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->CHANGE_GOVERNMENT_MUST_BE_CHANGED_IF_TURN_OVER:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->LOANS_LIMIT:I

    .line 76
    const/16 v0, 0x145

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->TAKE_LOAN_ONLY_IF_TREASURY_BELOW:I

    .line 78
    const/16 v0, 0x5a

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->TAKE_LOAN_CHANCE_BUILDING_ECONOMY:I

    .line 79
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->TAKE_LOAN_CHANCE_INVEST_IN_ECONOMY:I

    return-void
.end method
