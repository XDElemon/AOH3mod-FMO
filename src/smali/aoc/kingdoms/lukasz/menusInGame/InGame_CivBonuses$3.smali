.class Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "InGame_CivBonuses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;Ljava/lang/String;IIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I

    .line 682
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;

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
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 684
    if-eqz p1, :cond_5

    .line 685
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 687
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 688
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 691
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_19
    return-object v0
.end method
