.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_TaxEfficiency"
.end annotation


# instance fields
.field public BASE_INCOME_POPULATION_INCOME:F

.field public BASE_TAX_EFFICIENCY_NEUTRAL:F

.field public INCREASE_TAX_EFFICIENCY_COST:I

.field public INCREASE_TAX_EFFICIENCY_COST_LEGACY:F

.field public INCREASE_TAX_EFFICIENCY_COST_LEGACY_PER_TAX:F

.field public INCREASE_TAX_EFFICIENCY_COST_PER_TAX_EFFICIENCY:F

.field public INCREASE_TAX_EFFICIENCY_GROWTH:F

.field public INCREASE_TAX_EFFICIENCY_IN_PROVINCE_DAYS:I

.field public TAX_EFFICIENCY_MAX_POPULATION:I

.field public TAX_EFFICIENCY_POPULATION_DIVIDE:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
