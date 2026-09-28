.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Plagues"
.end annotation


# instance fields
.field public DISEASE_DAYS_LEFT_RANDOM:I

.field public DISEASE_DEATH_RATE_CHANGE_PER_DAY:F

.field public DISEASE_DEATH_RATE_CHANGE_PER_DAY_RANDOM:I

.field public DISEASE_MAX_DEATH_RATE_REDUCTION:F

.field public DISEASE_OUTBREAK_MODIFY:I

.field public DISEASE_OUTBREAK_RANDOM:I

.field public PLAGUE_PAUSE_FOR_X_DAYS:I

.field public SEND_NOTIFICATION_CHANCE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
