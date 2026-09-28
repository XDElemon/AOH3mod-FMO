.class public Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;
.super Ljava/lang/Object;
.source "JapaneseContextAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Order"
.end annotation


# instance fields
.field public charLength:I

.field public order:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    .line 62
    return-void
.end method
