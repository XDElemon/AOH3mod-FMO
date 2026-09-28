.class Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Law3;
.source "InGame_Laws.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "sDesc"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "imageID"    # I
    .param p8, "lawID"    # I
    .param p9, "lawID2"    # I

    .line 78
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law3;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;->getValue2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_LawReform(II)V

    .line 82
    return-void
.end method
