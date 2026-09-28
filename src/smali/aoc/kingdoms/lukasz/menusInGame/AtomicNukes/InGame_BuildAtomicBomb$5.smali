.class Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb$5;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "InGame_BuildAtomicBomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z

    .line 125
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb$5;->this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 128
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;->confirm()V

    .line 129
    return-void
.end method

.method public buildElementHover()V
    .registers 2

    .line 133
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;->getHoverBuildAtomicBomb()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb$5;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 134
    return-void
.end method
