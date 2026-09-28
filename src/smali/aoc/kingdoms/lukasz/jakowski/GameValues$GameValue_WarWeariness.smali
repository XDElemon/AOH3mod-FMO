.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_WarWeariness"
.end annotation


# instance fields
.field public GAME_UPDATE_WAR_WEARINESS_TICK_TURNS:I

.field public WAR_WEARINESS_MAX:F

.field public WAR_WEARINESS_PER_TICK_AT_PEACE:F

.field public WAR_WEARINESS_PER_TICK_AT_WAR:F

.field public WAR_WEARINESS_PER_TICK_AT_WAR_DEFENDER:F

.field public WW_ARMY_MOVEMENT_SPEED_PER_POINT:F

.field public WW_CONVERSION_COST_PER_POINT:F

.field public WW_CORE_COST_PER_POINT:F

.field public WW_GOODS_PRODUCTION_PER_POINT:F

.field public WW_LEGACY_PER_POINT:F

.field public WW_RECRUITMENT_TIME_PER_POINT:F

.field public WW_REDUCE:F

.field public WW_REDUCE_COST_GOLD:F

.field public WW_REDUCE_COST_LEGACY:F

.field public WW_SIEGE_EFFECTIVENESS_PER_POINT:F

.field public WW_UNREST_DIFFERENT_RELIGION_PER_POINT:F

.field public WW_UNREST_NON_CORE_PER_POINT:F

.field public WW_UNREST_PERC_GROWTH_RATE:F

.field public WW_UNREST_PERC_MIN:F

.field public WW_UNREST_PER_POINT:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
