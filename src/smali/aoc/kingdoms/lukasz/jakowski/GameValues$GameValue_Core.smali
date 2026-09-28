.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Core"
.end annotation


# instance fields
.field public BASE_INCOME_NON_CORE:F

.field public CORE_CREATION_COST_DEFAULT:F

.field public CORE_CREATION_COST_PER_ECONOMY:F

.field public CORE_CREATION_TIME_DEFAULT:F

.field public CORE_CREATION_TIME_PER_TAX_EFFICIENCY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
