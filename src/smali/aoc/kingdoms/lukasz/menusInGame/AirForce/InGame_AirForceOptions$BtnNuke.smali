.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnNuke;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "InGame_AirForceOptions.java"


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIII)V
    .registers 10

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnNuke;->this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;

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

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v5, :cond_9

    const-string v6, "\u4efb\u52a1\u6539\u578b\u9700\u79d1\u6280\u89e3\u9501\uff08\u540e\u7f6e\uff09"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 7

    const-string v0, "\u5f00\u542f"

    const-string v1, ""

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :cond_2f

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v3, :cond_2f

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2f

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    if-ltz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_2f

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2f

    const-string v1, "\u2713 "

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
