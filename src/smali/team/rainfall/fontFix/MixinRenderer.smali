.class public Lteam/rainfall/fontFix/MixinRenderer;
.super Ljava/lang/Object;
.source "MixinRenderer.java"


# annotations
.annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Mixin;
    mixinClass = "aoc.kingdoms.lukasz.jakowski.Renderer.Renderer"
.end annotation


# static fields
.field public static fontBorder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public static fontBorderSize:I

.field public static fontMain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public static fontMainSize:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearFonts()V
    .registers 3

    .line 26
    sget-object v0, Lteam/rainfall/fontFix/FontFix;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget v1, Lteam/rainfall/fontFix/MixinRenderer;->fontMainSize:I

    if-ge v0, v1, :cond_1e

    .line 28
    sget-object v1, Lteam/rainfall/fontFix/MixinRenderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 29
    sget-object v1, Lteam/rainfall/fontFix/MixinRenderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 32
    .end local v0    # "i":I
    :cond_1e
    sget-object v0, Lteam/rainfall/fontFix/MixinRenderer;->fontMain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    const/4 v0, 0x0

    sput v0, Lteam/rainfall/fontFix/MixinRenderer;->fontMainSize:I

    .line 34
    return-void
.end method

.method public static final loadFont(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "sFont"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-float v0, v0

    .line 38
    .local v0, "texSize":F
    const v1, 0x3f2aaaab

    mul-float v1, v1, v0

    const/high16 v2, 0x44800000    # 1024.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 39
    .local v1, "texSize2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FontFix.textureSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 40
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 41
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-nez v2, :cond_33

    const/16 v2, 0x1000

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 42
    :cond_33
    const/4 v2, 0x0

    .line 43
    .local v2, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    if-gez p2, :cond_40

    .line 44
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->DEFAULT_FONT_SIZE:I

    int-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v3, v3, v4

    float-to-int p2, v3

    .line 48
    :cond_40
    :try_start_40
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game/fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5c} :catch_5e

    move-object v2, v3

    .line 51
    goto :goto_6b

    .line 49
    :catch_5e
    move-exception v3

    .line 50
    .local v3, "var5":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v5, "game/fonts/Roboto-Bold.ttf"

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v2, v4

    .line 53
    .end local v3    # "var5":Ljava/lang/Exception;
    :goto_6b
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 55
    .local v3, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 56
    iput-object p1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 57
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    goto :goto_83

    .line 59
    :cond_7c
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!.?"

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 60
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 62
    :goto_83
    const/4 v4, 0x6

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 63
    const-string v4, "FontColor"

    invoke-static {v4}, Lteam/rainfall/fontFix/FontFix;->readFontColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 64
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 65
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 66
    sget-object v4, Lteam/rainfall/fontFix/MixinRenderer;->fontMain:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v4, Lteam/rainfall/fontFix/MixinRenderer;->fontMain:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sput v4, Lteam/rainfall/fontFix/MixinRenderer;->fontMainSize:I

    .line 68
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 69
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    .line 71
    :cond_b4
    return-void
.end method

.method public static final loadFontBorder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "sFont"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-float v0, v0

    .line 75
    .local v0, "texSize":F
    const v1, 0x3f2aaaab

    mul-float v1, v1, v0

    const/high16 v2, 0x44800000    # 1024.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 76
    .local v1, "texSize2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FontFix.textureSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 77
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 78
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-nez v2, :cond_33

    const/16 v2, 0x1000

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 79
    :cond_33
    const/4 v2, 0x0

    .line 82
    .local v2, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    :try_start_34
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game/fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_50} :catch_52

    move-object v2, v3

    .line 85
    goto :goto_5f

    .line 83
    :catch_52
    move-exception v3

    .line 84
    .local v3, "var4":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v5, "game/fonts/Roboto-Bold.ttf"

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v2, v4

    .line 87
    .end local v3    # "var4":Ljava/lang/Exception;
    :goto_5f
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 88
    .local v3, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_70

    .line 89
    iput-object p1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 90
    iput-boolean v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    goto :goto_77

    .line 92
    :cond_70
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!.?"

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 93
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 95
    :goto_77
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_SIZE:I

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 96
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_R:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_G:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_B:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_A:F

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 97
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 98
    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 99
    iput-boolean v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    .line 100
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_R:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_G:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_B:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_A:F

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    .line 101
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    int-to-float v4, v4

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    .line 102
    sget-object v4, Lteam/rainfall/fontFix/MixinRenderer;->fontBorder:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v4, Lteam/rainfall/fontFix/MixinRenderer;->fontBorder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sput v4, Lteam/rainfall/fontFix/MixinRenderer;->fontBorderSize:I

    .line 104
    sget-object v4, Lteam/rainfall/fontFix/MixinRenderer;->fontBorder:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setFixedWidthGlyphs(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 106
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    .line 108
    :cond_e1
    return-void
.end method
