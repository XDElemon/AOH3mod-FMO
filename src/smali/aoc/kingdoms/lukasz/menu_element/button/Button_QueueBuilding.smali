.class public Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_QueueBuilding.java"


# instance fields
.field public building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

.field public provinceID:I


# direct methods
.method public constructor <init>(IIILaoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;)V
    .registers 18
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "provinceID"    # I
    .param p4, "building"    # Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    .line 33
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 34
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 35
    move/from16 v0, p3

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    .line 36
    move-object/from16 v1, p4

    iput-object v1, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    .line 37
    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 86
    return-void
.end method

.method public actionElementPPM()V
    .registers 5

    .line 90
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->cancelBuildingConstruction(III)Z

    .line 91
    return-void
.end method

.method public buildElementHover()V
    .registers 7

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 106
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 111
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 112
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 41
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 42
    .local v0, "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 43
    .local v1, "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    .line 45
    .local v8, "unitsFrameMap":Laoc/kingdoms/lukasz/textures/Image;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 47
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 48
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v3, 0x84c0

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 50
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 51
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 52
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 54
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v8, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 56
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v9, v2, 0x2

    .line 57
    .local v9, "tCenterX":I
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v10, v2, 0x2

    .line 59
    .local v10, "tCenterY":I
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    add-int/2addr v2, v9

    .line 62
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v10

    .line 60
    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 64
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    add-int v4, v2, v9

    .line 67
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v5, v2, v10

    .line 68
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->building:Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v3

    mul-float v2, v2, v6

    float-to-int v6, v2

    .line 69
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    .line 65
    move-object v2, v1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 71
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    nop

    .line 74
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 75
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_QueueBuilding;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 73
    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 76
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 81
    return-void
.end method
