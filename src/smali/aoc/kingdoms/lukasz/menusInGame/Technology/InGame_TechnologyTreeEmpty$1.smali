.class Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty$1;
.super Laoc/kingdoms/lukasz/menu_element/Empty;
.source "InGame_TechnologyTreeEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty;IIII)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 17
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTreeEmpty;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    .line 21
    return-void
.end method

.method public actionElementPPM()V
    .registers 3

    .line 25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    .line 26
    return-void
.end method
