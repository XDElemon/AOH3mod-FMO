.class public final Laoc/kingdoms/lukasz/map/battles/AirBuildPick;
.super Ljava/lang/Object;
.source "AirBuildPick.java"


# static fields
.field private static final PENDING:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->PENDING:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static clear()V
    .registers 1

    .line 104
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->PENDING:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    return-void
.end method

.method private static keyOf(II)Ljava/lang/String;
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static noteClick(I)V
    .registers 3

    .line 53
    nop

    .line 55
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 57
    goto :goto_8

    .line 56
    :catchall_6
    move-exception v0

    const/4 v0, 0x0

    .line 58
    :goto_8
    add-int/lit8 v1, p0, 0x7

    :try_start_a
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getBestAidForType(II)I

    move-result v1

    .line 59
    invoke-static {v0, p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->push(III)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    .line 61
    goto :goto_13

    .line 60
    :catchall_12
    move-exception p0

    .line 62
    :goto_13
    return-void
.end method

.method private static ordinalOf(Ljava/lang/Object;)I
    .registers 5

    .line 88
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_b

    .line 89
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0

    .line 92
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ordinal"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 94
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_29

    .line 95
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2a

    return p0

    .line 98
    :cond_29
    goto :goto_2b

    .line 97
    :catchall_2a
    move-exception p0

    .line 99
    :goto_2b
    const/4 p0, -0x1

    return p0
.end method

.method public static pendingCount()I
    .registers 3

    .line 109
    nop

    .line 110
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->PENDING:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    goto :goto_c

    .line 113
    :cond_1e
    return v1
.end method

.method public static push(III)V
    .registers 4

    .line 34
    if-ltz p2, :cond_28

    if-ltz p1, :cond_28

    const/4 v0, 0x3

    if-le p1, v0, :cond_8

    goto :goto_28

    .line 37
    :cond_8
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->keyOf(II)Ljava/lang/String;

    move-result-object p0

    .line 38
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->PENDING:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 39
    if-nez p1, :cond_20

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->PENDING:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void

    .line 35
    :cond_28
    :goto_28
    return-void
.end method

.method public static takeOrPick(ILjava/lang/Object;)I
    .registers 5

    .line 66
    nop

    .line 68
    :try_start_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->ordinalOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 70
    goto :goto_8

    .line 69
    :catchall_6
    move-exception p1

    const/4 p1, -0x1

    .line 71
    :goto_8
    if-ltz p1, :cond_3b

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->PENDING:Ljava/util/HashMap;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->keyOf(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 73
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 76
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->PENDING:Ljava/util/HashMap;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirBuildPick;->keyOf(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_38
    if-ltz v1, :cond_3b

    .line 79
    return v1

    .line 83
    :cond_3b
    add-int/lit8 p1, p1, 0x7

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getBestAidForType(II)I

    move-result p0

    return p0
.end method
