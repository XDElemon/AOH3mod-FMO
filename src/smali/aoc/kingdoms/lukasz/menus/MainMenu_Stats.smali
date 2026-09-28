.class public Laoc/kingdoms/lukasz/menus/MainMenu_Stats;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "MainMenu_Stats.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static hideReview:I

.field public static lFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static lTime:J

.field public static lTime2:J

.field public static modeID:I

.field public static statsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Stats/Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lTime:J

    .line 56
    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lTime2:J

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    .line 62
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    .line 64
    const/4 v0, 0x5

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->hideReview:I

    return-void
.end method

.method public constructor <init>()V
    .registers 41

    .line 66
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 69
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v0, v1

    .line 70
    .local v12, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v14, v0, v1

    .line 72
    .local v14, "paddingLeft2":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v15

    .line 74
    .local v15, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    .line 76
    .local v9, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v2, v2, v1

    div-float/2addr v0, v2

    float-to-int v8, v0

    .line 77
    .local v8, "menuX":I
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

    add-int v16, v0, v1

    .line 79
    .local v16, "menuY":I
    const/4 v0, 0x0

    .line 80
    .local v0, "buttonY":I
    move/from16 v17, v12

    .line 82
    .local v17, "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v18, v1, v2

    .line 83
    .local v18, "topHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v19

    .line 86
    .local v19, "maxIconW":I
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    if-lt v1, v5, :cond_10c

    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->hideReview:I

    if-lez v1, :cond_10c

    .line 87
    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 88
    .end local v0    # "buttonY":I
    .local v20, "buttonY":I
    new-instance v4, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Review0"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->heart:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int v3, v12, v0

    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v9, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->heart:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v21, 0x3

    add-int v1, v1, v21

    sub-int v21, v0, v1

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v7, v4

    move/from16 v4, v20

    const/16 v23, 0x4

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;III)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$2;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->heart:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->heart:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v21

    const/16 v24, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v3, v12

    move/from16 v6, v21

    move-object v13, v7

    move/from16 v22, v15

    const/4 v15, 0x3

    .end local v15    # "titleHeight":I
    .local v22, "titleHeight":I
    move/from16 v7, v24

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$2;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;IIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v0, v20, v0

    move v13, v0

    .end local v20    # "buttonY":I
    .restart local v0    # "buttonY":I
    goto :goto_112

    .line 86
    .end local v22    # "titleHeight":I
    .restart local v15    # "titleHeight":I
    :cond_10c
    move/from16 v22, v15

    const/4 v15, 0x3

    const/16 v23, 0x4

    .line 138
    .end local v15    # "titleHeight":I
    .restart local v22    # "titleHeight":I
    move v13, v0

    .end local v0    # "buttonY":I
    .local v13, "buttonY":I
    :goto_112
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v9, v0

    div-int/lit8 v20, v0, 0x4

    .line 141
    .local v20, "titleButtonW":I
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$3;

    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    const/4 v6, 0x0

    if-nez v0, :cond_124

    const/4 v2, 0x1

    goto :goto_125

    :cond_124
    const/4 v2, 0x0

    :goto_125
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v6, v24

    move-object v15, v7

    move v7, v13

    move/from16 v27, v8

    .end local v8    # "menuX":I
    .local v27, "menuX":I
    move/from16 v8, v20

    move v10, v9

    .end local v9    # "menuWidth":I
    .local v10, "menuWidth":I
    move/from16 v9, v26

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$3;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;ZZLjava/lang/String;IIIII)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v15, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$4;

    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_150

    const/4 v2, 0x1

    goto :goto_151

    :cond_150
    const/4 v2, 0x0

    :goto_151
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "PlayingTime"

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v20

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move v7, v13

    move-object/from16 v28, v8

    move/from16 v8, v20

    move/from16 v26, v14

    const/4 v14, 0x1

    .end local v14    # "paddingLeft2":I
    .local v26, "paddingLeft2":I
    move/from16 v9, v25

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$4;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;ZZLjava/lang/String;IIIII)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v15, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$5;

    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17d

    const/4 v2, 0x1

    goto :goto_17e

    :cond_17d
    const/4 v2, 0x0

    :goto_17e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "RecruitedArmy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v20, 0x2

    add-int v6, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move v7, v13

    move/from16 v8, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$5;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;ZZLjava/lang/String;IIIII)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v15, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$6;

    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a5

    const/4 v2, 0x1

    goto :goto_1a6

    :cond_1a5
    const/4 v2, 0x0

    :goto_1a6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Wars"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v20, 0x3

    add-int v6, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move v7, v13

    move/from16 v8, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$6;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;ZZLjava/lang/String;IIIII)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 251
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v15, v0, v1

    .line 253
    .local v15, "statH":I
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->loadAllStats()Ljava/util/List;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    .line 256
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->loadFlags()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 259
    .local v9, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 261
    .local v8, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1fc
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_221

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fc

    .line 266
    .end local v0    # "i":I
    :cond_221
    mul-int/lit8 v0, v12, 0x2

    sub-int v0, v10, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v25, v0, 0x6

    .line 267
    .local v25, "statsRightW":I
    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 269
    .local v29, "statsRightH":I
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 270
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$7;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v12, 0x2

    sub-int v30, v10, v0

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v4, -0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v12

    move v6, v13

    move-object v14, v7

    move/from16 v7, v30

    move/from16 v30, v15

    move-object v15, v8

    .end local v8    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "statH":I
    move/from16 v8, v31

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$7;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    goto :goto_272

    .line 269
    .end local v30    # "statH":I
    .restart local v8    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "statH":I
    :cond_26f
    move/from16 v30, v15

    move-object v15, v8

    .line 280
    .end local v8    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "statH":I
    :goto_272
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a7

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "bestID":I
    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    if-nez v1, :cond_29d

    .line 284
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_27e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29a

    .line 285
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_297

    .line 286
    move v0, v1

    .line 284
    :cond_297
    add-int/lit8 v1, v1, 0x1

    goto :goto_27e

    :cond_29a
    move v14, v0

    .end local v1    # "i":I
    goto/16 :goto_34c

    .line 290
    :cond_29d
    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2da

    .line 291
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2a3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d7

    .line 292
    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tr:I

    sget-object v3, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tr:I

    if-ge v2, v3, :cond_2d4

    .line 293
    move v0, v1

    .line 291
    :cond_2d4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a3

    :cond_2d7
    move v14, v0

    .end local v1    # "i":I
    goto/16 :goto_34c

    .line 297
    :cond_2da
    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->modeID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_316

    .line 298
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2e0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_314

    .line 299
    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    sget-object v3, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    if-ge v2, v3, :cond_311

    .line 300
    move v0, v1

    .line 298
    :cond_311
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e0

    :cond_314
    move v14, v0

    .end local v1    # "i":I
    goto :goto_34c

    .line 305
    :cond_316
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_317
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34b

    .line 306
    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    sget-object v3, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    if-ge v2, v3, :cond_348

    .line 307
    move v0, v1

    .line 305
    :cond_348
    add-int/lit8 v1, v1, 0x1

    goto :goto_317

    :cond_34b
    move v14, v0

    .line 312
    .end local v0    # "bestID":I
    .end local v1    # "i":I
    .local v14, "bestID":I
    :goto_34c
    move v8, v13

    .line 314
    .local v8, "startY":I
    move/from16 v0, v26

    .line 315
    .end local v17    # "buttonX":I
    .local v0, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v1

    .line 317
    new-instance v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$8;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v7, p0

    invoke-direct {v1, v7, v2, v0, v13}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$8;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;III)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v17, v0, v1

    .line 327
    .end local v0    # "buttonX":I
    .restart local v17    # "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Formable;->getButtonHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    const/16 v21, 0x2

    div-int/lit8 v31, v0, 0x2

    .line 329
    .local v31, "bHeight":I
    new-instance v6, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sub-int v0, v10, v17

    sub-int v5, v0, v26

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, v17

    move v4, v13

    move-object v7, v6

    move/from16 v6, v31

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIII)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 349
    new-instance v7, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 350
    const-string v2, "Games"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    .line 351
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ga:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->play:I

    add-int v0, v13, v31

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v32, v0, v1

    sub-int v0, v10, v17

    sub-int v33, v0, v26

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v34, v15

    move-object v15, v5

    .end local v15    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v34, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v5, v17

    move/from16 v35, v10

    move-object v10, v6

    .end local v10    # "menuWidth":I
    .local v35, "menuWidth":I
    move/from16 v6, v32

    move-object/from16 v32, v15

    move-object v15, v7

    move/from16 v7, v33

    move/from16 v36, v8

    .end local v8    # "startY":I
    .local v36, "startY":I
    move/from16 v8, v31

    move-object/from16 v33, v10

    move-object v10, v9

    .end local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$10;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 349
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 379
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getButtonHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 380
    move v15, v12

    .line 382
    .end local v17    # "buttonX":I
    .local v15, "buttonX":I
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$11;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 383
    move-object/from16 v8, v28

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    .line 384
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tr:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDays_ByTurnsPlayed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->time:I

    mul-int/lit8 v0, v26, 0x2

    sub-int v17, v35, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v28, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v26

    move/from16 v32, v15

    move-object v15, v6

    .end local v15    # "buttonX":I
    .local v32, "buttonX":I
    move v6, v13

    move/from16 v33, v12

    move-object v12, v7

    .end local v12    # "paddingLeft":I
    .local v33, "paddingLeft":I
    move/from16 v7, v17

    move-object/from16 v37, v8

    move/from16 v8, v28

    move-object/from16 v28, v10

    move-object v10, v9

    .end local v10    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v28, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$11;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 382
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 394
    new-instance v10, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$12;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 395
    const-string v2, "NumberOfProvinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    .line 396
    move-object/from16 v9, v28

    .end local v28    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->lp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    mul-int/lit8 v0, v26, 0x2

    sub-int v7, v35, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v8, v0, v1

    move-object v0, v10

    move-object/from16 v1, p0

    move v6, v13

    move-object/from16 v38, v9

    .end local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v38, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$12;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 394
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 406
    new-instance v10, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$13;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 407
    const-string v2, "MonthlyIncome"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    .line 408
    move-object/from16 v9, v38

    .end local v38    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->li:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v0, v26, 0x2

    sub-int v7, v35, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v8, v0, v1

    move-object v0, v10

    move-object/from16 v1, p0

    move v6, v13

    move-object/from16 v39, v9

    .end local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v39, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$13;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 406
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 418
    new-instance v10, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$14;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 419
    const-string v2, "ReinforceArmyCost"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    .line 420
    move-object/from16 v12, v39

    .end local v39    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rf:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    mul-int/lit8 v0, v26, 0x2

    sub-int v7, v35, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v8, v0, v1

    move-object v0, v10

    move-object/from16 v1, p0

    move v6, v13

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$14;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 418
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 430
    move/from16 v8, v26

    .line 432
    .end local v32    # "buttonX":I
    .local v8, "buttonX":I
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$15;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->war:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    move v5, v13

    move/from16 v6, v25

    move/from16 v7, v29

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$15;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 447
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$16;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$16;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 462
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$17;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$17;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 477
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$18;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->general:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$18;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 492
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$19;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ra:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$19;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 507
    new-instance v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$20;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->bc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$20;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    move/from16 v0, v26

    .line 522
    .end local v8    # "buttonX":I
    .restart local v0    # "buttonX":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 544
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    mul-int/lit8 v2, v33, 0x2

    sub-int v9, v35, v2

    move/from16 v2, v36

    .end local v36    # "startY":I
    .local v2, "startY":I
    sub-int v3, v13, v2

    move/from16 v10, v33

    .end local v33    # "paddingLeft":I
    .local v10, "paddingLeft":I
    invoke-direct {v1, v10, v2, v9, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    move/from16 v17, v10

    .line 547
    .end local v0    # "buttonX":I
    .restart local v17    # "buttonX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v0

    .line 549
    invoke-interface {v12, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 550
    move-object/from16 v15, v34

    .end local v34    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 551
    .end local v2    # "startY":I
    .end local v14    # "bestID":I
    .end local v31    # "bHeight":I
    move-object v9, v12

    move-object/from16 v28, v37

    move v12, v10

    move/from16 v10, v35

    goto/16 :goto_272

    .line 562
    .end local v35    # "menuWidth":I
    .restart local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "menuWidth":I
    .local v12, "paddingLeft":I
    :cond_8a7
    move/from16 v35, v10

    move v10, v12

    move-object v12, v9

    .end local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "paddingLeft":I
    .local v12, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v35    # "menuWidth":I
    new-instance v14, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$21;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 563
    const-string v1, "Close"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->x:I

    mul-int/lit8 v0, v10, 0x2

    sub-int v7, v35, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const-string v3, ""

    move-object v0, v14

    move-object/from16 v1, p0

    move v5, v10

    move v6, v13

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$21;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 562
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 591
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v16

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x3

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 593
    .local v9, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v14, v35

    const/4 v8, 0x0

    .end local v35    # "menuWidth":I
    .local v14, "menuWidth":I
    invoke-direct {v0, v8, v8, v14, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance v6, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$22;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "HallofFame"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/4 v3, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$22;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;ZZI)V

    const/4 v7, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v27

    move/from16 v3, v16

    move v4, v14

    move v5, v9

    move-object v6, v11

    move/from16 v23, v9

    const/4 v9, 0x0

    .end local v9    # "menuHeight":I
    .local v23, "menuHeight":I
    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 602
    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->drawScrollPositionAlways:Z

    .line 603
    return-void
.end method

.method public static final disposeFlags()V
    .registers 2

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 704
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    .end local v0    # "i":I
    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 708
    return-void
.end method

.method public static getHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 7
    .param p0, "id"    # I

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title_Stats;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Games"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ga:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title_Stats;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 719
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z

    .line 608
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v7

    if-gez v0, :cond_2a

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 610
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 612
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_ANIMATION_TIME:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    .line 615
    :cond_2a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    mul-float v1, v1, v7

    const v2, 0x3d50d0d1

    const v3, 0x3db0b0b1

    const v4, 0x3e088889

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 616
    sget-object v1, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v4, p3, v0

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v6, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 617
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 619
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 621
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 622
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 624
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v3, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v4, v0, p3

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v6, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 626
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 627
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 629
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 630
    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 631
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 634
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_cc

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE:Z

    if-nez v0, :cond_d8

    :cond_cc
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_f4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_ENABLE_AUTO_BG_CHANGE_MOBILE:Z

    if-eqz v0, :cond_f4

    .line 635
    :cond_d8
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->text:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Text;->MAIN_MENU_BG_CHANGE_BG_EVERY_X_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_f4

    .line 636
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    .line 638
    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$23;

    const-string v1, "loadBackground"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$23;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f4} :catch_f5

    .line 652
    :cond_f4
    goto :goto_f6

    .line 650
    :catch_f5
    move-exception v0

    .line 654
    :goto_f6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 655
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 656
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 658
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 659
    return-void
.end method

.method public final loadFlags()V
    .registers 13

    .line 679
    const-string v0, "gfx/flags/"

    const-string v1, "gfx/flagsXH/"

    const-string v2, ".png"

    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->disposeFlags()V

    .line 681
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    sget-object v4, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_111

    .line 685
    :try_start_12
    sget-object v4, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_12 .. :try_end_46} :catch_47

    .line 688
    goto :goto_82

    .line 686
    :catch_47
    move-exception v4

    .line 687
    .local v4, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_48
    sget-object v5, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v10, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_48 .. :try_end_82} :catch_83

    .line 695
    .end local v4    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_82
    goto :goto_f4

    .line 689
    :catch_83
    move-exception v4

    .line 691
    .local v4, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_84
    sget-object v5, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_84 .. :try_end_b8} :catch_b9

    .line 694
    goto :goto_f4

    .line 692
    :catch_b9
    move-exception v5

    .line 693
    .local v5, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_ba
    sget-object v6, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v11, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->statsData:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_ba .. :try_end_f4} :catch_f5

    .line 698
    .end local v4    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v5    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_f4
    goto :goto_10d

    .line 696
    :catch_f5
    move-exception v4

    .line 697
    .local v4, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-object v5, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture;

    const-string v8, "gfx/flags/ran.png"

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v4    # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_10d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 700
    .end local v3    # "i":I
    :cond_111
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 674
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 675
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_MainMenu_Stats()V

    .line 676
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 663
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 664
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lTime:J

    .line 665
    sget-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lTime2:J

    .line 667
    if-nez p1, :cond_10

    .line 668
    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->disposeFlags()V

    .line 670
    :cond_10
    return-void
.end method
