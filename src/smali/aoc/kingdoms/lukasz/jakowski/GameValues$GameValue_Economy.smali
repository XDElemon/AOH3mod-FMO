.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Economy"
.end annotation


# instance fields
.field public BASE_ECONOMY_NEUTRAL:F

.field public EXPLOIT_ECONOMY:F

.field public EXPLOIT_ECONOMY_GAIN_PER_INVEST_COST:F

.field public EXPLOIT_ECONOMY_MIN_ECONOMY:F

.field public INCOME_ECONOMY_PER_ECONOMY:F

.field public INVEST_COST:F

.field public INVEST_COST_LEGACY:F

.field public INVEST_COST_LEGACY_PER_ECONOMY:F

.field public INVEST_COST_PER_ECONOMY:F

.field public INVEST_ECONOMY_GROWTH:F

.field public INVEST_IN_PROVINCE_DAYS:I

.field public MAX_ECONOMY_GROWTH_RATE:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
