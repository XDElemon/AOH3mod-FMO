.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_War"
.end annotation


# instance fields
.field public AI_AT_WAR_MAX_MILITARY_LEVEL:I

.field public AI_AT_WAR_MIN_MILITARY_LEVEL:I

.field public AI_MAX_MILITARY_LEVEL_IF_REGIMENTS_RATIO_OVER:F

.field public GAME_UPDATE_WAR_AI_PEACE:I

.field public GAME_UPDATE_WAR_AUTO_WHITE_PEACE:I

.field public RELATIONS_TO_DECLARE_WAR:I

.field public TICKING_WAR_SCORE_EACH_MONTH:F

.field public TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

.field public TICKING_WAR_SCORE_LIMIT:F

.field public WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR:I

.field public WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR_IF_WARSCORE_BELOW:F

.field public WAR_AUTO_WHITE_PEACE_IF_NOTHING_HAPPENS_IN_WAR_DAYS:I

.field public WAR_AUTO_WHITE_PEACE_IF_WARSCORE_BELOW:F

.field public WAR_NAMES:[Ljava/lang/String;

.field public WAR_SCORE_ALLIES:F

.field public WAR_WAR_WEARINESS_BATTLE:F

.field public WAR_WAR_WEARINESS_OCCUPIED_PROVINCE:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
