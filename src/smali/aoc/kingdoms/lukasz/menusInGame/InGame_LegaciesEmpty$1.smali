.class Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "InGame_LegaciesEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;Ljava/lang/String;IIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I

    .line 35
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;

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
    .registers 8

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 45
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1$2;

    const-string v1, "loadBackground"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 55
    return-void
.end method
