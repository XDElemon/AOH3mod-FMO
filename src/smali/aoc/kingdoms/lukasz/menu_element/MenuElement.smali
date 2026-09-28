.class public Laoc/kingdoms/lukasz/menu_element/MenuElement;
.super Ljava/lang/Object;
.source "MenuElement.java"


# instance fields
.field protected fontID:I

.field protected iCurrent:I

.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field private isClickable:Z

.field private isHovered:Z

.field private isInView:Z

.field private isVisible:Z

.field public menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

.field protected typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isClickable:Z

    .line 22
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isVisible:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isInView:Z

    .line 25
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isHovered:Z

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iCurrent:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->fontID:I

    .line 59
    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 111
    return-void
.end method

.method public actionElementPPM()V
    .registers 1

    .line 112
    return-void
.end method

.method public actionElement_ExtraAction()V
    .registers 1

    .line 113
    return-void
.end method

.method public buildElementHover()V
    .registers 1

    .line 35
    return-void
.end method

.method public canBeHovered()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .registers 1

    .line 224
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I

    .line 63
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 64
    return-void
.end method

.method public drawMenuElementHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 41
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    if-eqz v0, :cond_32

    .line 42
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid:Z

    if-eqz v0, :cond_1b

    .line 43
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getHover_ExtraPosY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_32

    .line 46
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getHover_ExtraPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getHover_ExtraPosY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 49
    :cond_32
    :goto_32
    return-void
.end method

.method public getCheckboxState()Z
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getClickable()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isClickable:Z

    return v0
.end method

.method public getCurrent()I
    .registers 2

    .line 76
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iCurrent:I

    return v0
.end method

.method public getDescription()Z
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 167
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iHeight:I

    return v0
.end method

.method public getInStatisticsMode()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getIsHovered()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isHovered:Z

    return v0
.end method

.method public final getIsInView()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isInView:Z

    return v0
.end method

.method public getMenuElement_Hover_IsNull()Z
    .registers 2

    .line 52
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getMoveable()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getPosX()I
    .registers 2

    .line 143
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 151
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosY:I

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 209
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v0

    return v0
.end method

.method public getSFX_Hovered()I
    .registers 2

    .line 217
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v0

    return v0
.end method

.method public getScrollPosX()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollPosY()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollable()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 175
    const-string v0, ""

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getTextPos()I
    .registers 2

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 2

    .line 221
    const-string v0, ""

    return-object v0
.end method

.method public getTextWidth()I
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public final getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;
    .registers 2

    .line 121
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-object v0
.end method

.method public getValue1()I
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getValue2()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getVisible()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isVisible:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 159
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iWidth:I

    return v0
.end method

.method public playSFX_Hovered()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public resetElementHover()V
    .registers 2

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 38
    return-void
.end method

.method public scrollByWheel(I)V
    .registers 2
    .param p1, "nScoll"    # I

    .line 103
    return-void
.end method

.method public scrollTheMenu()V
    .registers 1

    .line 102
    return-void
.end method

.method public setCheckboxState(Z)V
    .registers 2
    .param p1, "checkboxState"    # Z

    .line 71
    return-void
.end method

.method public final setClickable(Z)V
    .registers 2
    .param p1, "isClickable"    # Z

    .line 131
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isClickable:Z

    .line 132
    return-void
.end method

.method public setCurrent(I)V
    .registers 2
    .param p1, "nCurrent"    # I

    .line 74
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iCurrent:I

    .line 75
    return-void
.end method

.method public setDescription(Z)V
    .registers 2
    .param p1, "isDescriptionActive"    # Z

    .line 84
    return-void
.end method

.method public final setHeight(I)V
    .registers 2
    .param p1, "iHeight"    # I

    .line 171
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iHeight:I

    .line 172
    return-void
.end method

.method public setInStatisticsMode(Z)V
    .registers 2
    .param p1, "inStatisticsMode"    # Z

    .line 88
    return-void
.end method

.method public setIsHovered(Z)V
    .registers 2
    .param p1, "isHovered"    # Z

    .line 203
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isHovered:Z

    .line 204
    return-void
.end method

.method public final setIsInView(Z)V
    .registers 2
    .param p1, "isInView"    # Z

    .line 195
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isInView:Z

    .line 196
    return-void
.end method

.method public setMax(I)V
    .registers 2
    .param p1, "iMax"    # I

    .line 78
    return-void
.end method

.method public setMin(I)V
    .registers 2
    .param p1, "iMin"    # I

    .line 77
    return-void
.end method

.method public final setPosX(I)V
    .registers 2
    .param p1, "iPosX"    # I

    .line 147
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosX:I

    .line 148
    return-void
.end method

.method public final setPosY(I)V
    .registers 2
    .param p1, "iPosY"    # I

    .line 155
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosY:I

    .line 156
    return-void
.end method

.method public setScrollPosX(I)V
    .registers 2
    .param p1, "scrollPosX"    # I

    .line 98
    return-void
.end method

.method public setScrollPosY(I)V
    .registers 2
    .param p1, "scrollPosY"    # I

    .line 100
    return-void
.end method

.method public setScrollable(Z)V
    .registers 2
    .param p1, "scrollable"    # Z

    .line 95
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTypeOfElement(Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;)V
    .registers 2
    .param p1, "typeOfElement"    # Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 124
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "isVisible"    # Z

    .line 139
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isVisible:Z

    .line 140
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "iWidth"    # I

    .line 163
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iWidth:I

    .line 164
    return-void
.end method

.method public stopScrolling()V
    .registers 1

    .line 105
    return-void
.end method

.method public updateHover(IIII)V
    .registers 5
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "menuPosX"    # I
    .param p4, "menuPosY"    # I

    .line 55
    return-void
.end method

.method public updateHovered()V
    .registers 1

    .line 206
    return-void
.end method

.method public updateLanguage()V
    .registers 1

    .line 109
    return-void
.end method

.method public updateSlider(I)V
    .registers 2
    .param p1, "nPosX"    # I

    .line 115
    return-void
.end method
