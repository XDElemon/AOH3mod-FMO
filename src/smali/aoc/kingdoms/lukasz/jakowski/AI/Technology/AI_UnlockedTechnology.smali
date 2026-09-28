.class public Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_UnlockedTechnology;
.super Ljava/lang/Object;
.source "AI_UnlockedTechnology.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final unlockedTechnology(II)V
    .registers 3
    .param p0, "civID"    # I
    .param p1, "techID"    # I

    .line 18
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Advantages/AI_Advantages;->takeAdvantages(I)V

    .line 20
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_16

    .line 21
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Laws/AI_Laws;->adoptNewLaws(I)V

    .line 23
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->upgradeAllArmies(I)I

    .line 25
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_SelectTechnology;->selectTechnology(I)V

    .line 27
    :cond_16
    return-void
.end method
