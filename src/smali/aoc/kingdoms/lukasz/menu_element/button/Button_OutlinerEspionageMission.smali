.class public Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;
.source "Button_OutlinerEspionageMission.java"


# static fields
.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public colorText:Lcom/badlogic/gdx/graphics/Color;

.field public espionageEndTurnID:I

.field public espionageStartedTurnID:I

.field public fPerc:F

.field public iTextWidth2:I

.field public imageID:I

.field public inRightMenu:Z

.field public lastTurnID:I

.field public maxTextWidth2:I

.field public pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

.field public pieWidth:I

.field public progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public sText2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e20a0a1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dc8c8c9

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V
    .registers 30
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "imageID"    # I
    .param p8, "iCivID"    # I
    .param p9, "espionageStartedTurnID"    # I
    .param p10, "espionageEndTurnID"    # I
    .param p11, "inRightMenu"    # Z

    .line 61
    move-object/from16 v8, p0

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;-><init>(Ljava/lang/String;IIIII)V

    .line 37
    const/4 v0, 0x0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iTextWidth2:I

    .line 42
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e969697

    const v3, 0x3efafafb

    const v4, 0x3f25a5a6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 44
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->colorText:Lcom/badlogic/gdx/graphics/Color;

    .line 46
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->maxTextWidth2:I

    .line 48
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieWidth:I

    .line 51
    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->lastTurnID:I

    .line 53
    const/4 v1, 0x0

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fPerc:F

    .line 63
    move/from16 v1, p11

    iput-boolean v1, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->inRightMenu:Z

    .line 65
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 67
    iput v9, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->espionageStartedTurnID:I

    .line 68
    iput v10, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->espionageEndTurnID:I

    .line 70
    move/from16 v2, p7

    iput v2, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->imageID:I

    .line 72
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    sub-int v4, v10, v9

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    iput v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fPerc:F

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fPerc:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->sText2:Ljava/lang/String;

    .line 75
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v6, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fontID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v6, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->sText2:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 76
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    iput v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iTextWidth2:I

    .line 78
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v6, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fontID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v6, "99%"

    invoke-virtual {v3, v5, v6}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 79
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    iput v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->maxTextWidth2:I

    .line 81
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_SPY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_SPY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_SPY:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v11, 0x3eb33333    # 0.35f

    invoke-direct {v3, v5, v6, v7, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 84
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    .line 85
    .local v3, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-direct {v5, v0, v4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 87
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p6, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieWidth:I

    .line 88
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p5, v4

    iget v5, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieWidth:I

    sub-int v12, v4, v5

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v14, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieWidth:I

    iget v15, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieWidth:I

    const/16 v17, 0x0

    move-object v11, v0

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v17}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    .line 91
    :try_start_f3
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->lastTurnID:I

    .line 93
    sget-object v0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->colorText:Lcom/badlogic/gdx/graphics/Color;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fb} :catch_fc

    .line 96
    goto :goto_100

    .line 94
    :catch_fc
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_100
    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 12

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iCurrent:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "EspionageMission"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "EspionageProgress"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->sText2:Ljava/lang/String;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 185
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 102
    const/high16 v7, 0x42c80000    # 100.0f

    :try_start_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->lastTurnID:I

    if-eq v0, v1, :cond_77

    .line 103
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->espionageStartedTurnID:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->espionageEndTurnID:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->espionageStartedTurnID:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v0, v0, v7

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fPerc:F

    .line 105
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->inRightMenu:Z

    if-eqz v0, :cond_39

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fPerc:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_39

    .line 106
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission$1;

    const-string v1, "rebuildRight"

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iCurrent:I

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 119
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission$2;

    const-string v1, "rebuildInGame_CourtSavePos"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission$2;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 131
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fPerc:F

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->sText2:Ljava/lang/String;

    .line 132
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iTextWidth2:I

    .line 135
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->lastTurnID:I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_77} :catch_78

    .line 139
    :cond_77
    goto :goto_7c

    .line 137
    :catch_78
    move-exception v0

    .line 138
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7c
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->imageID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 146
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 148
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iCurrent:I

    const/4 v1, 0x1

    if-ltz v0, :cond_c4

    .line 149
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iCurrent:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    goto :goto_d1

    .line 151
    :cond_c4
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 153
    :goto_d1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 155
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2Mask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    .line 155
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 158
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 160
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 164
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieChart:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fPerc:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v7, v0

    const/4 v0, 0x0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZFLcom/badlogic/gdx/graphics/Color;)V

    .line 166
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosX()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagRect2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getTextHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 168
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->fontID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->pieWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iTextWidth2:I

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getTextHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_SPY:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 169
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 189
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 190
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0

    .line 193
    :cond_b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->colorText:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrent()I
    .registers 2

    .line 207
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iCurrent:I

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 3
    .param p1, "isHovered"    # Z

    .line 198
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Outliner;->setIsHovered(Z)V

    .line 200
    if-eqz p1, :cond_9

    .line 201
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;->iCurrent:I

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 203
    :cond_9
    return-void
.end method
