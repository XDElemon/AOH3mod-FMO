.class public final Laoc/kingdoms/lukasz/map/battles/AirDivStore;
.super Ljava/lang/Object;
.source "AirDivStore.java"


# static fields
.field private static final DIVS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static dbgPuts:I

.field public static dbgRemoves:I

.field public static dbgSweeps:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgPuts:I

    .line 48
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgRemoves:I

    .line 49
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgSweeps:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static byKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .registers 2

    .line 100
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    :goto_c
    return-object p0
.end method

.method public static clear()V
    .registers 1

    .line 170
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    return-void
.end method

.method public static getArmy(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .registers 2

    .line 78
    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    :goto_c
    return-object p0
.end method

.method public static keyAt(I)Ljava/lang/String;
    .registers 2

    .line 119
    if-ltz p0, :cond_14

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_b

    goto :goto_14

    .line 122
    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 120
    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static keyId(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;)I
    .registers 2

    .line 83
    if-eqz p1, :cond_c

    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    const/4 p0, -0x1

    :goto_d
    return p0
.end method

.method public static provOf(Ljava/lang/String;)I
    .registers 3

    .line 105
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 106
    return v0

    .line 108
    :cond_4
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 109
    if-nez p0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_13
    return v0
.end method

.method public static put(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    .registers 4

    .line 60
    if-nez p1, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 64
    if-nez v0, :cond_9

    .line 65
    return-object v0

    .line 67
    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 68
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_16
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    if-eqz p0, :cond_22

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    goto :goto_24

    :cond_22
    iget p0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    :goto_24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgPuts:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgPuts:I

    .line 73
    return-object v0
.end method

.method public static removeArmy(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;)V
    .registers 2

    .line 88
    if-nez p1, :cond_3

    .line 89
    return-void

    .line 91
    :cond_3
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 92
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgRemoves:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgRemoves:I

    .line 96
    :cond_1b
    return-void
.end method

.method public static size()I
    .registers 1

    .line 114
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static sweepGhosts()I
    .registers 7

    .line 138
    nop

    .line 140
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_44

    .line 141
    if-nez v1, :cond_7

    .line 142
    return v0

    .line 144
    :cond_7
    move v2, v0

    :goto_8
    :try_start_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_40

    .line 145
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/Province;

    .line 146
    if-nez v3, :cond_17

    .line 147
    goto :goto_3d

    .line 149
    :cond_17
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1d
    if-ltz v4, :cond_3d

    .line 150
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    .line 151
    if-eqz v5, :cond_3a

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v6, :cond_2a

    .line 152
    goto :goto_3a

    .line 154
    :cond_2a
    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const-string v6, "airhq_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 155
    goto :goto_3a

    .line 157
    :cond_35
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_41

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 149
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 144
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 163
    :cond_40
    goto :goto_46

    .line 161
    :catchall_41
    move-exception v0

    move v0, v2

    goto :goto_45

    :catchall_44
    move-exception v1

    :goto_45
    move v2, v0

    .line 164
    :goto_46
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgSweeps:I

    add-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgSweeps:I

    .line 165
    return v2
.end method
