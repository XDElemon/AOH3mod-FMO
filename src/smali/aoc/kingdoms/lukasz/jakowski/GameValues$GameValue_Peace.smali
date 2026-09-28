.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Peace"
.end annotation


# instance fields
.field public AI_ABANDON_DEMAND_PROVINCES_HAVE_ONLY_ACCESS_TO_MAIN_SEA_CHANCE:I

.field public AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED:Z

.field public AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED_CHANCE:I

.field public AI_PEACE_DEMAND_ANNEX_VASSAL_PEACE_ORDER:[I

.field public AI_PEACE_DEMAND_COALITION:[I

.field public AI_PEACE_DEMAND_PROVINCE_DISTANCE:F

.field public AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_LOSER_SCORE:F

.field public AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA:F

.field public AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA_BEGIN:F

.field public AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC:F

.field public AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE:F

.field public AI_PEACE_DEMAND_VASSALIZE_PLAYER:Z

.field public AI_PEACE_DEMAND_VASSALIZE_PLAYER_PEACE_ORDER:[I

.field public AI_PEACE_EXTRA_DEMAND_SURROUNDED_PROVINCES:Z

.field public PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE:F

.field public PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE:F

.field public PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE:F

.field public PEACE_ANNEX_PROVINCE_MAX_UNREST:F

.field public PEACE_ANNEX_PROVINCE_TAX_CHANGE:F

.field public PEACE_GOLD_COST_SCORE:F

.field public PEACE_GOLD_MAX:I

.field public PEACE_GOLD_MODIFIER:F

.field public PEACE_GOVERNMENT_CHANGE_COST_SCORE:F

.field public PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN:F

.field public PEACE_HUMILIATE_COST_SCORE:F

.field public PEACE_HUMILIATE_LEGACY_GAIN:F

.field public PEACE_HUMILIATE_LEGACY_LOSER:F

.field public PEACE_LIBERATE_CIV_COST_SCORE:F

.field public PEACE_LIBERATE_CIV_LEGACY:F

.field public PEACE_LIBERATE_CIV_RELATIONS:F

.field public PEACE_MILITARY_ACCESS_COST_SCORE:F

.field public PEACE_RELATION:F

.field public PEACE_RELATION_RANDOM:I

.field public PEACE_RELIGION_CONVERSION_COST_SCORE:F

.field public PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT:F

.field public PEACE_SCORE_COALITION_WAR:F

.field public PEACE_SCORE_CONQUER_VASSAL_WAR:F

.field public PEACE_SCORE_LOSING_SIDE:F

.field public PEACE_SCORE_WINNING_SIDE:F

.field public PEACE_SCORE_WINNING_SIDE_VASSALS:F

.field public PEACE_SUBJECT_TRANSFER_COST_SCORE:F

.field public PEACE_TAKE_PROVINCES_FROM_ALLIES:Z

.field public PEACE_VASSALIZATION_COST_SCORE:F

.field public PEACE_WAR_DAYS:I

.field public PEACE_WAR_REPARATIONS:F

.field public PEACE_WAR_REPARATIONS_COST_SCORE:F

.field public PEACE_WAR_REPARATIONS_TURNS:I

.field public WAR_MAKE_DEMANDS_MIN_WAR_SCORE:F

.field public WAR_WHITE_PEACE_MIN_WAR_SCORE:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_VASSALIZE_PLAYER_PEACE_ORDER:[I

    .line 1194
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_34

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_ANNEX_VASSAL_PEACE_ORDER:[I

    .line 1195
    const/4 v1, 0x6

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_COALITION:[I

    return-void

    nop

    :array_1e
    .array-data 4
        0x1
        0x2
        0x5
        0x6
        0x4
        0x3
        0x7
        0x8
        0x0
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x2
        0x5
        0x8
        0x1
        0x3
        0x4
        0x8
    .end array-data
.end method
