.class public Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;
.source "Button_OutlinerRelations.java"


# static fields
.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public colorText:Lcom/badlogic/gdx/graphics/Color;

.field public fPerc:F

.field public iTextWidth2:I

.field public imageID:I

.field public improvingMode:Z

.field public lastTurnID:I

.field public lastValue:F

.field public maxTextWidth2:I

.field public pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

.field public pieWidth:I

.field public progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public sText2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e20a0a1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dc8c8c9

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZ)V
    .registers 28
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "imageID"    # I
    .param p8, "iCivID"    # I
    .param p9, "improvingMode"    # Z

    .line 48
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;-><init>(Ljava/lang/String;IIIII)V

    .line 26
    const/4 v0, 0x0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    .line 31
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e969697

    const v3, 0x3efafafb

    const v4, 0x3f25a5a6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;

    .line 35
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->maxTextWidth2:I

    .line 37
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    .line 40
    const v1, -0x368dfe5c    # -991258.25f

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    .line 41
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    .line 43
    const v1, 0x42c7cccd    # 99.9f

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    .line 50
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 52
    move/from16 v1, p7

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    .line 53
    iput-boolean v10, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    .line 55
    iput-object v9, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    .line 56
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, v3, v9}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 57
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    .line 59
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v4, "-99"

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 60
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->maxTextWidth2:I

    .line 62
    const v2, 0x3eb33333    # 0.35f

    if-eqz v10, :cond_96

    .line 63
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_a9

    .line 65
    :cond_96
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 69
    :goto_a9
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    .line 70
    .local v2, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {v3, v0, v4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 72
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p6, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    .line 73
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    iget v4, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    sub-int v12, v3, v4

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v14, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    iget v15, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    const/16 v17, 0x0

    move-object v11, v0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    .line 76
    const/4 v0, -0x1

    :try_start_dd
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    .line 77
    iget v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    .line 79
    iget v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_Color(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_fa} :catch_fb

    .line 82
    goto :goto_ff

    .line 80
    :catch_fb
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ff
    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 5

    .line 156
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    iget-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->getHoverBetweenCivilizations(IIZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 157
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 88
    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p4

    :try_start_4
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    if-eq v0, v2, :cond_70

    .line 89
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    .line 91
    .local v0, "preUpdatePerc":F
    iget-boolean v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    if-eqz v2, :cond_21

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getImprovingRelations_Perc(I)F

    move-result v2

    goto :goto_31

    :cond_21
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getDamagingRelations_Perc(I)F

    move-result v2

    :goto_31
    iput v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    .line 93
    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_44

    .line 94
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations$1;

    const-string v3, "rebuildRight"

    invoke-direct {v2, p0, v3}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;Ljava/lang/String;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 103
    :cond_44
    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_6c

    .line 104
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    iget-boolean v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->improvingMode:Z

    if-eqz v4, :cond_67

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_69

    :cond_67
    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_69
    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V

    .line 107
    :cond_6c
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastTurnID:I

    .line 111
    .end local v0    # "preUpdatePerc":F
    :cond_70
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_db

    .line 112
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    .line 113
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->setText(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    .line 116
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 117
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    .line 119
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->lastValue:F

    float-to-int v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_Color(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_db} :catch_dc

    .line 123
    :cond_db
    goto :goto_e0

    .line 121
    :catch_dc
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 125
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e0
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 130
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 131
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    const/4 v2, 0x1

    if-ltz v0, :cond_128

    .line 132
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    goto :goto_135

    .line 134
    :cond_128
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 136
    :goto_135
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 138
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2Mask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    .line 138
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 141
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 142
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 143
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 147
    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fPerc:F

    iget-object v9, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZFLcom/badlogic/gdx/graphics/Color;)V

    .line 149
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getTextToDraw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getTextHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual {p0, v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 151
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->fontID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->pieWidth:I

    sub-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iTextWidth2:I

    sub-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getTextHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual {p0, v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 152
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 161
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0

    .line 165
    :cond_b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->colorText:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public setIsHovered(Z)V
    .registers 3
    .param p1, "isHovered"    # Z

    .line 170
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;->setIsHovered(Z)V

    .line 172
    if-eqz p1, :cond_9

    .line 173
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->iCurrent:I

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 175
    :cond_9
    return-void
.end method
