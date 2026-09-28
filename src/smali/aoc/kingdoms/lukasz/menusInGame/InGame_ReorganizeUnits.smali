.class public Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ReorganizeUnits.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public static armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public static restartAnimation:Z


# instance fields
.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->restartAnimation:Z

    .line 33
    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 34
    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    return-void
.end method

.method public constructor <init>()V
    .registers 27

    .line 36
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    move-object/from16 v13, p0

    iput-wide v0, v13, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->lTime:J

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    .line 40
    .local v1, "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    .line 42
    .local v14, "titleHeight":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    .line 44
    .local v15, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v16

    .line 45
    .local v16, "menuX":I
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

    add-int v17, v2, v3

    .line 47
    .local v17, "menuY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v2, 0x2

    .line 48
    .local v18, "buttonYPadding":I
    move/from16 v11, v18

    .line 50
    .local v11, "buttonY":I
    div-int/lit8 v2, v15, 0x4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v19, v2, v3

    .line 52
    .local v19, "buttonX":I
    const/4 v2, 0x0

    .line 54
    .local v2, "numOfUnits":I
    const/4 v3, 0x0

    move v12, v2

    .end local v2    # "numOfUnits":I
    .local v3, "i":I
    .local v12, "numOfUnits":I
    :goto_59
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v3, v2, :cond_6f

    .line 55
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v2

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 58
    .end local v3    # "i":I
    :cond_6f
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Cancel"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v15, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    div-int/lit8 v9, v2, 0x2

    const/16 v20, 0x1

    const/4 v6, -0x1

    move-object v2, v10

    move-object/from16 v3, p0

    move v7, v1

    move v8, v11

    move-object v13, v10

    move/from16 v10, v20

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v18

    add-int/2addr v11, v2

    .line 66
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonReorganize;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Army"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    div-int/lit8 v8, v15, 0x2

    const/4 v6, 0x0

    move-object v3, v2

    move v7, v11

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonReorganize;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v18

    add-int/2addr v11, v2

    .line 69
    const/4 v2, 0x0

    move/from16 v20, v11

    move v11, v2

    .local v11, "i":I
    .local v20, "buttonY":I
    :goto_e7
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v11, v2, :cond_15f

    .line 70
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v21, -0x1

    const/4 v5, 0x1

    move-object v2, v10

    move-object/from16 v3, p0

    move/from16 v7, v19

    move/from16 v22, v8

    move/from16 v8, v20

    move-object/from16 v23, v10

    move/from16 v10, v22

    move/from16 v22, v11

    .end local v11    # "i":I
    .local v22, "i":I
    move/from16 v24, v12

    .end local v12    # "numOfUnits":I
    .local v24, "numOfUnits":I
    move/from16 v12, v21

    invoke-direct/range {v2 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;Ljava/lang/String;IIIIIIII)V

    move-object/from16 v2, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v18

    add-int v20, v20, v2

    .line 69
    add-int/lit8 v11, v22, 0x1

    move/from16 v12, v24

    .end local v22    # "i":I
    .restart local v11    # "i":I
    goto :goto_e7

    .end local v24    # "numOfUnits":I
    .restart local v12    # "numOfUnits":I
    :cond_15f
    move/from16 v22, v11

    move/from16 v24, v12

    .line 81
    .end local v11    # "i":I
    .end local v12    # "numOfUnits":I
    .restart local v24    # "numOfUnits":I
    div-int/lit8 v2, v15, 0x2

    div-int/lit8 v3, v15, 0x4

    add-int/2addr v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v19, v2, v3

    .line 82
    move/from16 v11, v18

    .line 84
    .end local v20    # "buttonY":I
    .local v11, "buttonY":I
    const/4 v2, 0x0

    .line 85
    .end local v24    # "numOfUnits":I
    .restart local v2    # "numOfUnits":I
    const/4 v3, 0x0

    move v12, v2

    .end local v2    # "numOfUnits":I
    .restart local v3    # "i":I
    .restart local v12    # "numOfUnits":I
    :goto_175
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v3, v2, :cond_18b

    .line 86
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v2

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_175

    .line 89
    .end local v3    # "i":I
    :cond_18b
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$3;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Save"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v15, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, v2, v3

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v15, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    div-int/lit8 v9, v2, 0x2

    const/16 v20, 0x1

    const/4 v6, -0x1

    move-object v2, v10

    move-object/from16 v3, p0

    move v8, v11

    move/from16 v21, v1

    move-object v1, v10

    .end local v1    # "paddingLeft":I
    .local v21, "paddingLeft":I
    move/from16 v10, v20

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v18

    add-int/2addr v11, v1

    .line 124
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonReorganize;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "NewArmy"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    div-int/lit8 v5, v15, 0x2

    div-int/lit8 v7, v15, 0x2

    move-object v2, v1

    move v6, v11

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonReorganize;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v18

    add-int/2addr v11, v1

    .line 127
    const/4 v1, 0x0

    move/from16 v20, v11

    .end local v11    # "buttonY":I
    .local v1, "i":I
    .restart local v20    # "buttonY":I
    :goto_210
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v1, v2, :cond_283

    .line 128
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v22, -0x1

    const/4 v5, 0x1

    move-object v2, v11

    move-object/from16 v3, p0

    move/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v25, v11

    move v11, v1

    move/from16 v23, v12

    .end local v12    # "numOfUnits":I
    .local v23, "numOfUnits":I
    move/from16 v12, v22

    invoke-direct/range {v2 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;Ljava/lang/String;IIIIIIII)V

    move-object/from16 v2, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v18

    add-int v20, v20, v2

    .line 127
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, v23

    goto :goto_210

    .end local v23    # "numOfUnits":I
    .restart local v12    # "numOfUnits":I
    :cond_283
    move/from16 v23, v12

    .line 139
    .end local v1    # "i":I
    .end local v12    # "numOfUnits":I
    .restart local v23    # "numOfUnits":I
    const/4 v1, 0x0

    .line 141
    .end local v20    # "buttonY":I
    .local v1, "buttonY":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_28b
    if-ge v2, v3, :cond_2c3

    .line 142
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

    if-ge v1, v4, :cond_2c0

    .line 143
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

    .line 141
    :cond_2c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_28b

    .line 147
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_2c3
    add-int v1, v1, v18

    .line 149
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, v17

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 151
    .local v11, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v15, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$5;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    const-string v4, ""

    const/4 v6, 0x0

    move-object v2, v9

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v2, p0

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move v6, v15

    move v7, v11

    move-object v8, v0

    move v9, v10

    move v10, v12

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;)J
    .registers 3
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;

    .line 27
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->lTime:J

    return-wide v0
.end method

.method public static setArmyLeft(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .registers 6
    .param p0, "nArmyLeft"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 201
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 202
    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "tempArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_11
    if-ge v1, v2, :cond_21

    .line 206
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 208
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_21
    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-direct {v1, v2, v3, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 209
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 210
    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 211
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

    .line 168
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_24

    .line 169
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 172
    :cond_24
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 173
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 174
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getHeight()I

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

    .line 176
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 177
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 178
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 179
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 181
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 182
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 193
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 195
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->restartAnimation:Z

    if-eqz v0, :cond_b

    .line 196
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->lTime:J

    .line 198
    :cond_b
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 186
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 188
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ReorganizeUnits"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 189
    return-void
.end method
