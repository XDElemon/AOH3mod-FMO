.class Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$1;
.super Ljava/lang/Object;
.source "SteamManager.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;


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

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadUGCResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 6
    .param p1, "steamUGCHandle"    # Lcom/codedisaster/steamworks/SteamUGCHandle;
    .param p2, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 174
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onDownloadUGCResult"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onFileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Lcom/codedisaster/steamworks/SteamResult;II)V
    .registers 8
    .param p1, "steamAPICall"    # Lcom/codedisaster/steamworks/SteamAPICall;
    .param p2, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;
    .param p3, "i"    # I
    .param p4, "i1"    # I

    .line 209
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onFileReadAsyncComplete"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onFileShareResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 7
    .param p1, "steamUGCHandle"    # Lcom/codedisaster/steamworks/SteamUGCHandle;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 169
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onFileShareResult"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onFileWriteAsyncComplete(Lcom/codedisaster/steamworks/SteamResult;)V
    .registers 5
    .param p1, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 204
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onFileWriteAsyncComplete"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onPublishFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 7
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"    # Z
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 179
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onPublishFileResult"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onPublishedFileDeleted(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .registers 6
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "i"    # I

    .line 199
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onPublishedFileDeleted"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onPublishedFileSubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .registers 6
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "i"    # I

    .line 189
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onPublishedFileSubscribed"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public onPublishedFileUnsubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .registers 6
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "i"    # I

    .line 194
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onPublishedFileUnsubscribed"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onUpdatePublishedFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 7
    .param p1, "steamPublishedFileID"    # Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .param p2, "b"    # Z
    .param p3, "steamResult"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 184
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamRemoteStorage"

    const-string v2, "onUpdatePublishedFileResult"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method
