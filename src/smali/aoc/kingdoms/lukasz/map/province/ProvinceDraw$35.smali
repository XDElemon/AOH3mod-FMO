.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$35;
.super Ljava/lang/Object;
.source "ProvinceDraw.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawMoveUnits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2512
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    .line 2513
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawMoveUnits_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2516
    :try_start_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    if-eqz v0, :cond_33

    .line 2517
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_34

    .line 2520
    :try_start_24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2521
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f

    .line 2524
    goto :goto_33

    .line 2522
    :catch_2f
    move-exception v0

    .line 2523
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_30
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    .line 2528
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_33
    :goto_33
    goto :goto_38

    .line 2526
    :catch_34
    move-exception v0

    .line 2527
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2530
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_38
    :goto_38
    return-void
.end method
