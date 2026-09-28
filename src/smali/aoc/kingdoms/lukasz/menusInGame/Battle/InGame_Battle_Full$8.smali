.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$8;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;
    .param p2, "imageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 163
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    return-void
.end method
