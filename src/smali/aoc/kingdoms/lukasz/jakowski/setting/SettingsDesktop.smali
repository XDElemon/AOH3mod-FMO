.class public Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;
.super Ljava/lang/Object;
.source "SettingsDesktop.java"


# static fields
.field public static fullscreen:Z

.field public static iHeight:I

.field public static iWidth:I

.field public static vSync:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->fullscreen:Z

    .line 13
    const/4 v1, -0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    .line 14
    sput v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    .line 16
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->vSync:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readConfig()V
    .registers 10

    .line 22
    const-string v0, "settings/Config.txt"

    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 23
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 24
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "tempTags":Ljava/lang/String;
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "tSplited":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    array-length v4, v2

    if-ge v3, v4, :cond_94

    .line 28
    aget-object v4, v2, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_95

    .line 31
    .local v4, "tempR":[Ljava/lang/String;
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_35
    aget-object v8, v4, v6

    const-string v9, "FULLSCREEN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 32
    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->fullscreen:Z

    goto :goto_80

    .line 34
    :cond_48
    aget-object v8, v4, v6

    const-string v9, "WIDTH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 35
    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    goto :goto_80

    .line 37
    :cond_5b
    aget-object v8, v4, v6

    const-string v9, "HEIGHT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 38
    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    goto :goto_80

    .line 40
    :cond_6e
    aget-object v6, v4, v6

    const-string v8, "VSYNC"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 41
    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->vSync:Z
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_80} :catch_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_80} :catch_84
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_80} :catch_95

    .line 53
    :cond_80
    :goto_80
    nop

    .line 27
    .end local v4    # "tempR":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 48
    .restart local v4    # "tempR":[Ljava/lang/String;
    :catch_84
    move-exception v6

    .line 49
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_85
    sput v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    .line 50
    sput v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    .line 51
    sput-boolean v7, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->fullscreen:Z

    .line 52
    goto :goto_94

    .line 43
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_8c
    move-exception v6

    .line 44
    .local v6, "ex":Ljava/lang/IndexOutOfBoundsException;
    sput v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    .line 45
    sput v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    .line 46
    sput-boolean v7, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->fullscreen:Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_93} :catch_95

    .line 47
    nop

    .line 58
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "tempTags":Ljava/lang/String;
    .end local v2    # "tSplited":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "tempR":[Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_94
    :goto_94
    goto :goto_99

    .line 56
    :catch_95
    move-exception v0

    .line 57
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_99
    return-void
.end method

.method public static final saveConfig()V
    .registers 5

    .line 62
    const-string v0, "settings/Config.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 64
    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FULLSCREEN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->fullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIDTH="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HEIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VSYNC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->vSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method
