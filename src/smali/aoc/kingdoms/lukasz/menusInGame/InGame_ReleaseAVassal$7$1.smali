.class Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_ReleaseAVassal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;Ljava/lang/String;II)V
    .registers 5
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "id2"    # I

    .line 316
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;->this$1:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 5

    .line 319
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;->id:I

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;->id2:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->changeGovernmentType(IIZ)Z

    .line 321
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->government:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;->CHANGE_GOVERNMENT_COST:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 322
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->government:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Government;->CHANGE_GOVERNMENT_COST_LEGACY:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 323
    return-void
.end method
