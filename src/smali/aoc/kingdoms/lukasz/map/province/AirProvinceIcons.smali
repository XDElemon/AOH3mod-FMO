.class public final Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;
.super Ljava/lang/Object;
.source "AirProvinceIcons.java"


# static fields
.field private static final CELL_BASE:F = 24.0f

.field private static final ICON_AR:F = 0.8490566f

.field private static final ROWS:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 27

    .line 26
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    const/4 v15, 0x2

    filled-new-array {v15}, [I

    move-result-object v2

    filled-new-array {v0, v15}, [I

    move-result-object v3

    filled-new-array {v15, v15}, [I

    move-result-object v4

    const/4 v14, 0x3

    filled-new-array {v0, v14, v0}, [I

    move-result-object v5

    filled-new-array {v15, v15, v15}, [I

    move-result-object v6

    filled-new-array {v15, v14, v15}, [I

    move-result-object v7

    const/4 v13, 0x4

    filled-new-array {v15, v13, v15}, [I

    move-result-object v8

    filled-new-array {v14, v14, v14}, [I

    move-result-object v9

    filled-new-array {v14, v13, v14}, [I

    move-result-object v10

    const/4 v12, 0x5

    filled-new-array {v14, v12, v14}, [I

    move-result-object v11

    filled-new-array {v15, v13, v13, v15}, [I

    move-result-object v16

    move v15, v12

    move-object/from16 v12, v16

    filled-new-array {v0, v14, v15, v14, v0}, [I

    move-result-object v16

    move v0, v13

    move-object/from16 v13, v16

    const/4 v0, 0x2

    filled-new-array {v0, v15, v15, v0}, [I

    move-result-object v16

    move v0, v14

    move-object/from16 v14, v16

    filled-new-array {v15, v15, v15}, [I

    move-result-object v16

    move-object/from16 v25, v1

    move v1, v15

    const/4 v0, 0x2

    move-object/from16 v15, v16

    const/4 v1, 0x4

    filled-new-array {v0, v1, v1, v1, v0}, [I

    move-result-object v16

    const/4 v0, 0x1

    const/4 v1, 0x5

    filled-new-array {v0, v1, v1, v1, v0}, [I

    move-result-object v17

    const/4 v0, 0x6

    move-object/from16 v26, v2

    const/4 v1, 0x2

    const/4 v2, 0x4

    filled-new-array {v1, v2, v0, v2, v1}, [I

    move-result-object v18

    const/4 v2, 0x5

    filled-new-array {v1, v2, v2, v2, v1}, [I

    move-result-object v19

    new-array v1, v0, [I

    move-object/from16 v20, v1

    fill-array-data v1, :array_96

    const/4 v1, 0x3

    filled-new-array {v1, v2, v2, v2, v1}, [I

    move-result-object v21

    new-array v1, v0, [I

    move-object/from16 v22, v1

    fill-array-data v1, :array_a6

    const/4 v1, 0x7

    const/4 v0, 0x3

    filled-new-array {v0, v2, v1, v2, v0}, [I

    move-result-object v23

    const/4 v0, 0x6

    new-array v0, v0, [I

    move-object/from16 v24, v0

    fill-array-data v0, :array_b6

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROWS:[[I

    return-void

    :array_96
    .array-data 4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_a6
    .array-data 4
        0x1
        0x5
        0x5
        0x5
        0x5
        0x1
    .end array-data

    :array_b6
    .array-data 4
        0x2
        0x4
        0x6
        0x6
        0x4
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 13

    .line 65
    if-nez p0, :cond_3

    .line 66
    return-void

    .line 68
    :cond_3
    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 69
    if-nez v0, :cond_8

    .line 70
    return-void

    .line 72
    :cond_8
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 73
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_12

    .line 74
    return-void

    .line 76
    :cond_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    .line 77
    if-gtz v1, :cond_19

    .line 78
    return-void

    .line 81
    :cond_19
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/AirBldIcon;->begin(Ljava/lang/Object;)V

    .line 83
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROWS:[[I

    array-length v2, v2

    new-array v3, v2, [I

    .line 84
    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v1, :cond_6b

    .line 85
    nop

    .line 86
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    .line 87
    if-nez v6, :cond_2d

    .line 88
    goto :goto_68

    .line 90
    :cond_2d
    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    .line 91
    if-eqz v6, :cond_68

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 92
    goto :goto_68

    .line 94
    :cond_38
    nop

    .line 95
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 96
    move v8, v4

    move v9, v8

    :goto_3f
    if-ge v8, v7, :cond_62

    .line 97
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 98
    instance-of v11, v10, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-nez v11, :cond_4a

    .line 99
    goto :goto_5f

    .line 101
    :cond_4a
    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    .line 102
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v10

    .line 103
    invoke-static {v10}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imageOf(I)I

    move-result v10

    .line 104
    if-gez v10, :cond_57

    .line 105
    goto :goto_5f

    .line 107
    :cond_57
    if-lt v9, v2, :cond_5a

    .line 108
    goto :goto_62

    .line 110
    :cond_5a
    add-int/lit8 v11, v9, 0x1

    aput v10, v3, v9

    move v9, v11

    .line 96
    :goto_5f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 112
    :cond_62
    :goto_62
    if-nez v9, :cond_65

    .line 113
    goto :goto_68

    .line 115
    :cond_65
    invoke-static {p0, v5, v0, v3, v9}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->drawDisc(Ljava/lang/Object;IF[II)V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6c

    .line 84
    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 119
    :cond_6b
    goto :goto_6d

    .line 117
    :catchall_6c
    move-exception p0

    .line 120
    :goto_6d
    return-void
.end method

.method private static drawDisc(Ljava/lang/Object;IF[II)V
    .registers 27

    .line 144
    invoke-static/range {p4 .. p4}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->rowsFor(I)[I

    move-result-object v0

    .line 145
    array-length v1, v0

    .line 147
    const/high16 v2, 0x41c00000    # 24.0f

    mul-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 148
    const/4 v3, 0x6

    if-ge v2, v3, :cond_11

    .line 149
    move v2, v3

    .line 151
    :cond_11
    int-to-float v3, v2

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 152
    add-int v11, v2, v10

    .line 153
    mul-int v4, v1, v2

    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v10

    add-int/2addr v4, v6

    .line 155
    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v12

    .line 156
    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v6

    .line 158
    nop

    .line 159
    const v7, 0x3f595bc6

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 160
    sub-int v5, v2, v3

    div-int/lit8 v13, v5, 0x2

    .line 162
    div-int/lit8 v4, v4, 0x2

    sub-int v14, v6, v4

    .line 163
    nop

    .line 164
    const/4 v15, 0x0

    move v4, v15

    move v9, v4

    :goto_48
    if-ge v9, v1, :cond_91

    .line 165
    aget v8, v0, v9

    .line 166
    mul-int v5, v8, v2

    add-int/lit8 v6, v8, -0x1

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    .line 167
    div-int/lit8 v5, v5, 0x2

    sub-int v16, v12, v5

    .line 168
    mul-int v5, v9, v11

    add-int v17, v14, v5

    .line 169
    move v7, v4

    move v6, v15

    :goto_5c
    if-ge v6, v8, :cond_88

    move/from16 v5, p4

    if-ge v7, v5, :cond_88

    .line 170
    mul-int v4, v6, v11

    add-int v18, v16, v4

    .line 171
    aget v19, p3, v7

    add-int v20, v17, v13

    move-object/from16 v4, p0

    move/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v20

    move/from16 v20, v8

    move v8, v2

    move/from16 v21, v9

    move v9, v3

    invoke-static/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/province/AirBldIcon;->drawIcon(Ljava/lang/Object;IIIII)V

    .line 172
    add-int/lit8 v7, v18, 0x1

    .line 169
    add-int/lit8 v6, v19, 0x1

    move/from16 v8, v20

    move/from16 v9, v21

    goto :goto_5c

    :cond_88
    move/from16 v18, v7

    move/from16 v21, v9

    .line 164
    add-int/lit8 v9, v21, 0x1

    move/from16 v4, v18

    goto :goto_48

    .line 175
    :cond_91
    return-void
.end method

.method private static imageOf(I)I
    .registers 3

    .line 124
    const/4 v0, -0x1

    if-gez p0, :cond_4

    .line 125
    return v0

    .line 127
    :cond_4
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    if-ne p0, v1, :cond_b

    .line 128
    sget p0, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I

    return p0

    .line 130
    :cond_b
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ne p0, v1, :cond_12

    .line 131
    sget p0, Laoc/kingdoms/lukasz/textures/Images;->radarUnit:I

    return p0

    .line 133
    :cond_12
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ne p0, v1, :cond_19

    .line 134
    sget p0, Laoc/kingdoms/lukasz/textures/Images;->antiAir:I

    return p0

    .line 136
    :cond_19
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ne p0, v1, :cond_20

    .line 137
    sget p0, Laoc/kingdoms/lukasz/textures/Images;->longwaveRadar:I

    return p0

    .line 139
    :cond_20
    return v0
.end method

.method private static rowsFor(I)[I
    .registers 14

    .line 179
    const/4 v0, 0x1

    if-lt p0, v0, :cond_e

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROWS:[[I

    array-length v1, v1

    if-gt p0, v1, :cond_e

    .line 180
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROWS:[[I

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 182
    :cond_e
    int-to-double v1, p0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 183
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 184
    new-array v6, v5, [I

    .line 185
    const/4 v7, 0x0

    move v8, v7

    :goto_2a
    if-ge v8, v5, :cond_4f

    .line 186
    int-to-double v9, v8

    add-int/lit8 v11, v5, -0x1

    int-to-double v11, v11

    div-double/2addr v11, v3

    sub-double/2addr v9, v11

    .line 187
    mul-double v11, v1, v1

    mul-double/2addr v9, v9

    sub-double/2addr v11, v9

    const-wide/16 v9, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 188
    mul-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v6, v8

    .line 185
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 190
    :cond_4f
    move v1, v7

    :goto_50
    if-ge v1, v5, :cond_66

    .line 191
    add-int/lit8 v2, v5, -0x1

    sub-int/2addr v2, v1

    .line 192
    if-ge v1, v2, :cond_63

    .line 193
    aget v3, v6, v1

    aget v4, v6, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 194
    aput v3, v6, v1

    .line 195
    aput v3, v6, v2

    .line 190
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 198
    :cond_66
    nop

    .line 199
    move v1, v7

    move v2, v1

    :goto_69
    if-ge v1, v5, :cond_71

    .line 200
    aget v3, v6, v1

    add-int/2addr v2, v3

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 202
    :cond_71
    move v1, v7

    .line 203
    :goto_72
    if-eq v2, p0, :cond_b1

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x1000

    if-ge v1, v4, :cond_b1

    .line 204
    if-le v2, p0, :cond_99

    .line 205
    nop

    .line 206
    move v1, v0

    move v4, v7

    :goto_7f
    if-ge v1, v5, :cond_8b

    .line 207
    aget v8, v6, v1

    aget v9, v6, v4

    if-le v8, v9, :cond_88

    .line 208
    move v4, v1

    .line 206
    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 211
    :cond_8b
    aget v1, v6, v4

    if-gt v1, v0, :cond_90

    .line 212
    goto :goto_b1

    .line 214
    :cond_90
    aget v1, v6, v4

    sub-int/2addr v1, v0

    aput v1, v6, v4

    .line 215
    add-int/lit8 v2, v2, -0x1

    .line 216
    move v1, v3

    goto :goto_72

    .line 217
    :cond_99
    nop

    .line 218
    move v1, v0

    move v4, v7

    :goto_9c
    if-ge v1, v5, :cond_a8

    .line 219
    aget v8, v6, v1

    aget v9, v6, v4

    if-ge v8, v9, :cond_a5

    .line 220
    move v4, v1

    .line 218
    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 223
    :cond_a8
    aget v1, v6, v4

    add-int/2addr v1, v0

    aput v1, v6, v4

    .line 224
    add-int/lit8 v2, v2, 0x1

    .line 225
    move v1, v3

    goto :goto_72

    .line 227
    :cond_b1
    :goto_b1
    return-object v6
.end method
