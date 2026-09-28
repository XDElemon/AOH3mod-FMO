.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Events"
.end annotation


# instance fields
.field public EVENT_CHANGE_PRICE_INCREASE_CHANCE:I

.field public EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS:Z

.field public EVENT_EXPLODE_MIN_GOLD:I

.field public EVENT_EXPLODE_MIN_LEGACY:I

.field public EVENT_EXPLODE_MIN_MANPOWER:I

.field public EVENT_TIME_TO_RESPOND:I

.field public RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

.field public SHOW_EVENTS_IN_MISSION_MENU:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
