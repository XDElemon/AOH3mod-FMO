.class public Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Buildings.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iProvinceID:I


# instance fields
.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->iProvinceID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 25

    .line 30
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    move-object/from16 v11, p0

    iput-wide v0, v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    .line 34
    .local v1, "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 36
    .local v12, "titleHeight":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 38
    .local v13, "menuWidth":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v14, v2, v3

    .line 39
    .local v14, "menuX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v15, v2, v3

    .line 41
    .local v15, "menuY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v2, 0x2

    .line 42
    .local v16, "buttonYPadding":I
    const/4 v10, 0x0

    .line 44
    .local v10, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v2, 0x4

    .line 46
    .local v17, "textPosX":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "BuildingsConstructed"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v8, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int v18, v2, v3

    const/4 v5, -0x1

    move-object v2, v9

    move-object/from16 v3, p0

    move v7, v10

    move-object v11, v9

    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v11, v10, v2

    .line 54
    .end local v10    # "buttonY":I
    .local v11, "buttonY":I
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;

    mul-int/lit8 v2, v1, 0x2

    sub-int v8, v13, v2

    const/4 v9, 0x1

    const/16 v18, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v2, v10

    move v6, v1

    move v7, v11

    move/from16 v19, v14

    move-object v14, v10

    .end local v14    # "menuX":I
    .local v19, "menuX":I
    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;-><init>(ZIIIIIZZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v11, v2

    .line 58
    const/4 v14, 0x1

    .line 60
    .local v14, "addUniqueCapitalBuildings":Z
    if-eqz v14, :cond_f8

    .line 61
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$2;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "UniqueCapitalBuildings"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v8, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int v9, v2, v3

    const/4 v5, -0x1

    move-object v2, v10

    move-object/from16 v3, p0

    move v7, v11

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v11, v2

    .line 70
    :cond_f8
    const/4 v2, 0x1

    .line 72
    .local v2, "addOnce":Z
    const/4 v3, 0x0

    move v10, v3

    move v9, v11

    move v11, v2

    .end local v2    # "addOnce":Z
    .local v9, "buttonY":I
    .local v10, "i":I
    .local v11, "addOnce":Z
    :goto_fd
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v10, v2, :cond_1ae

    .line 73
    const/4 v2, 0x0

    move/from16 v18, v9

    move/from16 v20, v11

    move v11, v2

    .end local v9    # "buttonY":I
    .local v11, "j":I
    .local v18, "buttonY":I
    .local v20, "addOnce":Z
    :goto_107
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v11, v2, :cond_1a2

    .line 74
    if-eqz v20, :cond_16a

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v2, :cond_16a

    .line 75
    if-eqz v14, :cond_165

    .line 76
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$3;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Buildings"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v8, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int v21, v2, v3

    const/4 v5, -0x1

    move-object v2, v9

    move-object/from16 v3, p0

    move/from16 v7, v18

    move/from16 v22, v14

    move-object v14, v9

    .end local v14    # "addUniqueCapitalBuildings":Z
    .local v22, "addUniqueCapitalBuildings":Z
    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v18, v18, v2

    goto :goto_167

    .line 75
    .end local v22    # "addUniqueCapitalBuildings":Z
    .restart local v14    # "addUniqueCapitalBuildings":Z
    :cond_165
    move/from16 v22, v14

    .line 85
    .end local v14    # "addUniqueCapitalBuildings":Z
    .restart local v22    # "addUniqueCapitalBuildings":Z
    :goto_167
    const/16 v20, 0x0

    goto :goto_16c

    .line 74
    .end local v22    # "addUniqueCapitalBuildings":Z
    .restart local v14    # "addUniqueCapitalBuildings":Z
    :cond_16a
    move/from16 v22, v14

    .line 88
    .end local v14    # "addUniqueCapitalBuildings":Z
    .restart local v22    # "addUniqueCapitalBuildings":Z
    :goto_16c
    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;

    mul-int/lit8 v2, v1, 0x2

    sub-int v8, v13, v2

    const/4 v9, 0x1

    const/16 v21, 0x1

    const/4 v3, 0x0

    move-object v2, v14

    move v4, v10

    move v5, v11

    move v6, v1

    move/from16 v7, v18

    move/from16 v23, v10

    .end local v10    # "i":I
    .local v23, "i":I
    move/from16 v10, v21

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;-><init>(ZIIIIIZZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v18, v18, v2

    .line 73
    add-int/lit8 v11, v11, 0x1

    move/from16 v14, v22

    move/from16 v10, v23

    goto/16 :goto_107

    .end local v22    # "addUniqueCapitalBuildings":Z
    .end local v23    # "i":I
    .restart local v10    # "i":I
    .restart local v14    # "addUniqueCapitalBuildings":Z
    :cond_1a2
    move/from16 v23, v10

    move/from16 v22, v14

    .line 72
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "addUniqueCapitalBuildings":Z
    .restart local v22    # "addUniqueCapitalBuildings":Z
    .restart local v23    # "i":I
    add-int/lit8 v10, v23, 0x1

    move/from16 v9, v18

    move/from16 v11, v20

    .end local v23    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_fd

    .end local v18    # "buttonY":I
    .end local v20    # "addOnce":Z
    .end local v22    # "addUniqueCapitalBuildings":Z
    .restart local v9    # "buttonY":I
    .local v11, "addOnce":Z
    .restart local v14    # "addUniqueCapitalBuildings":Z
    :cond_1ae
    move/from16 v23, v10

    move/from16 v22, v14

    .line 94
    .end local v10    # "i":I
    .end local v14    # "addUniqueCapitalBuildings":Z
    .restart local v22    # "addUniqueCapitalBuildings":Z
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v12

    sub-int/2addr v2, v15

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 96
    .local v14, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v13, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$4;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ConstructNewBuilding"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    const/4 v6, 0x0

    move-object v2, v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v2, p0

    move-object v3, v10

    move/from16 v4, v19

    move v5, v15

    move v6, v13

    move v7, v14

    move-object v8, v0

    move/from16 v21, v9

    .end local v9    # "buttonY":I
    .local v21, "buttonY":I
    move/from16 v9, v18

    move/from16 v10, v20

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;)J
    .registers 3
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;

    .line 23
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 113
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 114
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 117
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 118
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 119
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 121
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 122
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 126
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 127
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    .line 128
    return-void
.end method
