.class public final Laoc/kingdoms/lukasz/map/battles/AirIcons;
.super Ljava/lang/Object;
.source "AirIcons.java"


# static fields
.field public static final CAP:I = 0x200

.field private static final HIT_R:I = 0x2d

.field public static final KEY:[Ljava/lang/String;

.field public static final X:[I

.field public static final Y:[I

.field public static cnt:I

.field public static pickCiv:I

.field public static pickKey:Ljava/lang/String;

.field public static pickProv:I

.field public static pickSrc:I

.field public static selCiv:I

.field public static selKey:Ljava/lang/String;

.field public static selProv:I

.field public static selSrc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    .line 41
    const/16 v1, 0x200

    new-array v2, v1, [I

    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->X:[I

    .line 42
    new-array v2, v1, [I

    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->Y:[I

    .line 43
    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->KEY:[Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 47
    const/4 v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    .line 48
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    .line 50
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    .line 57
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selKey:Ljava/lang/String;

    .line 58
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selProv:I

    .line 59
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selCiv:I

    .line 60
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selSrc:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static add(Ljava/lang/String;II)V
    .registers 5

    .line 167
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_22

    if-nez p0, :cond_9

    goto :goto_22

    .line 170
    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->X:[I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    aput p1, v0, v1

    .line 171
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->Y:[I

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    aput p2, p1, v0

    .line 172
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->KEY:[Ljava/lang/String;

    sget p2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    aput-object p0, p1, p2

    .line 173
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    .line 174
    return-void

    .line 168
    :cond_22
    :goto_22
    return-void
.end method

.method public static clearSel()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selKey:Ljava/lang/String;

    .line 71
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selProv:I

    .line 72
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selCiv:I

    .line 73
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selSrc:I

    .line 74
    return-void
.end method

.method public static keyCiv(Ljava/lang/String;)I
    .registers 4

    .line 367
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 368
    return v0

    .line 370
    :cond_4
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 371
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    .line 372
    return v0

    .line 375
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_16} :catch_17

    return p0

    .line 376
    :catch_17
    move-exception p0

    .line 377
    return v0
.end method

.method public static keyOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;
    .registers 3

    .line 330
    if-nez p0, :cond_4

    .line 331
    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 334
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    return-object p0

    .line 336
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onScreen(II)Z
    .registers 6

    .line 341
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 342
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 343
    const/4 v2, 0x1

    if-lez v0, :cond_1b

    if-gtz v1, :cond_a

    goto :goto_1b

    .line 346
    :cond_a
    const/16 v3, -0xa0

    if-le p0, v3, :cond_19

    add-int/lit16 v0, v0, 0xa0

    if-ge p0, v0, :cond_19

    if-le p1, v3, :cond_19

    add-int/lit16 v1, v1, 0xa0

    if-ge p1, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2

    .line 344
    :cond_1b
    :goto_1b
    return v2
.end method

.method public static pick(II)Z
    .registers 18

    .line 181
    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 182
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    .line 183
    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    .line 184
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    .line 186
    :try_start_b
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_115

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v3, :cond_17

    goto/16 :goto_115

    .line 190
    :cond_17
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 191
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    goto :goto_22

    :cond_20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 192
    :goto_22
    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 193
    const/16 v5, 0x24

    if-ge v4, v5, :cond_2b

    .line 194
    move v4, v5

    .line 196
    :cond_2b
    int-to-long v4, v4

    mul-long/2addr v4, v4

    .line 197
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 198
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 199
    move v8, v2

    :goto_34
    if-ge v8, v7, :cond_9d

    .line 200
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 201
    if-nez v9, :cond_3f

    .line 202
    goto :goto_9a

    .line 204
    :cond_3f
    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 205
    if-gez v10, :cond_44

    .line 206
    goto :goto_9a

    .line 208
    :cond_44
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->keyOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;

    move-result-object v11

    .line 209
    if-eqz v11, :cond_9a

    iget v12, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-gez v12, :cond_4f

    .line 210
    goto :goto_9a

    .line 212
    :cond_4f
    if-lez v10, :cond_52

    goto :goto_54

    :cond_52
    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 213
    :goto_54
    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    .line 214
    if-nez v12, :cond_5b

    .line 215
    goto :goto_9a

    .line 217
    :cond_5b
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v12

    if-nez v12, :cond_62

    .line 218
    goto :goto_9a

    .line 220
    :cond_62
    invoke-static {v10, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v12

    .line 221
    invoke-static {v10, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v13

    .line 222
    invoke-static {v9, v12}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixX(Ljava/lang/Object;I)I

    move-result v12

    add-int/lit8 v12, v12, 0x14

    .line 223
    invoke-static {v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixY(Ljava/lang/Object;I)I

    move-result v13

    add-int/lit8 v13, v13, 0x14

    .line 224
    sub-int v12, v12, p0

    int-to-long v14, v12

    .line 225
    sub-int v13, v13, p1

    int-to-long v12, v13

    .line 226
    mul-long/2addr v14, v14

    mul-long/2addr v12, v12

    add-long/2addr v14, v12

    .line 227
    cmp-long v12, v14, v4

    if-gtz v12, :cond_9a

    .line 228
    nop

    .line 229
    sput-object v11, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 230
    sput v10, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    .line 231
    iget v4, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    sput v4, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    .line 232
    iget-object v4, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v4, :cond_95

    iget-object v4, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_97

    :cond_95
    iget v4, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    :goto_97
    sput v4, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    move-wide v4, v14

    .line 199
    :cond_9a
    :goto_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 236
    :cond_9d
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->size()I

    move-result v6

    .line 237
    move v7, v2

    :goto_a2
    if-ge v7, v6, :cond_114

    .line 238
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->keyAt(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    if-nez v8, :cond_ab

    .line 240
    goto :goto_111

    .line 242
    :cond_ab
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v9

    .line 243
    if-eqz v9, :cond_b6

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v9, :cond_b6

    .line 244
    goto :goto_111

    .line 246
    :cond_b6
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->provOf(Ljava/lang/String;)I

    move-result v9

    .line 247
    if-gez v9, :cond_bd

    .line 248
    goto :goto_111

    .line 250
    :cond_bd
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    .line 251
    if-eqz v10, :cond_111

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_ca

    .line 252
    goto :goto_111

    .line 254
    :cond_ca
    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v10

    if-nez v10, :cond_d1

    .line 255
    goto :goto_111

    .line 257
    :cond_d1
    invoke-static {v9, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v10

    .line 258
    invoke-static {v9, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    .line 259
    rem-int/lit8 v12, v7, 0x8

    .line 260
    rem-int/lit8 v13, v12, 0x4

    mul-int/lit8 v13, v13, 0x16

    add-int/2addr v10, v13

    add-int/lit8 v10, v10, -0x21

    add-int/lit8 v10, v10, 0x14

    .line 261
    div-int/lit8 v12, v12, 0x4

    mul-int/lit8 v12, v12, 0x18

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0xc

    add-int/lit8 v11, v11, 0x14

    .line 262
    sub-int v10, v10, p0

    int-to-long v12, v10

    .line 263
    sub-int v11, v11, p1

    int-to-long v10, v11

    .line 264
    mul-long/2addr v12, v12

    mul-long/2addr v10, v10

    add-long/2addr v12, v10

    .line 265
    cmp-long v10, v12, v4

    if-gtz v10, :cond_111

    .line 266
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->byKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 267
    nop

    .line 268
    sput-object v8, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 269
    sput v9, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    .line 270
    if-eqz v4, :cond_108

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    goto :goto_10c

    :cond_108
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->keyCiv(Ljava/lang/String;)I

    move-result v4

    :goto_10c
    sput v4, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    .line 271
    sput v9, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I
    :try_end_110
    .catchall {:try_start_b .. :try_end_110} :catchall_116

    move-wide v4, v12

    .line 237
    :cond_111
    :goto_111
    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    .line 276
    :cond_114
    goto :goto_119

    .line 188
    :cond_115
    :goto_115
    return v2

    .line 274
    :catchall_116
    move-exception v0

    .line 275
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 277
    :goto_119
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    if-eqz v0, :cond_13a

    .line 278
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selKey:Ljava/lang/String;

    .line 279
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selProv:I

    .line 280
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selCiv:I

    .line 281
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selSrc:I

    .line 283
    :try_start_12d
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_139

    .line 285
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I
    :try_end_137
    .catchall {:try_start_12d .. :try_end_137} :catchall_138

    goto :goto_139

    .line 287
    :catchall_138
    move-exception v0

    .line 289
    :cond_139
    :goto_139
    goto :goto_13d

    .line 291
    :cond_13a
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->clearSel()V

    .line 293
    :goto_13d
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    if-eqz v0, :cond_142

    const/4 v2, 0x1

    :cond_142
    return v2
.end method

.method public static prepare()I
    .registers 10

    .line 78
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    .line 80
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    .line 81
    if-nez v1, :cond_a

    .line 82
    return v0

    .line 84
    :cond_a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 85
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    goto :goto_15

    :cond_13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    :goto_15
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 89
    if-eqz v3, :cond_6b

    .line 90
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 91
    move v5, v0

    :goto_1e
    if-ge v5, v4, :cond_6b

    .line 92
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 93
    if-nez v6, :cond_29

    .line 94
    goto :goto_68

    .line 96
    :cond_29
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->keyOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;

    move-result-object v7

    .line 97
    if-nez v7, :cond_30

    .line 98
    goto :goto_68

    .line 100
    :cond_30
    iget v8, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 101
    if-gez v8, :cond_35

    .line 102
    goto :goto_68

    .line 104
    :cond_35
    if-lez v8, :cond_38

    goto :goto_3a

    :cond_38
    iget v8, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 105
    :goto_3a
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    .line 106
    if-nez v9, :cond_41

    .line 107
    goto :goto_68

    .line 109
    :cond_41
    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_48

    .line 110
    goto :goto_68

    .line 112
    :cond_48
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 113
    goto :goto_68

    .line 115
    :cond_4f
    invoke-static {v8, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v9

    .line 116
    invoke-static {v8, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v8

    .line 117
    invoke-static {v6, v9}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixX(Ljava/lang/Object;I)I

    move-result v9

    .line 118
    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixY(Ljava/lang/Object;I)I

    move-result v6

    .line 119
    invoke-static {v9, v6}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->onScreen(II)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 120
    invoke-static {v7, v9, v6}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->add(Ljava/lang/String;II)V

    .line 91
    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 126
    :cond_6b
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->size()I

    move-result v3

    .line 127
    nop

    :goto_70
    if-ge v0, v3, :cond_c4

    .line 128
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    if-nez v4, :cond_79

    .line 130
    goto :goto_c1

    .line 132
    :cond_79
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    .line 133
    if-eqz v5, :cond_84

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v5, :cond_84

    .line 134
    goto :goto_c1

    .line 136
    :cond_84
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->provOf(Ljava/lang/String;)I

    move-result v5

    .line 137
    if-gez v5, :cond_8b

    .line 138
    goto :goto_c1

    .line 140
    :cond_8b
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    .line 141
    if-nez v6, :cond_92

    .line 142
    goto :goto_c1

    .line 144
    :cond_92
    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_99

    .line 145
    goto :goto_c1

    .line 147
    :cond_99
    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v6

    if-nez v6, :cond_a0

    .line 148
    goto :goto_c1

    .line 150
    :cond_a0
    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    .line 151
    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 152
    rem-int/lit8 v7, v0, 0x8

    .line 153
    rem-int/lit8 v8, v7, 0x4

    mul-int/lit8 v8, v8, 0x16

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, -0x21

    .line 154
    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x18

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0xc

    .line 155
    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->onScreen(II)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 156
    invoke-static {v4, v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->add(Ljava/lang/String;II)V
    :try_end_c1
    .catchall {:try_start_3 .. :try_end_c1} :catchall_c8

    .line 127
    :cond_c1
    :goto_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 162
    :cond_c4
    nop

    .line 163
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    return v0

    .line 159
    :catchall_c8
    move-exception v0

    .line 161
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    return v0
.end method

.method private static safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    .registers 3

    .line 351
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 352
    return-object v0

    .line 355
    :cond_4
    :try_start_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    .line 356
    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p0, v1, :cond_f

    .line 357
    return-object v0

    .line 359
    :cond_f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    return-object p0

    .line 360
    :catchall_14
    move-exception p0

    .line 361
    return-object v0
.end method

.method public static setDgFor(Ljava/lang/String;)V
    .registers 3

    .line 299
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_d

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v1, :cond_d

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    goto :goto_11

    :cond_d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->byKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    .line 301
    :goto_11
    nop

    .line 302
    if-eqz v1, :cond_17

    .line 303
    iget p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    goto :goto_20

    .line 304
    :cond_17
    if-eqz v0, :cond_1c

    .line 305
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    goto :goto_20

    .line 307
    :cond_1c
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->keyCiv(Ljava/lang/String;)I

    move-result p0

    .line 309
    :goto_20
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirCiv:I

    .line 310
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirGroup:I

    .line 311
    nop

    .line 312
    nop

    .line 313
    if-eqz v1, :cond_4d

    iget-object p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz p0, :cond_4d

    iget-object p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4d

    .line 314
    iget-object p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 315
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    if-eqz v0, :cond_4d

    .line 316
    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 317
    check-cast p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget p0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    goto :goto_4f

    .line 321
    :cond_4d
    const/4 v0, -0x1

    move p0, v0

    :goto_4f
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirUid:I

    .line 322
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirAid:I
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_54

    .line 325
    goto :goto_55

    .line 323
    :catchall_54
    move-exception p0

    .line 326
    :goto_55
    return-void
.end method
