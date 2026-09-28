.class Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$10;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;
.source "InGame_Court_WorldCivs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;IIIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;
    .param p2, "religionID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I

    .line 462
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;-><init>(IIIII)V

    return-void
.end method
