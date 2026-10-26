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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgPuts:I

    .line 47
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgRemoves:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static byKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .registers 2

    .line 98
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

    .line 125
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    return-void
.end method

.method public static getArmy(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .registers 2

    .line 76
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

    .line 117
    if-ltz p0, :cond_14

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_b

    goto :goto_14

    .line 120
    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 118
    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static keyId(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;)I
    .registers 2

    .line 81
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

    .line 103
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 104
    return v0

    .line 106
    :cond_4
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 107
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

    .line 58
    if-nez p1, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 62
    if-nez v0, :cond_9

    .line 63
    return-object v0

    .line 65
    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 66
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_16
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
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

    .line 70
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgPuts:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgPuts:I

    .line 71
    return-object v0
.end method

.method public static removeArmy(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;)V
    .registers 2

    .line 86
    if-nez p1, :cond_3

    .line 87
    return-void

    .line 89
    :cond_3
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 90
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->ORDER:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->PROV:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgRemoves:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->dbgRemoves:I

    .line 94
    :cond_1b
    return-void
.end method

.method public static size()I
    .registers 1

    .line 112
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->DIVS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
