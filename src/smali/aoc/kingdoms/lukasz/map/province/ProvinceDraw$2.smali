.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$2;
.super Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;
.source "ProvinceDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawExtraDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 151
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_23

    .line 152
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_20

    .line 153
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWondersConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 155
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawBuildingsInConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 157
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawRecruitingArmyPlayer(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_23

    .line 160
    :cond_20
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawBuildingsInConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 163
    :cond_23
    :goto_23
    return-void
.end method
