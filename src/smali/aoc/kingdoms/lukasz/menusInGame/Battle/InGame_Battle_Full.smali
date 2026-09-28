.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Battle_Full.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static TURN_ID:I

.field public static battleID:I

.field public static iDayWidth:I

.field public static iProvinceID:I

.field public static key:Ljava/lang/String;

.field public static lTime:J

.field public static sDay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->lTime:J

    .line 33
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->key:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->iProvinceID:I

    .line 36
    const/4 v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    .line 37
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->TURN_ID:I

    .line 39
    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->sDay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 31

    .line 42
    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 45
    .local v12, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    .line 46
    .local v13, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v0, 0x4

    .line 48
    .local v14, "paddingTop":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->titleTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v15

    .line 50
    .local v15, "titleHeight":I
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 52
    .local v16, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v17, v0, v1

    .line 53
    .local v17, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v18, v0, v1

    .line 55
    .local v18, "menuY":I
    move v10, v14

    .line 56
    .local v10, "buttonY":I
    move v0, v13

    .line 66
    .local v0, "buttonX":I
    div-int/lit8 v1, v16, 0x2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 69
    .end local v0    # "buttonX":I
    .local v1, "buttonX":I
    const/4 v0, 0x0

    move v9, v0

    move v8, v1

    .end local v1    # "buttonX":I
    .local v8, "buttonX":I
    .local v9, "i":I
    :goto_68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_154

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 71
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getImageRegimentID(I)I

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    .line 72
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v8

    move v5, v10

    move/from16 v22, v6

    move v6, v9

    move-object/from16 v23, v7

    move/from16 v7, v21

    move/from16 v24, v8

    .end local v8    # "buttonX":I
    .local v24, "buttonX":I
    move/from16 v8, v22

    move/from16 v21, v9

    .end local v9    # "i":I
    .local v21, "i":I
    move/from16 v9, v19

    move/from16 v19, v13

    move v13, v10

    .end local v10    # "buttonY":I
    .local v13, "buttonY":I
    .local v19, "paddingLeft":I
    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;IIIIIIIZZ)V

    .line 71
    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v24

    goto :goto_13f

    .line 80
    .end local v19    # "paddingLeft":I
    .end local v21    # "i":I
    .end local v24    # "buttonX":I
    .restart local v8    # "buttonX":I
    .restart local v9    # "i":I
    .restart local v10    # "buttonY":I
    .local v13, "paddingLeft":I
    :cond_12c
    move/from16 v24, v8

    move/from16 v21, v9

    move/from16 v19, v13

    move v13, v10

    .end local v8    # "buttonX":I
    .end local v9    # "i":I
    .end local v10    # "buttonY":I
    .local v13, "buttonY":I
    .restart local v19    # "paddingLeft":I
    .restart local v21    # "i":I
    .restart local v24    # "buttonX":I
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$2;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    move/from16 v2, v24

    .end local v24    # "buttonX":I
    .local v2, "buttonX":I
    invoke-direct {v0, v11, v1, v2, v13}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;III)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_13f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v8, v2, v0

    .line 69
    .end local v2    # "buttonX":I
    .restart local v8    # "buttonX":I
    add-int/lit8 v9, v21, 0x1

    move v10, v13

    move/from16 v13, v19

    .end local v21    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_68

    .end local v19    # "paddingLeft":I
    .restart local v10    # "buttonY":I
    .local v13, "paddingLeft":I
    :cond_154
    move v2, v8

    move/from16 v21, v9

    move/from16 v19, v13

    move v13, v10

    .line 88
    .end local v8    # "buttonX":I
    .end local v9    # "i":I
    .end local v10    # "buttonY":I
    .restart local v2    # "buttonX":I
    .local v13, "buttonY":I
    .restart local v19    # "paddingLeft":I
    div-int/lit8 v0, v16, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    mul-int v1, v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 89
    .end local v2    # "buttonX":I
    .restart local v0    # "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v13, v1

    .line 93
    const/4 v1, 0x0

    move v10, v0

    move v9, v1

    .end local v0    # "buttonX":I
    .restart local v9    # "i":I
    .local v10, "buttonX":I
    :goto_18a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2d4

    .line 94
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b4

    .line 95
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v0, :cond_265

    .line 96
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getImageRegimentID(I)I

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    .line 97
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v7, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v10

    move v5, v13

    move v6, v9

    move/from16 v23, v7

    move/from16 v7, v22

    move-object/from16 v25, v8

    move/from16 v8, v23

    move/from16 v26, v9

    .end local v9    # "i":I
    .local v26, "i":I
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "buttonX":I
    .local v20, "buttonX":I
    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;IIIIIIIZZ)V

    .line 96
    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v20

    move/from16 v9, v26

    goto :goto_2c2

    .line 102
    .end local v20    # "buttonX":I
    .end local v26    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "buttonX":I
    :cond_265
    move/from16 v26, v9

    move/from16 v20, v10

    .end local v9    # "i":I
    .end local v10    # "buttonX":I
    .restart local v20    # "buttonX":I
    .restart local v26    # "i":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .end local v26    # "i":I
    .restart local v9    # "i":I
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getImageRegimentID(I)I

    move-result v3

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v20

    move v5, v13

    move v6, v9

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;IIIIII)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v20

    goto :goto_2c2

    .line 108
    .end local v20    # "buttonX":I
    .restart local v10    # "buttonX":I
    :cond_2b4
    move/from16 v20, v10

    .end local v10    # "buttonX":I
    .restart local v20    # "buttonX":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    move/from16 v2, v20

    .end local v20    # "buttonX":I
    .restart local v2    # "buttonX":I
    invoke-direct {v0, v1, v2, v13}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_2c2
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v10, v2, v0

    .line 93
    .end local v2    # "buttonX":I
    .restart local v10    # "buttonX":I
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_18a

    :cond_2d4
    move v2, v10

    .line 115
    .end local v9    # "i":I
    .end local v10    # "buttonX":I
    .restart local v2    # "buttonX":I
    div-int/lit8 v0, v16, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    mul-int v1, v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 116
    .end local v2    # "buttonX":I
    .restart local v0    # "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getMiddleHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v13, v1

    .line 120
    const/4 v1, 0x0

    move v10, v0

    move v9, v1

    .end local v0    # "buttonX":I
    .restart local v9    # "i":I
    .restart local v10    # "buttonX":I
    :goto_30a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_454

    .line 121
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_434

    .line 122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v0, :cond_3e5

    .line 123
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getImageRegimentID(I)I

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    .line 124
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v7, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v10

    move v5, v13

    move v6, v9

    move/from16 v23, v7

    move/from16 v7, v22

    move-object/from16 v27, v8

    move/from16 v8, v23

    move/from16 v28, v9

    .end local v9    # "i":I
    .local v28, "i":I
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "buttonX":I
    .restart local v20    # "buttonX":I
    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;IIIIIIIZZ)V

    .line 123
    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v20

    move/from16 v9, v28

    goto :goto_442

    .line 132
    .end local v20    # "buttonX":I
    .end local v28    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "buttonX":I
    :cond_3e5
    move/from16 v28, v9

    move/from16 v20, v10

    .end local v9    # "i":I
    .end local v10    # "buttonX":I
    .restart local v20    # "buttonX":I
    .restart local v28    # "i":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$6;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    .end local v28    # "i":I
    .restart local v9    # "i":I
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getImageRegimentID(I)I

    move-result v3

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v20

    move v5, v13

    move v6, v9

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;IIIIII)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v20

    goto :goto_442

    .line 141
    .end local v20    # "buttonX":I
    .restart local v10    # "buttonX":I
    :cond_434
    move/from16 v20, v10

    .end local v10    # "buttonX":I
    .restart local v20    # "buttonX":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    move/from16 v2, v20

    .end local v20    # "buttonX":I
    .restart local v2    # "buttonX":I
    invoke-direct {v0, v1, v2, v13}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_442
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v10, v2, v0

    .line 120
    .end local v2    # "buttonX":I
    .restart local v10    # "buttonX":I
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_30a

    :cond_454
    move v2, v10

    .line 147
    .end local v9    # "i":I
    .end local v10    # "buttonX":I
    .restart local v2    # "buttonX":I
    div-int/lit8 v0, v16, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    mul-int v1, v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 148
    .end local v2    # "buttonX":I
    .restart local v0    # "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v13, v1

    .line 150
    const/4 v1, 0x0

    move v10, v0

    move v9, v1

    .end local v0    # "buttonX":I
    .restart local v9    # "i":I
    .restart local v10    # "buttonX":I
    :goto_485
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_568

    .line 151
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_545

    .line 152
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$7;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getImageRegimentID(I)I

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    .line 153
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v7, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v10

    move v5, v13

    move v6, v9

    move/from16 v23, v7

    move/from16 v7, v22

    move-object/from16 v29, v8

    move/from16 v8, v23

    move/from16 v22, v9

    .end local v9    # "i":I
    .local v22, "i":I
    move/from16 v9, v20

    move/from16 v20, v14

    move v14, v10

    .end local v10    # "buttonX":I
    .local v14, "buttonX":I
    .local v20, "paddingTop":I
    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;IIIIIIIZZ)V

    .line 152
    move-object/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_554

    .line 163
    .end local v20    # "paddingTop":I
    .end local v22    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "buttonX":I
    .local v14, "paddingTop":I
    :cond_545
    move/from16 v22, v9

    move/from16 v20, v14

    move v14, v10

    .end local v9    # "i":I
    .end local v10    # "buttonX":I
    .local v14, "buttonX":I
    .restart local v20    # "paddingTop":I
    .restart local v22    # "i":I
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$8;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    invoke-direct {v0, v11, v1, v14, v13}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;III)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_554
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v10, v14, v0

    .line 150
    .end local v14    # "buttonX":I
    .restart local v10    # "buttonX":I
    add-int/lit8 v9, v22, 0x1

    move/from16 v14, v20

    .end local v22    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_485

    .end local v20    # "paddingTop":I
    .local v14, "paddingTop":I
    :cond_568
    move/from16 v22, v9

    move/from16 v20, v14

    move v14, v10

    .line 172
    .end local v9    # "i":I
    .end local v10    # "buttonX":I
    .local v14, "buttonX":I
    .restart local v20    # "paddingTop":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 205
    const/4 v0, 0x0

    .line 207
    .end local v13    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    move v9, v0

    .end local v0    # "buttonY":I
    .local v2, "iSize":I
    .local v9, "buttonY":I
    :goto_58a
    if-ge v1, v2, :cond_5c2

    .line 208
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    if-ge v9, v0, :cond_5bf

    .line 209
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    move v9, v0

    .line 207
    :cond_5bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_58a

    .line 213
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_5c2
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v18

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 215
    .local v10, "tMenuHeight":I
    const/4 v0, 0x0

    .line 216
    .local v0, "tMaxX":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "iSize":I
    :goto_5d5
    if-ge v1, v2, :cond_607

    .line 217
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v0, :cond_604

    .line 218
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    .line 216
    :cond_604
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d5

    .line 222
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_607
    add-int/lit8 v13, v0, 0x64

    .line 224
    .end local v0    # "tMaxX":I
    .local v13, "tMaxX":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v13, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$9;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Battle"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v15

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;Ljava/lang/String;IZZ)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v10, 0x2

    sub-int v3, v0, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v4, v16

    move v5, v10

    move-object v6, v12

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 232
    return-void
.end method

.method public static getMiddleHeight()I
    .registers 1

    .line 276
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 260
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 261
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_BattleFull(Z)V

    .line 262
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 236
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 237
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 240
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 241
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 243
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 244
    return-void
.end method

.method public getImageRegimentID(I)I
    .registers 3
    .param p1, "iLine"    # I

    .line 265
    packed-switch p1, :pswitch_data_c

    .line 271
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    return v0

    .line 269
    :pswitch_6
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    return v0

    .line 267
    :pswitch_9
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy1:I

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public onHovered()V
    .registers 2

    .line 254
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 255
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_BattleFull()V

    .line 256
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 248
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 249
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle_Full;->lTime:J

    .line 250
    return-void
.end method
