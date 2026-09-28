.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Disband.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public static armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public static lTime:J

.field public static restartAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->restartAnimation:Z

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    .line 42
    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 43
    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    return-void
.end method

.method public constructor <init>()V
    .registers 32

    .line 45
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v1, 0x4

    .line 49
    .local v11, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 51
    .local v12, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 53
    .local v13, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v14

    .line 54
    .local v14, "menuX":I
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

    add-int v15, v1, v2

    .line 56
    .local v15, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 57
    .local v16, "buttonYPadding":I
    move/from16 v1, v16

    .line 59
    .local v1, "buttonY":I
    div-int/lit8 v2, v13, 0x4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v28, v2, v3

    .line 61
    .local v28, "buttonX":I
    const/4 v2, 0x0

    .line 63
    .local v2, "numOfUnits":I
    const/4 v3, 0x0

    move v10, v2

    .end local v2    # "numOfUnits":I
    .local v3, "i":I
    .local v10, "numOfUnits":I
    :goto_53
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v3, v2, :cond_69

    .line 64
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v10, v2

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 67
    .end local v3    # "i":I
    :cond_69
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Cancel"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v2, v11, 0x2

    sub-int v2, v13, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    div-int/lit8 v17, v2, 0x2

    const/16 v18, 0x1

    const/4 v6, -0x1

    move-object v2, v9

    move-object/from16 v3, p0

    move v7, v11

    move v8, v1

    move-object/from16 v29, v9

    move/from16 v9, v17

    move/from16 v30, v12

    move v12, v10

    .end local v10    # "numOfUnits":I
    .local v12, "numOfUnits":I
    .local v30, "titleHeight":I
    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v2, v29

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v1, v2

    .line 75
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Army"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v9, v13, 0x2

    const/4 v7, 0x0

    move-object v3, v2

    move-object/from16 v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v1, v2

    .line 118
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e8
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v2, v3, :cond_159

    .line 119
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v27, -0x1

    const/16 v20, 0x1

    move-object/from16 v17, v3

    move-object/from16 v18, p0

    move/from16 v21, v4

    move/from16 v22, v28

    move/from16 v23, v1

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v2

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v16

    add-int/2addr v1, v3

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 131
    .end local v2    # "i":I
    :cond_159
    div-int/lit8 v2, v13, 0x2

    div-int/lit8 v3, v13, 0x4

    add-int/2addr v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v28, v2, v3

    .line 132
    move/from16 v1, v16

    .line 134
    const/4 v2, 0x0

    .line 135
    .end local v12    # "numOfUnits":I
    .local v2, "numOfUnits":I
    const/4 v3, 0x0

    move v12, v2

    .end local v2    # "numOfUnits":I
    .restart local v3    # "i":I
    .restart local v12    # "numOfUnits":I
    :goto_16b
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v3, v2, :cond_181

    .line 136
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v2

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_16b

    .line 139
    .end local v3    # "i":I
    :cond_181
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$4;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Confirm"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v11, 0x2

    sub-int v3, v13, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v22, v3, v4

    mul-int/lit8 v3, v11, 0x2

    sub-int v3, v13, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    div-int/lit8 v24, v3, 0x2

    const/16 v25, 0x1

    const/16 v21, -0x1

    move-object/from16 v17, v2

    move-object/from16 v18, p0

    move/from16 v23, v1

    invoke-direct/range {v17 .. v25}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v1, v2

    .line 200
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$5;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Disband"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v7, v13, 0x2

    div-int/lit8 v9, v13, 0x2

    move-object v3, v2

    move-object/from16 v4, p0

    move v8, v1

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int/2addr v1, v2

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_204
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v2, v3, :cond_275

    .line 239
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v27, -0x1

    const/16 v20, 0x1

    move-object/from16 v17, v3

    move-object/from16 v18, p0

    move/from16 v21, v4

    move/from16 v22, v28

    move/from16 v23, v1

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v2

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v16

    add-int/2addr v1, v3

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_204

    .line 251
    .end local v2    # "i":I
    :cond_275
    const/4 v1, 0x0

    .line 253
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_27b
    if-ge v2, v3, :cond_2b3

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_2b0

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move v1, v4

    .line 253
    :cond_2b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_27b

    .line 259
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_2b3
    add-int v10, v1, v16

    .line 261
    .end local v1    # "buttonY":I
    .local v10, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v15

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 263
    .local v9, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v13, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$7;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    sget v23, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    const-string v19, ""

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v23}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move v3, v14

    move v4, v15

    move v5, v13

    move v6, v9

    move-object v7, v0

    move/from16 v18, v9

    .end local v9    # "menuHeight":I
    .local v18, "menuHeight":I
    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 276
    return-void
.end method

.method public static setArmyLeft(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .registers 6
    .param p0, "nArmyLeft"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 313
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 314
    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v0, "tempArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_11
    if-ge v1, v2, :cond_21

    .line 318
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 320
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_21
    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-direct {v1, v2, v3, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 321
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 322
    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 323
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 280
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_24

    .line 281
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 284
    :cond_24
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 285
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 286
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

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

    .line 288
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 289
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 290
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 291
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 293
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 294
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 305
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 307
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->restartAnimation:Z

    if-eqz v0, :cond_b

    .line 308
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    .line 310
    :cond_b
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 298
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 300
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "DisbandUnits"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 301
    return-void
.end method
