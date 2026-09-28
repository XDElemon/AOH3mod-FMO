.class public Laoc/kingdoms/lukasz/map/diplomacy/Vassal;
.super Ljava/lang/Object;
.source "Vassal.java"


# instance fields
.field public c:I

.field public cW:Z

.field public lD:F

.field public mL:I

.field public tL:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "iCivID"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    .line 28
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->setManpower(I)V

    .line 29
    iget v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    if-nez v1, :cond_26

    .line 30
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_INCOME_TO_LORD:[F

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->setTribute(I)V

    .line 32
    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_CAN_DECLARE_WAR_DEFAULT:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->cW:Z

    .line 33
    return-void
.end method


# virtual methods
.method public setLibertyDesire_Change(F)V
    .registers 4
    .param p1, "value"    # F

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_MIN:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_MAX:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    .line 59
    return-void
.end method

.method public final setManpower(I)V
    .registers 5
    .param p1, "iManpowerLevel"    # I

    .line 47
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    .line 49
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 50
    iput v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    goto :goto_22

    .line 52
    :cond_18
    if-ne p1, v1, :cond_22

    .line 53
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    .line 55
    :cond_22
    :goto_22
    return-void
.end method

.method public final setTribute(I)V
    .registers 6
    .param p1, "iTribute"    # I

    .line 36
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_INCOME_TO_LORD:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    .line 38
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a

    .line 39
    iput v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    goto :goto_26

    .line 41
    :cond_1a
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    if-ne v0, v1, :cond_26

    .line 42
    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    .line 44
    :cond_26
    :goto_26
    return-void
.end method
