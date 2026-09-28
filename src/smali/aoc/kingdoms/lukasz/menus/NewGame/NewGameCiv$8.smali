.class Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$8;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;
.source "NewGameCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I

    .line 323
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$8;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 326
    sget-boolean v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->expandCivDesc:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->expandCivDesc:Z

    .line 327
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildNewGameCiv()V

    .line 328
    return-void
.end method
