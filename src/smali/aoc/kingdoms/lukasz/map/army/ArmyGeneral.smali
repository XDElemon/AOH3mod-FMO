.class public Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
.super Ljava/lang/Object;
.source "ArmyGeneral.java"


# instance fields
.field private at:I

.field public c:I

.field public d:I

.field private df:I

.field private e:I

.field public g:I

.field public key:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public sI:Ljava/lang/String;

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    .line 22
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    .line 31
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    .line 34
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .registers 11
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "iAttack"    # I
    .param p4, "iDefense"    # I
    .param p5, "iYearOfBirth"    # I
    .param p6, "iCivID"    # I
    .param p7, "sIMG"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    .line 22
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    .line 25
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    .line 31
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    .line 34
    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    .line 42
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    .line 43
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    .line 44
    iput-object p7, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    .line 45
    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    .line 46
    iput p4, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    .line 47
    iput p5, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    .line 49
    iput p6, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->c:I

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    .line 52
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDaysInMonth(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    .line 54
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_NEW_GENERAL_MIN:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_NEW_GENERAL_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    .line 56
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->key:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public addCombatExperience(I)V
    .registers 4
    .param p1, "value"    # I

    .line 72
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    .line 74
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX:I

    if-lt v0, v1, :cond_4b

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_INCREASE_ATTACK_CHANCE:I

    if-ge v0, v1, :cond_2a

    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX_ATTACK:I

    if-ge v0, v1, :cond_2a

    .line 76
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    goto :goto_38

    .line 77
    :cond_2a
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX_DEFENSE:I

    if-ge v0, v1, :cond_38

    .line 78
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    .line 81
    :cond_38
    :goto_38
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX:I

    sub-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    .line 83
    :cond_4b
    return-void
.end method

.method public getAttack()I
    .registers 3

    .line 60
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCombatExperience()I
    .registers 2

    .line 68
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    return v0
.end method

.method public getDefense()I
    .registers 3

    .line 64
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    add-int/2addr v0, v1

    return v0
.end method
