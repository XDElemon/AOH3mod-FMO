.class Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
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
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu_Stats;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "maxIconWidth"    # I

    .line 353
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 2

    .line 369
    iget v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 370
    return-void
.end method

.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 374
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrent()I
    .registers 2

    .line 359
    iget v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;->id:I

    return v0
.end method

.method public setCurrent(I)V
    .registers 2
    .param p1, "nCurrent"    # I

    .line 364
    iput p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;->id:I

    .line 365
    return-void
.end method
