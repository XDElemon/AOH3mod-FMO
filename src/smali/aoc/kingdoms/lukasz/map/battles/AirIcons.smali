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
    const/4 v1, -0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    .line 48
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    .line 50
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static add(Ljava/lang/String;II)V
    .registers 5

    .line 149
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_22

    if-nez p0, :cond_9

    goto :goto_22

    .line 152
    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->X:[I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    aput p1, v0, v1

    .line 153
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->Y:[I

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    aput p2, p1, v0

    .line 154
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->KEY:[Ljava/lang/String;

    sget p2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    aput-object p0, p1, p2

    .line 155
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    .line 156
    return-void

    .line 150
    :cond_22
    :goto_22
    return-void
.end method

.method public static keyCiv(Ljava/lang/String;)I
    .registers 4

    .line 304
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 305
    return v0

    .line 307
    :cond_4
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 308
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    .line 309
    return v0

    .line 312
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_16} :catch_17

    return p0

    .line 313
    :catch_17
    move-exception p0

    .line 314
    return v0
.end method

.method public static keyOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;
    .registers 3

    .line 267
    if-nez p0, :cond_4

    .line 268
    const/4 p0, 0x0

    return-object p0

    .line 270
    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 271
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    return-object p0

    .line 273
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

    .line 278
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 279
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 280
    const/4 v2, 0x1

    if-lez v0, :cond_1b

    if-gtz v1, :cond_a

    goto :goto_1b

    .line 283
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

    .line 281
    :cond_1b
    :goto_1b
    return v2
.end method

.method public static pick(II)Z
    .registers 17

    .line 163
    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 164
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    .line 165
    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    .line 166
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    .line 168
    :try_start_b
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_9d

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-nez v3, :cond_17

    goto/16 :goto_9d

    .line 172
    :cond_17
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 173
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    goto :goto_22

    :cond_20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 174
    :goto_22
    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 175
    const/16 v5, 0x24

    if-ge v4, v5, :cond_2b

    .line 176
    move v4, v5

    .line 178
    :cond_2b
    int-to-long v4, v4

    mul-long/2addr v4, v4

    .line 179
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 181
    move v7, v2

    :goto_34
    if-ge v7, v6, :cond_9c

    .line 182
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 183
    if-nez v8, :cond_3f

    .line 184
    goto :goto_99

    .line 186
    :cond_3f
    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 187
    if-gez v9, :cond_44

    .line 188
    goto :goto_99

    .line 190
    :cond_44
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->keyOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;

    move-result-object v10

    .line 191
    if-eqz v10, :cond_99

    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-gez v11, :cond_4f

    .line 192
    goto :goto_99

    .line 194
    :cond_4f
    if-lez v9, :cond_52

    goto :goto_54

    :cond_52
    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 195
    :goto_54
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    .line 196
    if-nez v11, :cond_5b

    .line 197
    goto :goto_99

    .line 199
    :cond_5b
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v11

    if-nez v11, :cond_62

    .line 200
    goto :goto_99

    .line 202
    :cond_62
    invoke-static {v9, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v11

    .line 203
    invoke-static {v9, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v12

    .line 204
    invoke-static {v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixX(Ljava/lang/Object;I)I

    move-result v11

    add-int/lit8 v11, v11, 0x14

    .line 205
    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixY(Ljava/lang/Object;I)I

    move-result v12

    add-int/lit8 v12, v12, 0x14

    .line 206
    sub-int/2addr v11, p0

    int-to-long v13, v11

    .line 207
    sub-int v12, v12, p1

    int-to-long v11, v12

    .line 208
    mul-long/2addr v13, v13

    mul-long/2addr v11, v11

    add-long/2addr v13, v11

    .line 209
    cmp-long v11, v13, v4

    if-gtz v11, :cond_99

    .line 210
    nop

    .line 211
    sput-object v10, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 212
    sput v9, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I

    .line 213
    iget v4, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    sput v4, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I

    .line 214
    iget-object v4, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v4, :cond_94

    iget-object v4, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_96

    :cond_94
    iget v4, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    :goto_96
    sput v4, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I
    :try_end_98
    .catchall {:try_start_b .. :try_end_98} :catchall_9e

    move-wide v4, v13

    .line 181
    :cond_99
    :goto_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 219
    :cond_9c
    goto :goto_a1

    .line 170
    :cond_9d
    :goto_9d
    return v2

    .line 217
    :catchall_9e
    move-exception v0

    .line 218
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    .line 220
    :goto_a1
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    if-eqz v0, :cond_b1

    .line 222
    :try_start_a5
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_af

    .line 224
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickSrc:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_b0

    .line 228
    :cond_af
    goto :goto_b1

    .line 226
    :catchall_b0
    move-exception v0

    .line 230
    :cond_b1
    :goto_b1
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;

    if-eqz v0, :cond_b6

    const/4 v2, 0x1

    :cond_b6
    return v2
.end method

.method public static prepare()I
    .registers 10

    .line 60
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    .line 62
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    .line 63
    if-nez v1, :cond_a

    .line 64
    return v0

    .line 66
    :cond_a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 67
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    goto :goto_15

    :cond_13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    :goto_15
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 71
    if-eqz v3, :cond_6b

    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 73
    move v5, v0

    :goto_1e
    if-ge v5, v4, :cond_6b

    .line 74
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 75
    if-nez v6, :cond_29

    .line 76
    goto :goto_68

    .line 78
    :cond_29
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->keyOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;

    move-result-object v7

    .line 79
    if-nez v7, :cond_30

    .line 80
    goto :goto_68

    .line 82
    :cond_30
    iget v8, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 83
    if-gez v8, :cond_35

    .line 84
    goto :goto_68

    .line 86
    :cond_35
    if-lez v8, :cond_38

    goto :goto_3a

    :cond_38
    iget v8, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 87
    :goto_3a
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    .line 88
    if-nez v9, :cond_41

    .line 89
    goto :goto_68

    .line 91
    :cond_41
    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_48

    .line 92
    goto :goto_68

    .line 94
    :cond_48
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 95
    goto :goto_68

    .line 97
    :cond_4f
    invoke-static {v8, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v9

    .line 98
    invoke-static {v8, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v8

    .line 99
    invoke-static {v6, v9}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixX(Ljava/lang/Object;I)I

    move-result v9

    .line 100
    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirPos;->fixY(Ljava/lang/Object;I)I

    move-result v6

    .line 101
    invoke-static {v9, v6}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->onScreen(II)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 102
    invoke-static {v7, v9, v6}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->add(Ljava/lang/String;II)V

    .line 73
    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 108
    :cond_6b
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->size()I

    move-result v3

    .line 109
    nop

    :goto_70
    if-ge v0, v3, :cond_c4

    .line 110
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    if-nez v4, :cond_79

    .line 112
    goto :goto_c1

    .line 114
    :cond_79
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    .line 115
    if-eqz v5, :cond_84

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v5, :cond_84

    .line 116
    goto :goto_c1

    .line 118
    :cond_84
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->provOf(Ljava/lang/String;)I

    move-result v5

    .line 119
    if-gez v5, :cond_8b

    .line 120
    goto :goto_c1

    .line 122
    :cond_8b
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    .line 123
    if-nez v6, :cond_92

    .line 124
    goto :goto_c1

    .line 126
    :cond_92
    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_99

    .line 127
    goto :goto_c1

    .line 129
    :cond_99
    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v6

    if-nez v6, :cond_a0

    .line 130
    goto :goto_c1

    .line 132
    :cond_a0
    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    .line 133
    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 134
    rem-int/lit8 v7, v0, 0x8

    .line 135
    rem-int/lit8 v8, v7, 0x4

    mul-int/lit8 v8, v8, 0x16

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, -0x21

    .line 136
    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x18

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0xc

    .line 137
    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->onScreen(II)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 138
    invoke-static {v4, v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->add(Ljava/lang/String;II)V
    :try_end_c1
    .catchall {:try_start_3 .. :try_end_c1} :catchall_c8

    .line 109
    :cond_c1
    :goto_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 144
    :cond_c4
    nop

    .line 145
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    return v0

    .line 141
    :catchall_c8
    move-exception v0

    .line 143
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->cnt:I

    return v0
.end method

.method private static safeProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    .registers 3

    .line 288
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 289
    return-object v0

    .line 292
    :cond_4
    :try_start_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    .line 293
    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p0, v1, :cond_f

    .line 294
    return-object v0

    .line 296
    :cond_f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    return-object p0

    .line 297
    :catchall_14
    move-exception p0

    .line 298
    return-object v0
.end method

.method public static setDgFor(Ljava/lang/String;)V
    .registers 3

    .line 236
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_d

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v1, :cond_d

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    goto :goto_11

    :cond_d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->byKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    .line 238
    :goto_11
    nop

    .line 239
    if-eqz v1, :cond_17

    .line 240
    iget p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    goto :goto_20

    .line 241
    :cond_17
    if-eqz v0, :cond_1c

    .line 242
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    goto :goto_20

    .line 244
    :cond_1c
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->keyCiv(Ljava/lang/String;)I

    move-result p0

    .line 246
    :goto_20
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirCiv:I

    .line 247
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirGroup:I

    .line 248
    nop

    .line 249
    nop

    .line 250
    if-eqz v1, :cond_4d

    iget-object p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz p0, :cond_4d

    iget-object p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4d

    .line 251
    iget-object p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 252
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    if-eqz v0, :cond_4d

    .line 253
    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 254
    check-cast p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget p0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    goto :goto_4f

    .line 258
    :cond_4d
    const/4 v0, -0x1

    move p0, v0

    :goto_4f
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirUid:I

    .line 259
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirAid:I
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_54

    .line 262
    goto :goto_55

    .line 260
    :catchall_54
    move-exception p0

    .line 263
    :goto_55
    return-void
.end method
