.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Colonization"
.end annotation


# instance fields
.field public AI_COLONIZE_NEIGH_CIV_MIN_TURN_ID:I

.field public AI_DONT_CHANGE_GOVERNMENT_IF_CAN_COLONIZE:Z

.field public AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS:Z

.field public AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID:I

.field public ALLOW_COLONIZATION_BY_SPENDING_GOLD:Z

.field public ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

.field public ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL:Z

.field public ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS:I

.field public ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS_RANDOM:I

.field public AUTO_EXPAND_CHANCE:I

.field public AUTO_EXPAND_POPULATION:I

.field public COLONIZATION_GROWTH_RATE_EXTRA:F

.field public COLONIZATION_MAX_SETTLERS:I

.field public COLONIZATION_TIME:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
