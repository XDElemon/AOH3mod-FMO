.class Laoc/kingdoms/lukasz/map/RulersManager$2;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "RulersManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/RulersManager;->deathOfRuler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 280
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 283
    iget v0, p0, Laoc/kingdoms/lukasz/map/RulersManager$2;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v1, p0, Laoc/kingdoms/lukasz/map/RulersManager$2;->id:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/Ruler;->updateCivBonuses(II)V

    .line 284
    iget v0, p0, Laoc/kingdoms/lukasz/map/RulersManager$2;->id:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/RulersManager$2;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRuler(ILjava/lang/String;Z)V

    .line 285
    return-void
.end method
