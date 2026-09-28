.class Laoc/kingdoms/lukasz/menus/MainMenu_StatsEmpty$1;
.super Laoc/kingdoms/lukasz/menu_element/Empty;
.source "MainMenu_StatsEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu_StatsEmpty;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu_StatsEmpty;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu_StatsEmpty;IIII)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu_StatsEmpty;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 18
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_StatsEmpty$1;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_StatsEmpty;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 21
    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->disposeFlags()V

    .line 22
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->MAINMENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 23
    return-void
.end method
