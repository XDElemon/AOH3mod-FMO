.class public final Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;
.super Ljava/lang/Object;
.source "AirBuildingStrike.java"


# static fields
.field private static F_COST:Ljava/lang/reflect/Field; = null

.field private static F_ECON:Ljava/lang/reflect/Field; = null

.field private static F_GROUP:Ljava/lang/reflect/Field; = null

.field private static F_INC:Ljava/lang/reflect/Field; = null

.field private static F_NAME:Ljava/lang/reflect/Field; = null

.field private static F_TIME:Ljava/lang/reflect/Field; = null

.field private static F_UNIQ:Ljava/lang/reflect/Field; = null

.field private static final GROUP_CAPITAL:I = 0x3

.field private static final RAND_LO:F = 0.8f

.field private static final RAND_SPAN:F = 0.4f

.field private static final W_ECON:F = 2.0f

.field private static final W_INC:F = 4.0f

.field private static final W_TIME:F = 0.1f

.field public static dbgLastBuilding:I

.field public static dbgLastLevel:I

.field public static dbgSkips:I

.field public static dbgStrikes:I

.field private static fieldsInit:Z

.field private static fieldsOk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgStrikes:I

    .line 59
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgSkips:I

    .line 60
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgLastBuilding:I

    .line 61
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgLastLevel:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static canDestroy(Ljava/util/List;II)Z
    .registers 5

    .line 155
    const/4 v0, 0x0

    if-ltz p1, :cond_41

    :try_start_3
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge p1, v1, :cond_41

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_e

    goto :goto_41

    .line 158
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 159
    if-nez p0, :cond_15

    .line 160
    return v0

    .line 162
    :cond_15
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_NAME:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 163
    if-eqz v1, :cond_3e

    if-ltz p2, :cond_3e

    array-length v1, v1

    if-lt p2, v1, :cond_25

    goto :goto_3e

    .line 166
    :cond_25
    sget-object p2, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_UNIQ:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 167
    return v0

    .line 169
    :cond_2e
    sget-object p2, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_GROUP:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    const/4 p2, 0x3

    if-ne p0, p2, :cond_38

    .line 170
    return v0

    .line 172
    :cond_38
    sget p0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3f

    if-eq p1, p0, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    return v0

    .line 164
    :cond_3e
    :goto_3e
    return v0

    .line 173
    :catchall_3f
    move-exception p0

    .line 174
    return v0

    .line 156
    :cond_41
    :goto_41
    return v0
.end method

.method private static f(Ljava/lang/Object;I)F
    .registers 4

    .line 196
    instance-of v0, p0, [F

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 197
    return v1

    .line 199
    :cond_6
    check-cast p0, [F

    .line 200
    if-ltz p1, :cond_f

    array-length v0, p0

    if-ge p1, v0, :cond_f

    aget v1, p0, p1

    :cond_f
    return v1
.end method

.method private static i(Ljava/lang/Object;I)I
    .registers 4

    .line 204
    instance-of v0, p0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 205
    return v1

    .line 207
    :cond_6
    check-cast p0, [I

    .line 208
    if-ltz p1, :cond_f

    array-length v0, p0

    if-ge p1, v0, :cond_f

    aget v1, p0, p1

    :cond_f
    return v1
.end method

.method private static initFields(Ljava/lang/Object;)V
    .registers 3

    .line 213
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->fieldsInit:Z

    if-eqz v0, :cond_5

    .line 214
    return-void

    .line 216
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->fieldsInit:Z

    .line 218
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 219
    const-string v1, "CostGold"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_COST:Ljava/lang/reflect/Field;

    .line 220
    const-string v1, "ConstructionTime"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_TIME:Ljava/lang/reflect/Field;

    .line 221
    const-string v1, "Economy"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_ECON:Ljava/lang/reflect/Field;

    .line 222
    const-string v1, "IncomeProduction"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_INC:Ljava/lang/reflect/Field;

    .line 223
    const-string v1, "Name"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_NAME:Ljava/lang/reflect/Field;

    .line 224
    const-string v1, "GroupID"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_GROUP:Ljava/lang/reflect/Field;

    .line 225
    const-string v1, "UniqueCapitalBuilding"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_UNIQ:Ljava/lang/reflect/Field;

    .line 226
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->fieldsOk:Z
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_47

    .line 229
    goto :goto_4b

    .line 227
    :catchall_47
    move-exception p0

    .line 228
    const/4 p0, 0x0

    sput-boolean p0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->fieldsOk:Z

    .line 230
    :goto_4b
    return-void
.end method

.method public static onStrikeApplied(Ljava/lang/Object;)V
    .registers 15

    .line 74
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 75
    return-void

    .line 77
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 79
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    if-eqz v0, :cond_c

    .line 80
    return-void

    .line 82
    :cond_c
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    .line 84
    if-ltz v0, :cond_bf

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-lt v0, v1, :cond_18

    goto/16 :goto_bf

    .line 87
    :cond_18
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1f

    .line 89
    return-void

    .line 91
    :cond_1f
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v1, p0, :cond_28

    .line 92
    return-void

    .line 94
    :cond_28
    iget-object p0, v0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    .line 95
    if-eqz p0, :cond_be

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_35

    goto/16 :goto_be

    .line 98
    :cond_35
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    .line 99
    if-eqz v1, :cond_bd

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_41

    goto/16 :goto_bd

    .line 102
    :cond_41
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->initFields(Ljava/lang/Object;)V

    .line 103
    sget-boolean v4, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->fieldsOk:Z

    if-nez v4, :cond_4e

    .line 104
    return-void

    .line 107
    :cond_4e
    nop

    .line 108
    nop

    .line 109
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 110
    const/4 v5, -0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    :goto_57
    if-ge v3, v4, :cond_92

    .line 111
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 112
    instance-of v9, v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-nez v9, :cond_62

    .line 113
    goto :goto_8f

    .line 115
    :cond_62
    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    .line 116
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v9

    .line 117
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v8

    .line 118
    invoke-static {v1, v9, v8}, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->canDestroy(Ljava/util/List;II)Z

    move-result v10

    if-nez v10, :cond_73

    .line 119
    goto :goto_8f

    .line 121
    :cond_73
    invoke-static {v1, v9, v8}, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->value(Ljava/util/List;II)D

    move-result-wide v8

    .line 122
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe99999a0000000L    # 0.800000011920929

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    .line 123
    cmpl-double v10, v8, v6

    if-lez v10, :cond_8f

    .line 124
    nop

    .line 125
    move v5, v3

    move-wide v6, v8

    .line 110
    :cond_8f
    :goto_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 128
    :cond_92
    if-gez v5, :cond_9a

    .line 129
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgSkips:I

    add-int/2addr p0, v2

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgSkips:I

    .line 130
    return-void

    .line 132
    :cond_9a
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 133
    instance-of v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-nez v1, :cond_a3

    .line 134
    return-void

    .line 136
    :cond_a3
    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    .line 137
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    .line 138
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result p0

    .line 139
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgLastBuilding:I

    .line 140
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgLastLevel:I

    .line 141
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgStrikes:I

    add-int/2addr v3, v2

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->dbgStrikes:I

    .line 144
    invoke-virtual {v0, v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->destroyBuilding(II)V

    .line 146
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirStrikeRefresh;->afterStrike(Ljava/lang/Object;)V
    :try_end_bc
    .catchall {:try_start_0 .. :try_end_bc} :catchall_c0

    .line 149
    goto :goto_c1

    .line 100
    :cond_bd
    :goto_bd
    return-void

    .line 96
    :cond_be
    :goto_be
    return-void

    .line 85
    :cond_bf
    :goto_bf
    return-void

    .line 147
    :catchall_c0
    move-exception p0

    .line 150
    :goto_c1
    return-void
.end method

.method private static value(Ljava/util/List;II)D
    .registers 7

    .line 181
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :try_start_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 182
    if-nez p0, :cond_9

    .line 183
    return-wide v0

    .line 185
    :cond_9
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_COST:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->f(Ljava/lang/Object;I)F

    move-result p1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_TIME:Ljava/lang/reflect/Field;

    .line 186
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->i(Ljava/lang/Object;I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_ECON:Ljava/lang/reflect/Field;

    .line 187
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->f(Ljava/lang/Object;I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->F_INC:Ljava/lang/reflect/Field;

    .line 188
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirBuildingStrike;->f(Ljava/lang/Object;I)F

    move-result p0
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_48

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    float-to-double p0, p1

    .line 189
    const-wide/16 v2, 0x0

    cmpl-double p2, p0, v2

    if-lez p2, :cond_47

    move-wide v0, p0

    :cond_47
    return-wide v0

    .line 190
    :catchall_48
    move-exception p0

    .line 191
    return-wide v0
.end method
