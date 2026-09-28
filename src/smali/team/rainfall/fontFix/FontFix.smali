.class public Lteam/rainfall/fontFix/FontFix;
.super Ljava/lang/Object;
.source "FontFix.java"


# static fields
.field public static dontShowMainMenuQQ:Z

.field public static fonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/rainfall/fontFix/FontData;",
            ">;"
        }
    .end annotation
.end field

.field public static titleSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lteam/rainfall/fontFix/FontFix;->fonts:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lteam/rainfall/fontFix/FontFix;->titleSet:Z

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lteam/rainfall/fontFix/FontFix;->dontShowMainMenuQQ:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy()V
    .registers 2

    .line 63
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_f

    .line 64
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 66
    :cond_f
    return-void
.end method

.method static synthetic lambda$playStartMusic$0(Lcom/badlogic/gdx/audio/Music;)V
    .registers 2
    .param p0, "music"    # Lcom/badlogic/gdx/audio/Music;

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    return-void
.end method

.method public static loadFont(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "sFont"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .line 34
    sget-object v0, Lteam/rainfall/fontFix/FontFix;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 35
    invoke-static {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadFont(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    new-instance v0, Lteam/rainfall/fontFix/FontData;

    invoke-direct {v0}, Lteam/rainfall/fontFix/FontData;-><init>()V

    .line 37
    .local v0, "fontData":Lteam/rainfall/fontFix/FontData;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lteam/rainfall/fontFix/FontData;->id:I

    .line 38
    iput-object p0, v0, Lteam/rainfall/fontFix/FontData;->name:Ljava/lang/String;

    .line 39
    sget-object v1, Lteam/rainfall/fontFix/FontFix;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget v1, v0, Lteam/rainfall/fontFix/FontData;->id:I

    return v1

    .line 43
    .end local v0    # "fontData":Lteam/rainfall/fontFix/FontData;
    :cond_24
    sget-object v0, Lteam/rainfall/fontFix/FontFix;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/rainfall/fontFix/FontData;

    .line 44
    .local v1, "font":Lteam/rainfall/fontFix/FontData;
    iget-object v2, v1, Lteam/rainfall/fontFix/FontData;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 45
    iget v0, v1, Lteam/rainfall/fontFix/FontData;->id:I

    return v0

    .line 47
    .end local v1    # "font":Lteam/rainfall/fontFix/FontData;
    :cond_41
    goto :goto_2a

    .line 48
    :cond_42
    invoke-static {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadFont(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    new-instance v0, Lteam/rainfall/fontFix/FontData;

    invoke-direct {v0}, Lteam/rainfall/fontFix/FontData;-><init>()V

    .line 50
    .restart local v0    # "fontData":Lteam/rainfall/fontFix/FontData;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lteam/rainfall/fontFix/FontData;->id:I

    .line 51
    iput-object p0, v0, Lteam/rainfall/fontFix/FontData;->name:Ljava/lang/String;

    .line 52
    sget-object v1, Lteam/rainfall/fontFix/FontFix;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget v1, v0, Lteam/rainfall/fontFix/FontData;->id:I

    return v1
.end method

.method public static paste()V
    .registers 2

    .line 57
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Clipboard;->hasContents()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 60
    :cond_2f
    return-void
.end method

.method public static playStartMusic()V
    .registers 4

    .line 69
    :try_start_0
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->setTitle()V

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio/music/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "startMusic"

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v1

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lteam/rainfall/fontFix/FontFix$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lteam/rainfall/fontFix/FontFix$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    .line 76
    return-void

    .line 77
    :catch_5c
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "ex":Ljava/lang/Exception;
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    .line 81
    return-void
.end method

.method public static readFontColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 83
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    :cond_15
    goto :goto_48

    :sswitch_16
    const-string v1, "white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x4

    goto :goto_49

    :sswitch_20
    const-string v1, "green"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    goto :goto_49

    :sswitch_2a
    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    goto :goto_49

    :sswitch_34
    const-string v1, "blue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x3

    goto :goto_49

    :sswitch_3e
    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_49

    :goto_48
    const/4 v1, -0x1

    :goto_49
    packed-switch v1, :pswitch_data_72

    .line 96
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object v1

    .line 93
    :pswitch_4f
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    return-object v1

    .line 91
    :pswitch_52
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    return-object v1

    .line 89
    :pswitch_55
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    return-object v1

    .line 87
    :pswitch_58
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    return-object v1

    nop

    :sswitch_data_5c
    .sparse-switch
        0x1b891 -> :sswitch_3e
        0x2e305a -> :sswitch_34
        0x5978fff -> :sswitch_2a
        0x5e0cf03 -> :sswitch_20
        0x6bdcc29 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
    .end packed-switch
.end method

.method public static setTitle()V
    .registers 2

    .line 23
    sget-boolean v0, Lteam/rainfall/fontFix/FontFix;->titleSet:Z

    if-nez v0, :cond_21

    .line 25
    :try_start_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    const-string v1, "customTitle"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setTitle(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 28
    goto :goto_1e

    .line 26
    :catch_18
    move-exception v0

    .line 27
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v1, "Failed to set custom title"

    invoke-static {v1}, Lteam/rainfall/finality/FinalityLogger;->warn(Ljava/lang/String;)V

    .line 29
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_1e
    const/4 v0, 0x1

    sput-boolean v0, Lteam/rainfall/fontFix/FontFix;->titleSet:Z

    .line 31
    :cond_21
    return-void
.end method
