.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Court"
.end annotation


# instance fields
.field public ADVISOR_NAME_ADMINISTRATIVE:Ljava/lang/String;

.field public ADVISOR_NAME_DIPLOMATIC:Ljava/lang/String;

.field public ADVISOR_NAME_ECONOMIC:Ljava/lang/String;

.field public ADVISOR_NAME_INNOVATION:Ljava/lang/String;

.field public ADVISOR_NAME_MILITARY:Ljava/lang/String;

.field public COUNCIL_NAME:Ljava/lang/String;

.field public COUNCIL_VIEW_VASSAL_GRAPH_INCLUDE_PLAYER:Z

.field public RULER_CONSTRUCTION_COST_MIN:F

.field public RULER_CONSTRUCTION_COST_RANDOM:F

.field public RULER_DEVASTATION_MIN:F

.field public RULER_DEVASTATION_RANDOM:F

.field public RULER_DEVELOP_INFRASTRUCTURE_COST_MIN:F

.field public RULER_DEVELOP_INFRASTRUCTURE_COST_RANDOM:F

.field public RULER_GENERALS_ATTACK_MIN:I

.field public RULER_GENERALS_ATTACK_RANDOM:I

.field public RULER_GENERALS_DEFENSE_MIN:I

.field public RULER_GENERALS_DEFENSE_RANDOM:I

.field public RULER_GENERAL_COST_MIN:F

.field public RULER_GENERAL_COST_RANDOM:F

.field public RULER_IMPROVE_RELATIONS_MIN:F

.field public RULER_IMPROVE_RELATIONS_RANDOM:F

.field public RULER_INCREASE_GROWTH_RATE_COST_MIN:F

.field public RULER_INCREASE_GROWTH_RATE_COST_RANDOM:F

.field public RULER_INCREASE_MANPOWER_COST_MIN:F

.field public RULER_INCREASE_MANPOWER_COST_RANDOM:F

.field public RULER_INCREASE_TAX_EFFICIENCY_COST_MIN:F

.field public RULER_INCREASE_TAX_EFFICIENCY_COST_RANDOM:F

.field public RULER_INVEST_COST_MIN:F

.field public RULER_INVEST_COST_RANDOM:F

.field public RULER_LOAN_INTEREST_MIN:F

.field public RULER_LOAN_INTEREST_RANDOM:F

.field public RULER_MAX_MANPOWER_MIN:F

.field public RULER_MAX_MANPOWER_RANDOM:F

.field public RULER_MONTHLY_INCOME_MIN:F

.field public RULER_MONTHLY_INCOME_RANDOM:F

.field public RULER_MONTHLY_LEGACY_MIN:F

.field public RULER_MONTHLY_LEGACY_RANDOM:F

.field public RULER_PRODUCTION_EFFICIENCY_MIN:F

.field public RULER_PRODUCTION_EFFICIENCY_RANDOM:F

.field public RULER_PROVINCE_MAINTENANCE_MIN:F

.field public RULER_PROVINCE_MAINTENANCE_RANDOM:F

.field public RULER_RECRUITMENT_TIME_MIN:F

.field public RULER_RECRUITMENT_TIME_RANDOM:F

.field public RULER_RESEARCH_MIN:F

.field public RULER_RESEARCH_RANDOM:F

.field public RULER_ROMAN_NUMBER_MAX_RANDOM:I

.field public RULER_TAX_EFFICIENCY_MIN:F

.field public RULER_TAX_EFFICIENCY_RANDOM:F

.field public RULER_THIRD_BONUS_CHANCE:I

.field public RULER_UNITS_ATTACK_MIN:I

.field public RULER_UNITS_ATTACK_RANDOM:I

.field public RULER_UNITS_DEFENSE_MIN:I

.field public RULER_UNITS_DEFENSE_RANDOM:I

.field public RULER_YEARS_OLD_MIN:I

.field public RULER_YEARS_OLD_RANDOM:I

.field public SIDEBAR_MAX_NUMBER:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    const/16 v0, 0x63

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->SIDEBAR_MAX_NUMBER:I

    return-void
.end method
