.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;
.source "InGame_Battle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;
    .param p2, "imageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 402
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 405
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->updateAnimationStatus()V

    .line 406
    return-void
.end method
