.class public final Laoc/kingdoms/lukasz/map/province/AirDiscQueue;
.super Ljava/lang/Object;
.source "AirDiscQueue.java"


# static fields
.field private static final BE:[I

.field private static final BI:[I

.field private static final BIDX:[I

.field private static final BJ:[I

.field private static final BS:[I

.field private static final CO:[I

.field private static final COLOR_BLUE:I = 0x3333ff

.field private static final CX:[I

.field private static final CY:[I

.field private static final MAX:I = 0x100

.field private static final MAXBLK:I = 0x10

.field private static final RIDX:[I

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
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    .line 35
    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    .line 37
    const/16 v0, 0x10

    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BI:[I

    .line 38
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BJ:[I

    .line 39
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    .line 40
    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static add(IIIIII)V
    .registers 8

    .line 61
    if-lez p2, :cond_37

    if-gtz p3, :cond_5

    goto :goto_37

    .line 64
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_c

    .line 65
    return-void

    .line 67
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p0, v0, v1

    .line 68
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p1, p0, v0

    .line 69
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p2, p0, p1

    .line 70
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p3, p0, p1

    .line 71
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p4, p0, p1

    .line 72
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p5, p0, p1

    .line 73
    sget p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 74
    return-void

    .line 62
    :cond_37
    :goto_37
    return-void
.end method

.method public static addBlue(IIII)V
    .registers 10

    .line 52
    const v4, 0x3333ff

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 53
    return-void
.end method

.method public static addColor(IIIII)V
    .registers 11

    .line 57
    const/4 v5, 0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 58
    return-void
.end method

.method public static begin()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 48
    return-void
.end method

.method private static collectBlocked(III)I
    .registers 16

    .line 205
    nop

    .line 206
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    const/16 v3, 0x10

    if-ge v1, p1, :cond_24

    if-ge v2, v3, :cond_24

    .line 207
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v3, v3, v1

    .line 208
    invoke-static {v3, p0}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->rowInterval(II)I

    move-result v3

    .line 209
    if-eqz v3, :cond_21

    .line 210
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BI:[I

    shr-int/lit8 v5, v3, 0x10

    aput v5, v4, v2

    .line 211
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BJ:[I

    sub-int/2addr v3, v5

    aput v3, v4, v2

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 206
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 215
    :cond_24
    if-nez v2, :cond_27

    .line 216
    return v0

    .line 219
    :cond_27
    nop

    .line 220
    move p1, v0

    move v1, p1

    :goto_2a
    if-ge p1, p2, :cond_88

    if-ge v1, v3, :cond_88

    .line 221
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    aget v4, v4, p1

    .line 222
    invoke-static {v4, p0}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->rowInterval(II)I

    move-result v4

    .line 223
    if-nez v4, :cond_39

    .line 224
    goto :goto_85

    .line 226
    :cond_39
    shr-int/lit8 v5, v4, 0x10

    .line 227
    sub-int/2addr v4, v5

    .line 228
    if-gt v4, v5, :cond_3f

    .line 229
    goto :goto_85

    .line 231
    :cond_3f
    move v6, v0

    :goto_40
    if-ge v6, v2, :cond_85

    if-ge v1, v3, :cond_85

    .line 232
    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BI:[I

    aget v7, v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 233
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BJ:[I

    aget v8, v8, v6

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 234
    if-gt v8, v7, :cond_57

    .line 235
    goto :goto_82

    .line 238
    :cond_57
    add-int/lit8 v9, v1, -0x1

    .line 239
    :goto_59
    if-ltz v9, :cond_76

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    aget v10, v10, v9

    if-le v10, v7, :cond_76

    .line 240
    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    add-int/lit8 v11, v9, 0x1

    sget-object v12, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    aget v12, v12, v9

    aput v12, v10, v11

    .line 241
    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    sget-object v12, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aget v12, v12, v9

    aput v12, v10, v11

    .line 242
    add-int/lit8 v9, v9, -0x1

    goto :goto_59

    .line 244
    :cond_76
    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    add-int/lit8 v9, v9, 0x1

    aput v7, v10, v9

    .line 245
    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aput v8, v7, v9

    .line 246
    add-int/lit8 v1, v1, 0x1

    .line 231
    :goto_82
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 220
    :cond_85
    :goto_85
    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    .line 249
    :cond_88
    return v1
.end method

.method private static drawClipped(Ljava/lang/Object;III)V
    .registers 23

    .line 156
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v0, v0, p1

    .line 157
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v1, v1, p1

    .line 158
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v2, v2, p1

    .line 159
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v3, v3, p1

    .line 160
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v4, v4, p1

    .line 162
    neg-int v5, v3

    move v11, v5

    :goto_16
    if-gt v11, v3, :cond_ab

    .line 163
    int-to-double v5, v11

    mul-double/2addr v5, v5

    int-to-double v7, v3

    mul-double/2addr v7, v7

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    .line 164
    const-wide/16 v5, 0x0

    cmpg-double v5, v7, v5

    if-gtz v5, :cond_2e

    .line 165
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v18, v0

    goto/16 :goto_a5

    .line 167
    :cond_2e
    int-to-double v5, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 168
    double-to-int v5, v5

    sub-int v6, v0, v5

    .line 169
    add-int v12, v0, v5

    .line 170
    sub-int v5, v12, v6

    const/4 v7, 0x2

    if-ge v5, v7, :cond_46

    .line 171
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v18, v0

    goto/16 :goto_a5

    .line 173
    :cond_46
    add-int v13, v1, v11

    .line 174
    move/from16 v14, p2

    move/from16 v15, p3

    invoke-static {v13, v14, v15}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->collectBlocked(III)I

    move-result v10

    .line 176
    const/4 v5, 0x0

    move v9, v5

    :goto_52
    if-ge v9, v10, :cond_97

    .line 177
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    aget v5, v5, v9

    .line 178
    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aget v8, v7, v9

    .line 179
    if-gt v8, v6, :cond_65

    .line 180
    move/from16 v18, v0

    move/from16 v16, v9

    move/from16 v17, v10

    goto :goto_90

    .line 182
    :cond_65
    if-le v5, v6, :cond_7e

    .line 183
    sub-int v16, v5, v6

    const/16 v17, 0x2

    move-object/from16 v5, p0

    move v7, v13

    move/from16 v18, v0

    move v0, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move v10, v4

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/province/AirRect;->fill(Ljava/lang/Object;IIIII)V

    goto :goto_85

    .line 182
    :cond_7e
    move/from16 v18, v0

    move v0, v8

    move/from16 v16, v9

    move/from16 v17, v10

    .line 185
    :goto_85
    if-lt v0, v12, :cond_8a

    .line 188
    nop

    .line 189
    move v6, v12

    goto :goto_99

    .line 191
    :cond_8a
    nop

    .line 192
    if-lt v0, v12, :cond_8f

    .line 193
    move v6, v0

    goto :goto_99

    .line 192
    :cond_8f
    move v6, v0

    .line 176
    :goto_90
    add-int/lit8 v9, v16, 0x1

    move/from16 v10, v17

    move/from16 v0, v18

    goto :goto_52

    :cond_97
    move/from16 v18, v0

    .line 196
    :goto_99
    if-ge v6, v12, :cond_a5

    .line 197
    sub-int v8, v12, v6

    const/4 v9, 0x2

    move-object/from16 v5, p0

    move v7, v13

    move v10, v4

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/province/AirRect;->fill(Ljava/lang/Object;IIIII)V

    .line 162
    :cond_a5
    :goto_a5
    add-int/lit8 v11, v11, 0x2

    move/from16 v0, v18

    goto/16 :goto_16

    .line 200
    :cond_ab
    return-void
.end method

.method public static flush(Ljava/lang/Object;)V
    .registers 13

    .line 79
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sort()V

    .line 80
    nop

    .line 81
    nop

    .line 82
    move v1, v0

    move v2, v1

    move v3, v2

    :goto_9
    sget v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v1, v4, :cond_8c

    .line 83
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v4, v4, v1

    const/16 v5, 0x100

    const/4 v6, 0x1

    if-ne v4, v6, :cond_38

    .line 85
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v7, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v8, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v9, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v10, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v11, v4, v1

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    .line 86
    if-ge v3, v5, :cond_87

    .line 87
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    add-int/lit8 v5, v3, 0x1

    aput v1, v4, v3

    move v3, v5

    goto :goto_87

    .line 92
    :cond_38
    nop

    .line 93
    move v4, v0

    move v7, v4

    :goto_3b
    if-ge v4, v2, :cond_60

    if-nez v7, :cond_60

    .line 94
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v8, v8, v4

    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->intersects(II)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 95
    goto :goto_5d

    .line 97
    :cond_4a
    move v8, v0

    :goto_4b
    if-ge v8, v3, :cond_5d

    .line 98
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    aget v9, v9, v8

    invoke-static {v1, v9}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->intersects(II)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 99
    nop

    .line 100
    move v7, v6

    goto :goto_5d

    .line 97
    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 93
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 104
    :cond_60
    if-nez v7, :cond_7b

    .line 105
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v7, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v8, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v9, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v10, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v11, v4, v1

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    goto :goto_7e

    .line 107
    :cond_7b
    invoke-static {p0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->drawClipped(Ljava/lang/Object;III)V

    .line 109
    :goto_7e
    if-ge v2, v5, :cond_87

    .line 110
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    add-int/lit8 v5, v2, 0x1

    aput v1, v4, v2
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_8b

    move v2, v5

    .line 82
    :cond_87
    :goto_87
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 113
    :catchall_8b
    move-exception p0

    .line 116
    :cond_8c
    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 117
    nop

    .line 118
    return-void
.end method

.method private static intersects(II)Z
    .registers 10

    .line 149
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v0, v0, p0

    int-to-long v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v2, v2, p1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 150
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v2, v2, p0

    int-to-long v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v4, v4, p1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 151
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

.method private static rowInterval(II)I
    .registers 7

    .line 254
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v0, v0, p0

    sub-int/2addr p1, v0

    .line 255
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v0, v0, p0

    .line 256
    neg-int v1, v0

    const/4 v2, 0x0

    if-le p1, v1, :cond_3b

    if-lt p1, v0, :cond_10

    goto :goto_3b

    .line 259
    :cond_10
    int-to-double v3, p1

    mul-double/2addr v3, v3

    int-to-double v0, v0

    mul-double/2addr v0, v0

    div-double/2addr v3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v3

    .line 260
    const-wide/16 v3, 0x0

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_1f

    .line 261
    return v2

    .line 263
    :cond_1f
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget p1, p1, p0

    int-to-double v3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    .line 264
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget p1, p1, p0

    double-to-int v0, v3

    sub-int/2addr p1, v0

    .line 265
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget p0, v1, p0

    add-int/2addr p0, v0

    .line 266
    if-gt p0, p1, :cond_37

    .line 267
    return v2

    .line 269
    :cond_37
    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p0

    return p1

    .line 257
    :cond_3b
    :goto_3b
    return v2
.end method

.method private static sort()V
    .registers 11

    .line 122
    const/4 v0, 0x1

    :goto_1
    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v0, v1, :cond_79

    .line 123
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v1, v1, v0

    .line 124
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v2, v2, v0

    .line 125
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v3, v3, v0

    .line 126
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v4, v4, v0

    .line 127
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v5, v5, v0

    .line 128
    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v6, v6, v0

    .line 129
    add-int/lit8 v7, v0, -0x1

    .line 130
    :goto_1f
    if-ltz v7, :cond_5c

    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v8, v8, v7

    if-ge v8, v3, :cond_5c

    .line 131
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v9, v7, 0x1

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 132
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 133
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 134
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 135
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 136
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 137
    add-int/lit8 v7, v7, -0x1

    goto :goto_1f

    .line 139
    :cond_5c
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v7, v7, 0x1

    aput v1, v8, v7

    .line 140
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aput v2, v1, v7

    .line 141
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aput v3, v1, v7

    .line 142
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aput v4, v1, v7

    .line 143
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aput v5, v1, v7

    .line 144
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aput v6, v1, v7

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_79
    return-void
.end method
