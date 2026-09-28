.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME:I = 0xfa

.field public static final AUTO_MOVE_TURN_TIME:I = 0x5aa

.field protected static final DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final FONT_ID:I = 0x1

.field protected static final GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

.field protected static final GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field protected static POINTS_TEXT_SCALE:F

.field protected static final TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public bDecimal:B

.field public fAvaragePoint:F

.field public graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

.field public iActiveButtonID:I

.field public iAvaragePosY:I

.field public iBestCivID:I

.field public iBestDescDataID:I

.field public iBestDescDataTextWidth:I

.field public iButtonsPosY:I

.field public iDataSize:I

.field public iDescOfTurnID:I

.field public iFixPosY:I

.field public iHoveredID:I

.field public iMaxPoint:I

.field public iMaxPoint_Text:I

.field public iMaxSize:I

.field public iMaxTextWidth:I

.field public iMinPoint:I

.field public iMinTextWidth:I

.field public iPointsPosXSize:I

.field public iWidthTextX:I

.field public iWidthTextX2:I

.field public iWidthTextY:I

.field public iWorstCivID:I

.field public iWorstDescDataID:I

.field public iWorstDescDataTextWidth:I

.field public iZeroPosY:I

.field public lAuto_Move_Turn_Time:J

.field protected lData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/GraphData;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsPosX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lSortedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lTime:J

.field public lessThanTen:Z

.field public moveable:Z

.field public sTextX:Ljava/lang/String;

.field public sTextX2:Ljava/lang/String;

.field public sTextY:Ljava/lang/String;

.field public split100:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 22
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3e189899

    const v3, 0x3e088889

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 24
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3da0a0a1

    const v3, 0x3df0f0f1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f52d2d3

    invoke-direct {v0, v1, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2fafb0

    invoke-direct {v0, v1, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 34
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZILaoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;Z)V
    .registers 27
    .param p1, "sTextX"    # Ljava/lang/String;
    .param p2, "sTextY"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I
    .param p7, "visible"    # Z
    .param p8, "nLoadSize"    # I
    .param p9, "graphType"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;
    .param p10, "split100"    # Z

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 46
    const/4 v4, 0x0

    iput v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    .line 50
    const/4 v5, -0x1

    iput v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    .line 80
    iput-byte v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    .line 81
    iput-boolean v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lessThanTen:Z

    .line 83
    iput-boolean v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->split100:Z

    .line 87
    iput v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    .line 108
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    .line 111
    iput-wide v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lAuto_Move_Turn_Time:J

    .line 115
    iput-boolean v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    .line 116
    iput v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    .line 118
    iput v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    .line 134
    iput-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    .line 135
    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextY:Ljava/lang/String;

    .line 136
    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    .line 138
    move/from16 v5, p10

    iput-boolean v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->split100:Z

    .line 140
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v6, "nCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_INCOME:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne v3, v7, :cond_44

    .line 143
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 146
    :cond_44
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_4f
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v7

    const v9, 0x3f333333    # 0.7f

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 151
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7, v9, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 152
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v7, v7

    iput v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextX:I

    .line 154
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7, v9, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 155
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v7, v7

    iput v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextY:I

    .line 157
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 159
    move/from16 v7, p3

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setPosX(I)V

    .line 160
    move/from16 v8, p4

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setPosY(I)V

    .line 161
    move/from16 v9, p5

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setWidth(I)V

    .line 162
    move/from16 v10, p6

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHeight(I)V

    .line 164
    move/from16 v11, p7

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setVisible(Z)V

    .line 166
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    .line 167
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    .line 168
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    .line 170
    iput v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    .line 172
    sget-object v12, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v12, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 174
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f0

    .line 175
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v13, v14, v15, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;-><init>(ILjava/util/List;I)V

    invoke-virtual {v0, v13}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->addData(Laoc/kingdoms/lukasz/menu_element/graph/GraphData;)V

    .line 174
    add-int/lit8 v12, v12, 0x1

    goto :goto_d0

    .line 178
    .end local v12    # "i":I
    :cond_f0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f1
    move/from16 v12, p8

    if-ge v4, v12, :cond_103

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_103

    .line 179
    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_f1

    .line 182
    .end local v4    # "i":I
    :cond_103
    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    .line 183
    return-void
.end method

.method protected static final getGraphButtonHeight()I
    .registers 1

    .line 61
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected static final getGraphButtonWidth()I
    .registers 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final actionUp(I)V
    .registers 8
    .param p1, "nPosY"    # I

    .line 809
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 811
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    if-ltz v0, :cond_126

    .line 812
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_126

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_126

    .line 813
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a7

    .line 814
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    .line 815
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 816
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    .line 818
    :cond_a2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    goto/16 :goto_126

    .line 820
    :cond_a7
    const/4 v0, 0x0

    .line 822
    .local v0, "numOfActiveDatas":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a9
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v2, v3, :cond_c0

    .line 823
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 824
    add-int/lit8 v0, v0, 0x1

    .line 822
    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 828
    .end local v2    # "j":I
    :cond_c0
    if-le v0, v1, :cond_126

    .line 829
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    .line 830
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 831
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    .line 834
    :cond_123
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    .line 840
    .end local v0    # "numOfActiveDatas":I
    :cond_126
    :goto_126
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    .line 841
    return-void
.end method

.method protected final addData(Laoc/kingdoms/lukasz/menu_element/graph/GraphData;)V
    .registers 5
    .param p1, "nData"    # Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    .line 499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_1b

    .line 500
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 501
    return-void

    .line 499
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 505
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    .line 508
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    .line 509
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    .line 512
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sortCivsByLastPoint()V

    .line 513
    return-void
.end method

.method public buildElementHover()V
    .registers 1

    .line 273
    return-void
.end method

.method protected final buildGraph()V
    .registers 10

    .line 651
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    .line 654
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstCivID:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestCivID:I

    .line 656
    const/4 v2, 0x0

    .line 657
    .local v2, "tempAvarageSize":I
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    .line 659
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v3, v4, :cond_1a9

    .line 660
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 661
    const/4 v4, 0x0

    .line 663
    .local v4, "tempAverage":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3c
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_b3

    .line 664
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    if-le v6, v7, :cond_76

    .line 665
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    .line 666
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestCivID:I

    .line 669
    :cond_76
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-gt v6, v7, :cond_a2

    .line 670
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    .line 671
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v6

    iput v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstCivID:I

    .line 674
    :cond_a2
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 663
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 677
    .end local v5    # "j":I
    :cond_b3
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    add-float/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    .line 678
    add-int/lit8 v2, v2, 0x1

    .line 680
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_101

    .line 681
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    .line 683
    .end local v4    # "tempAverage":F
    :cond_101
    goto/16 :goto_1a5

    .line 685
    :cond_103
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_104
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v5

    if-ge v4, v5, :cond_16d

    .line 686
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    if-le v5, v6, :cond_13e

    .line 687
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    .line 688
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestCivID:I

    .line 691
    :cond_13e
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-gt v5, v6, :cond_16a

    .line 692
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    .line 693
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstCivID:I

    .line 685
    :cond_16a
    add-int/lit8 v4, v4, 0x1

    goto :goto_104

    .line 697
    .end local v4    # "j":I
    :cond_16d
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1a5

    .line 698
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    .line 659
    :cond_1a5
    :goto_1a5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_28

    .line 703
    .end local v3    # "i":I
    :cond_1a9
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    .line 704
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    int-to-float v4, v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    .line 706
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    int-to-float v4, v2

    div-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    .line 709
    const/high16 v3, 0x42c80000    # 100.0f

    const v4, 0x3f333333    # 0.7f

    :try_start_1c7
    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-gez v5, :cond_226

    .line 710
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    mul-float v5, v5, v6

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v3

    float-to-int v5, v5

    neg-int v5, v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    .line 712
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v6, v0

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    float-to-int v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    goto :goto_278

    .line 714
    :cond_226
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-lez v0, :cond_276

    .line 715
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    sub-int/2addr v0, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    mul-float v5, v5, v6

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v3

    sub-float/2addr v0, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    goto :goto_278

    .line 718
    :cond_276
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I
    :try_end_278
    .catch Ljava/lang/ArithmeticException; {:try_start_1c7 .. :try_end_278} :catch_279

    .line 723
    :goto_278
    goto :goto_27c

    .line 721
    :catch_279
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/ArithmeticException;
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    .line 725
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    :goto_27c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    sub-int/2addr v0, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    mul-float v6, v6, v3

    mul-float v5, v5, v6

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v3

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iAvaragePosY:I

    .line 726
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->roundAverage()V

    .line 731
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 734
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2c4
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_2f3

    .line 737
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    mul-float v7, v7, v3

    mul-float v6, v6, v7

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    div-float/2addr v6, v5

    div-float/2addr v6, v3

    float-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c4

    .line 741
    .end local v0    # "i":I
    :cond_2f3
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iPointsPosXSize:I

    .line 748
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_315
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_33f

    .line 749
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int/2addr v3, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v6

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    iget-object v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    invoke-virtual {v1, v3, v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->buildGraph(IIILjava/util/List;)V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_315

    .line 753
    .end local v0    # "i":I
    :cond_33f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 755
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 756
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinTextWidth:I

    .line 758
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 759
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxTextWidth:I

    .line 764
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 766
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateDescInfo()V

    .line 767
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 21
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 279
    move-object v0, p0

    move-object/from16 v9, p1

    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lAuto_Move_Turn_Time:J

    const-wide/16 v3, 0x5aa

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_11

    .line 280
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->incrementTurnDescInfo()V

    .line 284
    :cond_11
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 291
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d989899

    const v3, 0x3db8b8b9

    const v4, 0x3d888889

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 292
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v11, 0x3f333333    # 0.7f

    mul-float v2, v2, v11

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    .line 293
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    .line 294
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    .line 295
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    .line 292
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 297
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 298
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->graphBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v11

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 300
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v12, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 301
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v11

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 302
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v11

    float-to-int v6, v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 305
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 307
    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextY:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextY:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 308
    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 311
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 313
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 314
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 336
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    if-gez v1, :cond_2f0

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    if-lez v1, :cond_2f0

    .line 337
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 338
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 339
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 340
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v3, v8

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 342
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 344
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    .line 345
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iZeroPosY:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 344
    const/4 v2, 0x1

    const-string v3, "0"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 348
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 351
    :cond_2f0
    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_32a

    .line 353
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    int-to-float v3, v3

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v12, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    sub-long/2addr v4, v12

    long-to-float v4, v4

    const/high16 v5, 0x437a0000    # 250.0f

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 355
    invoke-virtual/range {p0 .. p3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 358
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_32d

    .line 361
    :cond_32a
    invoke-virtual/range {p0 .. p3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 383
    :goto_32d
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 386
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 388
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    sub-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iAvaragePosY:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v8

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 390
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v8

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v8

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v6, v2, -0x1

    const/4 v5, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 393
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 395
    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->split100:Z

    const-string v12, ""

    if-eqz v1, :cond_471

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v2

    int-to-float v2, v2

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v2, v13

    const/16 v14, 0xa

    invoke-static {v2, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    .line 397
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    sget v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 396
    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    int-to-float v2, v2

    div-float/2addr v2, v13

    invoke-static {v2, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    .line 401
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 400
    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_50e

    .line 405
    :cond_471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    .line 406
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    sget v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 405
    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint_Text:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v4, v1, p2

    .line 410
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 409
    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 419
    :goto_50e
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 421
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 424
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 430
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 432
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sub-int/2addr v2, v8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v5

    const/4 v5, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 433
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sub-int/2addr v2, v8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v11

    float-to-int v3, v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    float-to-int v4, v4

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 435
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {v1, v9, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 436
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v6, v2, -0x1

    const/4 v5, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 439
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 450
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 452
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 453
    return-void
.end method

.method public final drawGraphData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iFixPosY:I

    move v11, v1

    .local v11, "tempFixPosY":I
    :goto_8
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_10d

    .line 458
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v1

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_81

    .line 459
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    .line 460
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v2, v6

    add-int/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    add-int/2addr v5, p2

    .line 461
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v6, v2, p3

    .line 462
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v7

    .line 463
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    .line 465
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    if-ltz v2, :cond_5e

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_73

    :goto_5c
    const/4 v10, 0x1

    goto :goto_74

    :cond_5e
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    if-ltz v2, :cond_73

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_73

    goto :goto_5c

    :cond_73
    const/4 v10, 0x0

    .line 459
    :goto_74
    move-object v2, v1

    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v0

    invoke-virtual/range {v2 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    goto/16 :goto_109

    .line 467
    :cond_81
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBackAnimation()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 468
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x1c2

    add-long/2addr v5, v7

    sget-wide v7, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v1, v5, v7

    if-gtz v1, :cond_b0

    .line 469
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setBackAnimation(Z)V

    goto :goto_109

    .line 472
    :cond_b0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    .line 473
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v2, v6

    add-int/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    add-int/2addr v5, p2

    .line 474
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v2

    add-int v6, v2, p3

    .line 475
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphWidth()I

    move-result v7

    .line 476
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v8

    iget-object v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lPointsPosX:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    iget-object v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    .line 478
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v2, v10, :cond_fc

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    iget-object v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v2, v10, :cond_fa

    goto :goto_fc

    :cond_fa
    const/4 v10, 0x0

    goto :goto_fd

    :cond_fc
    :goto_fc
    const/4 v10, 0x1

    .line 472
    :goto_fd
    move-object v2, p1

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v0

    move v9, v10

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->drawAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;IZI)V

    .line 457
    :cond_109
    :goto_109
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 482
    .end local v0    # "i":I
    .end local v11    # "tempFixPosY":I
    :cond_10d
    return-void
.end method

.method public final getButtonsHeight()I
    .registers 4

    .line 872
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    mul-int v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getButtonsPosY(I)I
    .registers 4
    .param p1, "i"    # I

    .line 868
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v0

    mul-int v0, v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrent()I
    .registers 2

    .line 845
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    return v0
.end method

.method public final getDataLastPoint(I)I
    .registers 5
    .param p1, "id"    # I

    .line 557
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iPointsPosXSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1d} :catch_1e

    return v0

    .line 558
    :catch_1e
    move-exception v0

    .line 559
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return v1
.end method

.method protected final getGraphWidth()I
    .registers 3

    .line 911
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMinPoint()I
    .registers 2

    .line 915
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    if-lez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMinPoint:I

    :goto_8
    return v0
.end method

.method public getMoveable()Z
    .registers 2

    .line 864
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    return v0
.end method

.method public final incrementTurnDescInfo()V
    .registers 3

    .line 923
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    .line 924
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxSize:I

    if-lt v0, v1, :cond_f

    .line 925
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    .line 928
    :cond_f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateDescInfo()V

    .line 929
    return-void
.end method

.method protected loadData(I)V
    .registers 10
    .param p1, "i"    # I

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "nStartTurnID":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "tempPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_INCOME:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2e

    .line 191
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->income:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 192
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->income:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .end local v2    # "j":I
    :cond_2c
    goto/16 :goto_c6

    .line 195
    :cond_2e
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_BALANCE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne v2, v3, :cond_55

    .line 196
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_35
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->balance:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 197
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->balance:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .end local v2    # "j":I
    :cond_53
    goto/16 :goto_c6

    .line 200
    :cond_55
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne v2, v3, :cond_7b

    .line 201
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->prestige:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7a

    .line 202
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->prestige:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .end local v2    # "j":I
    :cond_7a
    goto :goto_c6

    .line 205
    :cond_7b
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;->PLAYER_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    if-ne v2, v3, :cond_a1

    .line 206
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_82
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->population:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a0

    .line 207
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->population:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .end local v2    # "j":I
    :cond_a0
    goto :goto_c6

    .line 211
    :cond_a1
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_a2
    const/4 v3, 0x5

    if-ge v2, v3, :cond_c6

    .line 212
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 216
    .end local v2    # "a":I
    :cond_c6
    :goto_c6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f3

    .line 217
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v5

    invoke-direct {v3, v5, v1, v0}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;-><init>(ILjava/util/List;I)V

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    .line 220
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    .line 221
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    .line 223
    :cond_f3
    return-void
.end method

.method protected final removeData(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 516
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_32

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_32

    .line 518
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_2f

    .line 519
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 520
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    .line 522
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    .line 523
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    .line 524
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateButtonsInView()V

    .line 525
    return-void

    .line 517
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 530
    .end local v0    # "i":I
    :cond_32
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sortCivsByLastPoint()V

    .line 531
    return-void
.end method

.method public final roundAverage()V
    .registers 5

    .line 878
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_43

    .line 879
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    .line 880
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->fAvaragePoint:F

    .line 881
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lessThanTen:Z

    .line 882
    iget-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    if-nez v0, :cond_3b

    .line 883
    iget-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    goto :goto_45

    .line 884
    :cond_3b
    iget-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    if-ge v0, v1, :cond_45

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lessThanTen:Z

    goto :goto_45

    .line 888
    :cond_43
    iput-byte v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->bDecimal:B

    .line 890
    :cond_45
    :goto_45
    return-void
.end method

.method public setCheckboxState(Z)V
    .registers 2
    .param p1, "checkboxState"    # Z

    .line 934
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    .line 935
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveable()V

    .line 936
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateButtonsInView()V

    .line 937
    return-void
.end method

.method public setCurrent(I)V
    .registers 6
    .param p1, "nButtonsPosY"    # I

    .line 850
    if-ltz p1, :cond_4

    .line 851
    const/4 p1, 0x0

    goto :goto_35

    .line 852
    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    if-gt p1, v0, :cond_35

    .line 853
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int p1, v0

    .line 856
    :cond_35
    :goto_35
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    if-eq v0, p1, :cond_3e

    .line 857
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    .line 858
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateButtonsInView()V

    .line 860
    :cond_3e
    return-void
.end method

.method protected final setData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/GraphData;",
            ">;)V"
        }
    .end annotation

    .line 487
    .local p1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/GraphData;>;"
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 489
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 490
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 493
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    .line 495
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildGraph()V

    .line 496
    return-void
.end method

.method public final setHoveredID(I)V
    .registers 3
    .param p1, "nHoveredID"    # I

    .line 242
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    if-eq v0, p1, :cond_9

    .line 243
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iHoveredID:I

    .line 244
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->buildElementHover()V

    .line 246
    :cond_9
    return-void
.end method

.method public setMin(I)V
    .registers 5
    .param p1, "nCivID"    # I

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 536
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_42

    .line 537
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setDrawData(Z)V

    .line 538
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 539
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->loadData(I)V

    goto :goto_45

    .line 535
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 544
    .end local v0    # "i":I
    :cond_45
    :goto_45
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 6
    .param p1, "nPosY"    # I

    .line 797
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    .line 799
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_43

    .line 800
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-gt v1, p1, :cond_40

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_40

    .line 801
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    .line 802
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iActiveButtonID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AoC"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    goto :goto_43

    .line 799
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 806
    .end local v0    # "i":I
    :cond_43
    :goto_43
    return-void
.end method

.method public setVisible(Z)V
    .registers 6
    .param p1, "isVisible"    # Z

    .line 894
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 895
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    if-eqz v1, :cond_a

    .line 896
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateSlider(I)V

    .line 898
    :cond_a
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    .line 899
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveTurnTime()V

    goto :goto_1b

    .line 902
    :cond_15
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lTime:J

    .line 903
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    .line 906
    :goto_1b
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    .line 907
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHoveredID(I)V

    .line 908
    return-void
.end method

.method public final sortCivsByLastPoint()V
    .registers 4

    .line 549
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_16

    .line 551
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 553
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method public final updateButtonsInView()V
    .registers 5

    .line 772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_88

    .line 773
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_34

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_34

    .line 774
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setVisible(Z)V

    goto :goto_84

    .line 776
    :cond_34
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v3

    if-ltz v1, :cond_6c

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_6c

    .line 777
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setVisible(Z)V

    goto :goto_84

    .line 780
    :cond_6c
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->setVisible(Z)V

    .line 772
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 783
    .end local v0    # "i":I
    :cond_88
    return-void
.end method

.method protected final updateDescInfo()V
    .registers 12

    .line 604
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getMinPoint()I

    move-result v0

    .line 605
    .local v0, "tempBestResult":I
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iMaxPoint:I

    .line 607
    .local v1, "tempWorstResult":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v2, v3, :cond_be

    .line 608
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getDrawData()Z

    move-result v3

    if-eqz v3, :cond_ba

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v4

    if-lt v3, v4, :cond_ba

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointsSize()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_ba

    .line 609
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v3

    if-le v3, v0, :cond_80

    .line 610
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v0

    .line 611
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataID:I

    .line 614
    :cond_80
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v3

    if-gt v3, v1, :cond_ba

    .line 615
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v1

    .line 616
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataID:I

    .line 607
    :cond_ba
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 621
    .end local v2    # "i":I
    :cond_be
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 623
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 624
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWorstDescDataTextWidth:I

    .line 626
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    iget-object v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lData:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getBeginTurnID()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/menu_element/graph/GraphData;->getPointY(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 627
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iBestDescDataTextWidth:I

    .line 629
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 631
    const/4 v2, 0x1

    .line 633
    .local v2, "tempRealTurnID":I
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iPointsPosXSize:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v4, v5, :cond_17d

    .line 634
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iPointsPosXSize:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    .end local v2    # "tempRealTurnID":I
    .local v4, "tempRealTurnID":I
    goto :goto_180

    .line 636
    .end local v4    # "tempRealTurnID":I
    .restart local v2    # "tempRealTurnID":I
    :cond_17d
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDescOfTurnID:I

    add-int/2addr v4, v3

    .line 640
    .end local v2    # "tempRealTurnID":I
    .restart local v4    # "tempRealTurnID":I
    :goto_180
    const/4 v2, 0x0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    .line 642
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextX:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 643
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iWidthTextX:I

    .line 645
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveTurnTime()V

    .line 646
    return-void
.end method

.method public updateHover(IIII)V
    .registers 8
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "menuPosX"    # I
    .param p4, "menuPosY"    # I

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iDataSize:I

    if-ge v0, v1, :cond_4e

    .line 230
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    if-gt v1, p1, :cond_4b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    if-lt v1, p1, :cond_4b

    .line 231
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-gt v1, p2, :cond_4b

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsPosY(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getGraphButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    if-lt v1, p2, :cond_4b

    .line 232
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lSortedData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHoveredID(I)V

    .line 233
    return-void

    .line 229
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "i":I
    :cond_4e
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->setHoveredID(I)V

    .line 239
    return-void
.end method

.method public final updateMoveTurnTime()V
    .registers 3

    .line 919
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->lAuto_Move_Turn_Time:J

    .line 920
    return-void
.end method

.method protected final updateMoveable()V
    .registers 3

    .line 786
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getButtonsHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    goto :goto_13

    .line 789
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->moveable:Z

    .line 790
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->iButtonsPosY:I

    .line 792
    :goto_13
    return-void
.end method

.method public updateSlider(I)V
    .registers 2
    .param p1, "nPosX"    # I

    .line 567
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->updateMoveTurnTime()V

    .line 601
    return-void
.end method
