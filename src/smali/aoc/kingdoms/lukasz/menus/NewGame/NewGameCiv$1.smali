.class Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Animation;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIZ)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "isClickable"    # Z

    .line 87
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Animation;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 5

    .line 95
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 96
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->hideColorPicker()V

    goto :goto_65

    .line 99
    :cond_16
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ACTIVE_CIV_ID:I

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGBColor(FFF)V

    .line 102
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CIV_COLOR_NEWGAME:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    .line 104
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosX(I)V

    .line 105
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosY(I)V

    .line 107
    :goto_65
    return-void
.end method

.method public buildElementHover()V
    .registers 7

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ShowHideColorPicker"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 120
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 124
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 125
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v0, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v0, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v0, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    add-int v3, v0, p3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v5, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 126
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 127
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v5, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 128
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 130
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 131
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 132
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v3, v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    div-int/lit8 v5, v1, 0x2

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 134
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v3, v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 135
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 136
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 137
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 138
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v3, v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 139
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 141
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 142
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 143
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v0, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    add-int v2, v0, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v0, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    add-int v3, v0, p3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v4, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    iget v5, v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 144
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 147
    :cond_169
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Animation;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 148
    return-void
.end method

.method public getFlagCivID()I
    .registers 2

    .line 90
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    return v0
.end method
