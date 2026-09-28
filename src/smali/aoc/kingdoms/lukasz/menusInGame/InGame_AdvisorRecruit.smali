.class public Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_AdvisorRecruit.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveAdvisorTypeID:I


# instance fields
.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 38

    .line 42
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    move-object/from16 v12, p0

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->lTime:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    .line 46
    .local v1, "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v13

    .line 48
    .local v13, "titleHeight":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    .line 50
    .local v14, "menuWidth":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v2, v3

    .line 51
    .local v15, "menuX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v16, v2, v3

    .line 53
    .local v16, "menuY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v2, 0x2

    .line 54
    .local v17, "buttonYPadding":I
    move/from16 v2, v17

    .line 55
    .local v2, "buttonY":I
    move v3, v1

    .line 57
    .local v3, "buttonX":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v27

    .line 59
    .local v27, "maxIconW":I
    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    const/4 v11, 0x4

    const/4 v10, 0x3

    if-lt v4, v10, :cond_76

    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    if-ne v4, v11, :cond_6a

    goto :goto_76

    .line 63
    :cond_6a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->updatePoolOfAdvisors(I)V

    goto :goto_81

    .line 60
    :cond_76
    :goto_76
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->updatePoolOfAdvisors(I)V

    .line 66
    :goto_81
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v28, v2

    move/from16 v29, v3

    move v8, v4

    .end local v2    # "buttonY":I
    .end local v3    # "buttonX":I
    .end local v4    # "i":I
    .local v8, "i":I
    .local v9, "iSize":I
    .local v28, "buttonY":I
    .local v29, "buttonX":I
    :goto_91
    const-string v6, ""

    if-ge v8, v9, :cond_1194

    .line 67
    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    if-lt v2, v10, :cond_108

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    if-ne v2, v11, :cond_a9

    move-object v12, v6

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v30, v15

    const/4 v15, 0x1

    const/16 v33, 0x3

    goto/16 :goto_112

    .line 110
    :cond_a9
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v3, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    move/from16 v19, v2

    move-object v2, v5

    move/from16 v20, v3

    move-object/from16 v3, p0

    move-object/from16 v21, v4

    move/from16 v4, v29

    move-object v11, v5

    move/from16 v5, v28

    move-object v12, v6

    move-object/from16 v6, v21

    move-object/from16 v18, v7

    move/from16 v30, v15

    const/4 v15, 0x1

    .end local v15    # "menuX":I
    .local v30, "menuX":I
    move/from16 v7, v20

    move/from16 v31, v8

    .end local v8    # "i":I
    .local v31, "i":I
    move/from16 v8, v19

    move/from16 v32, v9

    .end local v9    # "iSize":I
    .local v32, "iSize":I
    move/from16 v9, v31

    const/16 v33, 0x3

    move-object/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;IILjava/lang/String;IIILjava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v34, v31

    const/16 v35, 0x4

    goto :goto_15f

    .line 67
    .end local v30    # "menuX":I
    .end local v31    # "i":I
    .end local v32    # "iSize":I
    .restart local v8    # "i":I
    .restart local v9    # "iSize":I
    .restart local v15    # "menuX":I
    :cond_108
    move-object v12, v6

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v30, v15

    const/4 v15, 0x1

    const/16 v33, 0x3

    .line 68
    .end local v8    # "i":I
    .end local v9    # "iSize":I
    .end local v15    # "menuX":I
    .restart local v30    # "menuX":I
    .restart local v31    # "i":I
    .restart local v32    # "iSize":I
    :goto_112
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    move/from16 v10, v31

    .end local v31    # "i":I
    .local v10, "i":I
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v7, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v18, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v9, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    move-object v2, v11

    move-object/from16 v3, p0

    move/from16 v4, v29

    move/from16 v5, v28

    move-object/from16 v19, v9

    move v9, v10

    move/from16 v34, v10

    .end local v10    # "i":I
    .local v34, "i":I
    move/from16 v10, v18

    move-object v15, v11

    const/16 v35, 0x4

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;IILjava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_15f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v29, v29, v2

    .line 150
    const/4 v10, 0x0

    .line 151
    .local v10, "statsY":I
    sub-int v2, v14, v29

    sub-int v11, v2, v1

    .line 152
    .local v11, "statW":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v15, v2, 0x3

    .line 154
    .local v15, "statH":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$3;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    move/from16 v8, v34

    .end local v34    # "i":I
    .restart local v8    # "i":I
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    sub-int/2addr v3, v5

    const/16 v5, 0x63

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v5, "XYearsOld"

    invoke-virtual {v2, v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v9

    move-object/from16 v3, p0

    move/from16 v6, v29

    move/from16 v7, v28

    move/from16 v34, v13

    move v13, v8

    .end local v8    # "i":I
    .local v13, "i":I
    .local v34, "titleHeight":I
    move v8, v11

    move/from16 v36, v1

    move-object v1, v9

    .end local v1    # "paddingLeft":I
    .local v36, "paddingLeft":I
    move v9, v15

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 162
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const-string v2, "+"

    const-string v3, "%"

    const/16 v4, 0x64

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_261

    .line 163
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 164
    const-string v8, "TaxEfficiency"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 165
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    invoke-static {v7, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v6

    add-int/2addr v10, v1

    .line 171
    :cond_261
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2dd

    .line 172
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 173
    const-string v8, "ProvinceMaintenance"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    invoke-static {v7, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v6

    add-int/2addr v10, v1

    .line 180
    :cond_2dd
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_355

    .line 181
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 182
    const-string v8, "GrowthRate"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 183
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v7, v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    invoke-static {v7, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v6

    add-int/2addr v10, v1

    .line 189
    :cond_355
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3d5

    .line 190
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 191
    const-string v9, "ConstructionCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 192
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 198
    :cond_3d5
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_453

    .line 199
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 200
    const-string v9, "AdministrationBuildingsCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 201
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 207
    :cond_453
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_4d1

    .line 208
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 209
    const-string v9, "EconomyBuildingsCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 210
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 208
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 216
    :cond_4d1
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_54f

    .line 217
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 218
    const-string v9, "MilitaryBuildingsCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 219
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 226
    :cond_54f
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5cd

    .line 227
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 228
    const-string v9, "InvestInEconomyCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 229
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 235
    :cond_5cd
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_64b

    .line 236
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 237
    const-string v9, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 238
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 244
    :cond_64b
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_6c9

    .line 245
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 246
    const-string v9, "IncreaseGrowthRateCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 247
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 253
    :cond_6c9
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_747

    .line 254
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 255
    const-string v9, "DevelopInfrastructureCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 256
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 254
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 262
    :cond_747
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_7c3

    .line 263
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 264
    const-string v9, "ProductionEfficiency"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 265
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 271
    :cond_7c3
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_83b

    .line 272
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 273
    const-string v9, "ResearchPerMonth"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 274
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 280
    :cond_83b
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_8b3

    .line 281
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 282
    const-string v9, "MonthlyLegacy"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 283
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 289
    :cond_8b3
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_92b

    .line 290
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 291
    const-string v9, "GeneralsAttack"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 292
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 298
    :cond_92b
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_9a3

    .line 299
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 300
    const-string v9, "GeneralsDefense"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 301
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 299
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 307
    :cond_9a3
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a1f

    .line 308
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 309
    const-string v9, "ArmyMaintenance"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 310
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 316
    :cond_a1f
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a9b

    .line 317
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 318
    const-string v9, "ArmyRecruitmentCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 319
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 317
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 328
    :cond_a9b
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_b19

    .line 329
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 330
    const-string v9, "ConstructionTime"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 331
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    mul-float v8, v8, v6

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 337
    :cond_b19
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_b95

    .line 338
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 339
    const-string v9, "IncreaseManpowerCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 340
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 338
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 346
    :cond_b95
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_c11

    .line 347
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 348
    const-string v9, "RecruitmentTime"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 349
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 355
    :cond_c11
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_c8d

    .line 356
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 357
    const-string v9, "LoanInterest"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 358
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 364
    :cond_c8d
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_d09

    .line 365
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 366
    const-string v9, "CoreConstruction"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 367
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->core:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 373
    :cond_d09
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_d85

    .line 374
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 375
    const-string v9, "ReligionConversionCost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 376
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 374
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 382
    :cond_d85
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_e01

    .line 383
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 384
    const-string v9, "IncomeProduction"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 385
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 383
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 391
    :cond_e01
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_e76

    .line 392
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 393
    const-string v9, "MaximumManpower"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 394
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 400
    :cond_e76
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_eee

    .line 401
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 402
    const-string v9, "UnitsAttack"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 403
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 401
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 409
    :cond_eee
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_f66

    .line 410
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 411
    const-string v9, "UnitsDefense"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 412
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 418
    :cond_f66
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v1, :cond_fde

    .line 419
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 420
    const-string v9, "RegimentsLimit"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 421
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 419
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 427
    :cond_fde
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_105a

    .line 428
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 429
    const-string v9, "ImproveRelationsModifier"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 430
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 436
    :cond_105a
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_10d6

    .line 437
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 438
    const-string v9, "ArmyMovementSpeed"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 439
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v8, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    invoke-static {v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 437
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v10, v1

    .line 445
    :cond_10d6
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_1154

    .line 446
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 447
    const-string v8, "SiegeEffectiveness"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 448
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    mul-float v5, v5, v6

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    add-int v23, v28, v10

    move-object/from16 v18, v1

    move/from16 v22, v29

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v27

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 454
    :cond_1154
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v28, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v14, v4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    add-int v28, v28, v1

    .line 457
    move/from16 v29, v36

    .line 66
    .end local v10    # "statsY":I
    .end local v11    # "statW":I
    .end local v15    # "statH":I
    add-int/lit8 v8, v13, 0x1

    move-object/from16 v12, p0

    move/from16 v15, v30

    move/from16 v9, v32

    move/from16 v13, v34

    move/from16 v1, v36

    const/4 v10, 0x3

    const/4 v11, 0x4

    .end local v13    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_91

    .end local v30    # "menuX":I
    .end local v32    # "iSize":I
    .end local v34    # "titleHeight":I
    .end local v36    # "paddingLeft":I
    .restart local v1    # "paddingLeft":I
    .restart local v9    # "iSize":I
    .local v13, "titleHeight":I
    .local v15, "menuX":I
    :cond_1194
    move/from16 v36, v1

    move-object v12, v6

    move/from16 v32, v9

    move/from16 v34, v13

    move/from16 v30, v15

    move v13, v8

    .line 465
    .end local v1    # "paddingLeft":I
    .end local v8    # "i":I
    .end local v9    # "iSize":I
    .end local v13    # "titleHeight":I
    .end local v15    # "menuX":I
    .restart local v30    # "menuX":I
    .restart local v34    # "titleHeight":I
    .restart local v36    # "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 466
    .local v1, "iconWidth":I
    mul-int/lit8 v2, v36, 0x2

    sub-int v2, v14, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    div-int/lit8 v13, v2, 0x2

    .line 468
    .local v13, "costW":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Cost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 469
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    add-int v10, v3, v7

    move-object v3, v2

    move/from16 v7, v36

    move/from16 v8, v28

    move v9, v13

    move v11, v1

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 468
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "LegacyPoints"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 473
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int v3, v36, v13

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v22, v3, v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x5

    add-int v25, v3, v4

    move-object/from16 v18, v2

    move/from16 v23, v28

    move/from16 v24, v13

    move/from16 v26, v1

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 472
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v11, v28, v2

    .line 479
    .end local v28    # "buttonY":I
    .local v11, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v34

    sub-int v2, v2, v16

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 481
    .local v12, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v11, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v14, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$4;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorGroupName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const-string v4, ""

    const/4 v6, 0x1

    move-object v2, v9

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v14, 0x2

    sub-int v4, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v12, v34

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v2, v3

    const/4 v10, 0x0

    const/4 v15, 0x1

    move-object/from16 v2, p0

    move-object v3, v9

    move v6, v14

    move v7, v12

    move-object v8, v0

    move v9, v10

    move v10, v15

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 489
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;)J
    .registers 3
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    .line 35
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->lTime:J

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 508
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_28

    .line 509
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 512
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 513
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 514
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 520
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 521
    return-void
.end method

.method public getAdvisorPool()Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;
    .registers 2

    .line 492
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    packed-switch v0, :pswitch_data_1a

    .line 500
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    return-object v0

    .line 498
    :pswitch_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    return-object v0

    .line 496
    :pswitch_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    return-object v0

    .line 494
    :pswitch_14
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 532
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 533
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->lTime:J

    .line 534
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 525
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 527
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ChooseAnAdvisorToHire"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 528
    return-void
.end method
