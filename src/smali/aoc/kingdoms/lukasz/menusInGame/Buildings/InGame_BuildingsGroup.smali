.class public Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BuildingsGroup.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iProvinceID:I

.field public static isCapital:Z

.field public static lTime:J

.field public static mTranslateX:I

.field public static menuHeight:I

.field public static menuX:I

.field public static menuY:I


# instance fields
.field public imgBot:I

.field public imgTitle:I

.field public imgTop:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuX:I

    .line 32
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuY:I

    .line 33
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuHeight:I

    .line 34
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->mTranslateX:I

    .line 37
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    .line 39
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    .line 41
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->isCapital:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    .line 46
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 49
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v11, v0, v1

    .line 50
    .local v11, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 54
    .local v12, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    const/4 v8, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_60

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    if-ne v0, v1, :cond_60

    .line 55
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    .line 56
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop928:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTop:I

    .line 57
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot928:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgBot:I

    .line 58
    sput-boolean v8, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->isCapital:Z

    .line 60
    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    move v14, v0

    .local v0, "buttonWidth":I
    goto :goto_80

    .line 62
    .end local v0    # "buttonWidth":I
    :cond_60
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title698:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    .line 63
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop698:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTop:I

    .line 64
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot698:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgBot:I

    .line 65
    sput-boolean v13, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->isCapital:Z

    .line 67
    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    move v14, v0

    .line 70
    .local v14, "buttonWidth":I
    :goto_80
    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    .line 72
    .local v15, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v16

    .line 74
    .local v16, "tMenuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v0, v16, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuX:I

    .line 75
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v17, v0, v1

    .line 76
    .local v17, "tMenuY":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v0

    add-int v0, v17, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuY:I

    .line 78
    const/16 v18, 0x0

    .line 82
    .local v18, "buttonY":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Administration"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v19

    const/4 v3, -0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v6, v14

    move-object v13, v7

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$2;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Military"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v4, v0, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v7

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Economy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v14, 0x2

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v7

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->isCapital:Z

    if-eqz v0, :cond_135

    .line 111
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Capital"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v14, 0x3

    add-int v4, v0, v1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v7

    const/4 v3, -0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move v6, v14

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_135
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v18, v18, v0

    .line 139
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    add-int v13, v18, v0

    .line 141
    .end local v18    # "buttonY":I
    .local v13, "buttonY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v17

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->menuPosY:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 143
    .local v0, "tMenuHeight":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-nez v1, :cond_186

    .line 144
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v17

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v8, v0

    goto :goto_187

    .line 143
    :cond_186
    move v8, v0

    .line 147
    .end local v0    # "tMenuHeight":I
    .local v8, "tMenuHeight":I
    :goto_187
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v0

    sub-int v0, v8, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuHeight:I

    .line 149
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    add-int/lit8 v1, v17, -0x1

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v15, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ConstructNewBuilding"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget v6, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    const/4 v4, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move v4, v15

    move v5, v8

    move-object v6, v10

    move/from16 v7, v18

    move/from16 v18, v8

    .end local v8    # "tMenuHeight":I
    .local v18, "tMenuHeight":I
    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 167
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 201
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 202
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Buildings(ZZ)V

    .line 203
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 175
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 176
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 178
    :cond_20
    sput p2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->mTranslateX:I

    .line 180
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 181
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    iget v7, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTop:I

    iget v8, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgBot:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 184
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 185
    return-void
.end method

.method public getInnerTitleHeight()I
    .registers 3

    .line 170
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 195
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 196
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBuildings()V

    .line 197
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 189
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 190
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    .line 191
    return-void
.end method
