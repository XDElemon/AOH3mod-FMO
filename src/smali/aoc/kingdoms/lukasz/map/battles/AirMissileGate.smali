.class public Laoc/kingdoms/lukasz/map/battles/AirMissileGate;
.super Ljava/lang/Object;
.source "AirMissileGate.java"


# static fields
.field public static final MODE_FRAME:I = 0x1

.field public static final MODE_HOUR:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advanceMode(FFFFF)I
    .registers 5

    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/battles/AirMissileGate;->onScreen(FFFFF)Z

    move-result p0

    return p0
.end method

.method public static onScreen(FFFFF)Z
    .registers 5

    .line 20
    add-float/2addr p0, p2

    mul-float/2addr p0, p4

    .line 21
    add-float/2addr p1, p3

    mul-float/2addr p1, p4

    .line 22
    const/4 p2, 0x0

    cmpg-float p3, p0, p2

    const/4 p4, 0x0

    if-gez p3, :cond_b

    return p4

    .line 23
    :cond_b
    cmpg-float p2, p1, p2

    if-gez p2, :cond_10

    return p4

    .line 24
    :cond_10
    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p2, p2

    cmpl-float p0, p0, p2

    if-lez p0, :cond_18

    return p4

    .line 25
    :cond_18
    sget p0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_20

    return p4

    .line 26
    :cond_20
    const/4 p0, 0x1

    return p0
.end method
