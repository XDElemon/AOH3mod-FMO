.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BattleArmyDefenders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;
    }
.end annotation


# static fields
.field public static mPosX:I

.field public static mPosY:I

.field public static mWidth:I


# instance fields
.field private tRegiments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosX:I

    .line 18
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    .line 19
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mWidth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    .line 51
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 54
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 55
    .local v0, "buttonX":I
    const/16 v19, 0x0

    .line 57
    .local v19, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    if-ltz v1, :cond_3fb

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_2b
    if-ge v1, v2, :cond_9b

    .line 59
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_98

    .line 60
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    .line 58
    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 64
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_9b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "iSize":I
    :goto_ac
    if-ge v1, v2, :cond_11c

    .line 65
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_119

    .line 66
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    .line 64
    :cond_119
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 70
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_11c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "iSize":I
    :goto_12d
    if-ge v1, v2, :cond_18b

    .line 71
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_12d

    .line 74
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_18b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "iSize":I
    :goto_19c
    if-ge v1, v2, :cond_1fa

    .line 75
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_19c

    .line 78
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_1fa
    const/4 v1, 0x0

    .restart local v1    # "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "iSize":I
    :goto_20b
    if-ge v1, v2, :cond_269

    .line 79
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_20b

    .line 82
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "tSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "tempReg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "iSize":I
    :goto_27a
    if-ge v3, v4, :cond_286

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_27a

    .line 89
    .end local v3    # "i":I
    .end local v4    # "iSize":I
    :cond_286
    :goto_286
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_327

    .line 90
    const/4 v3, 0x0

    .line 92
    .local v3, "toAdd":I
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_292
    if-ge v4, v5, :cond_319

    .line 93
    iget-object v6, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v6, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    iget-object v7, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    if-le v6, v7, :cond_2c0

    .line 94
    move v3, v4

    goto :goto_315

    .line 96
    :cond_2c0
    iget-object v6, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v6, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    iget-object v7, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    if-ne v6, v7, :cond_315

    iget-object v6, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v6, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    iget-object v7, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    if-le v6, v7, :cond_315

    .line 97
    move v3, v4

    .line 92
    :cond_315
    :goto_315
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_292

    .line 101
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_319
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    .end local v3    # "toAdd":I
    goto/16 :goto_286

    .line 105
    :cond_327
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_328
    const/4 v4, 0x3

    if-ge v3, v4, :cond_3f9

    .line 106
    const/4 v4, 0x0

    .restart local v4    # "i":I
    iget-object v5, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .restart local v5    # "iSize":I
    :goto_332
    if-ge v4, v5, :cond_3f5

    .line 107
    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v7, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v6, v3, :cond_3f1

    .line 108
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v7, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v12, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    iget-object v7, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v13, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->iCivID:I

    iget-object v7, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    iget-object v10, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v15, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    const/16 v18, 0x1

    move-object v10, v6

    move v14, v0

    move/from16 v17, v15

    move/from16 v15, v19

    move/from16 v16, v7

    invoke-direct/range {v10 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 106
    :cond_3f1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_332

    .line 105
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_3f5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_328

    :cond_3f9
    move v10, v0

    goto :goto_3fc

    .line 57
    .end local v1    # "tSorted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "tempReg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "j":I
    :cond_3fb
    move v10, v0

    .line 115
    .end local v0    # "buttonX":I
    .local v10, "buttonX":I
    :goto_3fc
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosX:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mWidth:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    .line 118
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 115
    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->drawScrollPositionAlways:Z

    .line 121
    return-void
.end method


# virtual methods
.method public addRegiment(IIII)V
    .registers 13
    .param p1, "unitTypeID"    # I
    .param p2, "armyID"    # I
    .param p3, "numOfUnits"    # I
    .param p4, "iCivID"    # I

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "iSize":I
    :goto_7
    if-ge v0, v1, :cond_40

    .line 41
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    if-ne v2, p1, :cond_3d

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    if-ne v2, p2, :cond_3d

    .line 42
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v3, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    add-int/2addr v3, p3

    iput v3, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    .line 43
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v3, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    .line 44
    return-void

    .line 40
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 48
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_40
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getMenuPosX()I
    .registers 3

    .line 147
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMenuPosY()I
    .registers 3

    .line 132
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosX()I
    .registers 3

    .line 142
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 137
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 125
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 127
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBattle()V

    .line 128
    return-void
.end method
