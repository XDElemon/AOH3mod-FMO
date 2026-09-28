.class public Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;
.super Ljava/lang/Object;
.source "SteamManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;
    }
.end annotation


# static fields
.field public static final APP_ID:I = 0x2a4f0e

.field public static DONE:Z

.field public static createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

.field public static initSteam:Z

.field public static itemsInstalled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static itemsInstalledAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static itemsInstalledSize:I

.field public static modsFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static modsFoldersAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static modsFoldersAll_ModName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static modsFoldersSize:I

.field public static modsTurnedOff:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static steamFriends:Lcom/codedisaster/steamworks/SteamFriends;

.field public static steamRemoteStorage:Lcom/codedisaster/steamworks/SteamRemoteStorage;

.field public static steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

.field public static steamUGCCallback:Lcom/codedisaster/steamworks/SteamUGCCallback;

.field public static steamUtils:Lcom/codedisaster/steamworks/SteamUtils;

.field public static userStats:Lcom/codedisaster/steamworks/SteamUserStats;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->initSteam:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    .line 52
    sput v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll_ModName:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledAll:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    .line 62
    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 64
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamRemoteStorage:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    .line 66
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    .line 67
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGCCallback:Lcom/codedisaster/steamworks/SteamUGCCallback;

    .line 69
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUtils:Lcom/codedisaster/steamworks/SteamUtils;

    .line 70
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    .line 72
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addModsTurnedOff(Ljava/lang/String;)V
    .registers 2
    .param p0, "folder"    # Ljava/lang/String;

    .line 521
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 522
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 523
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 526
    :cond_16
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->removeModsTurnedOff(Ljava/lang/String;)V

    .line 529
    :goto_19
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->saveModsTurnedOff()V

    .line 531
    :cond_1c
    return-void
.end method

.method public static createItem(Ljava/lang/String;)V
    .registers 16
    .param p0, "modFolder"    # Ljava/lang/String;

    .line 425
    const-string v0, "/logo.png"

    const-string v1, "/"

    const-string v2, "/id.txt"

    const-string v3, "mods/"

    const/4 v4, 0x0

    :try_start_9
    sput-boolean v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 429
    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-wide/16 v6, 0xfa

    const v8, 0x2a4f0e

    if-eqz v5, :cond_79

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 430
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 431
    .local v2, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, "fileContent":Ljava/lang/String;
    new-instance v9, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    sput-object v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 434
    .end local v2    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "fileContent":Ljava/lang/String;
    goto/16 :goto_13b

    .line 435
    :cond_79
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 436
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 437
    .restart local v2    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 439
    .restart local v5    # "fileContent":Ljava/lang/String;
    new-instance v9, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    sput-object v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 440
    .end local v2    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "fileContent":Ljava/lang/String;
    goto :goto_13b

    .line 442
    :cond_c5
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v9, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Community:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    invoke-virtual {v5, v8, v9}, Lcom/codedisaster/steamworks/SteamUGC;->createItem(ILcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;)Lcom/codedisaster/steamworks/SteamAPICall;

    move-result-object v5

    .line 445
    .local v5, "steamAPICall":Lcom/codedisaster/steamworks/SteamAPICall;
    const-string v9, "createItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "steamAPICall.isValid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/codedisaster/steamworks/SteamAPICall;->isValid()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_e9
    sget-boolean v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    if-nez v9, :cond_fb

    .line 448
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->runCallbacks()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f0} :catch_2a3

    .line 450
    :try_start_f0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f3
    .catch Ljava/lang/InterruptedException; {:try_start_f0 .. :try_end_f3} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_2a3

    .line 453
    goto :goto_e9

    .line 451
    :catch_f4
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_f5
    new-instance v1, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {v1, v0}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "modFolder":Ljava/lang/String;
    throw v1
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fb} :catch_2a3

    .line 457
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "modFolder":Ljava/lang/String;
    :cond_fb
    :try_start_fb
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 458
    .local v2, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-virtual {v10}, Lcom/codedisaster/steamworks/SteamPublishedFileID;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_136} :catch_137

    .line 461
    .end local v2    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_13b

    .line 459
    :catch_137
    move-exception v2

    .line 460
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_138
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 465
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "steamAPICall":Lcom/codedisaster/steamworks/SteamAPICall;
    :goto_13b
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 468
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_142} :catch_2a3

    const-string v9, "/mod.txt"

    if-eqz v5, :cond_162

    .line 469
    :try_start_146
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .local v5, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_17d

    .line 471
    .end local v5    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_162
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 474
    .restart local v5    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_17d
    const-class v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;

    invoke-virtual {v2, v9, v5}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;

    .line 476
    .local v9, "modData":Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-virtual {v10, v8, v11}, Lcom/codedisaster/steamworks/SteamUGC;->startItemUpdate(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;

    move-result-object v8

    .line 478
    .local v8, "updateHandle":Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    new-instance v10, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 479
    .local v10, "nPath":Ljava/lang/String;
    sget-object v11, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v12, "nPath"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nPath: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v11, v8, v10}, Lcom/codedisaster/steamworks/SteamUGC;->setItemContent(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 483
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "modData.Name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;->Name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 485
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v12, v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;->Name:Ljava/lang/String;

    invoke-virtual {v11, v8, v12}, Lcom/codedisaster/steamworks/SteamUGC;->setItemTitle(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 486
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v12, v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;->Tags:[Ljava/lang/String;

    invoke-virtual {v11, v8, v12}, Lcom/codedisaster/steamworks/SteamUGC;->setItemTags(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;[Ljava/lang/String;)Z

    .line 487
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v12, v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;->Description:Ljava/lang/String;

    invoke-virtual {v11, v8, v12}, Lcom/codedisaster/steamworks/SteamUGC;->setItemDescription(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 489
    new-instance v11, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 491
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    new-instance v12, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Lcom/codedisaster/steamworks/SteamUGC;->setItemPreview(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z

    .line 492
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v3, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->Public:Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;

    invoke-virtual {v0, v8, v3}, Lcom/codedisaster/steamworks/SteamUGC;->setItemVisibility(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;)Z

    .line 494
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    iget-object v3, v9, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;->ChangeNote:Ljava/lang/String;

    invoke-virtual {v0, v8, v3}, Lcom/codedisaster/steamworks/SteamUGC;->submitItemUpdate(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;

    .line 496
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;

    invoke-direct {v0}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;-><init>()V

    .line 497
    .local v0, "updateInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v3, v8, v0}, Lcom/codedisaster/steamworks/SteamUGC;->getItemUpdateProgress(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 499
    sput-boolean v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    .line 501
    :goto_261
    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    if-nez v3, :cond_2a2

    .line 502
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->runCallbacks()V

    .line 503
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v3, v8, v0}, Lcom/codedisaster/steamworks/SteamUGC;->getItemUpdateProgress(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    .line 505
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "Progress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Progress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->getBytesProcessed()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->getBytesTotal()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v4, v11}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_297} :catch_2a3

    .line 508
    :try_start_297
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29a
    .catch Ljava/lang/InterruptedException; {:try_start_297 .. :try_end_29a} :catch_29b
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29a} :catch_2a3

    .line 511
    goto :goto_261

    .line 509
    :catch_29b
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_29c
    new-instance v3, Lcom/codedisaster/steamworks/SteamException;

    invoke-direct {v3, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "modFolder":Ljava/lang/String;
    throw v3
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2a2} :catch_2a3

    .line 515
    .end local v0    # "updateInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v5    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v8    # "updateHandle":Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .end local v9    # "modData":Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$ModData;
    .end local v10    # "nPath":Ljava/lang/String;
    .restart local p0    # "modFolder":Ljava/lang/String;
    :cond_2a2
    goto :goto_2a7

    .line 513
    :catch_2a3
    move-exception v0

    .line 514
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 516
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a7
    return-void
.end method

.method public static final init()V
    .registers 2

    .line 151
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->initSteam:Z

    if-eqz v0, :cond_64

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_64

    .line 155
    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    if-nez v0, :cond_63

    .line 157
    :try_start_f
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->loadLibraries()V

    .line 159
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->init()Z

    move-result v0

    if-nez v0, :cond_1e

    const v0, 0x2a4f0e

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAPI;->restartAppIfNecessary(I)Z
    :try_end_1e
    .catch Lcom/codedisaster/steamworks/SteamException; {:try_start_f .. :try_end_1e} :catch_1f

    .line 164
    :cond_1e
    goto :goto_23

    .line 162
    :catch_1f
    move-exception v0

    .line 163
    .local v0, "ex":Lcom/codedisaster/steamworks/SteamException;
    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamException;->printStackTrace()V

    .line 166
    .end local v0    # "ex":Lcom/codedisaster/steamworks/SteamException;
    :goto_23
    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$1;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorage;-><init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamRemoteStorage:Lcom/codedisaster/steamworks/SteamRemoteStorage;

    .line 215
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGCCallback:Lcom/codedisaster/steamworks/SteamUGCCallback;

    .line 320
    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGCCallback:Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUGC;-><init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    .line 322
    new-instance v0, Lcom/codedisaster/steamworks/SteamUtils;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$3;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUtils;-><init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUtils:Lcom/codedisaster/steamworks/SteamUtils;

    .line 330
    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$4;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$4;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStats;-><init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    .line 377
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$5;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$5;-><init>()V

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamFriends;-><init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamFriends:Lcom/codedisaster/steamworks/SteamFriends;

    .line 419
    :cond_63
    return-void

    .line 152
    :cond_64
    :goto_64
    return-void
.end method

.method public static isTurnedOn(Ljava/lang/String;)Z
    .registers 4
    .param p0, "folder"    # Ljava/lang/String;

    .line 547
    const/4 v0, 0x1

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 548
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_25

    .line 549
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 550
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 555
    .end local v1    # "i":I
    :cond_25
    return v0
.end method

.method public static loadSubscribedItems()V
    .registers 8

    .line 91
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->initSteam:Z

    if-eqz v0, :cond_3a

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 94
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC;->getNumSubscribedItems()I

    move-result v0

    new-array v0, v0, [Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 95
    .local v0, "steamPublishedFileIDS":[Lcom/codedisaster/steamworks/SteamPublishedFileID;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v1, v0}, Lcom/codedisaster/steamworks/SteamUGC;->getSubscribedItems([Lcom/codedisaster/steamworks/SteamPublishedFileID;)I

    move-result v1

    .line 97
    .local v1, "numSubscribed":I
    nop

    .line 100
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_32

    .line 104
    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-direct {v3}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;-><init>()V

    .line 105
    .local v3, "itemInstallInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamUGC:Lcom/codedisaster/steamworks/SteamUGC;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5, v3}, Lcom/codedisaster/steamworks/SteamUGC;->getItemInstallInfo(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z

    .line 110
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    nop

    .end local v3    # "itemInstallInfo":Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 115
    .end local v2    # "i":I
    :cond_32
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 120
    .end local v0    # "steamPublishedFileIDS":[Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .end local v1    # "numSubscribed":I
    :cond_3a
    goto :goto_3f

    .line 118
    :catch_3b
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 124
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3f
    :try_start_3f
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_41} :catch_8d

    const-string v1, "mods/"

    if-eqz v0, :cond_50

    .line 125
    :try_start_45
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_5a

    .line 127
    .end local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_50
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 130
    .restart local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_5a
    array-length v2, v0

    const/4 v3, 0x0

    :goto_5c
    if-ge v3, v2, :cond_84

    aget-object v4, v0, v3

    .line 131
    .local v4, "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    nop

    .end local v4    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 134
    :cond_84
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_8c} :catch_8d

    .line 137
    .end local v0    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_91

    .line 135
    :catch_8d
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 139
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_91
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->readModsTurnedOff()V

    .line 140
    return-void
.end method

.method public static readModsTurnedOff()V
    .registers 9

    .line 574
    const-string v0, "/mod.txt"

    const-string v1, "settings/ModsOff.txt"

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 575
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 578
    .end local v2    # "j":I
    :cond_1d
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_1e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_c7

    .line 579
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledAll:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :try_start_34
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 583
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 585
    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "tempTags":Ljava/lang/String;
    const-string v6, "Name:\\s*\"(.*?)\""

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 588
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 590
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 591
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "name":Ljava/lang/String;
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll_ModName:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    nop

    .end local v4    # "name":Ljava/lang/String;
    goto :goto_b0

    .line 594
    :cond_9f
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll_ModName:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_b0} :catch_b1

    .line 599
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "tempTags":Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_b0
    :goto_b0
    goto :goto_c3

    .line 597
    :catch_b1
    move-exception v3

    .line 598
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersAll_ModName:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v5}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1e

    .line 603
    .end local v2    # "j":I
    :cond_c7
    :try_start_c7
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-nez v0, :cond_e3

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_17f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 605
    :cond_e3
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_ee

    .line 606
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_f4

    .line 608
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_ee
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 611
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_f4
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "tempTags":Ljava/lang/String;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 615
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_104
    array-length v5, v2

    if-ge v3, v5, :cond_111

    .line 618
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v3, v3, 0x1

    goto :goto_104

    .line 621
    .end local v3    # "i":I
    :cond_111
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_112
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_16f

    .line 622
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "j":I
    :goto_121
    if-ltz v5, :cond_140

    .line 623
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13d

    .line 624
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 625
    goto :goto_140

    .line 622
    :cond_13d
    add-int/lit8 v5, v5, -0x1

    goto :goto_121

    .line 629
    .end local v5    # "j":I
    :cond_140
    :goto_140
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "j":I
    :goto_147
    if-ltz v5, :cond_16c

    .line 630
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    .line 631
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 632
    goto :goto_16c

    .line 629
    :cond_169
    add-int/lit8 v5, v5, -0x1

    goto :goto_147

    .line 621
    .end local v5    # "j":I
    :cond_16c
    :goto_16c
    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    .line 637
    .end local v3    # "i":I
    :cond_16f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    .line 638
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_17f} :catch_180

    .line 642
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "tempTags":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_17f
    goto :goto_184

    .line 640
    :catch_180
    move-exception v0

    .line 641
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 643
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_184
    return-void
.end method

.method public static removeModsTurnedOff(Ljava/lang/String;)V
    .registers 3
    .param p0, "folder"    # Ljava/lang/String;

    .line 534
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 535
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_2a

    .line 536
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 537
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 539
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->saveModsTurnedOff()V

    .line 540
    return-void

    .line 535
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 544
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public static saveModsTurnedOff()V
    .registers 4

    .line 559
    const-string v0, "settings/ModsOff.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 561
    .local v1, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 562
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 563
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    goto :goto_4f

    .line 567
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4f

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsTurnedOff:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 571
    .end local v0    # "i":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method public static final updateSteam_runCallbacks()V
    .registers 1

    .line 145
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->runCallbacks()V

    .line 148
    :cond_9
    return-void
.end method
