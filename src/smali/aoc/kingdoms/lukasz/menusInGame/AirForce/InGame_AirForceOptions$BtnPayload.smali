.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnPayload;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "InGame_AirForceOptions.java"


# instance fields
.field public payloadKind:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIII)V
    .registers 11

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnPayload;->this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;

    iput p8, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnPayload;->payloadKind:I

    move-object v0, p0

    move-object v1, p2

    move p0, p3

    move p1, p4

    move p2, p5

    move p3, p6

    move p4, p7

    const/4 p5, 0x1

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 9

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_40

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :cond_40

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_40

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    if-ltz v1, :cond_40

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_40

    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnPayload;->payloadKind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v5, :cond_40

    const-string v6, "\u4efb\u52a1\u6539\u578b\u9700\u79d1\u6280\u89e3\u9501\uff08\u540e\u7f6e\uff09"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    goto :goto_40

    :cond_33
    const/4 v4, 0x1

    if-le v3, v4, :cond_37

    const/4 v3, 0x0

    :cond_37
    iput v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v5, :cond_40

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_AirForce()V

    :cond_40
    :goto_40
    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const-string v1, "\u5bf9\u7a7a"

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnPayload;->payloadKind:I

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    const-string v1, "\u5bf9\u5730"

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    const-string v1, "\u4efb\u52a1\u6539\u578b"

    const/4 v3, 0x2

    :cond_10
    const-string v2, ""

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v4

    if-eqz v4, :cond_3c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v5, :cond_3c

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3c

    sget v5, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    if-ltz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3c

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v4, :cond_3c

    iget v6, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I

    if-ne v6, v3, :cond_3c

    const-string v2, "\u2713 "

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
