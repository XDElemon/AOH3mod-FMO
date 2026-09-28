.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Vassal"
.end annotation


# instance fields
.field public AI_DAMAGE_RELATIONS_IF_LIBERTY_DESIRE_OVER:F

.field public DECLARE_INDEPENDENCE_MIN_LIBERTY_DESIRE:I

.field public LIBERTY_DESIRE_CANT_DECLARE_WAR:F

.field public LIBERTY_DESIRE_CHANGE_PER_RELATION:F

.field public LIBERTY_DESIRE_CHANGE_PER_UPDATE:F

.field public LIBERTY_DESIRE_IF_NOT_RANK_POSITION_HIGHER_THAN_LORD:F

.field public LIBERTY_DESIRE_IF_RANK_POSITION_HIGHER_THAN_LORD:F

.field public LIBERTY_DESIRE_LORD_CALL_TO_WAR:F

.field public LIBERTY_DESIRE_MAX:F

.field public LIBERTY_DESIRE_MIN:F

.field public LIBERTY_DESIRE_PER_REGIMENT_LESS_THAN_LORD:F

.field public LIBERTY_DESIRE_PER_REGIMENT_MORE_THAN_LORD:F

.field public LORD_AUTO_JOIN_VASSALS_DEFENSIVE_WAR:Z

.field public LORD_CAN_CALL_VASSALS_TO_A_WAR:Z

.field public VASSAL_CAN_DECLARE_WAR_DEFAULT:Z

.field public VASSAL_COLOR_LORD_PERC:F

.field public VASSAL_COLOR_VASSAL_PERC:F

.field public VASSAL_INCOME_TO_LORD:[F

.field public VASSAL_MANPOWER_TO_LORD:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
