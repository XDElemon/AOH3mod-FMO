.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;
.source "InGame_Battle_Full.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;IIIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;
    .param p2, "nCivID"    # I
    .param p3, "imageID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "id"    # I
    .param p7, "offsetY"    # I

    .line 102
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;-><init>(IIIIII)V

    return-void
.end method
