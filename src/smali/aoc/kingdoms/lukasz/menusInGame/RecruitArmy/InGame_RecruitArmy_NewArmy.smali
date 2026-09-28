.class public Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RecruitArmy_NewArmy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;
    }
.end annotation


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static HOVER_POSX:I

.field public static createNewArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;",
            ">;"
        }
    .end annotation
.end field

.field public static fMaintenance:F

.field public static iCost:I

.field public static iProvinceID:I

.field public static iRegiments:I

.field public static key:Ljava/lang/String;

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 66
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->HOVER_POSX:I

    .line 69
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->lTime:J

    .line 71
    const-string v1, ""

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->key:Ljava/lang/String;

    .line 73
    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    .line 74
    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    .line 75
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->fMaintenance:F

    .line 77
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 54

    .line 192
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v10, 0x0

    sput v10, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    .line 196
    sput v10, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    .line 197
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->fMaintenance:F

    .line 199
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 200
    const/4 v1, -0x1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    .line 202
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v19, v1, v2

    .line 203
    .local v19, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v20

    .line 205
    .local v20, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    .line 207
    .local v9, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v21

    .line 208
    .local v21, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v22, v1, v2

    .line 210
    .local v22, "menuY":I
    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 211
    .local v23, "buttonYPadding":I
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 212
    .local v8, "buttonY":I
    move/from16 v11, v19

    .line 214
    .local v11, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 216
    .local v15, "textTitleH":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_7d

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_7f

    :cond_7d
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_7f
    move/from16 v35, v1

    .line 217
    .local v35, "buttonH":I
    mul-int/lit8 v1, v19, 0x2

    sub-int v1, v9, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v14, v1

    .line 220
    .local v14, "c0W":I
    mul-int/lit8 v1, v19, 0x2

    sub-int v1, v9, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v36, v1, 0x5

    .line 221
    .local v36, "leftW":I
    mul-int/lit8 v1, v19, 0x2

    sub-int v1, v9, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v37, v1, 0x5

    .line 224
    .local v37, "rightW":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v38

    .line 226
    .local v38, "maxIconWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int v39, v38, v1

    .line 228
    .local v39, "backW":I
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Back"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v2, v35, 0x2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v32, v2, v3

    const/16 v28, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, p0

    move/from16 v29, v11

    move/from16 v30, v8

    move/from16 v31, v39

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$2;

    sget v27, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    add-int v2, v11, v39

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v28, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, v39, v2

    sub-int v30, v37, v2

    const/16 v33, 0x0

    const-string v26, "0"

    move-object/from16 v24, v1

    move/from16 v29, v8

    move/from16 v31, v35

    move/from16 v32, v38

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$3;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ChooseAProvince"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v11

    add-int v28, v2, v37

    sub-int v2, v36, v35

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v30, v2, v3

    sget v33, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    const/16 v34, 0x1

    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$4;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->information:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v11

    add-int v1, v1, v37

    sub-int v2, v36, v35

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v1, v2

    move-object v1, v12

    move-object/from16 v2, p0

    move v5, v8

    move/from16 v6, v35

    move/from16 v7, v35

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v23

    add-int/2addr v8, v1

    .line 421
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$5;

    sget v27, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v3, v11, v39

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v28, v3, v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v39, v3

    sub-int v30, v37, v3

    const/16 v33, 0x0

    const-string v26, "0"

    move-object/from16 v24, v1

    move/from16 v29, v8

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$6;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "CreateArmy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v11

    add-int v29, v3, v37

    const/16 v33, 0x1

    const/16 v28, -0x1

    move-object/from16 v24, v1

    move/from16 v30, v8

    move/from16 v31, v36

    move/from16 v32, v35

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v23

    add-int/2addr v8, v1

    .line 583
    sget v24, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 584
    .end local v11    # "buttonX":I
    .local v24, "buttonX":I
    invoke-static {v8, v9, v15}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v23

    add-int/2addr v8, v1

    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, "tempAdded":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c1
    sget v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v3, v4, :cond_29e

    .line 591
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1c6
    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_297

    .line 592
    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v5, :cond_28d

    .line 593
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v5

    if-eqz v5, :cond_289

    .line 594
    add-int/lit8 v1, v1, 0x1

    .line 596
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;

    mul-int/lit8 v6, v19, 0x2

    sub-int v6, v9, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v17, v6, v7

    const/16 v18, 0x1

    move-object v11, v5

    move-object/from16 v12, p0

    move v13, v3

    move/from16 v25, v14

    .end local v14    # "c0W":I
    .local v25, "c0W":I
    move v14, v4

    move v7, v15

    .end local v15    # "textTitleH":I
    .local v7, "textTitleH":I
    move/from16 v15, v19

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIIIIZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$8;

    sget v46, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v6, v19, 0x2

    sub-int v6, v9, v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v6, v11

    add-int v6, v19, v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v48, v6, v11

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v50, v6, v11

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v6, v11

    div-int/lit8 v51, v6, 0x2

    const/16 v52, 0x1

    const/16 v44, 0x1

    const-string v45, "+"

    const/16 v47, -0x1

    move-object/from16 v40, v5

    move-object/from16 v41, p0

    move/from16 v42, v3

    move/from16 v43, v4

    move/from16 v49, v8

    invoke-direct/range {v40 .. v52}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;

    sget v46, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v6, v19, 0x2

    sub-int v6, v9, v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v6, v11

    add-int v6, v19, v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v48, v6, v11

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v6, v11

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v49, v6, v11

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v50, v6, v11

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v6, v11

    div-int/lit8 v51, v6, 0x2

    const/16 v44, 0x0

    const-string v45, "-"

    move-object/from16 v40, v5

    invoke-direct/range {v40 .. v52}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v8, v5

    goto :goto_290

    .line 593
    .end local v7    # "textTitleH":I
    .end local v25    # "c0W":I
    .restart local v14    # "c0W":I
    .restart local v15    # "textTitleH":I
    :cond_289
    move/from16 v25, v14

    move v7, v15

    .end local v14    # "c0W":I
    .end local v15    # "textTitleH":I
    .restart local v7    # "textTitleH":I
    .restart local v25    # "c0W":I
    goto :goto_290

    .line 592
    .end local v7    # "textTitleH":I
    .end local v25    # "c0W":I
    .restart local v14    # "c0W":I
    .restart local v15    # "textTitleH":I
    :cond_28d
    move/from16 v25, v14

    move v7, v15

    .line 591
    .end local v14    # "c0W":I
    .end local v15    # "textTitleH":I
    .restart local v7    # "textTitleH":I
    .restart local v25    # "c0W":I
    :goto_290
    add-int/lit8 v4, v4, 0x1

    move v15, v7

    move/from16 v14, v25

    goto/16 :goto_1c6

    .end local v7    # "textTitleH":I
    .end local v25    # "c0W":I
    .restart local v14    # "c0W":I
    .restart local v15    # "textTitleH":I
    :cond_297
    move/from16 v25, v14

    move v7, v15

    .line 590
    .end local v4    # "j":I
    .end local v14    # "c0W":I
    .end local v15    # "textTitleH":I
    .restart local v7    # "textTitleH":I
    .restart local v25    # "c0W":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1c1

    .end local v7    # "textTitleH":I
    .end local v25    # "c0W":I
    .restart local v14    # "c0W":I
    .restart local v15    # "textTitleH":I
    :cond_29e
    move/from16 v25, v14

    move v7, v15

    .line 652
    .end local v3    # "i":I
    .end local v14    # "c0W":I
    .end local v15    # "textTitleH":I
    .restart local v7    # "textTitleH":I
    .restart local v25    # "c0W":I
    const-string v3, "None"

    if-nez v1, :cond_2d4

    .line 653
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v5, v19, 0x2

    sub-int v17, v9, v5

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v14, -0x1

    move-object v11, v4

    move/from16 v15, v19

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v8, v4

    .line 656
    :cond_2d4
    const/4 v1, 0x0

    .line 659
    invoke-static {v8, v9, v7}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLineSide(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v23

    add-int/2addr v8, v4

    .line 662
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2ef
    sget v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v4, v5, :cond_3bb

    .line 663
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2f4
    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_3b7

    .line 664
    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v6, v2, :cond_3b3

    .line 665
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v6

    if-eqz v6, :cond_3b3

    .line 666
    add-int/lit8 v1, v1, 0x1

    .line 668
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$10;

    mul-int/lit8 v11, v19, 0x2

    sub-int v11, v9, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v17, v11, v12

    const/16 v18, 0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move/from16 v15, v19

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIIIIZ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$11;

    sget v46, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v11, v19, 0x2

    sub-int v11, v9, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v11, v12

    add-int v11, v19, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v48, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v50, v11, v12

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v12

    div-int/lit8 v51, v11, 0x2

    const/16 v52, 0x1

    const/16 v44, 0x1

    const-string v45, "+"

    const/16 v47, -0x1

    move-object/from16 v40, v6

    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v49, v8

    invoke-direct/range {v40 .. v52}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$12;

    sget v46, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v11, v19, 0x2

    sub-int v11, v9, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v11, v12

    add-int v11, v19, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v48, v11, v12

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v8

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v49, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v50, v11, v12

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v12

    div-int/lit8 v51, v11, 0x2

    const/16 v44, 0x0

    const-string v45, "-"

    move-object/from16 v40, v6

    invoke-direct/range {v40 .. v52}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v11

    add-int/2addr v8, v6

    .line 663
    :cond_3b3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2f4

    .line 662
    .end local v5    # "j":I
    :cond_3b7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2ef

    .line 724
    .end local v4    # "i":I
    :cond_3bb
    if-nez v1, :cond_3ec

    .line 725
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v5, v19, 0x2

    sub-int v17, v9, v5

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v14, -0x1

    move-object v11, v4

    move/from16 v15, v19

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v8, v4

    .line 728
    :cond_3ec
    const/4 v1, 0x0

    .line 731
    invoke-static {v8, v9, v7}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleSecondLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v23

    add-int/2addr v8, v4

    .line 734
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_407
    sget v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v4, v5, :cond_4d3

    .line 735
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_40c
    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_4cf

    .line 736
    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-le v6, v2, :cond_4cb

    .line 737
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v6

    if-eqz v6, :cond_4cb

    .line 738
    add-int/lit8 v1, v1, 0x1

    .line 740
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$13;

    mul-int/lit8 v11, v19, 0x2

    sub-int v11, v9, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v17, v11, v12

    const/16 v18, 0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move/from16 v15, v19

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIIIIZ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$14;

    sget v46, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v11, v19, 0x2

    sub-int v11, v9, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v11, v12

    add-int v11, v19, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v48, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v50, v11, v12

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v12

    div-int/lit8 v51, v11, 0x2

    const/16 v52, 0x1

    const/16 v44, 0x1

    const-string v45, "+"

    const/16 v47, -0x1

    move-object/from16 v40, v6

    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v49, v8

    invoke-direct/range {v40 .. v52}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$15;

    sget v46, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v11, v19, 0x2

    sub-int v11, v9, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v11, v12

    add-int v11, v19, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v48, v11, v12

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v8

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v49, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v50, v11, v12

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v11, v12

    div-int/lit8 v51, v11, 0x2

    const/16 v44, 0x0

    const-string v45, "-"

    move-object/from16 v40, v6

    invoke-direct/range {v40 .. v52}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->getTopH()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v11

    add-int/2addr v8, v6

    .line 735
    :cond_4cb
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_40c

    .line 734
    .end local v5    # "j":I
    :cond_4cf
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_407

    .line 796
    .end local v4    # "i":I
    :cond_4d3
    if-nez v1, :cond_506

    .line 797
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v19, 0x2

    sub-int v17, v9, v3

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v14, -0x1

    move-object v11, v4

    move/from16 v15, v19

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    move v11, v8

    goto :goto_507

    .line 796
    :cond_506
    move v11, v8

    .line 800
    .end local v8    # "buttonY":I
    .local v11, "buttonY":I
    :goto_507
    const/4 v12, 0x0

    .line 803
    .end local v1    # "tempAdded":I
    .local v12, "tempAdded":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v22

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 805
    .local v13, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v10, v10, v9, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    add-int v1, v21, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sput v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->HOVER_POSX:I

    .line 809
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$16;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "CreateNewArmy"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "BattleWidth"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    const/16 v30, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v32}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x1

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v21

    move/from16 v4, v22

    move v5, v9

    move v6, v13

    move v15, v7

    .end local v7    # "textTitleH":I
    .restart local v15    # "textTitleH":I
    move-object v7, v0

    move/from16 v16, v9

    .end local v9    # "menuWidth":I
    .local v16, "menuWidth":I
    move v9, v14

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 816
    iput-boolean v10, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->drawScrollPositionAlways:Z

    .line 817
    return-void
.end method

.method public static final actionCreateNewArmy()Z
    .registers 12

    .line 862
    const/4 v0, 0x0

    .line 864
    .local v0, "out":Z
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ": "

    if-lez v1, :cond_110

    .line 865
    sget v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    if-ltz v1, :cond_100

    .line 866
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_136

    .line 867
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "sKey":Ljava/lang/String;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v3, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_74

    .line 873
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-nez v5, :cond_71

    .line 874
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 877
    .end local v4    # "i":I
    :cond_74
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 879
    .local v4, "tProvincesSize":I
    if-lez v4, :cond_db

    .line 880
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_81
    if-ge v2, v5, :cond_ca

    .line 881
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_84
    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    if-ge v6, v7, :cond_c7

    .line 882
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v9, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iUnitID:I

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iArmyID:I

    invoke-direct {v8, v9, v10, v11, v1}, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->recruitArmy(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)Z

    .line 881
    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    .line 880
    .end local v6    # "j":I
    :cond_c7
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 886
    .end local v2    # "i":I
    .end local v5    # "iSize":I
    :cond_ca
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Done"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-virtual {v2, v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 887
    const/4 v0, 0x1

    goto :goto_ff

    .line 890
    :cond_db
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "NumberOfProvinces"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-virtual {v5, v2, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    .line 892
    .end local v1    # "sKey":Ljava/lang/String;
    .end local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tProvincesSize":I
    :goto_ff
    goto :goto_136

    .line 895
    :cond_100
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ChooseAProvince"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    goto :goto_136

    .line 899
    :cond_110
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Army"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    .line 902
    :cond_136
    :goto_136
    return v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 854
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 856
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_16

    .line 857
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 859
    :cond_16
    return-void
.end method

.method public final addUnit(II)V
    .registers 11
    .param p1, "iUnitID"    # I
    .param p2, "iArmyID"    # I

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-wide v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget v2, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v2, v2, v4

    int-to-double v4, v2

    const-string v2, ": "

    cmpg-double v6, v0, v4

    if-gez v6, :cond_7e

    .line 114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Manpower"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v4, v5, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(DI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    add-int/2addr v4, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void

    .line 117
    :cond_7e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    int-to-float v1, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Cost:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    add-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    const/high16 v7, 0x3f800000    # 1.0f

    if-lt v5, v6, :cond_c9

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    goto :goto_cb

    :cond_c9
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_cb
    mul-float v4, v4, v5

    add-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_149

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "InsufficientGold"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Cost:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    add-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-lt v4, v5, :cond_133

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v7, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    :cond_133
    mul-float v3, v3, v7

    const/16 v4, 0xa

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    return-void

    .line 122
    :cond_149
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_150
    if-ltz v0, :cond_186

    .line 123
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iUnitID:I

    if-ne v1, p1, :cond_183

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iArmyID:I

    if-ne v1, p2, :cond_183

    .line 124
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v2, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    .line 125
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->updateTextWidth()V

    .line 126
    return-void

    .line 122
    :cond_183
    add-int/lit8 v0, v0, -0x1

    goto :goto_150

    .line 130
    .end local v0    # "i":I
    :cond_186
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 821
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 822
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 825
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 826
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 827
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getHeight()I

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

    .line 829
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 830
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->sparksColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 831
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 832
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 835
    :cond_db
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 836
    return-void
.end method

.method public final removeUnit(II)V
    .registers 6
    .param p1, "iUnitID"    # I
    .param p2, "iArmyID"    # I

    .line 134
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_51

    .line 135
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iUnitID:I

    if-ne v1, p1, :cond_4e

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iArmyID:I

    if-ne v1, p2, :cond_4e

    .line 136
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v2, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    .line 138
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    if-nez v1, :cond_42

    .line 139
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4d

    .line 141
    :cond_42
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->updateTextWidth()V

    .line 143
    :goto_4d
    return-void

    .line 134
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 146
    .end local v0    # "i":I
    :cond_51
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 840
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 841
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->lTime:J

    .line 843
    if-nez p1, :cond_22

    .line 844
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_RecruitArmy_Battlefield(Z)V

    .line 846
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_22

    .line 847
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 850
    :cond_22
    return-void
.end method

.method public updateArmyComposition(I)V
    .registers 8
    .param p1, "change"    # I

    .line 166
    sget v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    add-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 168
    .local v0, "numOfRegiments":I
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-direct {v2, v3, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    .line 170
    .local v2, "armyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    sput v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    .line 171
    sput v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    .line 172
    const/4 v3, 0x0

    sput v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->fMaintenance:F

    .line 173
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 175
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-ge v3, v4, :cond_4c

    .line 176
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->addUnit(II)V

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 179
    .end local v3    # "i":I
    :cond_4c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4d
    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-ge v3, v4, :cond_7b

    .line 180
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->addUnit(II)V

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 183
    .end local v3    # "i":I
    :cond_7b
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7c
    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-ge v3, v4, :cond_aa

    .line 184
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->addUnit(II)V

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 187
    .end local v3    # "i":I
    :cond_aa
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_ab
    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-ge v3, v4, :cond_d9

    .line 188
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->addUnit(II)V

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 190
    .end local v3    # "i":I
    :cond_d9
    return-void
.end method

.method public final updateCost()V
    .registers 8

    .line 149
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    .line 150
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->fMaintenance:F

    .line 151
    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    .line 153
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_b0

    .line 154
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_13
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    if-ge v2, v3, :cond_ac

    .line 155
    sget v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iUnitID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iArmyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Cost:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    add-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-lt v5, v6, :cond_72

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    goto :goto_74

    :cond_72
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_74
    mul-float v4, v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    .line 156
    sget v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->fMaintenance:F

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iUnitID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iArmyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MaintenanceCost:F

    add-float/2addr v3, v4

    sput v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->fMaintenance:F

    .line 157
    sget v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    add-int/2addr v3, v1

    sput v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 153
    .end local v2    # "j":I
    :cond_ac
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10

    .line 161
    .end local v0    # "i":I
    :cond_b0
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iRegiments:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setText(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iCost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setText(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final updateCreateNewArmy(IIZ)V
    .registers 4
    .param p1, "iUnitID"    # I
    .param p2, "iArmyID"    # I
    .param p3, "addUnit"    # Z

    .line 102
    if-eqz p3, :cond_6

    .line 103
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->addUnit(II)V

    goto :goto_9

    .line 106
    :cond_6
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->removeUnit(II)V

    .line 109
    :goto_9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->updateCost()V

    .line 110
    return-void
.end method
