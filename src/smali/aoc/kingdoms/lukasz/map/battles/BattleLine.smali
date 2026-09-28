.class public Laoc/kingdoms/lukasz/map/battles/BattleLine;
.super Ljava/lang/Object;
.source "BattleLine.java"


# instance fields
.field public armyDivisionsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public armyExtraPosX:I

.field public armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

.field public defeated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public diceRollGeneral:I

.field public fMorale:F

.field public firstLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public iCasualties:I

.field public iCivID:I

.field public iLastAttackRoundID:I

.field public iRetreated:I

.field public inReserve:I

.field public lCasualties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lDefeatedArmyDivisionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numOfUnits:I

.field public numOfUnitsOnBattlefield:I

.field public reserveFirstLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public reserveSecondLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public secondLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public textW:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 23
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 24
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    .line 30
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    .line 34
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IILjava/lang/String;)V
    .registers 22
    .param p2, "maxWidth"    # I
    .param p3, "sideArmyBegin"    # I
    .param p4, "battleKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    .local p1, "lineArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v3, 0x0

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 23
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 24
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    .line 25
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    .line 26
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 28
    const/4 v4, 0x0

    iput v4, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    .line 30
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    .line 32
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    .line 34
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    .line 35
    const/4 v4, 0x0

    iput-object v4, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 39
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    .line 43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    .line 44
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    .line 45
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    .line 544
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    .line 136
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_60
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v5, v6, :cond_73

    .line 137
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 141
    .end local v5    # "i":I
    :cond_73
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 142
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v4, "tempLine0":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v5, "tempLine1":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v6, "tempLine2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "jSize":I
    :goto_8b
    if-ge v7, v8, :cond_18e

    .line 149
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    move-object/from16 v10, p4

    invoke-virtual {v0, v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCiv(ILjava/lang/String;)V

    .line 151
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9b
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v9, v11, :cond_18a

    .line 152
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v11, :cond_15e

    .line 153
    iget v11, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v11, v12

    iput v11, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 155
    sget-object v11, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    packed-switch v11, :pswitch_data_382

    .line 163
    new-instance v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    goto :goto_186

    .line 160
    :pswitch_110
    new-instance v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_186

    .line 157
    :pswitch_137
    new-instance v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    goto :goto_186

    .line 168
    :cond_15e
    iget-object v11, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    new-instance v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v12, v13, v14, v15}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_186
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9b

    .line 148
    .end local v9    # "i":I
    :cond_18a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8b

    :cond_18e
    move-object/from16 v10, p4

    .line 173
    .end local v7    # "j":I
    .end local v8    # "jSize":I
    const/4 v7, 0x0

    .line 174
    .local v7, "firstAdded":I
    int-to-float v8, v2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_SIDES_RATIO:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    sub-int v8, v2, v8

    move/from16 v9, p3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 176
    .local v8, "sideArmyWidth":I
    :goto_1a1
    if-ge v7, v2, :cond_20a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1af

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_20a

    .line 177
    :cond_1af
    if-lt v7, v8, :cond_1b3

    const/4 v11, 0x1

    goto :goto_1b4

    :cond_1b3
    const/4 v11, 0x0

    .line 179
    .local v11, "sideArmy":Z
    :goto_1b4
    if-nez v11, :cond_1d2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1d2

    .line 180
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "firstAdded":I
    .local v14, "firstAdded":I
    aget v7, v13, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v7, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v7, v14

    goto :goto_209

    .line 183
    .end local v14    # "firstAdded":I
    .restart local v7    # "firstAdded":I
    :cond_1d2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1ee

    .line 184
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "firstAdded":I
    .restart local v14    # "firstAdded":I
    aget v7, v13, v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v7, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v7, v14

    goto :goto_209

    .line 187
    .end local v14    # "firstAdded":I
    .restart local v7    # "firstAdded":I
    :cond_1ee
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_209

    .line 188
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "firstAdded":I
    .restart local v14    # "firstAdded":I
    aget v7, v13, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v7, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v7, v14

    .line 191
    .end local v11    # "sideArmy":Z
    .end local v14    # "firstAdded":I
    .restart local v7    # "firstAdded":I
    :cond_209
    :goto_209
    goto :goto_1a1

    .line 193
    :cond_20a
    const/4 v11, 0x0

    .line 195
    .local v11, "secondAdded":I
    :cond_20b
    :goto_20b
    if-ge v11, v2, :cond_24b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_24b

    .line 196
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_20b

    .line 197
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v13, v13, v11

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_235

    .line 198
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v13, v13, v11

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v13, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_247

    .line 201
    :cond_235
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "secondAdded":I
    .local v14, "secondAdded":I
    aget v11, v13, v11

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v11, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v11, v14

    .line 204
    .end local v14    # "secondAdded":I
    .restart local v11    # "secondAdded":I
    :goto_247
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_20b

    .line 216
    :cond_24b
    :goto_24b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_260

    .line 217
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_24b

    .line 221
    :cond_260
    :goto_260
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_275

    .line 222
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_260

    .line 226
    :cond_275
    :goto_275
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_28a

    .line 227
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_275

    .line 231
    :cond_28a
    const/4 v12, 0x1

    .line 233
    .local v12, "tRegID":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_28c
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v13, v14, :cond_2c8

    .line 234
    iget-object v14, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v15, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v15, v15, v13

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2c4

    .line 235
    iget-object v14, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v15, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v15, v15, v13

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v15, v12, 0x1

    .end local v12    # "tRegID":I
    .local v15, "tRegID":I
    iput v12, v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    .line 236
    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v16, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v3, v16, v13

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v3

    iput v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    move v12, v15

    .line 233
    .end local v15    # "tRegID":I
    .restart local v12    # "tRegID":I
    :cond_2c4
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_28c

    .line 240
    .end local v13    # "i":I
    :cond_2c8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c9
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v3, v13, :cond_304

    .line 241
    iget-object v13, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v14, v14, v3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_301

    .line 242
    iget-object v13, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v14, v14, v3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "tRegID":I
    .local v14, "tRegID":I
    iput v12, v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    .line 243
    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v15, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v15, v15, v3

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v13

    iput v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    move v12, v14

    .line 240
    .end local v14    # "tRegID":I
    .restart local v12    # "tRegID":I
    :cond_301
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c9

    .line 247
    .end local v3    # "i":I
    :cond_304
    const/4 v3, 0x0

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 248
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget-object v13, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "nReserveSize":I
    :goto_30e
    if-ge v3, v13, :cond_331

    .line 249
    iget-object v14, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v15, v12, 0x1

    .end local v12    # "tRegID":I
    .restart local v15    # "tRegID":I
    iput v12, v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    .line 250
    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v14

    iput v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 248
    add-int/lit8 v3, v3, 0x1

    move v12, v15

    goto :goto_30e

    .line 253
    .end local v3    # "i":I
    .end local v13    # "nReserveSize":I
    .end local v15    # "tRegID":I
    .restart local v12    # "tRegID":I
    :cond_331
    const/4 v3, 0x0

    .restart local v3    # "i":I
    iget-object v13, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    .restart local v13    # "nReserveSize":I
    :goto_338
    if-ge v3, v13, :cond_35b

    .line 254
    iget-object v14, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v15, v12, 0x1

    .end local v12    # "tRegID":I
    .restart local v15    # "tRegID":I
    iput v12, v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    .line 255
    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v14

    iput v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 253
    add-int/lit8 v3, v3, 0x1

    move v12, v15

    goto :goto_338

    .line 258
    .end local v3    # "i":I
    .end local v13    # "nReserveSize":I
    .end local v15    # "tRegID":I
    .restart local v12    # "tRegID":I
    :cond_35b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v13, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAverageMoraleOnBattleField()V

    .line 261
    return-void

    nop

    :pswitch_data_382
    .packed-switch 0x0
        :pswitch_137
        :pswitch_110
    .end packed-switch
.end method

.method private final getAttackCasualties(IIFFI)I
    .registers 10
    .param p1, "iRoundID"    # I
    .param p2, "generalExtraCasualties"    # I
    .param p3, "fArmyPercLeft"    # F
    .param p4, "fAttackDefense"    # F
    .param p5, "iCivID"    # I

    .line 677
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_CASUALTIES:I

    add-int/2addr v0, p2

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v1, p3, p4

    int-to-float v2, p1

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 679
    invoke-static {p5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 677
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final addArmyDivisionKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 547
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 548
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 549
    return-void

    .line 547
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 553
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    return-void
.end method

.method public final addCasualties(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "iCasualties"    # I

    .line 1013
    if-lez p2, :cond_34

    .line 1014
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_34

    .line 1015
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_31

    .line 1016
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1017
    return-void

    .line 1014
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1021
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

.method public addCiv(ILjava/lang/String;)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "battleKey"    # Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 374
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_18

    .line 375
    return-void

    .line 373
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 379
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInBattles(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public final addDefeatedArmyDivisionKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1054
    if-eqz p1, :cond_23

    .line 1055
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1e

    .line 1056
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1057
    return-void

    .line 1055
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1061
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_23
    return-void
.end method

.method public final buildArmyDivisionsKeys()V
    .registers 3

    .line 1026
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1028
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_27

    .line 1029
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1030
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    .line 1028
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1034
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2f
    if-ltz v0, :cond_49

    .line 1035
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 1036
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    .line 1034
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 1040
    .end local v0    # "i":I
    :cond_49
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_51
    if-ltz v0, :cond_63

    .line 1041
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    .line 1040
    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    .line 1044
    .end local v0    # "i":I
    :cond_63
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_6b
    if-ltz v0, :cond_7d

    .line 1045
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    .line 1044
    add-int/lit8 v0, v0, -0x1

    goto :goto_6b

    .line 1048
    .end local v0    # "i":I
    :cond_7d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_85
    if-ltz v0, :cond_97

    .line 1049
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    .line 1048
    add-int/lit8 v0, v0, -0x1

    goto :goto_85

    .line 1051
    .end local v0    # "i":I
    :cond_97
    return-void
.end method

.method public final buildCasualties()V
    .registers 4

    .line 981
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 983
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1c

    .line 984
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 987
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_24
    if-ltz v0, :cond_48

    .line 988
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 989
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    .line 987
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 993
    .end local v0    # "i":I
    :cond_48
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_50
    if-ltz v0, :cond_74

    .line 994
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 995
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    .line 993
    :cond_71
    add-int/lit8 v0, v0, -0x1

    goto :goto_50

    .line 999
    .end local v0    # "i":I
    :cond_74
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_7c
    if-ltz v0, :cond_98

    .line 1000
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    .line 999
    add-int/lit8 v0, v0, -0x1

    goto :goto_7c

    .line 1003
    .end local v0    # "i":I
    :cond_98
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_a0
    if-ltz v0, :cond_bc

    .line 1004
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    .line 1003
    add-int/lit8 v0, v0, -0x1

    goto :goto_a0

    .line 1007
    .end local v0    # "i":I
    :cond_bc
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_c4
    if-ltz v0, :cond_e0

    .line 1008
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    .line 1007
    add-int/lit8 v0, v0, -0x1

    goto :goto_c4

    .line 1010
    .end local v0    # "i":I
    :cond_e0
    return-void
.end method

.method public getBattleArmiesKeys()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "armyKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_37

    .line 99
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 100
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 104
    .end local v1    # "i":I
    :cond_37
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3f
    if-ltz v1, :cond_69

    .line 105
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_66

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 106
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    .line 110
    .end local v1    # "i":I
    :cond_69
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_71
    if-ltz v1, :cond_93

    .line 111
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 112
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_90
    add-int/lit8 v1, v1, -0x1

    goto :goto_71

    .line 116
    .end local v1    # "i":I
    :cond_93
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_9b
    if-ltz v1, :cond_bd

    .line 117
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 118
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_ba
    add-int/lit8 v1, v1, -0x1

    goto :goto_9b

    .line 122
    .end local v1    # "i":I
    :cond_bd
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_c5
    if-ltz v1, :cond_e7

    .line 123
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    .line 124
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_e4
    add-int/lit8 v1, v1, -0x1

    goto :goto_c5

    .line 128
    .end local v1    # "i":I
    :cond_e7
    return-object v0
.end method

.method public getCivsRegimentsLimit()I
    .registers 4

    .line 1120
    const/4 v0, 0x0

    .line 1122
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_21

    .line 1123
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    add-int/2addr v0, v2

    .line 1122
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1126
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method public isInBattleArmy(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1067
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 1068
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1069
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1070
    return v1

    .line 1067
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1075
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_2d
    if-ltz v0, :cond_4b

    .line 1076
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 1077
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1078
    return v1

    .line 1075
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 1083
    .end local v0    # "i":I
    :cond_4b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_52
    if-ltz v0, :cond_68

    .line 1084
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1085
    return v1

    .line 1083
    :cond_65
    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    .line 1089
    .end local v0    # "i":I
    :cond_68
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_6f
    if-ltz v0, :cond_85

    .line 1090
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1091
    return v1

    .line 1089
    :cond_82
    add-int/lit8 v0, v0, -0x1

    goto :goto_6f

    .line 1095
    .end local v0    # "i":I
    :cond_85
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_8c
    if-ltz v0, :cond_a2

    .line 1096
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_a3

    if-eqz v2, :cond_9f

    .line 1097
    return v1

    .line 1095
    :cond_9f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8c

    .line 1102
    .end local v0    # "i":I
    :cond_a2
    goto :goto_a7

    .line 1100
    :catch_a3
    move-exception v0

    .line 1101
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1104
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a7
    const/4 v0, 0x0

    return v0
.end method

.method public isInBattleCiv(I)Z
    .registers 5
    .param p1, "iCivID"    # I

    .line 1110
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1111
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 1112
    return v1

    .line 1110
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1116
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V
    .registers 12
    .param p1, "armyDivision"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .param p2, "iMaxBattleWidth"    # I
    .param p3, "battleKey"    # Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "tempLine0":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v1, "tempLine2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v2, p3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCiv(ILjava/lang/String;)V

    .line 269
    const/4 v2, 0x1

    iput-boolean v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 270
    iget-boolean v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v2, :cond_31

    .line 271
    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v2, :cond_24

    .line 272
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-boolean v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_31

    .line 275
    :cond_24
    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-boolean v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V

    .line 279
    :cond_31
    :goto_31
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v2, :cond_3d

    .line 280
    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_3d

    .line 281
    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 285
    :cond_3d
    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_4a

    .line 286
    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_JOIN_BATTLE:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    .line 289
    :cond_4a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4b
    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v2, v3, :cond_a2

    .line 290
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 292
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    packed-switch v3, :pswitch_data_228

    .line 297
    new-instance v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v6, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 294
    :pswitch_8a
    new-instance v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v6, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    nop

    .line 289
    :goto_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 302
    .end local v2    # "i":I
    :cond_a2
    const/4 v2, 0x1

    .line 304
    .local v2, "tRegID":I
    :goto_a3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_d3

    .line 305
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tRegID":I
    .local v5, "tRegID":I
    iput v2, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    .line 306
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 308
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v5

    goto :goto_a3

    .line 312
    .end local v5    # "tRegID":I
    .restart local v2    # "tRegID":I
    :cond_d3
    :goto_d3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_102

    .line 313
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tRegID":I
    .restart local v5    # "tRegID":I
    iput v2, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    .line 314
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 316
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v5

    goto :goto_d3

    .line 321
    .end local v5    # "tRegID":I
    .restart local v2    # "tRegID":I
    :cond_102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_103
    if-ge v3, p2, :cond_159

    :try_start_105
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_159

    .line 322
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_151

    .line 323
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 325
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 326
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_151} :catch_154

    .line 321
    :cond_151
    add-int/lit8 v3, v3, 0x1

    goto :goto_103

    .line 329
    .end local v3    # "i":I
    :catch_154
    move-exception v3

    .line 330
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_15a

    .line 331
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_159
    nop

    .line 334
    :goto_15a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15b
    if-ge v3, p2, :cond_1ae

    :try_start_15d
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1ae

    .line 335
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a9

    .line 336
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 338
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 339
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 334
    :cond_1a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_15b

    .line 351
    .end local v3    # "i":I
    :catch_1ac
    move-exception v3

    goto :goto_200

    .line 343
    :cond_1ae
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1af
    if-ge v3, p2, :cond_204

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_204

    .line 344
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1fd

    .line 345
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 347
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 348
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_1fd} :catch_1ac

    .line 343
    :cond_1fd
    add-int/lit8 v3, v3, 0x1

    goto :goto_1af

    .line 352
    .local v3, "ex":Ljava/lang/Exception;
    :goto_200
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_205

    .line 353
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_204
    nop

    .line 355
    :goto_205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    const/16 v5, 0xa

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    .line 356
    return-void

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_8a
    .end packed-switch
.end method

.method public removeCivsInBattle(Ljava/lang/String;)V
    .registers 5
    .param p1, "battleKey"    # Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_7
    if-ge v0, v1, :cond_1f

    .line 404
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeInBattles(Ljava/lang/String;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 406
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1f
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;

    .line 359
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->text:Ljava/lang/String;

    .line 361
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 363
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 364
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    .line 366
    .local v1, "tX":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1a

    move-object v3, p1

    goto :goto_1c

    :cond_1a
    const-string v3, "999"

    :goto_1c
    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 367
    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    .line 369
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    div-int/2addr v2, v4

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyExtraPosX:I

    .line 370
    return-void
.end method

.method public updateAllArmiesNotInBattle(I)V
    .registers 6
    .param p1, "provinceID"    # I

    .line 387
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getBattleArmiesKeys()Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, "armyKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_27

    .line 391
    :try_start_c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    .line 393
    .local v2, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v2, :cond_1f

    .line 394
    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    .line 398
    .end local v2    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_1f
    goto :goto_24

    .line 396
    :catch_20
    move-exception v2

    .line 397
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 389
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 400
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public final updateAttack(Laoc/kingdoms/lukasz/map/battles/BattleLine;II)V
    .registers 16
    .param p1, "nAttacking"    # Laoc/kingdoms/lukasz/map/battles/BattleLine;
    .param p2, "iRoundID"    # I
    .param p3, "iDefense"    # I

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1d

    .line 576
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 577
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 575
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 581
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x0

    .line 583
    .local v0, "generalExtraCasualties":I
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v1, :cond_44

    .line 584
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v1, :cond_39

    .line 585
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_44

    .line 588
    :cond_39
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 592
    :cond_44
    :goto_44
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_46
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v7, v1, :cond_2c0

    .line 593
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2bc

    .line 594
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v2, v2

    div-float v8, v1, v2

    .line 596
    .local v8, "fArmyPercLeft":F
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_119

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_119

    .line 597
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 598
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 599
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    div-float v5, v1, v2

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 600
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    .line 597
    move-object v1, p0

    move v2, p2

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v1

    add-int/2addr v10, v1

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 603
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto/16 :goto_2bc

    .line 606
    :cond_119
    const/4 v1, 0x1

    move v9, v1

    .local v9, "j":I
    :goto_11b
    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    add-int/lit8 v1, v1, 0x1

    if-ge v9, v1, :cond_2bc

    .line 607
    add-int v1, v7, v9

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_202

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_202

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_202

    .line 608
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 609
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v4, v7, v9

    .line 610
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    div-float v5, v1, v2

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 611
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    .line 608
    move-object v1, p0

    move v2, p2

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v1

    add-int/2addr v11, v1

    iput v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 614
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    .line 615
    goto/16 :goto_2bc

    .line 618
    :cond_202
    sub-int v1, v7, v9

    if-ltz v1, :cond_2b8

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b8

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_2b8

    .line 619
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 620
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v4, v7, v9

    .line 621
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    div-float v5, v1, v2

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 622
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    .line 619
    move-object v1, p0

    move v2, p2

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v1

    add-int/2addr v11, v1

    iput v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 625
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    .line 626
    goto :goto_2bc

    .line 606
    :cond_2b8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_11b

    .line 592
    .end local v8    # "fArmyPercLeft":F
    .end local v9    # "j":I
    :cond_2bc
    :goto_2bc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_46

    .line 634
    .end local v7    # "i":I
    :cond_2c0
    const/4 v1, 0x0

    move v7, v1

    .restart local v7    # "i":I
    :goto_2c2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v7, v1, :cond_555

    .line 635
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_551

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_551

    .line 636
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v2, v2

    div-float v8, v1, v2

    .line 638
    .restart local v8    # "fArmyPercLeft":F
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3ae

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_3ae

    .line 639
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 640
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 641
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    div-float v5, v1, v2

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 642
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    .line 639
    move-object v1, p0

    move v2, p2

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v1

    add-int/2addr v10, v1

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 645
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto/16 :goto_551

    .line 648
    :cond_3ae
    const/4 v1, 0x1

    move v9, v1

    .restart local v9    # "j":I
    :goto_3b0
    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    add-int/lit8 v1, v1, 0x1

    if-ge v9, v1, :cond_551

    .line 649
    add-int v1, v7, v9

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_497

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_497

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_497

    .line 650
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 651
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v4, v7, v9

    .line 652
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    div-float v5, v1, v2

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 653
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    .line 650
    move-object v1, p0

    move v2, p2

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v1

    add-int/2addr v11, v1

    iput v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 656
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    .line 657
    goto/16 :goto_551

    .line 660
    :cond_497
    sub-int v1, v7, v9

    if-ltz v1, :cond_54d

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_54d

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_54d

    .line 661
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v2, v7, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 662
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v4, v7, v9

    .line 663
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sub-int v4, v7, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    div-float v5, v1, v2

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    .line 664
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    .line 661
    move-object v1, p0

    move v2, p2

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v1

    add-int/2addr v11, v1

    iput v11, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 667
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    .line 668
    goto :goto_551

    .line 648
    :cond_54d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3b0

    .line 634
    .end local v8    # "fArmyPercLeft":F
    .end local v9    # "j":I
    :cond_551
    :goto_551
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2c2

    .line 674
    .end local v7    # "i":I
    :cond_555
    return-void
.end method

.method public final updateAverageMoraleOnBattleField()V
    .registers 5

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, "tNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_29

    .line 734
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 735
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    .line 736
    add-int/lit8 v0, v0, 0x1

    .line 733
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 740
    .end local v1    # "i":I
    :cond_29
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_4e

    .line 741
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 742
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    .line 743
    add-int/lit8 v0, v0, 0x1

    .line 740
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 747
    .end local v1    # "i":I
    :cond_4e
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    .line 748
    return-void
.end method

.method public final updateBattle_Summary(IZIZ)V
    .registers 12
    .param p1, "iProvinceID"    # I
    .param p2, "haveToRetreat"    # Z
    .param p3, "iRoundID"    # I
    .param p4, "armyCanBeDestroyed"    # Z

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_e3

    .line 434
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 435
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 438
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    if-lez v1, :cond_73

    .line 439
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-virtual {v1, v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V

    .line 443
    :cond_73
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_df

    .line 444
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 447
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    if-lez v1, :cond_df

    .line 448
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-virtual {v1, v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V

    .line 433
    :cond_df
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 453
    .end local v0    # "i":I
    :cond_e3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_ea
    if-ge v0, v1, :cond_146

    .line 454
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 457
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    if-lez v2, :cond_143

    .line 458
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-virtual {v2, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V

    .line 453
    :cond_143
    add-int/lit8 v0, v0, 0x1

    goto :goto_ea

    .line 463
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_146
    :try_start_146
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_14b} :catch_204

    .line 465
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :try_start_14c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_152
    if-ge v0, v1, :cond_16c

    .line 466
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_169

    .line 467
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_169} :catch_16d

    .line 465
    :cond_169
    add-int/lit8 v0, v0, 0x1

    goto :goto_152

    .line 472
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_16c
    goto :goto_171

    .line 470
    :catch_16d
    move-exception v0

    .line 471
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_16e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_171} :catch_204

    .line 474
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_171
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_172
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_178
    if-ge v0, v1, :cond_192

    .line 475
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18f

    .line 476
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_18f} :catch_193

    .line 474
    :cond_18f
    add-int/lit8 v0, v0, 0x1

    goto :goto_178

    .line 481
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_192
    goto :goto_197

    .line 479
    :catch_193
    move-exception v0

    .line 480
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_194
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 482
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_197
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_19e
    if-ge v0, v1, :cond_1b0

    .line 483
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_19e

    .line 485
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1b0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_1b7
    if-ge v0, v1, :cond_1c9

    .line 486
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b7

    .line 488
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1c9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_1d0
    if-ge v0, v1, :cond_1e2

    .line 489
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d0

    .line 492
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_1e2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1ea
    if-ltz v0, :cond_1fe

    .line 493
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_BattleSummary(Ljava/lang/String;)V

    .line 492
    add-int/lit8 v0, v0, -0x1

    goto :goto_1ea

    .line 496
    .end local v0    # "i":I
    :cond_1fe
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_203} :catch_204

    .line 499
    goto :goto_208

    .line 497
    :catch_204
    move-exception v0

    .line 498
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 501
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_208
    if-nez p2, :cond_23f

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v0, :cond_23f

    .line 502
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_LIMIT:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_LIMIT_PER_DAY_OF_BATTLE:I

    add-int/lit8 v3, p3, 0x1

    mul-int v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_EXPERIENCE_PER_DAY_OF_BATTLE:I

    add-int/lit8 v4, p3, 0x1

    mul-int v3, v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_MIN:I

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_MIN_RANDOM:I

    .line 507
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 503
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 502
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    .line 510
    :cond_23f
    if-eqz p2, :cond_2d8

    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, "extraArmyY":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->buildArmyDivisionsKeys()V

    .line 515
    if-eqz p4, :cond_269

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_ROUND_ID:I

    if-ge p3, v1, :cond_269

    .line 516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24e
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_268

    .line 517
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_24e

    .end local v1    # "i":I
    :cond_268
    goto :goto_2d8

    .line 521
    :cond_269
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_26a
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d8

    .line 522
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    .line 523
    .local v2, "armyRetreat":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v2, :cond_2b2

    .line 524
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    div-int/2addr v3, v4

    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_IF_MANPOWER_PERC_BELOW:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2b2

    .line 525
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    .line 526
    goto :goto_2d5

    .line 531
    :cond_2b2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->armyRetreat(Ljava/lang/String;I)I

    move-result v3

    .line 533
    .local v3, "result":I
    if-gez v3, :cond_2d4

    .line 534
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    goto :goto_2d5

    .line 537
    :cond_2d4
    move v0, v3

    .line 521
    .end local v2    # "armyRetreat":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v3    # "result":I
    :goto_2d5
    add-int/lit8 v1, v1, 0x1

    goto :goto_26a

    .line 542
    .end local v0    # "extraArmyY":I
    .end local v1    # "i":I
    :cond_2d8
    :goto_2d8
    return-void
.end method

.method public final updateCasualties()V
    .registers 5

    .line 753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_9e

    .line 754
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 755
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-le v1, v2, :cond_3d

    .line 756
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 759
    :cond_3d
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    .line 760
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sub-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 762
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    .line 763
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 764
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 753
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 767
    .end local v0    # "i":I
    :cond_9e
    return-void
.end method

.method public final updateDefeated()V
    .registers 19

    .line 773
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 775
    .local v0, "regroup":I
    const/4 v2, 0x0

    move/from16 v17, v2

    move v2, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v2, "regroup":I
    :goto_9
    :try_start_9
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v0, v3, :cond_17e

    .line 776
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17a

    .line 777
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-gtz v3, :cond_17a

    .line 778
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    if-nez v3, :cond_4b

    .line 779
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v6, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    .line 783
    :cond_4b
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    if-lez v3, :cond_8a

    .line 784
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 786
    iget v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 787
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 788
    goto/16 :goto_17a

    .line 791
    :cond_8a
    const/4 v3, 0x0

    .line 793
    .local v3, "updated":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8c
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_cb

    .line 794
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c8

    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ge v8, v4, :cond_c8

    .line 795
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v8, v0, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v8, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 797
    const/4 v3, 0x1

    .line 798
    goto :goto_cb

    .line 793
    :cond_c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_8c

    .line 802
    .end local v7    # "j":I
    :cond_cb
    :goto_cb
    if-eqz v3, :cond_cf

    .line 803
    goto/16 :goto_17a

    .line 806
    :cond_cf
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_10c

    .line 807
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v4, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v4, v5

    iput v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    .line 809
    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v4, v5

    iput v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 810
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 811
    goto :goto_17a

    .line 814
    :cond_10c
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_127

    .line 815
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v4, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 816
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 817
    goto :goto_17a

    .line 820
    :cond_127
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/2addr v5, v4

    if-ge v0, v5, :cond_152

    .line 821
    if-lez v0, :cond_17a

    .line 822
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    .line 823
    .local v4, "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 826
    nop

    .end local v4    # "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    add-int/lit8 v2, v2, 0x1

    .line 827
    goto :goto_17a

    .line 830
    :cond_152
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v4, v5, :cond_17a

    .line 831
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    .line 832
    .restart local v4    # "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v5, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 835
    add-int/lit8 v2, v2, 0x1

    .line 775
    .end local v3    # "updated":Z
    .end local v4    # "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    :cond_17a
    :goto_17a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 842
    .end local v0    # "i":I
    :cond_17e
    if-lez v2, :cond_1f5

    .line 843
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_181
    if-ge v0, v2, :cond_1f5

    .line 844
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_184
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v3, v7, :cond_1f2

    .line 845
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1ef

    .line 846
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-gtz v7, :cond_1ef

    .line 847
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/2addr v7, v4

    if-ge v3, v7, :cond_1c9

    .line 848
    if-lez v3, :cond_1ef

    .line 849
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    .line 850
    .local v7, "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v10, v3, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 852
    nop

    .end local v7    # "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    goto :goto_1ef

    .line 855
    :cond_1c9
    add-int/lit8 v7, v3, 0x1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v7, v8, :cond_1ef

    .line 856
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    .line 857
    .restart local v7    # "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v10, v3, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 858
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v8, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 844
    .end local v7    # "tRegiment":Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    :cond_1ef
    :goto_1ef
    add-int/lit8 v3, v3, 0x1

    goto :goto_184

    .line 843
    .end local v3    # "i":I
    :cond_1f2
    add-int/lit8 v0, v0, 0x1

    goto :goto_181

    .line 867
    .end local v0    # "k":I
    :cond_1f5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f6
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v3, :cond_218

    .line 868
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_215

    .line 869
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    if-lez v3, :cond_218

    .line 870
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f6

    .line 878
    .end local v0    # "i":I
    :cond_218
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sub-int/2addr v0, v6

    .restart local v0    # "i":I
    :goto_21d
    if-ltz v0, :cond_23b

    .line 879
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_238

    .line 880
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    if-lez v3, :cond_23b

    .line 881
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_238
    add-int/lit8 v0, v0, -0x1

    goto :goto_21d

    .line 892
    .end local v0    # "i":I
    :cond_23b
    if-lez v2, :cond_35a

    .line 893
    const/4 v0, -0x1

    .line 894
    .local v0, "firstID":I
    const/4 v3, -0x1

    .line 895
    .local v3, "lastID":I
    const/4 v7, 0x0

    .line 897
    .local v7, "numOfNull":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_241
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v8, v9, :cond_254

    .line 898
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_251

    .line 899
    move v0, v8

    .line 900
    goto :goto_255

    .line 897
    :cond_251
    add-int/lit8 v8, v8, 0x1

    goto :goto_241

    :cond_254
    move v8, v0

    .line 904
    .end local v0    # "firstID":I
    .local v8, "firstID":I
    :goto_255
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sub-int/2addr v0, v6

    .local v0, "i":I
    :goto_25a
    if-ltz v0, :cond_269

    .line 905
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_266

    .line 906
    move v3, v0

    .line 907
    goto :goto_269

    .line 904
    :cond_266
    add-int/lit8 v0, v0, -0x1

    goto :goto_25a

    .line 911
    .end local v0    # "i":I
    :cond_269
    :goto_269
    const/high16 v9, 0x40000000    # 2.0f

    const-wide/16 v10, 0x0

    if-ltz v8, :cond_2cc

    if-ltz v3, :cond_2cc

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 914
    .local v12, "tReg":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    move v0, v8

    .restart local v0    # "i":I
    :goto_278
    if-gt v0, v3, :cond_298

    .line 915
    iget-object v13, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_285

    .line 916
    add-int/lit8 v7, v7, 0x1

    goto :goto_295

    .line 918
    :cond_285
    iget-object v13, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v13, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v13, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_295} :catch_35b

    .line 914
    :goto_295
    add-int/lit8 v0, v0, 0x1

    goto :goto_278

    .line 924
    .end local v0    # "i":I
    :cond_298
    move v0, v8

    .restart local v0    # "i":I
    const/4 v13, 0x0

    .local v13, "j":I
    :try_start_29a
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/2addr v14, v4

    int-to-double v14, v14

    sub-int v16, v3, v7

    sub-int v4, v16, v8

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_2ab} :catch_2cb

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v4

    :try_start_2af
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .local v4, "pos":I
    :goto_2b4
    sub-int v5, v3, v7

    if-gt v0, v5, :cond_2ca

    .line 925
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2c3} :catch_2cb

    .line 924
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b4

    .line 929
    .end local v0    # "i":I
    .end local v4    # "pos":I
    .end local v13    # "j":I
    :cond_2ca
    goto :goto_2cc

    .line 927
    :catch_2cb
    move-exception v0

    .line 934
    .end local v12    # "tReg":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    :cond_2cc
    :goto_2cc
    const/4 v0, -0x1

    .line 935
    .end local v8    # "firstID":I
    .local v0, "firstID":I
    const/4 v3, -0x1

    .line 936
    const/4 v4, 0x0

    .line 938
    .end local v7    # "numOfNull":I
    .local v4, "numOfNull":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d0
    :try_start_2d0
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v5, v6, :cond_2e3

    .line 939
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2e0

    .line 940
    move v0, v5

    .line 941
    goto :goto_2e4

    .line 938
    :cond_2e0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d0

    :cond_2e3
    move v5, v0

    .line 945
    .end local v0    # "firstID":I
    .local v5, "firstID":I
    :goto_2e4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .local v0, "i":I
    :goto_2ea
    if-ltz v0, :cond_2f9

    .line 946
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2f6

    .line 947
    move v3, v0

    .line 948
    goto :goto_2f9

    .line 945
    :cond_2f6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2ea

    .line 952
    .end local v0    # "i":I
    :cond_2f9
    :goto_2f9
    if-ltz v5, :cond_35a

    if-ltz v3, :cond_35a

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 955
    .local v6, "tReg":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    move v0, v5

    .restart local v0    # "i":I
    :goto_304
    if-gt v0, v3, :cond_326

    .line 956
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_312

    .line 957
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_323

    .line 959
    :cond_312
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v0, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_323
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_323} :catch_35b

    .line 955
    :goto_323
    add-int/lit8 v0, v0, 0x1

    goto :goto_304

    .line 965
    .end local v0    # "i":I
    :cond_326
    move v0, v5

    .restart local v0    # "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    :try_start_328
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v12, 0x2

    div-int/2addr v8, v12

    int-to-double v12, v8

    sub-int v8, v3, v4

    sub-int/2addr v8, v5

    int-to-float v8, v8

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_339} :catch_359

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v8

    :try_start_33d
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v8, v8

    .local v8, "pos":I
    :goto_342
    sub-int v9, v3, v4

    if-gt v0, v9, :cond_358

    .line 966
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v9, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_351} :catch_359

    .line 965
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_342

    .line 970
    .end local v0    # "i":I
    .end local v7    # "j":I
    .end local v8    # "pos":I
    :cond_358
    goto :goto_35a

    .line 968
    :catch_359
    move-exception v0

    .line 975
    .end local v2    # "regroup":I
    .end local v3    # "lastID":I
    .end local v4    # "numOfNull":I
    .end local v5    # "firstID":I
    .end local v6    # "tReg":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/battles/BattleRegiment;>;"
    :cond_35a
    :goto_35a
    goto :goto_35f

    .line 973
    :catch_35b
    move-exception v0

    .line 974
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 976
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_35f
    return-void
.end method

.method public final updateDiceRoll()V
    .registers 5

    .line 559
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_DICE_ROLL:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_50

    .line 562
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 563
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_DICE_ROLL_REGIMENT:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    .line 566
    :cond_31
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 567
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_DICE_ROLL_REGIMENT:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    .line 561
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 570
    .end local v0    # "i":I
    :cond_50
    return-void
.end method

.method public updateInBattle_Load(I)V
    .registers 7
    .param p1, "provinceID"    # I

    .line 84
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getBattleArmiesKeys()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "armyKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_29

    .line 87
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    .line 89
    .local v3, "armyID":I
    if-ltz v3, :cond_26

    .line 90
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v2, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 86
    .end local v3    # "armyID":I
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 93
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method public updateLoaded_Load()V
    .registers 4

    .line 49
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 50
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 51
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    .line 49
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 55
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_26
    if-ltz v0, :cond_3d

    .line 56
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 57
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    .line 55
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 61
    .end local v0    # "i":I
    :cond_3d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_44
    if-ltz v0, :cond_5b

    .line 62
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 63
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    .line 61
    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    .line 67
    .end local v0    # "i":I
    :cond_5b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_62
    if-ltz v0, :cond_79

    .line 68
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 69
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    .line 67
    :cond_76
    add-int/lit8 v0, v0, -0x1

    goto :goto_62

    .line 73
    .end local v0    # "i":I
    :cond_79
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_80
    if-ltz v0, :cond_97

    .line 74
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 75
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_98

    .line 73
    :cond_94
    add-int/lit8 v0, v0, -0x1

    goto :goto_80

    .line 80
    .end local v0    # "i":I
    :cond_97
    goto :goto_9c

    .line 78
    :catch_98
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9c
    return-void
.end method

.method public final updateMoraleAndRetreat()V
    .registers 7

    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_1d4

    .line 687
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d0

    .line 688
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    if-lez v1, :cond_1d0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_1d0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    if-lez v1, :cond_1d0

    .line 689
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .line 690
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MORALE_LOSS_MULTIPLIER:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    .line 689
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 692
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    const v2, 0x3f75c28f    # 0.96f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1d0

    .line 693
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_FULL_RETREAT_IF_MORALE_BELOW:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_10e

    .line 694
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    .line 696
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    .line 697
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 699
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    .line 700
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 701
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    goto/16 :goto_1d0

    .line 704
    :cond_10e
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float v2, v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    .line 706
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    if-lez v1, :cond_1d0

    .line 707
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-le v1, v2, :cond_173

    .line 708
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    .line 711
    :cond_173
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    .line 712
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 714
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    .line 715
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 716
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    .line 686
    :cond_1d0
    :goto_1d0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 724
    .end local v0    # "i":I
    :cond_1d4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAverageMoraleOnBattleField()V

    .line 727
    return-void
.end method

.method public final updateMoraleEndOfBattle(F)V
    .registers 5
    .param p1, "fMorale"    # F

    .line 1132
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_31

    .line 1133
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1134
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 1132
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1138
    .end local v0    # "i":I
    :cond_31
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_39
    if-ltz v0, :cond_62

    .line 1139
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 1140
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 1138
    :cond_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 1144
    .end local v0    # "i":I
    :cond_62
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_6a
    if-ltz v0, :cond_8b

    .line 1145
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 1144
    add-int/lit8 v0, v0, -0x1

    goto :goto_6a

    .line 1148
    .end local v0    # "i":I
    :cond_8b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_93
    if-ltz v0, :cond_b4

    .line 1149
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 1148
    add-int/lit8 v0, v0, -0x1

    goto :goto_93

    .line 1152
    .end local v0    # "i":I
    :cond_b4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_bc
    if-ltz v0, :cond_dd

    .line 1153
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 1152
    add-int/lit8 v0, v0, -0x1

    goto :goto_bc

    .line 1155
    .end local v0    # "i":I
    :cond_dd
    return-void
.end method

.method public final updateNumOfUnits()V
    .registers 4

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_3f

    .line 414
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 415
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 418
    :cond_23
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 419
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 413
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 423
    .end local v0    # "i":I
    :cond_3f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_47
    if-ltz v0, :cond_5d

    .line 424
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 423
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 427
    .end local v0    # "i":I
    :cond_5d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_65
    if-ltz v0, :cond_7b

    .line 428
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    .line 427
    add-int/lit8 v0, v0, -0x1

    goto :goto_65

    .line 430
    .end local v0    # "i":I
    :cond_7b
    return-void
.end method
