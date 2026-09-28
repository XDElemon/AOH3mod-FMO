.class Laoc/kingdoms/lukasz/menus/MainMenu$14;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # I

    .line 323
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menus/MainMenu$14;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 9

    .line 325
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 326
    .local v0, "var10000":Laoc/kingdoms/lukasz/menu/MenuManager;
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu$14$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$14;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$14;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$14;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$14;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$14;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$14;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$14;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$14;->getHeight()I

    move-result v6

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu$14$1;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu$14;IIII)V

    invoke-static {v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 331
    new-instance v1, Laoc/kingdoms/lukasz/menus/MainMenu$14$2;

    const-string v2, "loadBackground"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menus/MainMenu$14$2;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu$14;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 339
    return-void
.end method
