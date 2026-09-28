.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "ButtonBuilding_Special.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;
    }
.end annotation


# static fields
.field public static final COLOR_STATS:Lcom/badlogic/gdx/graphics/Color;

.field public static iconScale:F


# instance fields
.field public building:I

.field public buildingID:I

.field public built:Z

.field public colorBG:Lcom/badlogic/gdx/graphics/Color;

.field public colorMain:Lcom/badlogic/gdx/graphics/Color;

.field public colorOver:Lcom/badlogic/gdx/graphics/Color;

.field public iConstructedHeight:I

.field public iConstructedWidth:I

.field public iTextHeight:I

.field public iTextWidth:I

.field public iconMaxW:I

.field public innerStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;",
            ">;"
        }
    .end annotation
.end field

.field public sConstructed:Ljava/lang/String;

.field public sText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconScale:F

    .line 125
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3d20a0a1

    const v4, 0x3d70f0f1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->COLOR_STATS:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(ZIIIIIZZLjava/lang/String;Z)V
    .registers 35
    .param p1, "built"    # Z
    .param p2, "building"    # I
    .param p3, "buildingID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "isClickable"    # Z
    .param p8, "isResearched"    # Z
    .param p9, "sConstructed"    # Ljava/lang/String;
    .param p10, "allBuilt"    # Z

    .line 47
    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v12, p9

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 26
    const/4 v13, 0x0

    iput v13, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextWidth:I

    .line 27
    iput v13, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextHeight:I

    .line 29
    iput-boolean v13, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->built:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    .line 48
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 50
    move/from16 v14, p1

    iput-boolean v14, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->built:Z

    .line 52
    iput v9, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    .line 53
    iput v10, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    .line 55
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->fontID:I

    .line 57
    iput-object v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sConstructed:Ljava/lang/String;

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, v12}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 59
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedWidth:I

    .line 60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedHeight:I

    .line 63
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getImageScale(I)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconScale:F

    .line 65
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconMaxW:I

    .line 67
    move/from16 v15, p4

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setPosX(I)V

    .line 68
    move/from16 v7, p5

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setPosY(I)V

    .line 69
    invoke-virtual {v8, v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setWidth(I)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setHeight(I)V

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setText(Ljava/lang/String;)V

    .line 74
    move/from16 v6, p7

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setClickable(Z)V

    .line 75
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setVisible(Z)V

    .line 80
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v0, v0, v10

    const/16 v16, 0x0

    cmpl-float v0, v0, v16

    if-lez v0, :cond_bf

    .line 81
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    move/from16 v17, v0

    .local v0, "tStatsW":I
    goto :goto_d4

    .line 83
    .end local v0    # "tStatsW":I
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    move/from16 v17, v0

    .line 86
    .local v17, "tStatsW":I
    :goto_d4
    iget-object v4, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v13, -0x1

    invoke-static {v1, v13, v9, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v20, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v21, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v1

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v22, 0x3

    add-int v1, v1, v22

    sub-int v22, v0, v1

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v2, v18

    move-object v13, v3

    move/from16 v3, v19

    move-object v12, v4

    move/from16 v4, v20

    const/4 v14, 0x1

    move/from16 v5, v21

    move/from16 v6, v17

    move/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, -0x1

    invoke-static {v1, v2, v9, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v1

    const-string v2, "XDays"

    invoke-virtual {v0, v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v4, v0, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v1, v6

    sub-int v7, v0, v1

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v0, v0, v10

    cmpl-float v0, v0, v16

    if-lez v0, :cond_1e4

    .line 90
    iget-object v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v1, v1, v10

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->goldNegative:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    mul-int/lit8 v1, v17, 0x2

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v1, v6

    sub-int v7, v0, v1

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1e4
    if-eqz p10, :cond_1f5

    if-eqz p8, :cond_1f5

    .line 95
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    .line 96
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    .line 97
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_210

    .line 99
    :cond_1f5
    if-eqz p8, :cond_204

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    .line 102
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_210

    .line 104
    :cond_204
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    .line 105
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_RED:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    .line 106
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_RED:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    .line 109
    :goto_210
    const/4 v0, 0x0

    .line 110
    .local v0, "tWMax":I
    :goto_211
    iget v1, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextWidth:I

    if-le v1, v11, :cond_254

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_254

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_254

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setText(Ljava/lang/String;)V

    goto :goto_211

    .line 113
    :cond_254
    return-void
.end method

.method private final getImageScale(I)F
    .registers 4
    .param p1, "iImageID"    # I

    .line 305
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f933333    # 1.15f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static getPaddingIMG()I
    .registers 2

    .line 132
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .registers 4

    .line 311
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHoverBuilding(IIZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 312
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 119
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 120
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 121
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v12, :cond_27

    .line 153
    :cond_12
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 156
    :cond_27
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v5

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3e800000    # 0.25f

    if-nez v5, :cond_45

    if-eqz v12, :cond_42

    goto :goto_45

    :cond_42
    const/high16 v5, 0x3e800000    # 0.25f

    goto :goto_47

    :cond_45
    :goto_45
    const/high16 v5, 0x3f000000    # 0.5f

    :goto_47
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 157
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 159
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v5

    if-nez v5, :cond_84

    if-eqz v12, :cond_81

    goto :goto_84

    :cond_81
    const/high16 v5, 0x3f400000    # 0.75f

    goto :goto_86

    :cond_84
    :goto_84
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_86
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 160
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getButtonWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 161
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 163
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 164
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 166
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3eb33333    # 0.35f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 167
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 169
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 170
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 173
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v7, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 174
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v2, p1

    const/4 v15, 0x0

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 175
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 177
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 178
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 180
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 181
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v1

    add-int/lit8 v6, v1, 0x2

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 184
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v15, v15, v15, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 185
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 186
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 188
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 189
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 190
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 193
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v1, v15, v15, v15, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 194
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 195
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 197
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 198
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 199
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 201
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v5

    if-nez v5, :cond_323

    if-eqz v12, :cond_320

    goto :goto_323

    :cond_320
    const v13, 0x3e99999a    # 0.3f

    :cond_323
    :goto_323
    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 202
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerWidth()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_358
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36e

    .line 206
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    invoke-virtual {v2, v9, v10, v11, v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_358

    .line 210
    .end local v1    # "i":I
    :cond_36e
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 213
    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->built:Z

    if-nez v1, :cond_428

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_428

    if-eqz v12, :cond_381

    goto/16 :goto_428

    .line 216
    :cond_381
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setBlackWhite(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 217
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 218
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 220
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 221
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 222
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_46f

    .line 214
    :cond_428
    :goto_428
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 225
    :goto_46f
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 227
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v1, :cond_4fb

    .line 228
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 231
    :cond_4fb
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 233
    if-eqz v12, :cond_54c

    .line 234
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v1, v11

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_583

    .line 235
    :cond_54c
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_583

    .line 236
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v1, v11

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_HOVER:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    .line 238
    :cond_583
    :goto_583
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 279
    move-object v0, p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sConstructed:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedWidth:I

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 281
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    add-int v10, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v11, v1, p3

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 282
    return-void
.end method

.method public getButtonWidth()I
    .registers 3

    .line 128
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 285
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getInnerPosX()I
    .registers 2

    .line 136
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getButtonWidth()I

    move-result v0

    return v0
.end method

.method public getInnerWidth()I
    .registers 3

    .line 140
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 301
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleHeight()I
    .registers 3

    .line 144
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopH()I
    .registers 3

    .line 148
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue1()I
    .registers 2

    .line 316
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    return v0
.end method

.method public getValue2()I
    .registers 2

    .line 321
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;

    .line 292
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sText:Ljava/lang/String;

    .line 294
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 295
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextWidth:I

    .line 296
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextHeight:I

    .line 297
    return-void
.end method
