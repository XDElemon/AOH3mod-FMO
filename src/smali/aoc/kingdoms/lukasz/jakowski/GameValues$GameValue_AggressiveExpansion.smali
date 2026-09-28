.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_AggressiveExpansion"
.end annotation


# instance fields
.field public AE_DECAY_PER_TICK:F

.field public AE_DECLARE_WAR:F

.field public AE_DIFFERENT_RELIGION:F

.field public AE_DISTANCE:F

.field public AE_MAX_VALUE:F

.field public AE_PER_PROVINCE_VALUE:F

.field public AE_PER_PROVINCE_VALUE_SUBJECT_TRANSFER:F

.field public AE_PER_PROVINCE_VALUE_VASSALIZATION:F

.field public AE_PROVINCE_MAX:F

.field public AE_SAME_RELIGION:F

.field public COALITION_ARMY_OVER_PERC:F

.field public COALITION_STARTED_REDUCE_AGGRESSIVE_EXPANSION:F

.field public DECLARE_WAR_RELATION_CHANGE_WITH_NEIGHBORS:F

.field public GAME_UPDATE_AE_DECAY_TURNS:I

.field public PEACE_TREATY_AE_FROM_WAR_LIMIT:F

.field public START_COALITION_IF_AE_OVER:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
