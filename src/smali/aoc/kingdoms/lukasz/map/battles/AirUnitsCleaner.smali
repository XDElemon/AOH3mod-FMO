.class public final Laoc/kingdoms/lukasz/map/battles/AirUnitsCleaner;
.super Ljava/lang/Object;
.source "AirUnitsCleaner.java"


# static fields
.field private static final AIR_ID_MAX:I = 0xa

.field private static final AIR_ID_MIN:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static hasAirRegiment(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z
    .registers 5

    .line 129
    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-nez v1, :cond_8

    goto :goto_2c

    .line 132
    :cond_8
    move v1, v0

    :goto_9
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 133
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 134
    instance-of v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    if-eqz v3, :cond_28

    .line 135
    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 136
    const/4 v3, 0x7

    if-lt v2, v3, :cond_28

    const/16 v3, 0xa

    if-gt v2, v3, :cond_28

    .line 137
    const/4 p0, 0x1

    return p0

    .line 132
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 141
    :cond_2b
    return v0

    .line 130
    :cond_2c
    :goto_2c
    return v0
.end method

.method private static purgeAirArmies()I
    .registers 6

    .line 104
    nop

    .line 106
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3a

    .line 107
    if-nez v1, :cond_7

    .line 108
    return v0

    .line 110
    :cond_7
    move v2, v0

    :goto_8
    :try_start_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_36

    .line 111
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 112
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/province/Province;

    if-nez v4, :cond_17

    .line 113
    goto :goto_33

    .line 115
    :cond_17
    check-cast v3, Laoc/kingdoms/lukasz/map/province/Province;

    .line 116
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1f
    if-ltz v4, :cond_33

    .line 117
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirUnitsCleaner;->hasAirRegiment(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 118
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_37

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 116
    :cond_30
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    .line 110
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 124
    :cond_36
    goto :goto_3c

    .line 123
    :catchall_37
    move-exception v0

    move v0, v2

    goto :goto_3b

    :catchall_3a
    move-exception v1

    :goto_3b
    move v2, v0

    .line 125
    :goto_3c
    return v2
.end method

.method private static purgeUnlockedUnits()I
    .registers 7

    .line 50
    nop

    .line 52
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_42

    .line 53
    if-nez v1, :cond_7

    .line 54
    return v0

    .line 56
    :cond_7
    move v2, v0

    :goto_8
    :try_start_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 58
    if-nez v3, :cond_15

    .line 59
    goto :goto_3b

    .line 61
    :cond_15
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirUnitsCleaner;->unlockedUnitsOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 62
    if-nez v3, :cond_1c

    .line 63
    goto :goto_3b

    .line 65
    :cond_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_22
    if-ltz v4, :cond_3b

    .line 66
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirUnitsCleaner;->unitIdOf(Ljava/lang/Object;)I

    move-result v5

    .line 67
    const/4 v6, 0x7

    if-lt v5, v6, :cond_38

    const/16 v6, 0xa

    if-gt v5, v6, :cond_38

    .line 68
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_3f

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 65
    :cond_38
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 56
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 74
    :cond_3e
    goto :goto_44

    .line 73
    :catchall_3f
    move-exception v0

    move v0, v2

    goto :goto_43

    :catchall_42
    move-exception v1

    :goto_43
    move v2, v0

    .line 75
    :goto_44
    return v2
.end method

.method public static sanitize()I
    .registers 3

    .line 38
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnitsCleaner;->purgeUnlockedUnits()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnitsCleaner;->purgeAirArmies()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    if-lez v0, :cond_23

    .line 41
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAU clean n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_22

    .line 43
    goto :goto_23

    .line 42
    :catchall_22
    move-exception v1

    .line 45
    :cond_23
    :goto_23
    return v0
.end method

.method private static unitIdOf(Ljava/lang/Object;)I
    .registers 4

    .line 90
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 91
    return v0

    .line 94
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unitID"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 96
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1d

    :cond_1c
    return v0

    .line 97
    :catchall_1d
    move-exception p0

    .line 98
    return v0
.end method

.method private static unlockedUnitsOf(Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    .line 80
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unlockedUnits"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 83
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_1a

    check-cast p0, Ljava/util/List;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    move-object v0, p0

    :cond_1a
    return-object v0

    .line 84
    :catchall_1b
    move-exception p0

    .line 85
    return-object v0
.end method
