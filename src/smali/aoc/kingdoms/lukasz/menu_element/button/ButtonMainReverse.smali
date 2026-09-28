.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "ButtonMainReverse.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .registers 8
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "isClickable"    # Z

    .line 11
    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 12
    return-void
.end method


# virtual methods
.method public getButtonBG()I
    .registers 2

    .line 16
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    return v0
.end method

.method public getButtonBG_Active()I
    .registers 2

    .line 21
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 26
    if-eqz p1, :cond_5

    .line 27
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 29
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 33
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_19
    return-object v0
.end method
