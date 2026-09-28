.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Manpower"
.end annotation


# instance fields
.field public BASE_MANPOWER_NEUTRAL:F

.field public INCREASE_MANPOWER_COST:F

.field public INCREASE_MANPOWER_COST_LEGACY:F

.field public INCREASE_MANPOWER_COST_LEGACY_PER_LEVEL:F

.field public INCREASE_MANPOWER_COST_PER_LEVEL:F

.field public INCREASE_MANPOWER_GROWTH:F

.field public INCREASE_MANPOWER_IN_PROVINCE_DAYS:I

.field public MANPOWER_FULL_RECOVERY_MONTHS:F

.field public MANPOWER_MAX_BASE:I

.field public MANPOWER_MAX_DIFFERENT_RELIGION:F

.field public MANPOWER_MAX_NON_CORE:F

.field public MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL:I

.field public MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE:I

.field public MANPOWER_RECOVERY_FROM_DISBANDED_ARMY_DEFAULT:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
