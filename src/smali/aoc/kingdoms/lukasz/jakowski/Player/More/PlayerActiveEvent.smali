.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;
.super Ljava/lang/Object;
.source "PlayerActiveEvent.java"


# instance fields
.field public eventType:I

.field public iTurnID:I

.field public id:I

.field public value1:I

.field public value2:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "id"    # I
    .param p3, "iTurnID"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    .line 16
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    .line 17
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    .line 18
    return-void
.end method

.method public constructor <init>(IIIIF)V
    .registers 6
    .param p1, "eventType"    # I
    .param p2, "id"    # I
    .param p3, "iTurnID"    # I
    .param p4, "value1"    # I
    .param p5, "value2"    # F

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    .line 22
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    .line 23
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    .line 24
    iput p4, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->value1:I

    .line 25
    iput p5, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->value2:F

    .line 26
    return-void
.end method
