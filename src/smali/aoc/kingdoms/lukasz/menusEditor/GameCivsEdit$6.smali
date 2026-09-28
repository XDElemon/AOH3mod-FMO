.class Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit$6;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "GameCivsEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z

    .line 257
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit$6;->this$0:Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 265
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->GAMECIVS_EDIT_WIKI:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Wiki:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public buildElementHover()V
    .registers 12

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Optional"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->wiki:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    const-string v4, ""

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 287
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit$6;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 288
    return-void
.end method

.method public getButtonBG()I
    .registers 3

    .line 270
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->GAMECIVS_EDIT_WIKI:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-ne v0, v1, :cond_11

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG_Active()I

    move-result v0

    goto :goto_15

    :cond_11
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG()I

    move-result v0

    :goto_15
    return v0
.end method

.method public getButtonBG_Active()I
    .registers 3

    .line 275
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->GAMECIVS_EDIT_WIKI:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-ne v0, v1, :cond_11

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG()I

    move-result v0

    goto :goto_15

    :cond_11
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG_Active()I

    move-result v0

    :goto_15
    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wiki: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Wiki:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->GAMECIVS_EDIT_WIKI:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-ne v1, v2, :cond_1e

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->getKeyboardVerticalLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1e
    const-string v1, ""

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
