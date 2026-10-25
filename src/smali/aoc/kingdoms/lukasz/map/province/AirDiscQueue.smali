.class public final Laoc/kingdoms/lukasz/map/province/AirDiscQueue;
.super Ljava/lang/Object;
.source "AirDiscQueue.java"


# static fields
.field private static final BE:[I

.field private static final BIDX:[I

.field private static final BS:[I

.field private static final CO:[I

.field private static final COLOR_BLUE:I = 0x3333ff

.field private static final CX:[I

.field private static final CY:[I

.field private static final MAX:I = 0x100

.field private static final MAXBLK:I = 0x10

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
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    .line 31
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 33
    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    .line 35
    const/16 v0, 0x10

    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    .line 36
    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static add(IIIIII)V
    .registers 8

    .line 57
    if-lez p2, :cond_37

    if-gtz p3, :cond_5

    goto :goto_37

    .line 60
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_c

    .line 61
    return-void

    .line 63
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p0, v0, v1

    .line 64
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p1, p0, v0

    .line 65
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p2, p0, p1

    .line 66
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p3, p0, p1

    .line 67
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p4, p0, p1

    .line 68
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p5, p0, p1

    .line 69
    sget p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 70
    return-void

    .line 58
    :cond_37
    :goto_37
    return-void
.end method

.method public static addBlue(IIII)V
    .registers 10

    .line 48
    const v4, 0x3333ff

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 49
    return-void
.end method

.method public static addColor(IIIII)V
    .registers 11

    .line 53
    const/4 v5, 0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 54
    return-void
.end method

.method public static begin()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 44
    return-void
.end method

.method private static collectBlocked(II)I
    .registers 11

    .line 190
    nop

    .line 191
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v0, p1, :cond_7f

    const/16 v2, 0x10

    if-ge v1, v2, :cond_7f

    .line 192
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v2, v2, v0

    .line 193
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v3, v3, v2

    sub-int v3, p0, v3

    .line 194
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v4, v4, v2

    neg-int v4, v4

    if-le v3, v4, :cond_7c

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v4, v4, v2

    if-lt v3, v4, :cond_21

    .line 195
    goto :goto_7c

    .line 197
    :cond_21
    int-to-double v3, v3

    mul-double/2addr v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v5, v5, v2

    int-to-double v5, v5

    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v7, v7, v2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v3

    .line 198
    const-wide/16 v3, 0x0

    cmpg-double v3, v5, v3

    if-gtz v3, :cond_39

    .line 199
    goto :goto_7c

    .line 201
    :cond_39
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v3, v3, v2

    int-to-double v3, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 202
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v5, v5, v2

    double-to-int v3, v3

    sub-int/2addr v5, v3

    .line 203
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v2, v4, v2

    add-int/2addr v2, v3

    .line 204
    if-gt v2, v5, :cond_51

    .line 205
    goto :goto_7c

    .line 208
    :cond_51
    add-int/lit8 v3, v1, -0x1

    .line 209
    :goto_53
    if-ltz v3, :cond_70

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    aget v4, v4, v3

    if-le v4, v5, :cond_70

    .line 210
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    aget v7, v7, v3

    aput v7, v4, v6

    .line 211
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aget v7, v7, v3

    aput v7, v4, v6

    .line 212
    add-int/lit8 v3, v3, -0x1

    goto :goto_53

    .line 214
    :cond_70
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    add-int/lit8 v3, v3, 0x1

    aput v5, v4, v3

    .line 215
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aput v2, v4, v3

    .line 216
    add-int/lit8 v1, v1, 0x1

    .line 191
    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 218
    :cond_7f
    return v1
.end method

.method private static drawClipped(Ljava/lang/Object;II)V
    .registers 22

    .line 143
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v0, v0, p1

    .line 144
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v1, v1, p1

    .line 145
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v2, v2, p1

    .line 146
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v3, v3, p1

    .line 147
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v4, v4, p1

    .line 149
    neg-int v5, v3

    move v11, v5

    :goto_16
    if-gt v11, v3, :cond_b1

    .line 150
    int-to-double v5, v11

    mul-double/2addr v5, v5

    int-to-double v7, v3

    mul-double/2addr v7, v7

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    .line 151
    const-wide/16 v5, 0x0

    cmpg-double v5, v7, v5

    if-gtz v5, :cond_2e

    .line 152
    move/from16 v14, p2

    move/from16 v18, v0

    move/from16 v16, v1

    goto/16 :goto_a9

    .line 154
    :cond_2e
    int-to-double v5, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 155
    double-to-int v5, v5

    sub-int v6, v0, v5

    .line 156
    add-int v12, v0, v5

    .line 157
    if-gt v12, v6, :cond_43

    .line 158
    move/from16 v14, p2

    move/from16 v18, v0

    move/from16 v16, v1

    goto/16 :goto_a9

    .line 160
    :cond_43
    add-int v13, v1, v11

    .line 161
    move/from16 v14, p2

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->collectBlocked(II)I

    move-result v15

    .line 163
    const/4 v5, 0x0

    move v10, v5

    move v9, v6

    :goto_4e
    if-ge v10, v15, :cond_97

    .line 164
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    aget v5, v5, v10

    .line 165
    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aget v8, v6, v10

    .line 166
    if-gt v8, v9, :cond_61

    .line 167
    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v17, v10

    goto :goto_90

    .line 169
    :cond_61
    if-le v5, v9, :cond_7c

    .line 170
    sub-int v16, v5, v9

    const/16 v17, 0x2

    move-object/from16 v5, p0

    move v6, v9

    move v7, v13

    move/from16 v18, v0

    move v0, v8

    move/from16 v8, v16

    move/from16 v16, v1

    move v1, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move v10, v4

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/province/AirRect;->fill(Ljava/lang/Object;IIIII)V

    goto :goto_84

    .line 169
    :cond_7c
    move/from16 v18, v0

    move/from16 v16, v1

    move v0, v8

    move v1, v9

    move/from16 v17, v10

    .line 172
    :goto_84
    if-le v0, v12, :cond_87

    .line 173
    goto :goto_9c

    .line 175
    :cond_87
    if-le v0, v1, :cond_8b

    .line 176
    move v9, v0

    goto :goto_8c

    .line 175
    :cond_8b
    move v9, v1

    .line 178
    :goto_8c
    if-lt v9, v12, :cond_90

    .line 179
    move v6, v9

    goto :goto_9d

    .line 163
    :cond_90
    :goto_90
    add-int/lit8 v10, v17, 0x1

    move/from16 v1, v16

    move/from16 v0, v18

    goto :goto_4e

    :cond_97
    move/from16 v18, v0

    move/from16 v16, v1

    move v1, v9

    .line 182
    :goto_9c
    move v6, v1

    :goto_9d
    if-ge v6, v12, :cond_a9

    .line 183
    sub-int v8, v12, v6

    const/4 v9, 0x2

    move-object/from16 v5, p0

    move v7, v13

    move v10, v4

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/province/AirRect;->fill(Ljava/lang/Object;IIIII)V

    .line 149
    :cond_a9
    :goto_a9
    add-int/lit8 v11, v11, 0x2

    move/from16 v1, v16

    move/from16 v0, v18

    goto/16 :goto_16

    .line 186
    :cond_b1
    return-void
.end method

.method public static flush(Ljava/lang/Object;)V
    .registers 11

    .line 75
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sort()V

    .line 76
    nop

    .line 77
    move v1, v0

    move v2, v1

    :goto_7
    sget v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v1, v3, :cond_6c

    .line 78
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 80
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v5, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v6, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v7, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v8, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v9, v3, v1

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    .line 81
    goto :goto_68

    .line 84
    :cond_2b
    nop

    .line 85
    move v3, v0

    :goto_2d
    if-ge v3, v2, :cond_3e

    .line 86
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v5, v5, v3

    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->intersects(II)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 87
    nop

    .line 88
    goto :goto_3f

    .line 85
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3e
    move v4, v0

    .line 91
    :goto_3f
    if-nez v4, :cond_5a

    .line 92
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v5, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v6, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v7, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v8, v3, v1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v9, v3, v1

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    goto :goto_5d

    .line 94
    :cond_5a
    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->drawClipped(Ljava/lang/Object;II)V

    .line 96
    :goto_5d
    const/16 v3, 0x100

    if-ge v2, v3, :cond_68

    .line 97
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_6b

    move v2, v4

    .line 77
    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 100
    :catchall_6b
    move-exception p0

    .line 103
    :cond_6c
    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 104
    nop

    .line 105
    return-void
.end method

.method private static intersects(II)Z
    .registers 10

    .line 136
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v0, v0, p0

    int-to-long v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v2, v2, p1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 137
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v2, v2, p0

    int-to-long v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v4, v4, p1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 138
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v4, v4, p0

    int-to-long v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v6, v6, p1

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_3e

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget p0, v0, p0

    int-to-long v0, p0

    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    cmp-long p0, v2, v0

    if-gez p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return p0
.end method

.method private static sort()V
    .registers 11

    .line 109
    const/4 v0, 0x1

    :goto_1
    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v0, v1, :cond_79

    .line 110
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v1, v1, v0

    .line 111
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v2, v2, v0

    .line 112
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v3, v3, v0

    .line 113
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v4, v4, v0

    .line 114
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v5, v5, v0

    .line 115
    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v6, v6, v0

    .line 116
    add-int/lit8 v7, v0, -0x1

    .line 117
    :goto_1f
    if-ltz v7, :cond_5c

    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v8, v8, v7

    if-ge v8, v3, :cond_5c

    .line 118
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v9, v7, 0x1

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 119
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 120
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 121
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 122
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 123
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 124
    add-int/lit8 v7, v7, -0x1

    goto :goto_1f

    .line 126
    :cond_5c
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v7, v7, 0x1

    aput v1, v8, v7

    .line 127
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aput v2, v1, v7

    .line 128
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aput v3, v1, v7

    .line 129
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aput v4, v1, v7

    .line 130
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aput v5, v1, v7

    .line 131
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aput v6, v1, v7

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_79
    return-void
.end method
