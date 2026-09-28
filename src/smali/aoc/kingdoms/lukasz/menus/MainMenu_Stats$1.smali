.class Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_Simple;
.source "MainMenu_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu_Stats;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I

    .line 88
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_Simple;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 8

    .line 91
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1$1;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 98
    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->hideReview:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->hideReview:I

    .line 99
    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->hideReview:I

    if-gtz v0, :cond_52

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildMainMenu_Stats()V

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, ":P"

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->heart:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 103
    :cond_52
    return-void
.end method
