.class public Laoc/kingdoms/lukasz/menus/MainMenu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "MainMenu.java"


# static fields
.field public static bgAlpha:F

.field public static bgTIME:J

.field public static bgTIME_CHANGE:J

.field public static canContinue:Z

.field public static flag:Laoc/kingdoms/lukasz/textures/Image;

.field public static savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

.field public static savedGameKey:Ljava/lang/String;

.field public static sparksColors:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private iXPos:I

.field private iYPos:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    .line 73
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    .line 74
    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    .line 75
    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGameKey:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    .line 80
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    .line 69
    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iYPos:I

    .line 70
    const/16 v0, 0x1e0

    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    .line 71
    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iHeight:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 82
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v14, v0, v1

    .line 83
    .local v14, "paddingTopBot":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v15, v0, v1

    .line 84
    .local v15, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    .line 85
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    int-to-float v0, v0

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    .line 86
    mul-int/lit8 v0, v14, 0x2

    div-int/lit8 v1, v14, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iHeight:I

    .line 87
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iHeight:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iYPos:I

    .line 88
    iget v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    if-le v0, v1, :cond_8b

    .line 89
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    .line 92
    :cond_8b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 93
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->versionWidth:I

    .line 94
    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu$1;

    iget v6, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    iget v7, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iYPos:I

    iget v8, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    const/4 v9, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$1;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget v0, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iYPos:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v10, v0, v14

    .line 120
    .local v10, "buttonY":I
    :try_start_ca
    sget-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cc} :catch_335

    const-string v1, ""

    const-string v2, ": "

    const-string v3, "Continue"

    const-string v4, " "

    if-eqz v0, :cond_165

    .line 121
    :try_start_d6
    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu$2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v5, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int v7, v1, v2

    move-object v1, v0

    move-object/from16 v2, p0

    move v6, v10

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu$2;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_156} :catch_15f

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    move/from16 v17, v14

    move-object v14, v13

    goto/16 :goto_332

    .line 226
    :catch_15f
    move-exception v0

    move/from16 v17, v14

    move-object v14, v13

    goto/16 :goto_339

    .line 180
    :cond_165
    :try_start_165
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_167} :catch_335

    const-string v5, "AoH.txt"

    const-string v6, "saves/"

    if-eqz v0, :cond_18f

    .line 181
    :try_start_16d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_18e} :catch_15f

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1d8

    .line 182
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_18f
    :try_start_18f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->readLocalFiles()Z

    move-result v0
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_193} :catch_335

    if-eqz v0, :cond_1b7

    .line 183
    :try_start_195
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1b6} :catch_15f

    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1d8

    .line 185
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1b7
    :try_start_1b7
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 188
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_1d8
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_2fa

    .line 189
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .line 190
    .local v8, "tempTags":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v5

    .line 191
    .local v9, "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    .line 194
    .local v11, "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "bestID":I
    :goto_1f6
    array-length v6, v8
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1f7} :catch_335

    if-ge v5, v6, :cond_20c

    .line 195
    :try_start_1f9
    aget-object v6, v8, v5

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Details(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    move-result-object v6

    .line 196
    .local v6, "readSD":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    if-eqz v6, :cond_209

    .line 197
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    aget-object v7, v8, v5

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_209} :catch_15f

    .line 194
    .end local v6    # "readSD":Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    :cond_209
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f6

    .line 202
    :cond_20c
    const/4 v5, 0x0

    .line 204
    :try_start_20d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_211} :catch_335

    add-int/lit8 v6, v6, -0x1

    move v7, v5

    .end local v5    # "bestID":I
    .local v6, "i":I
    .local v7, "bestID":I
    :goto_214
    if-lez v6, :cond_249

    .line 205
    :try_start_216
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_21c} :catch_240

    move-object/from16 v16, v13

    move/from16 v17, v14

    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v14    # "paddingTopBot":I
    .local v16, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v17, "paddingTopBot":I
    :try_start_220
    iget-wide v13, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->time:J

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    move-object/from16 v18, v4

    iget-wide v4, v5, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->time:J
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_22c} :catch_23b

    cmp-long v19, v13, v4

    if-lez v19, :cond_232

    .line 206
    move v4, v6

    move v7, v4

    .line 204
    :cond_232
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v4, v18

    goto :goto_214

    .line 226
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v6    # "i":I
    .end local v7    # "bestID":I
    .end local v8    # "tempTags":[Ljava/lang/String;
    .end local v9    # "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    .end local v11    # "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_23b
    move-exception v0

    move-object/from16 v14, v16

    goto/16 :goto_339

    .end local v16    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v17    # "paddingTopBot":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v14    # "paddingTopBot":I
    :catch_240
    move-exception v0

    move-object/from16 v16, v13

    move/from16 v17, v14

    move-object/from16 v14, v16

    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v14    # "paddingTopBot":I
    .restart local v16    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "paddingTopBot":I
    goto/16 :goto_339

    .line 204
    .end local v16    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v17    # "paddingTopBot":I
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v6    # "i":I
    .restart local v7    # "bestID":I
    .restart local v8    # "tempTags":[Ljava/lang/String;
    .restart local v9    # "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    .restart local v11    # "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v14    # "paddingTopBot":I
    :cond_249
    move-object/from16 v18, v4

    move-object/from16 v16, v13

    move/from16 v17, v14

    .line 210
    .end local v6    # "i":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v14    # "paddingTopBot":I
    .restart local v16    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "paddingTopBot":I
    :try_start_24f
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    sput-object v4, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    .line 211
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGameKey:Ljava/lang/String;

    .line 212
    sget-object v4, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->sCivTag:Ljava/lang/String;

    invoke-static {v4}, Laoc/kingdoms/lukasz/menus/MainMenu;->loadFlag(Ljava/lang/String;)V

    .line 213
    new-instance v13, Laoc/kingdoms/lukasz/menus/MainMenu$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->sCivTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iMonth:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget-object v4, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGame:Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;->iYear:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v5, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int v14, v1, v2

    move-object v1, v13

    move-object/from16 v2, p0

    move v6, v10

    move/from16 v18, v7

    .end local v7    # "bestID":I
    .local v18, "bestID":I
    move v7, v14

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu$3;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_2da} :catch_2f6

    move-object/from16 v14, v16

    .end local v16    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :try_start_2dc
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 220
    .end local v8    # "tempTags":[Ljava/lang/String;
    .end local v9    # "tempSaveDetails":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$SaveDetails;>;"
    .end local v11    # "tempSaveKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "bestID":I
    goto :goto_332

    .line 226
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v16    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_2f6
    move-exception v0

    move-object/from16 v14, v16

    .end local v16    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    goto :goto_339

    .line 221
    .end local v17    # "paddingTopBot":I
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "paddingTopBot":I
    :cond_2fa
    move/from16 v17, v14

    move-object v14, v13

    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "paddingTopBot":I
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$4;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v6, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int v8, v1, v2

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move v7, v10

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$4;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_32e} :catch_333

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 229
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_332
    goto :goto_33d

    .line 226
    :catch_333
    move-exception v0

    goto :goto_339

    .end local v17    # "paddingTopBot":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "paddingTopBot":I
    :catch_335
    move-exception v0

    move/from16 v17, v14

    move-object v14, v13

    .line 227
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v0, "var11":Ljava/lang/Exception;
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "paddingTopBot":I
    :goto_339
    move-object v1, v0

    .line 228
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "var11":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_33d
    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu$5;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "NewGame"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v6, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int v8, v1, v2

    const/4 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move v7, v10

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$5;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 238
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    .line 239
    .local v0, "statsW":I
    const-string v1, "game/Multiplayer.txt"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const-string v2, "Campaign"

    if-eqz v1, :cond_3d8

    .line 240
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$6;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v6, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move v7, v10

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$6;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$7;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Multiplayer"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int/2addr v1, v15

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v4, v15, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x2

    const/4 v4, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$7;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f7

    .line 252
    :cond_3d8
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$8;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v6, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int v8, v1, v2

    const/4 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move v7, v10

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$8;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :goto_3f7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 261
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$9;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "LoadGame"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v6, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int v8, v1, v2

    const/4 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move v7, v10

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$9;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v2, v17, 0x2

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 267
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$10;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v6, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x2

    move-object v1, v11

    move-object/from16 v2, p0

    move v7, v10

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$10;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int/2addr v1, v15

    iget v2, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v4, v15, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v1, v2

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x2

    const/4 v4, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$11;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v13, v10, v1

    .line 303
    .end local v10    # "buttonY":I
    .local v13, "buttonY":I
    new-instance v10, Laoc/kingdoms/lukasz/menus/MainMenu$12;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ExitGame"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v6, v1, v15

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sub-int v8, v1, v0

    move-object v1, v10

    move-object/from16 v2, p0

    move v7, v13

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$12;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$13;

    const/4 v3, 0x0

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    iget v1, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int/2addr v1, v15

    iget v2, v12, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    add-int/2addr v1, v2

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    sub-int v6, v1, v0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->development:I

    move-object v1, v11

    move-object/from16 v2, p0

    move v8, v0

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menus/MainMenu$13;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v1, v13

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    .line 323
    .local v10, "var10000":I
    new-instance v11, Laoc/kingdoms/lukasz/menus/MainMenu$14;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->VERSION:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sub-int v6, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v7, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu$14;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x5

    sub-int v8, v1, v2

    .line 342
    .local v8, "buttonsY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-nez v1, :cond_55d

    sget-boolean v1, Lteam/rainfall/fontFix/FontFix;->dontShowMainMenuQQ:Z

    if-nez v1, :cond_55d

    .line 343
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu$15;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->app:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v4, v1, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v1, v9

    move-object/from16 v2, p0

    move v5, v8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu$15;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v8, v1

    .line 363
    :cond_55d
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu$16;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->yt:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v4, v1, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v1, v9

    move-object/from16 v2, p0

    move v5, v8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu$16;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v8, v1

    .line 379
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu$17;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->android:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v4, v1, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v1, v9

    move-object/from16 v2, p0

    move v5, v8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu$17;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v8, v1

    .line 395
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu$18;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->app:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v4, v1, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v1, v9

    move-object/from16 v2, p0

    move v5, v8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu$18;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;IIIII)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v16, v8, v1

    .line 411
    .end local v8    # "buttonsY":I
    .local v16, "buttonsY":I
    new-instance v8, Laoc/kingdoms/lukasz/menus/MainMenu$19;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pc:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v4, v1, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v5, v16

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu$19;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v18, v16, v1

    .line 427
    .end local v10    # "var10000":I
    .local v18, "var10000":I
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu$20;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v1, 0x3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v5, v1, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Lukasz Jakowski"

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu$20;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;III)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_62b

    const-string v1, "Font Fix by Team Rainfall"

    goto :goto_62d

    :cond_62b
    const-string v1, "Polaris AoH3 by Team Rainfall"

    :goto_62d
    move-object v3, v1

    .line 447
    .local v3, "text1":Ljava/lang/String;
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu$21;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v1, 0x3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v5, v1, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu$21;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;III)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    const/4 v5, 0x0

    move-object v1, v5

    check-cast v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v10, v14

    invoke-virtual/range {v4 .. v11}, Laoc/kingdoms/lukasz/menus/MainMenu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    .line 468
    return-void
.end method

.method public static disposeData()V
    .registers 1

    .line 534
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_10

    .line 535
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 536
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    .line 539
    :cond_10
    return-void
.end method

.method public static getHoverAbout()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 11

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "Programmer and Designer"

    invoke-direct {v2, v5, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 562
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->world:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "Lukasz Jakowski"

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 565
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "One Man Army!"

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 568
    const/4 v2, 0x0

    .line 569
    .local v2, "lineAdded":Z
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_LOGO_HOVER_TEXT:[Ljava/lang/String;

    if-eqz v3, :cond_b4

    .line 570
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6f
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_LOGO_HOVER_TEXT:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_b4

    .line 571
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_LOGO_HOVER_TEXT:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_94

    if-nez v2, :cond_94

    .line 572
    const/4 v2, 0x1

    .line 573
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 578
    :cond_94
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_LOGO_HOVER_TEXT:[Ljava/lang/String;

    aget-object v5, v5, v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 584
    .end local v3    # "i":I
    :cond_b4
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public static getHoverAbout_Short()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 11

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "Programmer and Designer"

    invoke-direct {v2, v5, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 547
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->world:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "Lukasz Jakowski"

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 550
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "One Man Army!"

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 553
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public static getHover_FontFix()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 11

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "Polaris Core Creator"

    invoke-direct {v2, v5, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 593
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->world:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, "Team Rainfall"

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 596
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu;->getRandomStr()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 599
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public static getRandomStr()Ljava/lang/String;
    .registers 5

    .line 603
    const-string v0, "What do you want today?"

    .line 604
    .local v0, "str1":Ljava/lang/String;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "FontFix_Text1"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 605
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    :cond_16
    const-string v1, "Light The Flame."

    .line 608
    .local v1, "str2":Ljava/lang/String;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "FontFix_Text2"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 609
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    :cond_2c
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v2}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v2

    .line 613
    .local v2, "today":Ljava/time/LocalDate;
    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v3

    .line 614
    .local v3, "dayOfWeek":Ljava/time/DayOfWeek;
    invoke-virtual {v3}, Ljava/time/DayOfWeek;->getValue()I

    move-result v4

    sparse-switch v4, :sswitch_data_44

    .line 620
    const-string v4, "Rainfall,the storm approaches."

    return-object v4

    .line 616
    :sswitch_42
    return-object v0

    .line 618
    :sswitch_43
    return-object v1

    :sswitch_data_44
    .sparse-switch
        0x2 -> :sswitch_43
        0x6 -> :sswitch_42
    .end sparse-switch
.end method

.method public static loadFlag(Ljava/lang/String;)V
    .registers 6
    .param p0, "sCivTag"    # Ljava/lang/String;

    .line 510
    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu;->disposeData()V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gfx/flagsXH/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 512
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_1f1

    .line 513
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 514
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_1f1

    .line 515
    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gfx/flagsH/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 516
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_1f1

    .line 517
    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 518
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_1f1

    .line 519
    :cond_141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gfx/flags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 520
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_1f1

    .line 521
    :cond_18a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 522
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_1f1

    .line 524
    :cond_1dd
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    const-string v2, "gfx/flagsXH/ran.png"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->flag:Laoc/kingdoms/lukasz/textures/Image;

    .line 527
    :goto_1f1
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 530
    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu;->disposeData()V

    .line 531
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 471
    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2a

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 473
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 474
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_ANIMATION_TIME:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    .line 477
    :cond_2a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    mul-float v1, v1, v6

    const v2, 0x3d50d0d1

    const v3, 0x3db0b0b1

    const v4, 0x3e088889

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 478
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, p3, v1

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 479
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 480
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 481
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 482
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 483
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 484
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 485
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 486
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 487
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 488
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 489
    iget v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int/2addr v0, p2

    iget v1, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iYPos:I

    add-int/2addr v1, p3

    iget v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    iget v3, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iHeight:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 490
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    iget v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v2, v0, p2

    iget v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iYPos:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iHeight:I

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 491
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 492
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iXPos:I

    add-int v2, v1, p2

    iget v1, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iYPos:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menus/MainMenu;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 493
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 494
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_147

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE:Z

    if-nez v0, :cond_153

    :cond_147
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_16f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE_MOBILE:Z

    if-eqz v0, :cond_16f

    :cond_153
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_CHANGE_BG_EVERY_X_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_16f

    .line 495
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    .line 496
    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu$22;

    const-string v1, "loadBackground"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menus/MainMenu$22;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 506
    :cond_16f
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 507
    return-void
.end method
