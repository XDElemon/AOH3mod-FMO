.class Laoc/kingdoms/lukasz/map/FormableCivManager$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "FormableCivManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/FormableCivManager;->formCiv(ILjava/lang/String;)Z
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

    .line 329
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 332
    iget v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$1;->id:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$1;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRuler(ILjava/lang/String;Z)V

    .line 333
    return-void
.end method
