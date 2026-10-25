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
    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    .line 29
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static add(IIIII)V
    .registers 7

    .line 50
    if-lez p2, :cond_31

    if-gtz p3, :cond_5

    goto :goto_31

    .line 53
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_c

    .line 54
    return-void

    .line 56
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p0, v0, v1

    .line 57
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p1, p0, v0

    .line 58
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p2, p0, p1

    .line 59
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p3, p0, p1

    .line 60
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p4, p0, p1

    .line 61
    sget p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 62
    return-void

    .line 51
    :cond_31
    :goto_31
    return-void
.end method

.method public static addBlue(IIII)V
    .registers 5

    .line 41
    const v0, 0x3333ff

    invoke-static {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIII)V

    .line 42
    return-void
.end method

.method public static addColor(IIIII)V
    .registers 5

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIII)V

    .line 47
    return-void
.end method

.method public static begin()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 37
    return-void
.end method

.method public static flush(Ljava/lang/Object;)V
    .registers 12

    .line 68
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    sget v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v0, v2, :cond_6a

    .line 69
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v2, v2, v0

    .line 70
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v3, v3, v0

    .line 71
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v4, v4, v0

    .line 72
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v5, v5, v0

    .line 73
    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v6, v6, v0

    .line 74
    add-int/lit8 v7, v0, -0x1

    .line 75
    :goto_1c
    if-ltz v7, :cond_51

    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v8, v8, v7

    if-ge v8, v4, :cond_51

    .line 76
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v9, v7, 0x1

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 77
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 78
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 79
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 80
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 81
    add-int/lit8 v7, v7, -0x1

    goto :goto_1c

    .line 83
    :cond_51
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v7, v7, 0x1

    aput v2, v8, v7

    .line 84
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aput v3, v2, v7

    .line 85
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aput v4, v2, v7

    .line 86
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aput v5, v2, v7

    .line 87
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aput v6, v2, v7

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_6a
    move v0, v1

    :goto_6b
    sget v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v0, v2, :cond_8b

    .line 90
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
    :try_end_87
    .catchall {:try_start_2 .. :try_end_87} :catchall_8a

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 92
    :catchall_8a
    move-exception p0

    .line 95
    :cond_8b
    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 96
    nop

    .line 97
    return-void
.end method
