.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Rebels"
.end annotation


# instance fields
.field public DECLARE_INDEPENDENCE_AFTER_X_DAYS:I

.field public DECLARE_INDEPENDENCE_ENABLE_DIFFERENT_GOVERNMENT:Z

.field public DECLARE_INDEPENDENCE_MIN_OCCUPIED_DAYS:I

.field public DECREASE_UNREST_IN_PROVINCES_BY_AFTER_REVOLT:F

.field public DISBAND_REBELS_ARMIES_AFTER_X_DAYS:I

.field public GOVERNMENT_VIEW_PROVINCES_OCCUPIED_LIMIT:I

.field public GOVERNMENT_VIEW_PROVINCES_UNREST_LIMIT:I

.field public INDEPENDENCE_GOLD:I

.field public INDEPENDENCE_GOLD_RANDOM:I

.field public INDEPENDENCE_LEGACY:I

.field public INDEPENDENCE_LEGACY_RANDOM:I

.field public INDEPENDENCE_MAX_ADVANTAGE_POINTS:I

.field public NOTIFICATIONS_UNREST_LIMIT:I

.field public REBELS_FORT_DEFENSE:F

.field public REBELS_MAX_MORALE:F

.field public REBELS_MORALE_RECOVERY:F

.field public REBELS_OCCUPY_NEIGHBORING_PROVINCES:Z

.field public SEND_NOTIFICATION_IF_UNREST_OVER:I

.field public START_UPRISING_MIN_UNREST:I

.field public UNREST_AFTER_REVOLUTION_IN_PROVINCE:F

.field public UPRISING_MAX_REGIMENTS_IN_PROVINCE:I

.field public UPRISING_PERC_OF_REGIMENTS_LIMIT:F

.field public UPRISING_PROVINCES_PERC:F

.field public UPRISING_REGIMENTS_MIN:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
