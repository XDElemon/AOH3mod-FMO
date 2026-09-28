.class Laoc/kingdoms/lukasz/map/IdeologiesManager$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "IdeologiesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/IdeologiesManager;->changeGovernmentType(IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/IdeologiesManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/IdeologiesManager;Ljava/lang/String;II)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/IdeologiesManager;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "id2"    # I

    .line 859
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->this$0:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 6

    .line 862
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->this$0:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->updateCivBonuses(IIIZ)V

    .line 863
    iget v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v3, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v3, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id2:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->updateCivilizationIdeology_InGame(ILjava/lang/String;)V

    .line 865
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->this$0:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->updateCivBonuses(IIIZ)V

    .line 867
    iget v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRuler(ILjava/lang/String;Z)V

    .line 869
    iget v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->government:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;->CHANGE_GOVERNMENT_COST:F

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 870
    iget v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->government:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;->CHANGE_GOVERNMENT_COST_LEGACY:F

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 872
    iget v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 873
    return-void
.end method
