.class Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$4;
.super Ljava/lang/Object;
.source "RendererGame.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->updateRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 256
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z

    if-eqz v0, :cond_1b

    .line 257
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_1b

    .line 258
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 262
    :cond_1b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 264
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 266
    .local v0, "time":J
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_41

    .line 267
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsSettings:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;->drawCloudsMinScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_41

    .line 268
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 272
    :cond_41
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_51

    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    .line 274
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 277
    :cond_51
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 279
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_64

    .line 280
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    .line 281
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 284
    :cond_64
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->drawCivNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 286
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_77

    .line 287
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    .line 288
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 291
    :cond_77
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->cloudsInterface:Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;

    invoke-interface {v2, p1}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsInterface;->drawCloudsInterface(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 293
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_8e

    .line 294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    .line 295
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 298
    :cond_8e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/map/Map;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 300
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_a3

    .line 301
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    .line 302
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 305
    :cond_a3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a8} :catch_a9

    .line 308
    .end local v0    # "time":J
    goto :goto_ad

    .line 306
    :catch_a9
    move-exception v0

    .line 307
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ad
    return-void
.end method

.method public drawCurrentScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 227
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->lastUpdateTime:J

    sub-long/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SETTINGS_MENU_UPDATE_TIME:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    .line 228
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->lastUpdateTime:J

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    .line 232
    :cond_15
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Settings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 233
    return-void
.end method

.method public drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 314
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 316
    .local v0, "time":J
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13

    .line 317
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 320
    :cond_13
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_1e

    .line 321
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    .line 324
    :cond_1e
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmyAlpha()V

    .line 326
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 328
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 330
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_34

    .line 331
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    .line 334
    :cond_34
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawSiegeLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 335
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawBiggestCitiesLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 337
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 339
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    if-eq v2, v3, :cond_99

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    if-eq v2, v3, :cond_99

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_ECONOMY_HOVER:I

    if-ne v2, v3, :cond_6a

    goto :goto_99

    .line 345
    :cond_6a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    if-eq v2, v3, :cond_8d

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    if-ne v2, v3, :cond_7f

    goto :goto_8d

    .line 349
    :cond_7f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-interface {v2, p1, v3}, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_a4

    .line 346
    :cond_8d
    :goto_8d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v2, p1, v3}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_a4

    .line 343
    :cond_99
    :goto_99
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v2, p1, v3}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 352
    :goto_a4
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_b4

    .line 353
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    .line 354
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 357
    :cond_b4
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    invoke-interface {v2, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;->drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 359
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_c9

    .line 360
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    .line 361
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->drawScaled(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c9} :catch_105

    .line 365
    :cond_c9
    :try_start_c9
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ce} :catch_cf

    .line 368
    goto :goto_d3

    .line 366
    :catch_cf
    move-exception v2

    .line 367
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_d0
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 370
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_d3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, v2

    .line 372
    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v2, :cond_e8

    .line 373
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 374
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/SiegeManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 375
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_eb

    .line 379
    :cond_e8
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawMapModeDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 382
    :goto_eb
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_f6

    .line 383
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    .line 390
    :cond_f6
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForce(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 395
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->drawNukeAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 397
    const/4 v2, 0x0

    sput-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_104} :catch_105

    .line 400
    .end local v0    # "time":J
    goto :goto_109

    .line 398
    :catch_105
    move-exception v0

    .line 399
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 401
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_109
    return-void
.end method

.method public drawWithoutScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 239
    .local v0, "time":J
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z

    if-eqz v2, :cond_27

    .line 240
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v2, :cond_27

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v2, v3, :cond_27

    .line 241
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v2

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->drawPBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 245
    :cond_27
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_32

    .line 246
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    .line 249
    :cond_32
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawDiplomacyLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 250
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinceDots_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 251
    return-void
.end method
