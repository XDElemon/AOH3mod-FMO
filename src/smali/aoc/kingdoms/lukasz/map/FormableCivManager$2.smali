.class Laoc/kingdoms/lukasz/map/FormableCivManager$2;
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

    .line 336
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 339
    iget v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$2;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/FormableCivManager;->updateFormableCivilizations(I)V

    .line 341
    iget v0, p0, Laoc/kingdoms/lukasz/map/FormableCivManager$2;->id:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_15

    .line 342
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->loadFormableCivs()V

    .line 343
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government;->reloadFlags:Z

    .line 346
    :cond_15
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->redrawnProvinces()V

    .line 347
    return-void
.end method
