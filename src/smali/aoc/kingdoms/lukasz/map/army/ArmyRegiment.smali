.class public Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
.super Ljava/lang/Object;
.source "ArmyRegiment.java"


# instance fields
.field public aID:I

.field public key:Ljava/lang/String;

.field public mo:F

.field public num:I

.field public uID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 17
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "nUnitTypeID"    # I
    .param p2, "nArmyID"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 17
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 30
    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 31
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 35
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;)V
    .registers 3
    .param p1, "armyRegiment"    # Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 17
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 39
    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->k:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    .line 40
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->u:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 41
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->a:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    .line 42
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->n:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 43
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->m:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    .line 44
    return-void
.end method
