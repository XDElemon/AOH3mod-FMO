.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "InGame_AirForce.java"


# instance fields
.field public airportIndex:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce;Ljava/lang/String;IIIIII)V
    .registers 11

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport;->this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce;

    iput p8, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport;->airportIndex:I

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
    .registers 3

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport;->airportIndex:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I

    const-string v1, "afp:row"

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AirForce(Z)V

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport;->airportIndex:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport;->airportIndex:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    return-void
.end method
