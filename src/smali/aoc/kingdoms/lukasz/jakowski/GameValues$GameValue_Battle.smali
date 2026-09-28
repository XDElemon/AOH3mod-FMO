.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Battle"
.end annotation


# instance fields
.field public BATTLE_ARMY_DESTROYED_IF_MANPOWER_PERC_BELOW:F

.field public BATTLE_ARMY_DESTROYED_ROUND_ID:I

.field public BATTLE_CASUALTIES:I

.field public BATTLE_DEPLOYMENT_PHASE_TURNS:I

.field public BATTLE_FULL_RETREAT_IF_MORALE_BELOW:F

.field public BATTLE_MAX_BATTLE_WIDTH:I

.field public BATTLE_MAX_DICE_ROLL:I

.field public BATTLE_MAX_DICE_ROLL_REGIMENT:I

.field public BATTLE_MIN_BATTLE_WIDTH:I

.field public BATTLE_MIN_MORALE_DEFEATED_ARMY:F

.field public BATTLE_MIN_MORALE_VICTORIOUS_ARMY:F

.field public BATTLE_MORALE_LOSS_MULTIPLIER:F

.field public BATTLE_SIDES_RATIO:F

.field public BATTLE_WAR_SCORE_CASUALTIES:F

.field public BATTLE_WAR_SCORE_MAX:F

.field public DRAW_BATTLE_NOT_IN_VIEW:Z

.field public RIGHT_BATTLE_TEXT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
