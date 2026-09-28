.class Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "CreateCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/CreateCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusEditor/CreateCiv;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z

    .line 163
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

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
    .registers 6

    .line 171
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 172
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->hideColorPicker()V

    goto :goto_67

    .line 175
    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v0, v1, v3, v4}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGBColor(FFF)V

    .line 176
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    .line 178
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosX()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosX(I)V

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosY(I)V

    .line 181
    :goto_67
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 185
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 186
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 187
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 190
    return-void
.end method

.method public updateLanguage()V
    .registers 3

    .line 166
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "CivilizationColor"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;->setText(Ljava/lang/String;)V

    .line 167
    return-void
.end method
