.class public final Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;
.super Ljava/lang/Object;
.source "AirProvinceIcons.java"


# static fields
.field private static final CELL_BASE:F = 24.0f

.field private static final ICON_AR:F = 0.8490566f

.field private static final ROW_O:[I

.field private static final ROW_W:[I

.field private static imgAaa:I

.field private static imgAir:I

.field private static imgLong:I

.field private static imgRadar:I

.field private static imgReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/16 v0, 0x5b

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_W:[I

    .line 39
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_da

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_O:[I

    .line 51
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAir:I

    .line 52
    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgRadar:I

    .line 53
    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAaa:I

    .line 54
    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgLong:I

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgReady:Z

    return-void

    nop

    :array_20
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x4
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x3
        0x3
        0x5
        0x3
        0x2
        0x4
        0x4
        0x2
        0x1
        0x3
        0x5
        0x3
        0x1
        0x2
        0x5
        0x5
        0x2
        0x5
        0x5
        0x5
        0x2
        0x4
        0x4
        0x4
        0x2
        0x1
        0x5
        0x5
        0x5
        0x1
        0x2
        0x4
        0x6
        0x4
        0x2
        0x2
        0x5
        0x5
        0x5
        0x2
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
        0x3
        0x5
        0x5
        0x5
        0x3
        0x1
        0x5
        0x5
        0x5
        0x5
        0x1
        0x3
        0x5
        0x7
        0x5
        0x3
        0x2
        0x4
        0x6
        0x6
        0x4
        0x2
    .end array-data

    :array_da
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x6
        0x9
        0xc
        0xf
        0x12
        0x15
        0x18
        0x1b
        0x1f
        0x24
        0x28
        0x2b
        0x30
        0x35
        0x3a
        0x3f
        0x45
        0x4a
        0x50
        0x55
        0x5b
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 13

    .line 63
    if-nez p0, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 67
    if-nez v0, :cond_8

    .line 68
    return-void

    .line 70
    :cond_8
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 71
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_12

    .line 72
    return-void

    .line 74
    :cond_12
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    .line 75
    if-gtz v1, :cond_19

    .line 76
    return-void

    .line 79
    :cond_19
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->initImages()V

    .line 80
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/AirBldIcon;->begin(Ljava/lang/Object;)V

    .line 82
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_O:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v3, v2, [I

    .line 83
    const/4 v4, 0x0

    move v5, v4

    :goto_28
    if-ge v5, v1, :cond_70

    .line 84
    nop

    .line 85
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    .line 86
    if-nez v6, :cond_32

    .line 87
    goto :goto_6d

    .line 89
    :cond_32
    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    .line 90
    if-eqz v6, :cond_6d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 91
    goto :goto_6d

    .line 93
    :cond_3d
    nop

    .line 94
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 95
    move v8, v4

    move v9, v8

    :goto_44
    if-ge v8, v7, :cond_67

    .line 96
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 97
    instance-of v11, v10, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-nez v11, :cond_4f

    .line 98
    goto :goto_64

    .line 100
    :cond_4f
    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    .line 101
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v10

    .line 102
    invoke-static {v10}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imageOf(I)I

    move-result v10

    .line 103
    if-gez v10, :cond_5c

    .line 104
    goto :goto_64

    .line 106
    :cond_5c
    if-lt v9, v2, :cond_5f

    .line 107
    goto :goto_67

    .line 109
    :cond_5f
    add-int/lit8 v11, v9, 0x1

    aput v10, v3, v9

    move v9, v11

    .line 95
    :goto_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 111
    :cond_67
    :goto_67
    if-nez v9, :cond_6a

    .line 112
    goto :goto_6d

    .line 114
    :cond_6a
    invoke-static {p0, v5, v0, v3, v9}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->drawDisc(Ljava/lang/Object;IF[II)V
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_71

    .line 83
    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 118
    :cond_70
    goto :goto_72

    .line 116
    :catchall_71
    move-exception p0

    .line 119
    :goto_72
    return-void
.end method

.method private static drawDisc(Ljava/lang/Object;IF[II)V
    .registers 29

    .line 177
    move/from16 v1, p4

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_O:[I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_O:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 178
    :goto_f
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_O:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    .line 179
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_O:[I

    aget v0, v4, v0

    sub-int v4, v0, v3

    .line 181
    const/high16 v0, 0x41c00000    # 24.0f

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 182
    const/4 v5, 0x6

    if-ge v0, v5, :cond_27

    .line 183
    goto :goto_28

    .line 182
    :cond_27
    move v5, v0

    .line 185
    :goto_28
    int-to-float v0, v5

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 186
    add-int v13, v5, v12

    .line 187
    mul-int v6, v4, v5

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v12

    add-int/2addr v6, v7

    .line 189
    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v14

    .line 190
    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v7

    .line 192
    nop

    .line 193
    const v8, 0x3f595bc6

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 194
    sub-int v0, v5, v2

    div-int/lit8 v15, v0, 0x2

    .line 196
    div-int/lit8 v6, v6, 0x2

    sub-int v16, v7, v6

    .line 197
    nop

    .line 198
    const/16 v17, 0x0

    move/from16 v0, v17

    move v11, v0

    :goto_60
    if-ge v11, v4, :cond_b5

    .line 199
    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->ROW_W:[I

    add-int v7, v3, v11

    aget v10, v6, v7

    .line 200
    mul-int v6, v10, v5

    add-int/lit8 v7, v10, -0x1

    mul-int/2addr v7, v12

    add-int/2addr v6, v7

    .line 201
    div-int/lit8 v6, v6, 0x2

    sub-int v18, v14, v6

    .line 202
    mul-int v6, v11, v13

    add-int v19, v16, v6

    .line 203
    move v9, v0

    move/from16 v8, v17

    :goto_79
    if-ge v8, v10, :cond_ac

    if-ge v9, v1, :cond_ac

    .line 204
    mul-int v0, v8, v13

    add-int v0, v18, v0

    .line 207
    :try_start_81
    aget v7, p3, v9
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_9a

    add-int v20, v19, v15

    move-object/from16 v6, p0

    move/from16 v21, v8

    move v8, v0

    move/from16 v22, v9

    move/from16 v9, v20

    move/from16 v20, v10

    move v10, v5

    move/from16 v23, v11

    move v11, v2

    :try_start_94
    invoke-static/range {v6 .. v11}, Laoc/kingdoms/lukasz/map/province/AirBldIcon;->drawIcon(Ljava/lang/Object;IIIII)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    .line 211
    goto :goto_a3

    .line 209
    :catchall_98
    move-exception v0

    goto :goto_a3

    :catchall_9a
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v20, v10

    move/from16 v23, v11

    .line 212
    :goto_a3
    add-int/lit8 v9, v22, 0x1

    .line 203
    add-int/lit8 v8, v21, 0x1

    move/from16 v10, v20

    move/from16 v11, v23

    goto :goto_79

    :cond_ac
    move/from16 v22, v9

    move/from16 v23, v11

    .line 198
    add-int/lit8 v11, v23, 0x1

    move/from16 v0, v22

    goto :goto_60

    .line 215
    :cond_b5
    return-void
.end method

.method private static imageOf(I)I
    .registers 3

    .line 156
    const/4 v0, -0x1

    if-gez p0, :cond_4

    .line 157
    return v0

    .line 159
    :cond_4
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    if-ne p0, v1, :cond_b

    .line 160
    sget p0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAir:I

    return p0

    .line 162
    :cond_b
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ne p0, v1, :cond_12

    .line 163
    sget p0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgRadar:I

    return p0

    .line 165
    :cond_12
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ne p0, v1, :cond_19

    .line 166
    sget p0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAaa:I

    return p0

    .line 168
    :cond_19
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ne p0, v1, :cond_20

    .line 169
    sget p0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgLong:I

    return p0

    .line 171
    :cond_20
    return v0
.end method

.method private static initImages()V
    .registers 2

    .line 123
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgReady:Z

    if-eqz v0, :cond_5

    .line 124
    return-void

    .line 126
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgReady:Z

    .line 127
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v0

    .line 128
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->valid(II)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAir:I

    .line 129
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->radarUnit:I

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->valid(II)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgRadar:I

    .line 130
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->antiAir:I

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->valid(II)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAaa:I

    .line 131
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->longwaveRadar:I

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->valid(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgLong:I

    .line 132
    sget v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAir:I

    if-gez v0, :cond_53

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons/AirUnit.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAir:I

    .line 136
    :cond_53
    sget v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgRadar:I

    if-gez v0, :cond_5f

    .line 137
    const-string v0, "game/AirUnit/AirUnitlmages/RadarUnit.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgRadar:I

    .line 140
    :cond_5f
    sget v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAaa:I

    if-gez v0, :cond_6b

    .line 141
    const-string v0, "game/buildings/provinceIcons/antiAir.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgAaa:I

    .line 144
    :cond_6b
    sget v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgLong:I

    if-gez v0, :cond_77

    .line 145
    const-string v0, "game/buildings/provinceIcons/longwaveRadar.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirProvinceIcons;->imgLong:I

    .line 148
    :cond_77
    return-void
.end method

.method private static valid(II)I
    .registers 2

    .line 151
    if-ltz p0, :cond_5

    if-ge p0, p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, -0x1

    :goto_6
    return p0
.end method
