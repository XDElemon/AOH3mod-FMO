.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$15;
.super Laoc/kingdoms/lukasz/menu_element/Empty;
.source "InGame_Battlefield.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;IIII)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 672
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 675
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    .line 676
    return-void
.end method
