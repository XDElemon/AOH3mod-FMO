.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnClose;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "InGame_AirForceOptions.java"


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIII)V
    .registers 10

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnClose;->this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;

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

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AirForce(Z)V

    return-void
.end method
