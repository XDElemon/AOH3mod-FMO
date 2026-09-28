.class public Laoc/kingdoms/lukasz/jakowski/desktop/DesktopLauncher;
.super Ljava/lang/Object;
.source "DesktopLauncher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 16
    .param p0, "arg"    # [Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;-><init>()V

    .line 37
    .local v0, "config":Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;
    const-string v1, "Age of History 3"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setTitle(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "gfx/icon/icon_16x16.png"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setWindowIcon(Lcom/badlogic/gdx/Files$FileType;[Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "gfx/icon/icon_32x32.png"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setWindowIcon(Lcom/badlogic/gdx/Files$FileType;[Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "gfx/icon/icon_128x128.png"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setWindowIcon(Lcom/badlogic/gdx/Files$FileType;[Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setResizable(Z)V

    .line 45
    const/4 v1, -0x1

    .line 46
    .local v1, "tWidth":I
    const/4 v3, -0x1

    .line 47
    .local v3, "tHeight":I
    const/4 v5, 0x0

    .line 49
    .local v5, "fullScreenMode":Z
    const/4 v6, -0x1

    .line 50
    .local v6, "tSamples":I
    const/4 v7, 0x1

    .line 53
    .local v7, "tVSync":Z
    :try_start_35
    new-instance v8, Ljava/io/FileReader;

    const-string v9, "settings/Config.txt"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 54
    .local v8, "fr":Ljava/io/FileReader;
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_41} :catch_c1

    .line 55
    .local v9, "bfr":Ljava/io/BufferedReader;
    const-string v10, ""

    move-object v11, v10

    .line 57
    .local v11, "sLine":Ljava/lang/String;
    :goto_44
    :try_start_44
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    if-eqz v12, :cond_bb

    .line 58
    const-string v12, ";"

    invoke-virtual {v11, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_57} :catch_c1

    .line 60
    .local v12, "tempR":[Ljava/lang/String;
    :try_start_57
    aget-object v13, v12, v4

    const-string v14, "FULLSCREEN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69

    .line 61
    aget-object v13, v12, v2

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move v5, v13

    goto :goto_b0

    .line 63
    :cond_69
    aget-object v13, v12, v4

    const-string v14, "WIDTH"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 64
    aget-object v13, v12, v2

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v1, v13

    goto :goto_b0

    .line 66
    :cond_7b
    aget-object v13, v12, v4

    const-string v14, "HEIGHT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8d

    .line 67
    aget-object v13, v12, v2

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v3, v13

    goto :goto_b0

    .line 69
    :cond_8d
    aget-object v13, v12, v4

    const-string v14, "ANTIALIASING"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9f

    .line 70
    aget-object v13, v12, v2

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v6, v13

    goto :goto_b0

    .line 72
    :cond_9f
    aget-object v13, v12, v4

    const-string v14, "VSYNC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b0

    .line 73
    aget-object v13, v12, v2

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_af} :catch_b2
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_af} :catch_c1

    move v7, v13

    .line 83
    :cond_b0
    :goto_b0
    nop

    .line 84
    .end local v12    # "tempR":[Ljava/lang/String;
    goto :goto_44

    .line 75
    .restart local v12    # "tempR":[Ljava/lang/String;
    :catch_b2
    move-exception v2

    .line 76
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 77
    const/4 v3, -0x1

    .line 78
    const/4 v4, 0x1

    .line 80
    .end local v5    # "fullScreenMode":Z
    .local v4, "fullScreenMode":Z
    const/4 v5, -0x1

    .line 81
    .end local v6    # "tSamples":I
    .local v5, "tSamples":I
    const/4 v6, 0x1

    .line 82
    .end local v7    # "tVSync":Z
    .local v6, "tVSync":Z
    move v7, v6

    move v6, v5

    move v5, v4

    .line 86
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v4    # "fullScreenMode":Z
    .end local v12    # "tempR":[Ljava/lang/String;
    .local v5, "fullScreenMode":Z
    .local v6, "tSamples":I
    .restart local v7    # "tVSync":Z
    :cond_bb
    :try_start_bb
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c1

    .line 87
    const/4 v2, 0x0

    .line 88
    .end local v8    # "fr":Ljava/io/FileReader;
    .local v2, "fr":Ljava/io/FileReader;
    nop

    .line 91
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v9    # "bfr":Ljava/io/BufferedReader;
    .end local v11    # "sLine":Ljava/lang/String;
    goto :goto_c2

    .line 89
    :catch_c1
    move-exception v2

    .line 93
    :goto_c2
    if-gez v1, :cond_ce

    if-gez v3, :cond_ce

    .line 94
    invoke-static {}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setFullscreenMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)V

    goto :goto_da

    .line 97
    :cond_ce
    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setWindowedMode(II)V

    .line 99
    if-eqz v5, :cond_da

    .line 100
    invoke-static {}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setFullscreenMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)V

    .line 104
    :cond_da
    :goto_da
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->useVsync(Z)V

    .line 106
    const/16 v2, 0x200

    const/16 v4, 0x12

    const/16 v8, 0x20

    invoke-virtual {v0, v8, v2, v4}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;->setAudioConfig(III)V

    .line 108
    new-instance v2, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3Application;

    new-instance v4, Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/AA_Game;-><init>()V

    invoke-direct {v2, v4, v0}, Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3Application;-><init>(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/lwjgl3/Lwjgl3ApplicationConfiguration;)V

    .line 109
    return-void
.end method
