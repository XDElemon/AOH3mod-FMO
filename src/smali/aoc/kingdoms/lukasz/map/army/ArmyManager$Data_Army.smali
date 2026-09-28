.class public Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;
.super Ljava/lang/Object;
.source "ArmyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/army/ArmyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data_Army"
.end annotation


# instance fields
.field private Attack:I

.field public AttackRange:I

.field public Cost:I

.field private Defense:I

.field public ImageID:I

.field public MaintenanceCost:F

.field public MovementSpeed:F

.field public Name:Ljava/lang/String;

.field public RecruitmentTime:I

.field public RequiredTechID:I

.field public SiegeProgress:F

.field public SiegeUnit:Z

.field public UnitLevel:I

.field public isSettler:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    .line 71
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    return-void
.end method


# virtual methods
.method public getAttack()I
    .registers 2

    .line 74
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Attack:I

    return v0
.end method

.method public getAttack(I)I
    .registers 5
    .param p1, "iCivID"    # I

    .line 82
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Attack:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_ATTACK:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDefense()I
    .registers 2

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Defense:I

    return v0
.end method

.method public getDefense(I)I
    .registers 5
    .param p1, "iCivID"    # I

    .line 86
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Defense:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBattleTacticsID()I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
