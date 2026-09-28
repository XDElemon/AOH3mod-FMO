.class public Laoc/kingdoms/lukasz/map/army/ArmyDivision;
.super Ljava/lang/Object;
.source "ArmyDivision.java"


# instance fields
.field public addedToBattle:Z

.field public armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

.field public civID:I

.field private fAverageSpeed:F

.field public fMaintenanceCost:F

.field public fMorale:F

.field public fMoraleDraw:I

.field public iArmy:I

.field public iArmyExtraPosX:I

.field public iArmyOfProvinceID:I

.field public iArmyRegimentSize:I

.field public iArmyWidth:I

.field public iShiftX:I

.field public iShiftX_Scaled:I

.field public iShiftY:I

.field public iShiftY_Scaled:I

.field public iStack:B

.field public inBattle:Z

.field public inMovement:Z

.field public inRetreat:Z

.field public key:Ljava/lang/String;

.field public lArmyRegiment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public provinceID:I

.field public sArmy:Ljava/lang/String;

.field public updateMorale:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    .line 39
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 41
    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 42
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    .line 44
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 47
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 230
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    .line 330
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    .line 65
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .registers 8
    .param p1, "nCivID"    # I
    .param p2, "nProvinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p3, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 38
    const/4 v2, 0x0

    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    .line 39
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 41
    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 42
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    .line 44
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 47
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 230
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    .line 330
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    .line 84
    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 85
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 86
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyOfProvinceID:I

    .line 88
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sortArmyRegiment(Ljava/util/List;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 94
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 96
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 97
    return-void
.end method

.method public constructor <init>(IILjava/util/List;Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    .registers 8
    .param p1, "nCivID"    # I
    .param p2, "nProvinceID"    # I
    .param p4, "armyGeneral"    # Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;",
            "Laoc/kingdoms/lukasz/map/army/ArmyGeneral;",
            ")V"
        }
    .end annotation

    .line 99
    .local p3, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    .line 39
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 41
    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 42
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    .line 44
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 47
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 230
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    .line 330
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    .line 100
    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 101
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 102
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyOfProvinceID:I

    .line 104
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sortArmyRegiment(Ljava/util/List;)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 109
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 111
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 11
    .param p1, "nCivID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p2, "tArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 38
    const/4 v2, 0x0

    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    .line 39
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 41
    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 42
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    .line 44
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 47
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 230
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    .line 330
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    .line 69
    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_35
    if-ge v2, v3, :cond_60

    .line 73
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_38
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    if-ge v4, v5, :cond_5d

    .line 74
    new-instance v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iUnitID:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iArmyID:I

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 72
    .end local v4    # "j":I
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 78
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_60
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sortArmyRegiment(Ljava/util/List;)V

    .line 80
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;)V
    .registers 7
    .param p1, "armyDivision"    # Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    .line 39
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 41
    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 42
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    .line 44
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 47
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 230
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    .line 330
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    .line 115
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->c:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 116
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->p:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 117
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->p:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyOfProvinceID:I

    .line 119
    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->k:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 121
    iget-boolean v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->t:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 123
    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->g:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    iget-object v2, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "jSize":I
    :goto_4d
    if-ge v1, v2, :cond_62

    .line 128
    new-instance v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v4, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->r:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 131
    .end local v1    # "j":I
    .end local v2    # "jSize":I
    :cond_62
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sortArmyRegiment(Ljava/util/List;)V

    .line 133
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 134
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 135
    return-void
.end method


# virtual methods
.method public final addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V
    .registers 5
    .param p1, "nArmyRegiment"    # Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "tempArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v1, v2, :cond_18

    .line 197
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 199
    .end local v1    # "i":I
    :cond_18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sortArmyRegiment(Ljava/util/List;)V

    .line 202
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 203
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 204
    return-void
.end method

.method public final defaultShiftX()I
    .registers 2

    .line 390
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final defaultShiftY()I
    .registers 2

    .line 394
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .registers 6

    .line 503
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>()V

    .line 505
    .local v0, "out":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v1, v2, :cond_a0

    .line 506
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v3, 0x1

    if-nez v2, :cond_28

    .line 507
    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    goto/16 :goto_9c

    .line 509
    :cond_28
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v2, v3, :cond_44

    .line 510
    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    goto :goto_9c

    .line 513
    :cond_44
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-eqz v2, :cond_70

    .line 514
    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    goto :goto_9c

    .line 516
    :cond_70
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-eqz v2, :cond_97

    goto :goto_9c

    .line 520
    :cond_97
    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 505
    :goto_9c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 525
    .end local v1    # "i":I
    :cond_a0
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    .line 527
    return-object v0
.end method

.method public final getArmyMovementSpeed()F
    .registers 5

    .line 398
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_ARMY_MOVEMENT_SPEED_PER_POINT:F

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getCivilizationRanking_ArmyScore()F
    .registers 8

    .line 404
    const/4 v0, 0x0

    .line 407
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_8
    if-ge v1, v2, :cond_65

    .line 408
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_MAX_PER_REGIMENT:F

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v3, v3, v4

    sget v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->bestArmyAttackDefense:F
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_66

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 412
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_65
    goto :goto_67

    .line 410
    :catch_66
    move-exception v1

    .line 414
    :goto_67
    return v0
.end method

.method public final getNumberOfSettlers()I
    .registers 5

    .line 443
    const/4 v0, 0x0

    .line 445
    .local v0, "out":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_5
    if-ltz v1, :cond_3b

    .line 446
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-eqz v2, :cond_38

    .line 447
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v0, v2

    .line 445
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 451
    .end local v1    # "i":I
    :cond_3b
    return v0
.end method

.method public final getPercOfTotalUnits()F
    .registers 4

    .line 531
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getReinforceCost(IIIF)F
    .registers 7
    .param p1, "nReinforce"    # I
    .param p2, "uID"    # I
    .param p3, "aID"    # I
    .param p4, "maxRegimentSize"    # F

    .line 296
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Cost:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v1, p4

    mul-float v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_ARMY_COST_MODIFIER:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final getSiegeProgressPerDay()F
    .registers 6

    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v1, v2, :cond_4b

    .line 423
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeProgress:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 426
    .end local v1    # "i":I
    :cond_4b
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_SIEGE_EFFECTIVENESS_PER_POINT:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    return v1
.end method

.method public final removeAllSettlers()V
    .registers 5

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "tRemoved":I
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_5
    if-ltz v1, :cond_3e

    .line 458
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-eqz v2, :cond_3b

    .line 459
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 460
    add-int/lit8 v0, v0, 0x1

    .line 462
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_MAX_SETTLERS:I

    if-lt v0, v2, :cond_3b

    .line 463
    goto :goto_3e

    .line 457
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 468
    .end local v1    # "i":I
    :cond_3e
    :goto_3e
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 470
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 471
    return-void
.end method

.method public final removeRegiment(I)V
    .registers 3
    .param p1, "i"    # I

    .line 169
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 173
    return-void
.end method

.method public final removeRegiment(Ljava/lang/String;ZI)Z
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bManpowerRecoveryFromADisbandedArmy"    # Z
    .param p3, "disbandCivID"    # I

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_59

    .line 177
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 178
    if-eqz p2, :cond_41

    .line 179
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-wide v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v5, v5

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerRecoveryFromADisbandedArmy(I)F

    move-result v6

    mul-float v5, v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 182
    :cond_41
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 185
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 186
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 187
    const/4 v1, 0x1

    return v1

    .line 176
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "i":I
    :cond_59
    return v2
.end method

.method public final removeRegiment_ScenarioEditor(II)V
    .registers 5
    .param p1, "unitTypeID"    # I
    .param p2, "armyID"    # I

    .line 476
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_33

    .line 477
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v1, p1, :cond_30

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v1, p2, :cond_30

    .line 478
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 482
    return-void

    .line 476
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 485
    .end local v0    # "i":I
    :cond_33
    return-void
.end method

.method public final setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    .registers 4
    .param p1, "general"    # Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 490
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 492
    if-nez p1, :cond_12

    .line 493
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->addArmyKey(Ljava/lang/String;)V

    goto :goto_1f

    .line 496
    :cond_12
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->removeArmyKey(Ljava/lang/String;)V

    .line 498
    :goto_1f
    return-void
.end method

.method public final setInMovement(Z)V
    .registers 3
    .param p1, "inMovement"    # Z

    .line 430
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 432
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 433
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    goto :goto_a

    .line 436
    :cond_8
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 438
    :goto_a
    return-void
.end method

.method public final sortArmyRegiment(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ae

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "addID":I
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_11
    if-ge v1, v2, :cond_9e

    .line 146
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ge v3, v4, :cond_3b

    .line 147
    move v0, v1

    goto :goto_9a

    .line 149
    :cond_3b
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v3, v4, :cond_9a

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ge v3, v4, :cond_75

    .line 151
    move v0, v1

    goto :goto_9a

    .line 153
    :cond_75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v3, v4, :cond_9a

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ge v3, v4, :cond_9a

    .line 155
    move v0, v1

    .line 145
    :cond_9a
    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    .line 161
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_9e
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    .end local v0    # "addID":I
    goto/16 :goto_5

    .line 165
    :cond_ae
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    .line 166
    return-void
.end method

.method public final updateArmy(Z)V
    .registers 7
    .param p1, "updateShift"    # Z

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 313
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v1, v2, :cond_46

    .line 316
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    .line 317
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MovementSpeed:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 320
    .end local v1    # "i":I
    :cond_46
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 322
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    .line 324
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMaintenanceCost()V

    .line 327
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;-><init>(Ljava/lang/String;Laoc/kingdoms/lukasz/map/army/ArmyDivision;Z)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTask_ArmyWidth(Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;)V

    .line 328
    return-void
.end method

.method public final updateArmyWidth_Just(Z)V
    .registers 9
    .param p1, "updateShift"    # Z

    .line 334
    const/16 v0, 0x9

    :try_start_2
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v1, :cond_3c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_ARMIES:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_3c

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v1

    if-nez v1, :cond_3c

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_3c

    .line 343
    :cond_35
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_ARMIES:Ljava/lang/String;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    goto :goto_7a

    .line 335
    :cond_3c
    :goto_3c
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_f0

    const-string v2, ""

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_64

    .line 336
    :try_start_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/16 v3, 0xa

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    goto :goto_7a

    .line 339
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    .line 346
    :goto_7a
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 348
    .local v1, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 349
    iget-byte v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    if-ge v2, v0, :cond_96

    .line 350
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmyWidth_Just(Z)V

    .line 351
    return-void

    .line 354
    :cond_96
    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    .line 356
    .local v2, "tX":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_b1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    goto :goto_b3

    :cond_b1
    const-string v4, "999"

    :goto_b3
    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 357
    iget-byte v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    if-ge v3, v0, :cond_c6

    .line 358
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmyWidth_Just(Z)V

    .line 359
    return-void

    .line 362
    :cond_c6
    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    .line 364
    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    div-int/2addr v3, v5

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyExtraPosX:I

    .line 366
    if-eqz p1, :cond_ef

    .line 367
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftX()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    .line 368
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftY()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    .line 370
    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 371
    iput v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    .line 373
    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_ef} :catch_f0

    .line 376
    :cond_ef
    return-void

    .line 377
    .end local v1    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .end local v2    # "tX":I
    :catch_f0
    move-exception v1

    .line 378
    .local v1, "ex":Ljava/lang/Exception;
    iget-byte v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iStack:B

    if-ge v2, v0, :cond_fe

    .line 379
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmyWidth_Just(Z)V

    .line 380
    return-void

    .line 383
    :cond_fe
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 386
    .end local v1    # "ex":Ljava/lang/Exception;
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    .line 387
    return-void
.end method

.method public final updateMaintenanceCost()V
    .registers 5

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v1, :cond_34

    .line 222
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MaintenanceCost:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 225
    .end local v0    # "i":I
    :cond_34
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 226
    return-void
.end method

.method public final updateMorale()V
    .registers 4

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 250
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_1b

    .line 251
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 250
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 254
    .end local v0    # "i":I
    :cond_1b
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    .line 256
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->ARMY_LEFT_IMAGES:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    .line 257
    return-void
.end method

.method public final updateMorale_Regiments(FF)V
    .registers 6
    .param p1, "maxMorale"    # F
    .param p2, "moraleRecovery"    # F

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v1, :cond_35

    .line 236
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_32

    .line 237
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-float/2addr v2, p2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    .line 235
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 242
    .end local v0    # "i":I
    :cond_35
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale:Z

    if-eqz v0, :cond_3c

    .line 243
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 245
    :cond_3c
    return-void
.end method

.method public final updateRegiment(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "tempArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_a
    if-ge v1, v2, :cond_18

    .line 209
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 211
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_18
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sortArmyRegiment(Ljava/util/List;)V

    .line 213
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 214
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    .line 215
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateSpeed()V

    .line 216
    return-void
.end method

.method public final updateReinforce(IF)F
    .registers 11
    .param p1, "maxReinforce"    # I
    .param p2, "maxRegimentSize"    # F

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, "reinforcedManpower":F
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v2, v2, v3

    if-ge v1, v2, :cond_ef

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v1, v2, :cond_eb

    .line 266
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    if-ge v2, v3, :cond_e7

    .line 267
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v2, p1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    if-le v2, v3, :cond_a0

    .line 268
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v2, v3

    .line 270
    .local v2, "nReinforce":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {p0, v2, v3, v4, p2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getReinforceCost(IIIF)F

    move-result v3

    add-float/2addr v0, v3

    .line 272
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v4, v2

    iput v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 273
    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-wide v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    iput-wide v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    .line 274
    .end local v2    # "nReinforce":I
    goto :goto_d5

    .line 276
    :cond_a0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {p0, p1, v2, v3, p2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getReinforceCost(IIIF)F

    move-result v2

    add-float/2addr v0, v2

    .line 278
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v3, p1

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 279
    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    iput-wide v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    .line 282
    :goto_d5
    int-to-double v2, p1

    iget v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int p1, v2

    .line 283
    const/4 v2, 0x1

    if-gt p1, v2, :cond_e7

    .line 284
    goto :goto_eb

    .line 265
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    .line 289
    .end local v1    # "i":I
    :cond_eb
    :goto_eb
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    .line 292
    :cond_ef
    return v0
.end method

.method public final updateSpeed()V
    .registers 5

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v1, :cond_34

    .line 305
    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MovementSpeed:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 308
    .end local v0    # "i":I
    :cond_34
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fAverageSpeed:F

    .line 309
    return-void
.end method
