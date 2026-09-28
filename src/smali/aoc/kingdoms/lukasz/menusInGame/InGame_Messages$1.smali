.class Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;
.super Laoc/kingdoms/lukasz/menu_element/MessageButton;
.source "InGame_Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;Ljava/lang/String;IIIJIIZ)V
    .registers 23
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "iCivID"    # I
    .param p4, "imageID"    # I
    .param p5, "expiresTurnID"    # I
    .param p6, "time"    # J
    .param p8, "iPosX"    # I
    .param p9, "iPosY"    # I
    .param p10, "isClickable"    # Z

    .line 35
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/MessageButton;-><init>(Ljava/lang/String;IIIJIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 8

    .line 39
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MessageButton;->actionElement()V

    .line 41
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 47
    return-void
.end method
