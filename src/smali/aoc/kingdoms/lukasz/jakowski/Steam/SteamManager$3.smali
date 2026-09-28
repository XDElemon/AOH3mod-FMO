.class Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$3;
.super Ljava/lang/Object;
.source "SteamManager.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUtilsCallback;


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

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSteamShutdown()V
    .registers 4

    .line 325
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SteamUtils"

    const-string v2, "onSteamShutdown"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->shutdown()V

    .line 327
    return-void
.end method
