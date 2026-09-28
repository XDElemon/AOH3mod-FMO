.class Laoc/kingdoms/lukasz/jakowski/Game$6;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Game;->updateCivilizationIdeology_InGame(ILjava/lang/String;)V
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

    .line 2842
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 2845
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Game$6;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegions_TextOver(I)V

    .line 2846
    return-void
.end method
