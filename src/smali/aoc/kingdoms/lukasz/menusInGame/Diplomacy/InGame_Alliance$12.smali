.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance$12;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "InGame_Alliance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .registers 25
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "maxIconWidth"    # I
    .param p10, "fontID"    # I
    .param p11, "fontID2"    # I

    .line 277
    move-object v11, p0

    move-object v12, p1

    iput-object v12, v11, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance$12;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 2

    .line 285
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;->getHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance$12;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 286
    return-void
.end method

.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .registers 3

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance$12;->getIsHovered()Z

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menu/Colors;->getColorNegative(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
