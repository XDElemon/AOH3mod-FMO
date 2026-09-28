.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Army"
.end annotation


# instance fields
.field public ARMY_MAINTENANCE_OVER_REGIMENTS_LIMIT_MODIFIER:F

.field public CAN_RECRUIT_OBSOLETE_UNITS:Z

.field public MERCENARIES_COST_EXTRA_PER_REGIMENT:F

.field public MERCENARIES_LIMIT_TO_CHOOSE_FROM:I

.field public MIN_ARMY_MOVEMENT_SPEED:F

.field public MORALE_BASE_VALUE:F

.field public MORALE_RECOVERY_PER_MONTH:F

.field public MOVE_UNITS_LOCKED_MOVE:F

.field public MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW:F

.field public MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW_PLAYER:F

.field public REGIMENTS_LIMIT_MANPOWER_LEVEL:F

.field public REGIMENTS_LIMIT_PER_VASSAL:I

.field public REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

.field public REGIMENTS_LIMIT_VASSAL:F

.field public REINFORCE_ARMY_COST_MODIFIER:F

.field public REINFORCE_MIN_MANPOWER:I

.field public REINFORCE_PER_MONTH:F

.field public RETREATING_ARMY_MOVEMENT_SPEED:F

.field public UPGRADE_REGIMENT_COST:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
