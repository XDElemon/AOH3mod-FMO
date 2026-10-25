.class public final Laoc/kingdoms/lukasz/map/province/AirDiscQueue;
.super Ljava/lang/Object;
.source "AirDiscQueue.java"


# static fields
.field private static final CO:[I

.field private static final COLOR_BLUE:I = 0x3333ff

.field private static final CX:[I

.field private static final CY:[I

.field private static final MAX:I = 0x100

.field private static final RX:[I

.field private static final RY:[I

.field private static final TP:[I

.field private static n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    .line 25
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    .line 26
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    .line 27
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    .line 28
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    .line 30
    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    .line 31
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static add(IIIIII)V
    .registers 8

    .line 52
    if-lez p2, :cond_37

    if-gtz p3, :cond_5

    goto :goto_37

    .line 55
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_c

    .line 56
    return-void

    .line 58
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p0, v0, v1

    .line 59
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p1, p0, v0

    .line 60
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p2, p0, p1

    .line 61
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p3, p0, p1

    .line 62
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p4, p0, p1

    .line 63
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p5, p0, p1

    .line 64
    sget p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 65
    return-void

    .line 53
    :cond_37
    :goto_37
    return-void
.end method

.method public static addBlue(IIII)V
    .registers 10

    .line 43
    const v4, 0x3333ff

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 44
    return-void
.end method

.method public static addColor(IIIII)V
    .registers 11

    .line 48
    const/4 v5, 0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 49
    return-void
.end method

.method public static begin()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 39
    return-void
.end method

.method public static flush(Ljava/lang/Object;)V
    .registers 13

    .line 71
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    sget v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v0, v2, :cond_7a

    .line 72
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v2, v2, v0

    .line 73
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v3, v3, v0

    .line 74
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v4, v4, v0

    .line 75
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v5, v5, v0

    .line 76
    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v6, v6, v0

    .line 77
    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v7, v7, v0

    .line 78
    add-int/lit8 v8, v0, -0x1

    .line 79
    :goto_20
    if-ltz v8, :cond_5d

    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v9, v9, v8

    if-ge v9, v4, :cond_5d

    .line 80
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v10, v8, 0x1

    sget-object v11, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v11, v11, v8

    aput v11, v9, v10

    .line 81
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget-object v11, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v11, v11, v8

    aput v11, v9, v10

    .line 82
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget-object v11, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v11, v11, v8

    aput v11, v9, v10

    .line 83
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget-object v11, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v11, v11, v8

    aput v11, v9, v10

    .line 84
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget-object v11, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v11, v11, v8

    aput v11, v9, v10

    .line 85
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget-object v11, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v11, v11, v8

    aput v11, v9, v10

    .line 86
    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    .line 88
    :cond_5d
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v8, v8, 0x1

    aput v2, v9, v8

    .line 89
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aput v3, v2, v8

    .line 90
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aput v4, v2, v8

    .line 91
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aput v5, v2, v8

    .line 92
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aput v6, v2, v8

    .line 93
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aput v7, v2, v8

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_7a
    move v0, v1

    :goto_7b
    sget v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v0, v2, :cond_ba

    .line 96
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v2, v2, v0

    if-nez v2, :cond_9e

    .line 98
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v4, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v5, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v6, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v7, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v8, v2, v0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscClipAnyColor(Ljava/lang/Object;IIIII)V

    goto :goto_b6

    .line 101
    :cond_9e
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v4, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v5, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v6, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v7, v2, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v8, v2, v0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V
    :try_end_b6
    .catchall {:try_start_2 .. :try_end_b6} :catchall_b9

    .line 95
    :goto_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 104
    :catchall_b9
    move-exception p0

    .line 107
    :cond_ba
    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 108
    nop

    .line 109
    return-void
.end method
