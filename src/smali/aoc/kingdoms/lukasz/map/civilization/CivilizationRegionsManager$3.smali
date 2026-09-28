.class Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$3;
.super Ljava/lang/Object;
.source "CivilizationRegionsManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager$Renderer_CivRegionNames;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRenderer_CivNames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 186
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivRegions_Names2_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 187
    return-void
.end method

.method public update()V
    .registers 1

    .line 191
    # invokes: Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView2()V
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->access$000()V

    .line 192
    return-void
.end method
