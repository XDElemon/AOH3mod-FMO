.class public Laoc/kingdoms/lukasz/jakowski/AA_Game;
.super Lcom/badlogic/gdx/ApplicationAdapter;
.source "AA_Game.java"


# instance fields
.field private renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

.field private touch:Laoc/kingdoms/lukasz/jakowski/Touch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/ApplicationAdapter;-><init>()V

    .line 48
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Touch;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Touch;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;

    .line 53
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/jakowski/AA_Game;

    .line 46
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;

    return-object v0
.end method

.method private static final initGame_LoadImages()V
    .registers 4

    .line 185
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/picker/sv.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    .line 186
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/picker/hue.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerHUE:I

    .line 187
    const-string v0, "ui/picker/pos.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    .line 188
    const-string v0, "ui/picker/edge.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scroll/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "position.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position:I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "position_active.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    .line 193
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/0.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt:I

    .line 194
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/1.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt2:I

    .line 195
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/2.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    .line 196
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/3.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt4:I

    .line 197
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/4.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    .line 199
    const-string v0, "ui/gradients/gradientVertical.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    .line 200
    const-string v0, "ui/gradients/gradientHorizontal.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    .line 201
    const-string v0, "ui/gradients/gradientHorizontal2.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal2:I

    .line 202
    const-string v0, "ui/gradients/gradientHorizontal3.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal3:I

    .line 204
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v2, "ui/gradients/gradientFull.png"

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    .line 206
    const-string v0, "ui/gradients/gradientFull2.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull2:I

    .line 207
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v2, "ui/gradients/gradientXY.png"

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    .line 213
    const-string v0, "ui/gradients/gradientXYVertical.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    .line 216
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v2, "ui/lines/line_32_off1.png"

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    .line 218
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/line_131.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->line_131:I

    .line 219
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/line_131_vertical.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->line_131_vertical:I

    .line 221
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-eqz v0, :cond_13d

    .line 222
    const-string v0, "gfx/logo/gameLogo_XXH.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    goto :goto_152

    .line 223
    :cond_13d
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    if-eqz v0, :cond_14a

    .line 224
    const-string v0, "gfx/logo/gameLogo_XH.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    goto :goto_152

    .line 227
    :cond_14a
    const-string v0, "gfx/logo/gameLogo.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    .line 229
    :goto_152
    return-void
.end method

.method private initInput()V
    .registers 3

    .line 250
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;-><init>(Laoc/kingdoms/lukasz/jakowski/AA_Game;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 353
    return-void
.end method


# virtual methods
.method public create()V
    .registers 5

    .line 59
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FileManager;->initLoadInterface()V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    .line 62
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    .line 65
    :try_start_1c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadLowSettings()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 68
    goto :goto_24

    .line 66
    :catch_20
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 71
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_24
    :try_start_24
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSettings()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    .line 74
    goto :goto_2c

    .line 72
    :catch_28
    move-exception v0

    .line 73
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 76
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initUIScale()V

    .line 78
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 79
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->init()V

    .line 80
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->loadSubscribedItems()V

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->requestCurrentStats()Z

    .line 84
    :cond_40
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadLanguage()V

    .line 86
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "font"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_MAIN_SIZE:I

    const-string v2, "A"

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadFont(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    .line 89
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initGame()V

    .line 91
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initInput()V

    .line 93
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_71

    const/4 v0, 0x1

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop:Z

    .line 94
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v2, :cond_8b

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_89

    goto :goto_8b

    :cond_89
    const/4 v0, 0x0

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 v0, 0x1

    :goto_8c
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid:Z

    .line 95
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_99

    goto :goto_9a

    :cond_99
    const/4 v1, 0x0

    :goto_9a
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->isiOS:Z

    .line 97
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces()V

    .line 99
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getUIScale()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->initDefinedScales()V

    .line 102
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 360
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->initSteam:Z

    if-nez v0, :cond_a

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 361
    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC;->dispose()V

    .line 362
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUtils:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUtils;->dispose()V

    .line 363
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->dispose()V

    .line 365
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->shutdown()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 369
    :cond_1c
    goto :goto_1e

    .line 367
    :catch_1d
    move-exception v0

    .line 372
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->dispose()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 375
    goto :goto_25

    .line 373
    :catch_24
    move-exception v0

    .line 378
    :goto_25
    :try_start_25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->dispose()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 381
    goto :goto_2c

    .line 379
    :catch_2b
    move-exception v0

    .line 384
    :goto_2c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    :try_start_2d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 385
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_44} :catch_48

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 389
    .end local v0    # "i":I
    :cond_47
    goto :goto_49

    .line 387
    :catch_48
    move-exception v0

    .line 392
    :goto_49
    :try_start_49
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->dispose()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_4f

    .line 395
    goto :goto_50

    .line 393
    :catch_4f
    move-exception v0

    .line 398
    :goto_50
    :try_start_50
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_56

    .line 401
    goto :goto_57

    .line 399
    :catch_56
    move-exception v0

    .line 404
    :goto_57
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_58
    :try_start_58
    sget-object v1, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 405
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_67} :catch_6b

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 409
    .end local v0    # "i":I
    :cond_6a
    goto :goto_6c

    .line 407
    :catch_6b
    move-exception v0

    .line 412
    :goto_6c
    const/4 v0, 0x0

    :try_start_6d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->running:Z

    .line 413
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->interrupt()V

    .line 414
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->join()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7b} :catch_7c

    .line 417
    goto :goto_7d

    .line 415
    :catch_7c
    move-exception v1

    .line 420
    :goto_7d
    :try_start_7d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->running:Z

    .line 421
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->interrupt()V

    .line 422
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->join()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8b} :catch_8c

    .line 425
    goto :goto_8d

    .line 423
    :catch_8c
    move-exception v1

    .line 428
    :goto_8d
    :try_start_8d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->running:Z

    .line 429
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->interrupt()V

    .line 430
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->join()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9b} :catch_9c

    .line 433
    goto :goto_9d

    .line 431
    :catch_9c
    move-exception v1

    .line 436
    :goto_9d
    :try_start_9d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->running:Z

    .line 437
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->interrupt()V

    .line 438
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->join()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ab} :catch_ac

    .line 441
    goto :goto_ad

    .line 439
    :catch_ac
    move-exception v0

    .line 444
    :goto_ad
    :try_start_ad
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 447
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 448
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 449
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 450
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 451
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 452
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 454
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 456
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_e9} :catch_ea

    .line 459
    goto :goto_eb

    .line 457
    :catch_ea
    move-exception v0

    .line 462
    :goto_eb
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ec
    :try_start_ec
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_104

    .line 463
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_101} :catch_105

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    .line 467
    .end local v0    # "i":I
    :cond_104
    goto :goto_106

    .line 465
    :catch_105
    move-exception v0

    .line 470
    :goto_106
    :try_start_106
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10b} :catch_10c

    .line 473
    goto :goto_10d

    .line 471
    :catch_10c
    move-exception v0

    .line 476
    :goto_10d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10e
    :try_start_10e
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_124

    .line 477
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_10e

    .line 479
    .end local v0    # "i":I
    :cond_124
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_12e} :catch_12f

    .line 483
    goto :goto_130

    .line 481
    :catch_12f
    move-exception v0

    .line 486
    :goto_130
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_131
    :try_start_131
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager;->ideologiesImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14b

    .line 487
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager;->ideologiesImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_131

    .line 489
    .end local v0    # "i":I
    :cond_14b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager;->lIdeologies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_152} :catch_153

    .line 492
    goto :goto_154

    .line 490
    :catch_153
    move-exception v0

    .line 495
    :goto_154
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_155
    :try_start_155
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16f

    .line 496
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_155

    .line 498
    .end local v0    # "i":I
    :cond_16f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ReligionManager;->lReligions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_176} :catch_177

    .line 501
    goto :goto_178

    .line 499
    :catch_177
    move-exception v0

    .line 504
    :goto_178
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_179
    :try_start_179
    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18f

    .line 505
    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_179

    .line 508
    .end local v0    # "i":I
    :cond_18f
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 509
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 510
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_19e} :catch_19f

    .line 513
    goto :goto_1a0

    .line 511
    :catch_19f
    move-exception v0

    .line 516
    :goto_1a0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a1
    :try_start_1a1
    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b7

    .line 517
    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a1

    .line 520
    .end local v0    # "i":I
    :cond_1b7
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacyImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 521
    sget-object v0, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1c1} :catch_1c2

    .line 524
    goto :goto_1c3

    .line 522
    :catch_1c2
    move-exception v0

    .line 527
    :goto_1c3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c4
    :try_start_1c4
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1da

    .line 528
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c4

    .line 531
    .end local v0    # "i":I
    :cond_1da
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 532
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1e4} :catch_1e5

    .line 535
    goto :goto_1e6

    .line 533
    :catch_1e5
    move-exception v0

    .line 537
    :goto_1e6
    invoke-super {p0}, Lcom/badlogic/gdx/ApplicationAdapter;->dispose()V

    .line 539
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->exit()V

    .line 540
    return-void
.end method

.method protected final initGame()V
    .registers 5

    .line 132
    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 133
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 135
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->ExtraMapScale:I

    int-to-float v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    .line 136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 138
    const-string v0, "gfx/imageNotFound.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->imageNotFound:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "buttons/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "buttonMenu.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "buttonMenuH.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "close.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    .line 144
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 145
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-eqz v0, :cond_d5

    const/16 v0, 0xa0

    goto :goto_de

    :cond_d5
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    if-eqz v0, :cond_dc

    const/16 v0, 0x78

    goto :goto_de

    :cond_dc
    const/16 v0, 0x5a

    :goto_de
    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    .line 147
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->initGameValue()V

    .line 149
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x42880000    # 68.0f

    div-float/2addr v0, v2

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    .line 150
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->PADDING:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_104

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    goto :goto_105

    :cond_104
    const/4 v1, 0x0

    :goto_105
    add-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 152
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    .line 153
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 154
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    .line 156
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    .line 157
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    .line 159
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    .line 160
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    .line 162
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initGame_LoadImages()V

    .line 164
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    .line 166
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    .line 167
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ambienceManager:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    .line 169
    new-instance v0, Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu/HoverManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    .line 170
    new-instance v0, Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 173
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->INIT_GAME_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 174
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->initColorPicker()V

    .line 176
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    .line 177
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->loadAnimations()V

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->updateWorldMap()V

    .line 180
    return-void
.end method

.method public initUIScale()V
    .registers 5

    .line 105
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->UI_SCALE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_56

    .line 106
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 107
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v0

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v0, v0, v3

    if-gez v0, :cond_27

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/16 v3, 0x4b0

    if-ge v0, v3, :cond_27

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-lt v0, v3, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    .line 108
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v0

    const/high16 v3, 0x43be0000    # 380.0f

    cmpl-float v0, v0, v3

    if-gez v0, :cond_42

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/16 v3, 0x708

    if-ge v0, v3, :cond_42

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-lt v0, v3, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :cond_42
    :goto_42
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    goto :goto_71

    .line 110
    :cond_45
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 111
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/16 v3, 0x960

    if-lt v0, v3, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    goto :goto_71

    .line 115
    :cond_56
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->UI_SCALE:I

    if-ne v0, v1, :cond_61

    .line 116
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    .line 117
    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    goto :goto_71

    .line 119
    :cond_61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->UI_SCALE:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6d

    .line 120
    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    .line 121
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    goto :goto_71

    .line 124
    :cond_6d
    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    .line 125
    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    .line 128
    :cond_71
    :goto_71
    return-void
.end method

.method public render()V
    .registers 3

    .line 236
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->detectEnemyMissions()V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateMissions()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->render()V

    .line 237
    return-void
.end method

.method public resize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 243
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resize(II)V

    .line 244
    return-void
.end method
