.class Laoc/kingdoms/lukasz/jakowski/AA_Game$1;
.super Lcom/badlogic/gdx/InputAdapter;
.source "AA_Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/AA_Game;->initInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/AA_Game;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/AA_Game;

    .line 250
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .registers 6
    .param p1, "keycode"    # I

    .line 11
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 12
    :cond_14
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Ctrl+C Pressed"

    if-eqz v0, :cond_28

    .line 13
    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->copy()V

    .line 15
    return v1

    .line 18
    :cond_28
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x32

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 19
    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->paste()V

    .line 21
    return v1

    .line 25
    :cond_39
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyDown(I)Z

    move-result v0

    return v0
.end method

.method public keyTyped(C)Z
    .registers 5
    .param p1, "character"    # C

    .line 263
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_49

    .line 264
    if-lez p1, :cond_49

    .line 265
    const/16 v0, 0x12

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x8

    if-ne p1, v0, :cond_11

    goto :goto_3d

    .line 269
    :cond_11
    const/16 v0, 0xd

    if-eq p1, v0, :cond_49

    const/16 v0, 0xa

    if-eq p1, v0, :cond_49

    const/16 v0, 0x9

    if-eq p1, v0, :cond_49

    .line 276
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->actionType(Ljava/lang/String;)V

    .line 278
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    goto :goto_49

    .line 266
    :cond_3d
    :goto_3d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->delete()V

    .line 267
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    .line 286
    :cond_49
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method public keyUp(I)Z
    .registers 3
    .param p1, "keycode"    # I

    .line 258
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyUp(I)Z

    move-result v0

    return v0
.end method

.method public mouseMoved(II)Z
    .registers 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 324
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    .line 326
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MouseMoved_EdgeMove(II)V

    .line 328
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    # getter for: Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove_Hover(II)V

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public scrolled(FF)Z
    .registers 4
    .param p1, "amountX"    # F
    .param p2, "amountY"    # F

    .line 343
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_18

    .line 344
    add-float v0, p1, p2

    float-to-int v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrolled(I)Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    return v0

    .line 348
    :cond_18
    goto :goto_1d

    .line 346
    :catch_19
    move-exception v0

    .line 347
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 350
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method public touchDown(IIII)Z
    .registers 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 291
    sput p4, Laoc/kingdoms/lukasz/jakowski/Touch;->buttonTouch:I

    .line 293
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    .line 294
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    # getter for: Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionDown(IIII)V

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public touchDragged(III)Z
    .registers 10
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I

    .line 301
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v1

    if-nez v1, :cond_5c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 302
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollPos(II)V

    .line 304
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    .line 305
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v1

    if-eqz v1, :cond_46

    if-nez p3, :cond_46

    .line 306
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    # getter for: Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v3}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove(IIII)V

    goto :goto_4f

    .line 308
    :cond_46
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    # getter for: Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove(III)V

    .line 311
    :goto_4f
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz v1, :cond_5c

    .line 312
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    # getter for: Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove_Hover(II)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5d

    .line 317
    :cond_5c
    goto :goto_61

    .line 315
    :catch_5d
    move-exception v1

    .line 316
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 319
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_61
    return v0
.end method

.method public touchUp(IIII)Z
    .registers 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .line 334
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    .line 336
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    # getter for: Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionUp(IIII)V

    .line 337
    const/4 v0, 0x1

    return v0
.end method
