.class Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$5;
.super Ljava/lang/Object;
.source "SteamManager.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamFriendsCallback;


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

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarImageLoaded(Lcom/codedisaster/steamworks/SteamID;III)V
    .registers 5
    .param p1, "steamID"    # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "image"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 401
    return-void
.end method

.method public onFriendRichPresenceUpdate(Lcom/codedisaster/steamworks/SteamID;I)V
    .registers 3
    .param p1, "steamIDFriend"    # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "appID"    # I

    .line 406
    return-void
.end method

.method public onGameLobbyJoinRequested(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)V
    .registers 3
    .param p1, "steamIDLobby"    # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "steamIDFriend"    # Lcom/codedisaster/steamworks/SteamID;

    .line 396
    return-void
.end method

.method public onGameOverlayActivated(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 391
    return-void
.end method

.method public onGameRichPresenceJoinRequested(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)V
    .registers 3
    .param p1, "steamIDFriend"    # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "connect"    # Ljava/lang/String;

    .line 411
    return-void
.end method

.method public onGameServerChangeRequested(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 416
    return-void
.end method

.method public onPersonaStateChange(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;)V
    .registers 3
    .param p1, "steamID"    # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "change"    # Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    .line 386
    return-void
.end method

.method public onSetPersonaNameResponse(ZZLcom/codedisaster/steamworks/SteamResult;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "localSuccess"    # Z
    .param p3, "result"    # Lcom/codedisaster/steamworks/SteamResult;

    .line 381
    return-void
.end method
