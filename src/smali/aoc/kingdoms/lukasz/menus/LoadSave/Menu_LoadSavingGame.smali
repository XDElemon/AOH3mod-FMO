.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadSavingGame.java"


# static fields
.field public static SAVE_FILE_ID:I

.field public static goToMenu:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    .line 31
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 33
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    .line 27
    const/16 v1, 0xc8

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

    .line 43
    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadingName:Ljava/lang/String;

    .line 34
    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    .line 36
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Saving"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->setLoadText(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 49
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadAction()V

    .line 50
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b0

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d40c0c1

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 52
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v2, v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 55
    sget-object v3, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v5, p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v6, p3, v0

    sget v7, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v8, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    const v3, 0x3f733333    # 0.95f

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 62
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 63
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 65
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->getPosY()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    sget v7, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v8, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 67
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 70
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    :cond_b0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 74
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 75
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 76
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 80
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    int-to-float v0, v0

    const v2, 0x3f6147ae    # 0.88f

    mul-float v0, v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iNumOfSteps:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3df5c28f    # 0.12f

    add-float/2addr v0, v2

    invoke-static {p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 82
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadingName:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int v5, p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int v6, p3, v0

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3e19999a    # 0.15f

    invoke-direct {v7, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 83
    return-void
.end method

.method public final loadAction()V
    .registers 5

    .line 93
    const-string v0, "Saving"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->setLoadText(Ljava/lang/String;)V

    .line 95
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_228

    goto/16 :goto_1fa

    .line 457
    :sswitch_2e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 458
    goto/16 :goto_1fa

    .line 452
    :sswitch_37
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Vassals()V

    .line 453
    goto/16 :goto_1fa

    .line 447
    :sswitch_3c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->saveStats()V

    .line 448
    goto/16 :goto_1fa

    .line 442
    :sswitch_43
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_Budget()V

    .line 443
    goto/16 :goto_1fa

    .line 437
    :sswitch_48
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_Diplomacy()V

    .line 438
    goto/16 :goto_1fa

    .line 432
    :sswitch_4d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_CreateNewArmy()V

    .line 433
    goto/16 :goto_1fa

    .line 428
    :sswitch_52
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AI_Merge()V

    .line 429
    goto/16 :goto_1fa

    .line 423
    :sswitch_57
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Rebels_Data()V

    .line 424
    goto/16 :goto_1fa

    .line 419
    :sswitch_5c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Rebels_Data_MoveUnits()V

    .line 420
    goto/16 :goto_1fa

    .line 414
    :sswitch_61
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Map_Data_Battles()V

    .line 415
    goto/16 :goto_1fa

    .line 409
    :sswitch_66
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Map_AlliancesSpecial()V

    .line 410
    goto/16 :goto_1fa

    .line 405
    :sswitch_6b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Stats3()V

    .line 406
    goto/16 :goto_1fa

    .line 401
    :sswitch_70
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Stats2()V

    .line 402
    goto/16 :goto_1fa

    .line 397
    :sswitch_75
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Stats()V

    .line 398
    goto/16 :goto_1fa

    .line 393
    :sswitch_7a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Player_Data()V

    .line 394
    goto/16 :goto_1fa

    .line 388
    :sswitch_7f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data4()V

    .line 389
    goto/16 :goto_1fa

    .line 384
    :sswitch_84
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data3()V

    .line 385
    goto/16 :goto_1fa

    .line 380
    :sswitch_89
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data2()V

    .line 381
    goto/16 :goto_1fa

    .line 376
    :sswitch_8e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data()V

    .line 377
    goto/16 :goto_1fa

    .line 372
    :sswitch_93
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsData3()V

    .line 373
    goto/16 :goto_1fa

    .line 368
    :sswitch_98
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsData2()V

    .line 369
    goto/16 :goto_1fa

    .line 364
    :sswitch_9d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsData()V

    .line 365
    goto/16 :goto_1fa

    .line 360
    :sswitch_a2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_MoveUnits()V

    .line 361
    goto/16 :goto_1fa

    .line 356
    :sswitch_a7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_Legacies()V

    .line 357
    goto/16 :goto_1fa

    .line 352
    :sswitch_ac
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_Loans()V

    .line 353
    goto/16 :goto_1fa

    .line 348
    :sswitch_b1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_GoldenAges()V

    .line 349
    goto/16 :goto_1fa

    .line 344
    :sswitch_b6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsVariables2()V

    .line 345
    goto/16 :goto_1fa

    .line 340
    :sswitch_bb
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_EventsVariables()V

    .line 341
    goto/16 :goto_1fa

    .line 336
    :sswitch_c0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_TemporaryBonuses()V

    .line 337
    goto/16 :goto_1fa

    .line 332
    :sswitch_c5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_GeneralsNotAssigned()V

    .line 333
    goto/16 :goto_1fa

    .line 328
    :sswitch_ca
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsMilitaryBonuses()V

    .line 329
    goto/16 :goto_1fa

    .line 324
    :sswitch_cf
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsMilitary()V

    .line 325
    goto/16 :goto_1fa

    .line 320
    :sswitch_d4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsInnovationBonuses()V

    .line 321
    goto/16 :goto_1fa

    .line 316
    :sswitch_d9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsInnovation()V

    .line 317
    goto/16 :goto_1fa

    .line 312
    :sswitch_de
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsEconomyBonuses()V

    .line 313
    goto/16 :goto_1fa

    .line 308
    :sswitch_e3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsEconomy()V

    .line 309
    goto/16 :goto_1fa

    .line 304
    :sswitch_e8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsAdmBonuses()V

    .line 305
    goto/16 :goto_1fa

    .line 300
    :sswitch_ed
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_AdvisorsAdm()V

    .line 301
    goto/16 :goto_1fa

    .line 296
    :sswitch_f2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_RulersBonuses()V

    .line 297
    goto/16 :goto_1fa

    .line 292
    :sswitch_f7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civs_Data_Rulers()V

    .line 293
    goto/16 :goto_1fa

    .line 288
    :sswitch_fc
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Plagues()V

    .line 289
    goto/16 :goto_1fa

    .line 284
    :sswitch_101
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data10()V

    .line 285
    goto/16 :goto_1fa

    .line 280
    :sswitch_106
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Map_Data_Plagues()V

    .line 281
    goto/16 :goto_1fa

    .line 272
    :sswitch_10b
    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SAVE_PROVINCES_ARMIES_PER_FILE:I

    mul-int v1, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1fa

    .line 273
    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Armies_MoreFiles(I)V

    .line 274
    return-void

    .line 267
    :sswitch_123
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_RecruitArmyCreate()V

    .line 268
    goto/16 :goto_1fa

    .line 263
    :sswitch_128
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_RecruitingArmy()V

    .line 264
    goto/16 :goto_1fa

    .line 258
    :sswitch_12d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_Laws()V

    .line 259
    goto/16 :goto_1fa

    .line 254
    :sswitch_132
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_UnlockedAdvantages()V

    .line 255
    goto/16 :goto_1fa

    .line 250
    :sswitch_137
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_ResearchProgress()V

    .line 251
    goto/16 :goto_1fa

    .line 246
    :sswitch_13c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_NukeProduction()V

    .line 247
    goto/16 :goto_1fa

    .line 242
    :sswitch_141
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Civ_Data_UnlockedTechnologies()V

    .line 243
    goto/16 :goto_1fa

    .line 238
    :sswitch_146
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_WondersConstruction()V

    .line 239
    goto/16 :goto_1fa

    .line 234
    :sswitch_14b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_ReligionConversion()V

    .line 235
    goto/16 :goto_1fa

    .line 230
    :sswitch_150
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_CoreConstruction()V

    .line 231
    goto/16 :goto_1fa

    .line 226
    :sswitch_155
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Infrastructure()V

    .line 227
    goto/16 :goto_1fa

    .line 222
    :sswitch_15a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestGrowthRate()V

    .line 223
    goto/16 :goto_1fa

    .line 218
    :sswitch_15f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestManpower()V

    .line 219
    goto/16 :goto_1fa

    .line 214
    :sswitch_164
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestTax()V

    .line 215
    goto/16 :goto_1fa

    .line 210
    :sswitch_169
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_InvestDaysLeft()V

    .line 211
    goto/16 :goto_1fa

    .line 206
    :sswitch_16e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveWars()V

    .line 207
    goto/16 :goto_1fa

    .line 202
    :sswitch_173
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelations2()V

    .line 203
    goto/16 :goto_1fa

    .line 198
    :sswitch_178
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelations()V

    .line 199
    goto/16 :goto_1fa

    .line 194
    :sswitch_17d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveTruces()V

    .line 195
    goto/16 :goto_1fa

    .line 190
    :sswitch_182
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveNonAggression()V

    .line 191
    goto/16 :goto_1fa

    .line 186
    :sswitch_187
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveMilitaryAccess()V

    .line 187
    goto/16 :goto_1fa

    .line 182
    :sswitch_18c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveDefensive()V

    .line 183
    goto/16 :goto_1fa

    .line 178
    :sswitch_191
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelationsDamage()V

    .line 179
    goto/16 :goto_1fa

    .line 174
    :sswitch_196
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRelationsImprove()V

    .line 175
    goto/16 :goto_1fa

    .line 170
    :sswitch_19b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveRivals()V

    .line 171
    goto :goto_1fa

    .line 166
    :sswitch_19f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveAlliances()V

    .line 167
    goto :goto_1fa

    .line 162
    :sswitch_1a3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->saveGuarantee()V

    .line 163
    goto :goto_1fa

    .line 158
    :sswitch_1a7
    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    .line 159
    goto :goto_1fa

    .line 151
    :sswitch_1aa
    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SAVE_PROVINCES_BUILDINGS_PER_FILE:I

    mul-int v1, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1fa

    .line 152
    sget v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Buildings(I)V

    .line 153
    return-void

    .line 147
    :sswitch_1c2
    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    .line 148
    goto :goto_1fa

    .line 143
    :sswitch_1c5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_ConstructionBuilding()V

    .line 144
    goto :goto_1fa

    .line 139
    :sswitch_1c9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data_Population()V

    .line 140
    goto :goto_1fa

    .line 135
    :sswitch_1cd
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data9()V

    .line 136
    goto :goto_1fa

    .line 131
    :sswitch_1d1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data8()V

    .line 132
    goto :goto_1fa

    .line 127
    :sswitch_1d5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data7()V

    .line 128
    goto :goto_1fa

    .line 123
    :sswitch_1d9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data6()V

    .line 124
    goto :goto_1fa

    .line 119
    :sswitch_1dd
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data5()V

    .line 120
    goto :goto_1fa

    .line 115
    :sswitch_1e1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data4()V

    .line 116
    goto :goto_1fa

    .line 111
    :sswitch_1e5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data3()V

    .line 112
    goto :goto_1fa

    .line 107
    :sswitch_1e9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data2()V

    .line 108
    goto :goto_1fa

    .line 103
    :sswitch_1ed
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Provinces_Data()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_Airforce_Data()V

    .line 104
    goto :goto_1fa

    .line 97
    :sswitch_1f4
    sput v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    .line 99
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->Save_1()V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f9} :catch_1fb

    .line 100
    nop

    .line 469
    :cond_1fa
    :goto_1fa
    goto :goto_221

    .line 466
    :catch_1fb
    move-exception v1

    .line 467
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 468
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 471
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_221
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->iStepID:I

    .line 472
    return-void

    :sswitch_data_228
    .sparse-switch
        0x0 -> :sswitch_1f4
        0x2 -> :sswitch_1ed
        0x5 -> :sswitch_1e9
        0x9 -> :sswitch_1e5
        0xc -> :sswitch_1e1
        0x10 -> :sswitch_1dd
        0x14 -> :sswitch_1d9
        0x18 -> :sswitch_1d5
        0x1c -> :sswitch_1d1
        0x20 -> :sswitch_1cd
        0x23 -> :sswitch_1c9
        0x28 -> :sswitch_1c5
        0x2a -> :sswitch_1c2
        0x2b -> :sswitch_1aa
        0x2c -> :sswitch_1a7
        0x2e -> :sswitch_1a3
        0x30 -> :sswitch_19f
        0x32 -> :sswitch_19b
        0x35 -> :sswitch_196
        0x37 -> :sswitch_191
        0x39 -> :sswitch_18c
        0x3b -> :sswitch_187
        0x3d -> :sswitch_182
        0x3f -> :sswitch_17d
        0x41 -> :sswitch_178
        0x45 -> :sswitch_173
        0x49 -> :sswitch_16e
        0x4c -> :sswitch_169
        0x4f -> :sswitch_164
        0x52 -> :sswitch_15f
        0x55 -> :sswitch_15a
        0x58 -> :sswitch_155
        0x5b -> :sswitch_150
        0x5d -> :sswitch_14b
        0x5f -> :sswitch_146
        0x61 -> :sswitch_141
        0x65 -> :sswitch_13c
        0x67 -> :sswitch_137
        0x6a -> :sswitch_132
        0x6d -> :sswitch_12d
        0x6f -> :sswitch_128
        0x70 -> :sswitch_123
        0x73 -> :sswitch_10b
        0x79 -> :sswitch_106
        0x7b -> :sswitch_101
        0x7d -> :sswitch_fc
        0x7f -> :sswitch_f7
        0x81 -> :sswitch_f2
        0x84 -> :sswitch_ed
        0x86 -> :sswitch_e8
        0x88 -> :sswitch_e3
        0x8a -> :sswitch_de
        0x8d -> :sswitch_d9
        0x8f -> :sswitch_d4
        0x91 -> :sswitch_cf
        0x93 -> :sswitch_ca
        0x95 -> :sswitch_c5
        0x98 -> :sswitch_c0
        0x9b -> :sswitch_bb
        0x9e -> :sswitch_b6
        0xa0 -> :sswitch_b1
        0xa2 -> :sswitch_ac
        0xa4 -> :sswitch_a7
        0xa5 -> :sswitch_a2
        0xa8 -> :sswitch_9d
        0xaa -> :sswitch_98
        0xac -> :sswitch_93
        0xaf -> :sswitch_8e
        0xb2 -> :sswitch_89
        0xb5 -> :sswitch_84
        0xb7 -> :sswitch_7f
        0xba -> :sswitch_7a
        0xbc -> :sswitch_75
        0xbf -> :sswitch_70
        0xc1 -> :sswitch_6b
        0xc3 -> :sswitch_66
        0xc6 -> :sswitch_61
        0xca -> :sswitch_5c
        0xcd -> :sswitch_57
        0xd0 -> :sswitch_52
        0xd3 -> :sswitch_4d
        0xd5 -> :sswitch_48
        0xd7 -> :sswitch_43
        0xda -> :sswitch_3c
        0xdd -> :sswitch_37
        0xdf -> :sswitch_2e
    .end sparse-switch
.end method

.method public setLoadText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->loadingName:Ljava/lang/String;

    .line 87
    return-void
.end method
