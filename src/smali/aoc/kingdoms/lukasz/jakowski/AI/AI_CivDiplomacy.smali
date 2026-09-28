.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;
.super Ljava/lang/Object;
.source "AI_CivDiplomacy.java"


# instance fields
.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addPrepareForAlliance(I)Z
    .registers 7
    .param p1, "onCivID"    # I

    .line 54
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1b

    .line 55
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_18

    .line 56
    const/4 v1, 0x0

    return v1

    .line 54
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 60
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_FIND_ALLY_EXPIRE:I

    add-int/2addr v3, v4

    invoke-direct {v2, p1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return v1
.end method

.method public addPrepareForWar(I)Z
    .registers 8
    .param p1, "onCivID"    # I

    .line 26
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1b

    .line 27
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_18

    .line 28
    const/4 v1, 0x0

    return v1

    .line 26
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 32
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_TURNS_MIN:I

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_TURNS_RANDOM:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, p1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return v1
.end method

.method public clearPrepareForAlliance()V
    .registers 2

    .line 85
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    return-void
.end method

.method public clearPrepareForWar()V
    .registers 2

    .line 48
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    return-void
.end method

.method public isPreparingForAllianceWithCivID(I)Z
    .registers 5
    .param p1, "onCivID"    # I

    .line 75
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 76
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_17

    .line 77
    return v1

    .line 75
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 81
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public isPreparingForWarWithCivID(I)Z
    .registers 5
    .param p1, "onCivID"    # I

    .line 38
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 39
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_17

    .line 40
    return v1

    .line 38
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 44
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public removePreparingForAllianceWithCivID(I)V
    .registers 4
    .param p1, "onCivID"    # I

    .line 66
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 67
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v1, p1, :cond_1c

    .line 68
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    return-void

    .line 66
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 72
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method
