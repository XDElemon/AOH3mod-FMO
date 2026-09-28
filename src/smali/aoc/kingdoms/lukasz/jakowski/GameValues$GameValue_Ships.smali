.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Ships"
.end annotation


# instance fields
.field public PAUSE_MOVE_SHIPS:Z

.field public SHIP_AGES:I

.field public SHIP_IMAGES:I

.field public SHIP_LINE_PRECISION:I

.field public SHIP_SPEED_MIN:F

.field public SHIP_SPEED_RANDOM:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
