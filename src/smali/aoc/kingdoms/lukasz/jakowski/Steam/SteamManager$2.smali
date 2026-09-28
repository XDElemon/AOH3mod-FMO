.class Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$2;
.super Ljava/lang/Object;
.source "SteamManager.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUGCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 9
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"    # Z
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 245
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onCreateItem"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    .line 249
    sget-object v0, Lcom/codedisaster/steamworks/SteamResult;->OK:Lcom/codedisaster/steamworks/SteamResult;

    const v1, 0xea60

    if-ne p3, v0, :cond_22

    .line 250
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "UploadedSuccessfully"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v2, v3, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    goto :goto_44

    .line 253
    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Error"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v2, v3, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    .line 256
    :goto_44
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    .line 258
    return-void
.end method

.method public onDeleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 315
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onDeleteItem"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onDownloadItemResult(ILcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 277
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onDownloadItemResult"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onGetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZZZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 9
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"    # Z
    .param p3, "b1"    # Z
    .param p4, "b2"    # Z
    .param p5, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 295
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onGetUserItemVote"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onRequestUGCDetails(Lcom/codedisaster/steamworks/SteamUGCDetails;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamUGCDetails"    # Lcom/codedisaster/steamworks/SteamUGCDetails;
    .param p2, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 237
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onRequestUGCDetails"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onSetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 7
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"    # Z
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 290
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onSetUserItemVote"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onStartPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 5
    .param p1, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 300
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onStartPlaytimeTracking"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onStopPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 5
    .param p1, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 305
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onStopPlaytimeTracking"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onStopPlaytimeTrackingForAllItems(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 5
    .param p1, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 310
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onStopPlaytimeTrackingForAllItems"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onSubmitItemUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 9
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"    # Z
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 262
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onSubmitItemUpdate"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/codedisaster/steamworks/SteamResult;->OK:Lcom/codedisaster/steamworks/SteamResult;

    const v1, 0xea60

    if-ne p3, v0, :cond_20

    .line 265
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "UploadedSuccessfully"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v2, v3, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    goto :goto_50

    .line 268
    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Error"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamResult;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v2, v3, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    .line 271
    :goto_50
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    .line 272
    sput-boolean v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_Load_Workshop;->uploaded:Z

    .line 273
    return-void
.end method

.method public onSubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 225
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onSubscribeItem"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onUGCQueryCompleted(Lcom/codedisaster/steamworks/SteamUGCQuery;IIZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 8
    .param p1, "steamUGCQuery"    # Lcom/codedisaster/steamworks/SteamUGCQuery;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "b"    # Z
    .param p5, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 218
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "onUGCQueryCompleted"

    invoke-interface {v0, v1, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onUnsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 231
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onUnsubscribeItem"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onUserFavoriteItemsListChanged(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 7
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"    # Z
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 284
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUGC"

    const-string v2, "onUserFavoriteItemsListChanged"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method
