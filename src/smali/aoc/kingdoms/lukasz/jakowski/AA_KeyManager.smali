.class public Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;
.super Ljava/lang/Object;
.source "AA_KeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;
    }
.end annotation


# static fields
.field public static ALT_HOLD:Z

.field public static CTRL_HOLD:Z

.field public static SHIFT_HOLD:Z

.field public static keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    .line 66
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    .line 67
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->ALT_HOLD:Z

    .line 832
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final actionPinnedArmy(I)V
    .registers 4
    .param p0, "id"    # I

    .line 138
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p0, :cond_5c

    .line 139
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v0

    .line 141
    .local v0, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v0, :cond_5c

    .line 142
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveArmy(ILjava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    .line 145
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    .line 146
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    .line 148
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy_HideMenus()V

    .line 150
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 151
    const/4 v1, -0x1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 153
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    .line 158
    .end local v0    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    :cond_5c
    goto :goto_61

    .line 156
    :catch_5d
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_61
    return-void
.end method

.method public static keyDown(I)Z
    .registers 6
    .param p0, "keycode"    # I

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 71
    return v1

    .line 74
    :cond_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 75
    const/16 v0, 0x3b

    if-eq p0, v0, :cond_16

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_18

    .line 76
    :cond_16
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    .line 79
    :cond_18
    const/16 v0, 0x81

    if-eq p0, v0, :cond_20

    const/16 v0, 0x82

    if-ne p0, v0, :cond_22

    .line 80
    :cond_20
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    .line 83
    :cond_22
    const/16 v0, 0x39

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_2c

    .line 84
    :cond_2a
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->ALT_HOLD:Z

    .line 88
    :cond_2c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN2:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 90
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;->extraAction(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 91
    return v1

    .line 94
    :cond_3c
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    const/4 v2, 0x0

    if-nez v0, :cond_d9

    .line 95
    const/16 v0, 0x15

    if-eq p0, v0, :cond_49

    const/16 v0, 0x1d

    if-ne p0, v0, :cond_67

    .line 96
    :cond_49
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    .line 97
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    .line 99
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v3, v1

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    .line 103
    :cond_67
    const/16 v0, 0x16

    if-eq p0, v0, :cond_6f

    const/16 v0, 0x20

    if-ne p0, v0, :cond_8d

    .line 104
    :cond_6f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    .line 105
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    .line 107
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 108
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 109
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v3, v1

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    .line 112
    :cond_8d
    const/16 v0, 0x13

    if-eq p0, v0, :cond_95

    const/16 v0, 0x33

    if-ne p0, v0, :cond_b3

    .line 113
    :cond_95
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    .line 114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    .line 116
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 117
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v3, v1

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    .line 120
    :cond_b3
    const/16 v0, 0x14

    if-eq p0, v0, :cond_bb

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_d9

    .line 121
    :cond_bb
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    .line 122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    .line 124
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 125
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v3, v1

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    .line 131
    :cond_d9
    return v2
.end method

.method public static keyUp(I)Z
    .registers 17
    .param p0, "keycode"    # I

    .line 162
    move/from16 v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    const/16 v2, 0xa0

    const/16 v3, 0x42

    const/16 v4, 0x6f

    const/4 v5, 0x1

    if-eqz v1, :cond_24

    .line 163
    if-eq v0, v3, :cond_1c

    if-ne v0, v2, :cond_14

    goto :goto_1c

    .line 167
    :cond_14
    if-ne v0, v4, :cond_24

    .line 168
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 169
    return v5

    .line 164
    :cond_1c
    :goto_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    invoke-interface {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->save()V

    .line 165
    return v5

    .line 173
    :cond_24
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    const/16 v6, 0x3c

    const/16 v7, 0x3b

    const/4 v8, 0x0

    if-eqz v1, :cond_49

    .line 174
    if-eq v0, v7, :cond_33

    if-ne v0, v6, :cond_35

    .line 175
    :cond_33
    sput-boolean v8, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    .line 178
    :cond_35
    const/16 v1, 0x81

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x82

    if-ne v0, v1, :cond_3f

    .line 179
    :cond_3d
    sput-boolean v8, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    .line 182
    :cond_3f
    const/16 v1, 0x39

    if-eq v0, v1, :cond_47

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_49

    .line 183
    :cond_47
    sput-boolean v8, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->ALT_HOLD:Z

    .line 188
    :cond_49
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorArmyPosition()Z

    move-result v1

    const/16 v9, 0x14

    const/16 v10, 0x13

    const/16 v11, 0x20

    const/16 v12, 0x16

    const/16 v13, 0x15

    const/16 v14, 0x1d

    if-eqz v1, :cond_5e

    goto :goto_82

    .line 192
    :cond_5e
    if-eq v0, v13, :cond_62

    if-ne v0, v14, :cond_66

    .line 193
    :cond_62
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    .line 195
    :cond_66
    if-eq v0, v12, :cond_6a

    if-ne v0, v11, :cond_6e

    .line 196
    :cond_6a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    .line 198
    :cond_6e
    if-eq v0, v10, :cond_74

    const/16 v1, 0x33

    if-ne v0, v1, :cond_78

    .line 199
    :cond_74
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    .line 201
    :cond_78
    if-eq v0, v9, :cond_7e

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_82

    .line 202
    :cond_7e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    .line 206
    :cond_82
    :goto_82
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v15, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    sub-int/2addr v15, v5

    iput v15, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    .line 207
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    .line 209
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_a45

    .line 210
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v1

    const/16 v15, 0x43

    const/16 v6, 0x3e

    if-eqz v1, :cond_d8

    .line 211
    if-eq v0, v3, :cond_c6

    if-eq v0, v2, :cond_c6

    if-ne v0, v6, :cond_b0

    goto :goto_c6

    .line 216
    :cond_b0
    if-eq v0, v4, :cond_b4

    if-ne v0, v15, :cond_d7

    .line 217
    :cond_b4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->disableButtons()V

    .line 218
    invoke-static {}, Laoc/kingdoms/lukasz/menus/Dialog;->dialogFalse()V

    .line 219
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->closeMenu()V

    goto :goto_d7

    .line 212
    :cond_c6
    :goto_c6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->disableButtons()V

    .line 213
    invoke-static {}, Laoc/kingdoms/lukasz/menus/Dialog;->dialogTrue()V

    .line 214
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->closeMenu()V

    .line 222
    :cond_d7
    :goto_d7
    return v5

    .line 225
    :cond_d8
    const/16 v1, 0x8d

    if-ne v0, v1, :cond_e2

    .line 226
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    .line 227
    return v5

    .line 230
    :cond_e2
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    const/16 v15, 0x2b

    const/16 v7, 0x2c

    const/4 v11, -0x1

    if-nez v1, :cond_fa

    .line 231
    if-ne v0, v7, :cond_f3

    .line 232
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/map/MapScale;->scrollScale(I)V

    goto :goto_fa

    .line 234
    :cond_f3
    if-ne v0, v15, :cond_fa

    .line 235
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->scrollScale(I)V

    .line 239
    :cond_fa
    :goto_fa
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameHideUI()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 240
    if-ne v0, v4, :cond_10c

    .line 241
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 242
    return v5

    .line 246
    :cond_10c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v1

    const/16 v7, 0x84

    const/16 v15, 0x83

    if-eqz v1, :cond_93b

    .line 247
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    if-eqz v1, :cond_11f

    .line 248
    sput-boolean v8, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    .line 249
    return v5

    .line 252
    :cond_11f
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_124

    .line 253
    return v5

    .line 256
    :cond_124
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v1

    if-nez v1, :cond_157

    .line 257
    if-ne v0, v15, :cond_132

    .line 258
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    goto :goto_157

    .line 260
    :cond_132
    if-ne v0, v7, :cond_138

    .line 261
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action2()V

    goto :goto_157

    .line 263
    :cond_138
    const/16 v1, 0x85

    if-ne v0, v1, :cond_140

    .line 264
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action3()V

    goto :goto_157

    .line 266
    :cond_140
    const/16 v1, 0x86

    if-ne v0, v1, :cond_148

    .line 267
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action4()V

    goto :goto_157

    .line 269
    :cond_148
    const/16 v1, 0x87

    if-ne v0, v1, :cond_150

    .line 270
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action5()V

    goto :goto_157

    .line 272
    :cond_150
    const/16 v1, 0x88

    if-ne v0, v1, :cond_157

    .line 273
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action6()V

    .line 301
    :cond_157
    :goto_157
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v1, :cond_1d1

    if-ne v0, v14, :cond_1d1

    .line 302
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_161
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_1be

    .line 305
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    .line 307
    .local v2, "tID":I
    if-ltz v2, :cond_1bb

    .line 308
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 309
    .local v3, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 310
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 311
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 312
    iput v2, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 314
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    .line 304
    .end local v2    # "tID":I
    .end local v3    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_1bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_161

    .line 318
    .end local v1    # "i":I
    :cond_1be
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v1, :cond_1cb

    .line 319
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 320
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    goto :goto_1d0

    .line 323
    :cond_1cb
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    .line 326
    :goto_1d0
    return v5

    .line 329
    :cond_1d1
    const/16 v1, 0x91

    const-wide/16 v14, 0x0

    if-eq v0, v1, :cond_930

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1dd

    goto/16 :goto_930

    .line 333
    :cond_1dd
    const/16 v1, 0x92

    if-eq v0, v1, :cond_924

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1e7

    goto/16 :goto_924

    .line 337
    :cond_1e7
    const/16 v1, 0x93

    const/4 v7, 0x3

    if-eq v0, v1, :cond_919

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1f2

    goto/16 :goto_919

    .line 341
    :cond_1f2
    const/16 v1, 0x94

    if-eq v0, v1, :cond_90d

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1fc

    goto/16 :goto_90d

    .line 345
    :cond_1fc
    const/16 v1, 0x95

    if-eq v0, v1, :cond_901

    const/16 v1, 0xc

    if-ne v0, v1, :cond_206

    goto/16 :goto_901

    .line 351
    :cond_206
    const/16 v1, 0x22

    if-ne v0, v1, :cond_228

    .line 352
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_21e

    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inSearchProvinces:Z

    if-nez v1, :cond_217

    goto :goto_21e

    .line 358
    :cond_217
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_a45

    .line 353
    :cond_21e
    :goto_21e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCourt:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionCourt(I)V

    .line 355
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->actionSearchProvinces()V

    goto/16 :goto_a45

    .line 361
    :cond_228
    const/16 v1, 0x32

    if-ne v0, v1, :cond_271

    .line 362
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_RecruitArmy()Z

    move-result v1

    if-eqz v1, :cond_242

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->inCreateNewArmy:Z

    if-nez v1, :cond_23b

    goto :goto_242

    .line 376
    :cond_23b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_RecruitArmy(Z)V

    goto/16 :goto_a45

    .line 363
    :cond_242
    :goto_242
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideMenus_RecruitArmy(Z)V

    .line 365
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v1

    if-eqz v1, :cond_254

    .line 366
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Armies(Z)V

    .line 369
    :cond_254
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionCreateNewArmy()V

    .line 371
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_a45

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_a45

    .line 372
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    goto/16 :goto_a45

    .line 379
    :cond_271
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2a3

    .line 380
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_28a

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq v1, v2, :cond_28a

    .line 381
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionBuildings(I)V

    goto/16 :goto_a45

    .line 383
    :cond_28a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-nez v1, :cond_29c

    .line 384
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    .line 386
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionBuildings(I)V

    goto/16 :goto_a45

    .line 389
    :cond_29c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_a45

    .line 392
    :cond_2a3
    const/16 v1, 0x28

    if-ne v0, v1, :cond_2d5

    .line 393
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_2bc

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq v1, v2, :cond_2bc

    .line 394
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionLaws(I)V

    goto/16 :goto_a45

    .line 396
    :cond_2bc
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-nez v1, :cond_2ce

    .line 397
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    .line 399
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionLaws(I)V

    goto/16 :goto_a45

    .line 402
    :cond_2ce
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_a45

    .line 406
    :cond_2d5
    const/16 v1, 0x23

    if-ne v0, v1, :cond_2ed

    .line 407
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v1

    if-nez v1, :cond_2e6

    .line 408
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionGenerals()V

    goto/16 :goto_a45

    .line 411
    :cond_2e6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto/16 :goto_a45

    .line 414
    :cond_2ed
    const/16 v1, 0x29

    if-ne v0, v1, :cond_303

    .line 415
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v1

    if-nez v1, :cond_2fe

    .line 416
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideMenus_RecruitArmy(Z)V

    .line 419
    :cond_2fe
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionArmies()V

    goto/16 :goto_a45

    .line 421
    :cond_303
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_319

    .line 422
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v1

    if-nez v1, :cond_314

    .line 423
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideMenus_RecruitArmy(Z)V

    .line 426
    :cond_314
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionMercenaries()V

    goto/16 :goto_a45

    .line 428
    :cond_319
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_322

    .line 429
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->actionRanking()V

    goto/16 :goto_a45

    .line 431
    :cond_322
    const/16 v1, 0x30

    if-ne v0, v1, :cond_32b

    .line 432
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->actionCurrent()V

    goto/16 :goto_a45

    .line 435
    :cond_32b
    if-eq v0, v3, :cond_718

    if-ne v0, v2, :cond_331

    goto/16 :goto_718

    .line 558
    :cond_331
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_34f

    .line 559
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v1

    if-eqz v1, :cond_a45

    .line 560
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->diplomacyMode:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->diplomacyMode:Z

    .line 561
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iRebuildToCivID:I

    .line 562
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ(Z)V

    .line 563
    sput-wide v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    goto/16 :goto_a45

    .line 570
    :cond_34f
    const/16 v1, 0x89

    if-ne v0, v1, :cond_35a

    .line 571
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    goto/16 :goto_a45

    .line 574
    :cond_35a
    const/16 v1, 0x8e

    if-ne v0, v1, :cond_374

    .line 575
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Console()Z

    move-result v1

    if-eqz v1, :cond_36d

    .line 576
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Console(Z)V

    goto/16 :goto_a45

    .line 579
    :cond_36d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Console(Z)V

    goto/16 :goto_a45

    .line 583
    :cond_374
    if-ne v0, v7, :cond_397

    .line 584
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_a45

    .line 585
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    goto/16 :goto_a45

    .line 589
    :cond_397
    if-ne v0, v4, :cond_6e4

    .line 590
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v1, :cond_3a2

    .line 591
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    goto/16 :goto_6e3

    .line 593
    :cond_3a2
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v1, :cond_3ab

    .line 594
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setInvasionArmyMode(Z)V

    goto/16 :goto_6e3

    .line 596
    :cond_3ab
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_SaveGame()Z

    move-result v1

    if-eqz v1, :cond_3ba

    .line 597
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_SaveGame(Z)V

    goto/16 :goto_6e3

    .line 599
    :cond_3ba
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v1

    if-eqz v1, :cond_3d0

    .line 600
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Escape(Z)V

    goto/16 :goto_6e3

    .line 602
    :cond_3d0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Console()Z

    move-result v1

    if-eqz v1, :cond_3df

    .line 603
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Console(Z)V

    goto/16 :goto_6e3

    .line 605
    :cond_3df
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v1

    if-eqz v1, :cond_3ee

    .line 606
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto/16 :goto_6e3

    .line 608
    :cond_3ee
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-ne v1, v2, :cond_403

    .line 609
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 611
    :cond_403
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-ne v1, v2, :cond_418

    .line 612
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 614
    :cond_418
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-ne v1, v2, :cond_42d

    .line 615
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 617
    :cond_42d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SELL_PROVINCES:I

    if-ne v1, v2, :cond_442

    .line 618
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 620
    :cond_442
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-ne v1, v2, :cond_457

    .line 621
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 623
    :cond_457
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    if-ne v1, v2, :cond_46c

    .line 624
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 626
    :cond_46c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v1, v2, :cond_481

    .line 627
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 629
    :cond_481
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-ne v1, v2, :cond_496

    .line 630
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 632
    :cond_496
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v1, v2, :cond_4ab

    .line 633
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 635
    :cond_4ab
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v1

    if-eqz v1, :cond_4ba

    .line 636
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto/16 :goto_6e3

    .line 638
    :cond_4ba
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TakeLoanRepay()Z

    move-result v1

    if-eqz v1, :cond_4c9

    .line 639
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TakeLoanRepay(Z)V

    goto/16 :goto_6e3

    .line 641
    :cond_4c9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TakeLoan()Z

    move-result v1

    if-eqz v1, :cond_4d8

    .line 642
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TakeLoan(Z)V

    goto/16 :goto_6e3

    .line 644
    :cond_4d8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Wonder()Z

    move-result v1

    if-eqz v1, :cond_4fa

    .line 645
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Wonder(Z)V

    .line 647
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WONDERS:I

    if-ne v1, v2, :cond_6e3

    .line 648
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 651
    :cond_4fa
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Nukes()Z

    move-result v1

    if-eqz v1, :cond_509

    .line 652
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Nukes(Z)V

    goto/16 :goto_6e3

    .line 654
    :cond_509
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_GoodsMarket()Z

    move-result v1

    if-eqz v1, :cond_518

    .line 655
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_GoodsMarket(Z)V

    goto/16 :goto_6e3

    .line 657
    :cond_518
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Goods()Z

    move-result v1

    if-eqz v1, :cond_527

    .line 658
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Goods(Z)V

    goto/16 :goto_6e3

    .line 660
    :cond_527
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_DisbandArmy()Z

    move-result v1

    if-eqz v1, :cond_536

    .line 661
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_DisbandUnits(Z)V

    goto/16 :goto_6e3

    .line 663
    :cond_536
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ReorganizeUnits()Z

    move-result v1

    if-eqz v1, :cond_545

    .line 664
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ReorganizeUnits(Z)V

    goto/16 :goto_6e3

    .line 666
    :cond_545
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_GeneralRecruit()Z

    move-result v1

    if-eqz v1, :cond_554

    .line 667
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_GeneralRecruit(Z)V

    goto/16 :goto_6e3

    .line 669
    :cond_554
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_RecruitArmy()Z

    move-result v1

    if-eqz v1, :cond_563

    .line 670
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_RecruitArmy(Z)V

    goto/16 :goto_6e3

    .line 672
    :cond_563
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v1

    if-eqz v1, :cond_572

    .line 673
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyChoose(Z)V

    goto/16 :goto_6e3

    .line 675
    :cond_572
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Budget()Z

    move-result v1

    if-eqz v1, :cond_581

    .line 676
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Budget(Z)V

    goto/16 :goto_6e3

    .line 678
    :cond_581
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v1

    if-eqz v1, :cond_590

    .line 679
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    goto/16 :goto_6e3

    .line 681
    :cond_590
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_59f

    .line 682
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_6e3

    .line 684
    :cond_59f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceBonuses()Z

    move-result v1

    if-eqz v1, :cond_5ae

    .line 685
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceBonuses(ZZ)V

    goto/16 :goto_6e3

    .line 687
    :cond_5ae
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v1

    if-eqz v1, :cond_5bd

    .line 688
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    goto/16 :goto_6e3

    .line 690
    :cond_5bd
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v1

    if-eqz v1, :cond_5cc

    .line 691
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Armies(Z)V

    goto/16 :goto_6e3

    .line 693
    :cond_5cc
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v1

    if-eqz v1, :cond_5db

    .line 694
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto/16 :goto_6e3

    .line 696
    :cond_5db
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Buildings()Z

    move-result v1

    if-eqz v1, :cond_5ea

    .line 697
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Buildings(ZZ)V

    goto/16 :goto_6e3

    .line 699
    :cond_5ea
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CurrentSituation()Z

    move-result v1

    if-eqz v1, :cond_5f9

    .line 700
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    goto/16 :goto_6e3

    .line 702
    :cond_5f9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Battle()Z

    move-result v1

    if-eqz v1, :cond_608

    .line 703
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    goto/16 :goto_6e3

    .line 705
    :cond_608
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result v1

    if-eqz v1, :cond_617

    .line 706
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    goto/16 :goto_6e3

    .line 708
    :cond_617
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v1

    if-eqz v1, :cond_626

    .line 709
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    goto/16 :goto_6e3

    .line 711
    :cond_626
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Peace()Z

    move-result v1

    if-eqz v1, :cond_635

    .line 712
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Peace(Z)V

    goto/16 :goto_6e3

    .line 714
    :cond_635
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v1

    if-eqz v1, :cond_647

    .line 715
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    .line 716
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    goto/16 :goto_6e3

    .line 718
    :cond_647
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceInfo()Z

    move-result v1

    if-eqz v1, :cond_65e

    .line 719
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 720
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 721
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    goto/16 :goto_6e3

    .line 723
    :cond_65e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-ne v1, v2, :cond_673

    .line 724
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_6e3

    .line 726
    :cond_673
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-ne v1, v2, :cond_687

    .line 727
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_6e3

    .line 729
    :cond_687
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-ne v1, v2, :cond_69b

    .line 730
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_6e3

    .line 732
    :cond_69b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-ne v1, v2, :cond_6af

    .line 733
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_6e3

    .line 735
    :cond_6af
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-ne v1, v2, :cond_6c3

    .line 736
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_6e3

    .line 738
    :cond_6c3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-ne v1, v2, :cond_6d7

    .line 739
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_6e3

    .line 742
    :cond_6d7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Escape(Z)V

    .line 745
    :cond_6e3
    :goto_6e3
    return v5

    .line 747
    :cond_6e4
    if-ne v0, v6, :cond_6f1

    .line 748
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    goto/16 :goto_a45

    .line 750
    :cond_6f1
    const/16 v1, 0x45

    if-eq v0, v1, :cond_70d

    const/16 v1, 0x9c

    if-ne v0, v1, :cond_6fa

    goto :goto_70d

    .line 754
    :cond_6fa
    const/16 v1, 0x51

    if-eq v0, v1, :cond_702

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_a45

    .line 755
    :cond_702
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeedPlus()V

    .line 756
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_a45

    .line 751
    :cond_70d
    :goto_70d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeedMinus()V

    .line 752
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_a45

    .line 436
    :cond_718
    :goto_718
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_RecruitArmy()Z

    move-result v1

    if-eqz v1, :cond_72b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->inCreateNewArmy:Z

    if-eqz v1, :cond_72b

    .line 437
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->actionCreateNewArmy()Z

    goto/16 :goto_a45

    .line 439
    :cond_72b
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v1, :cond_738

    .line 440
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v1, :cond_a45

    .line 441
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;->confirm()V

    goto/16 :goto_a45

    .line 444
    :cond_738
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v1, :cond_745

    .line 445
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    if-lez v1, :cond_a45

    .line 446
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Invasion;->confirm()V

    goto/16 :goto_a45

    .line 449
    :cond_745
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v1

    if-eqz v1, :cond_a45

    .line 450
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-nez v1, :cond_758

    .line 451
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->confirm()V

    goto/16 :goto_a45

    .line 453
    :cond_758
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v1, v5, :cond_763

    .line 454
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Destroy;->confirm()V

    goto/16 :goto_a45

    .line 456
    :cond_763
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_76f

    .line 457
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->confirm()V

    goto/16 :goto_a45

    .line 459
    :cond_76f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v1, v7, :cond_77a

    .line 460
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals;->confirm()V

    goto/16 :goto_a45

    .line 462
    :cond_77a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_786

    .line 463
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeSupremeCourt;->confirm()V

    goto/16 :goto_a45

    .line 465
    :cond_786
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_792

    .line 466
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeNuclearReactor;->confirm()V

    goto/16 :goto_a45

    .line 468
    :cond_792
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_79e

    .line 469
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;->confirm()V

    goto/16 :goto_a45

    .line 471
    :cond_79e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7aa

    .line 472
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_MoveCapital_PopUp;->confirm()V

    goto/16 :goto_a45

    .line 474
    :cond_7aa
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7b7

    .line 475
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeCapital;->confirm()V

    goto/16 :goto_a45

    .line 477
    :cond_7b7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7c4

    .line 478
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;->confirm()V

    goto/16 :goto_a45

    .line 480
    :cond_7c4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_7d1

    .line 481
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->confirm()V

    goto/16 :goto_a45

    .line 483
    :cond_7d1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7de

    .line 484
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;->confirm()V

    goto/16 :goto_a45

    .line 486
    :cond_7de
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7eb

    .line 487
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;->confirm()V

    goto/16 :goto_a45

    .line 489
    :cond_7eb
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_7f8

    .line 490
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_NonAggression;->confirm()V

    goto/16 :goto_a45

    .line 492
    :cond_7f8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_805

    .line 493
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;->confirm()V

    goto/16 :goto_a45

    .line 495
    :cond_805
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v1, v10, :cond_810

    .line 496
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DemandMilitaryAccess;->confirm()V

    goto/16 :goto_a45

    .line 498
    :cond_810
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v1, v9, :cond_81b

    .line 499
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_OfferMilitaryAccess;->confirm()V

    goto/16 :goto_a45

    .line 501
    :cond_81b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v1, v13, :cond_826

    .line 502
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Guarantee;->confirm()V

    goto/16 :goto_a45

    .line 504
    :cond_826
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v1, v12, :cond_831

    .line 505
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;->confirm()V

    goto/16 :goto_a45

    .line 507
    :cond_831
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_83e

    .line 508
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_LawReform;->confirm()V

    goto/16 :goto_a45

    .line 510
    :cond_83e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_84b

    .line 511
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals;->confirm()V

    goto/16 :goto_a45

    .line 513
    :cond_84b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_858

    .line 514
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->confirm()V

    goto/16 :goto_a45

    .line 516
    :cond_858
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_865

    .line 517
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;->confirm()V

    goto/16 :goto_a45

    .line 519
    :cond_865
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_872

    .line 520
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageAlliance;->confirm()V

    goto/16 :goto_a45

    .line 522
    :cond_872
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_87f

    .line 523
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageDefensivePact;->confirm()V

    goto/16 :goto_a45

    .line 525
    :cond_87f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_88c

    .line 526
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageNonAggressionPact;->confirm()V

    goto/16 :goto_a45

    .line 528
    :cond_88c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_899

    .line 529
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageDemandsMilitaryAccess;->confirm()V

    goto/16 :goto_a45

    .line 531
    :cond_899
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_8a6

    .line 532
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->confirm()V

    goto/16 :goto_a45

    .line 534
    :cond_8a6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_8b3

    .line 535
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageInsult;->confirm()V

    goto/16 :goto_a45

    .line 537
    :cond_8b3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x24

    if-ne v1, v2, :cond_8c0

    .line 538
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->confirm()V

    goto/16 :goto_a45

    .line 540
    :cond_8c0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x25

    if-ne v1, v2, :cond_8cd

    .line 541
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->confirm()V

    goto/16 :goto_a45

    .line 543
    :cond_8cd
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_8da

    .line 544
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End;->confirm()V

    goto/16 :goto_a45

    .line 546
    :cond_8da
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_8e7

    .line 547
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_LiberateCivilization;->confirm()V

    goto/16 :goto_a45

    .line 549
    :cond_8e7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_8f4

    .line 550
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_ShareTechnology;->confirm()V

    goto/16 :goto_a45

    .line 552
    :cond_8f4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_a45

    .line 553
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene;->confirm()V

    goto/16 :goto_a45

    .line 346
    :cond_901
    :goto_901
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    .line 347
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_a45

    .line 342
    :cond_90d
    :goto_90d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    .line 343
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_a45

    .line 338
    :cond_919
    :goto_919
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    .line 339
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_a45

    .line 334
    :cond_924
    :goto_924
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    .line 335
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_a45

    .line 330
    :cond_930
    :goto_930
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    .line 331
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_a45

    .line 760
    :cond_93b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v1

    if-eqz v1, :cond_962

    .line 761
    if-eq v0, v4, :cond_959

    if-eq v0, v15, :cond_959

    if-eq v0, v7, :cond_959

    const/16 v1, 0x85

    if-eq v0, v1, :cond_959

    const/16 v1, 0x86

    if-eq v0, v1, :cond_959

    const/16 v1, 0x87

    if-eq v0, v1, :cond_959

    const/16 v1, 0x88

    if-ne v0, v1, :cond_a45

    .line 768
    :cond_959
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto/16 :goto_a45

    .line 771
    :cond_962
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInSettingsMenu()Z

    move-result v1

    if-eqz v1, :cond_975

    .line 772
    if-ne v0, v4, :cond_a45

    .line 773
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto/16 :goto_a45

    .line 776
    :cond_975
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssign()Z

    move-result v1

    if-eqz v1, :cond_99e

    .line 777
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_997

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_986

    goto :goto_997

    .line 780
    :cond_986
    const/16 v1, 0x43

    if-ne v0, v1, :cond_98f

    .line 781
    invoke-static {}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->popUndo()V

    goto/16 :goto_a45

    .line 783
    :cond_98f
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_a45

    .line 784
    sput v8, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    goto/16 :goto_a45

    .line 778
    :cond_997
    :goto_997
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    goto/16 :goto_a45

    .line 787
    :cond_99e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssignInGame()Z

    move-result v1

    if-eqz v1, :cond_9be

    .line 788
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_9b7

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_9af

    goto :goto_9b7

    .line 791
    :cond_9af
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_a45

    .line 792
    sput v8, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    goto/16 :goto_a45

    .line 789
    :cond_9b7
    :goto_9b7
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    goto/16 :goto_a45

    .line 795
    :cond_9be
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCores()Z

    move-result v1

    if-eqz v1, :cond_9d5

    .line 796
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_9ce

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_a45

    .line 797
    :cond_9ce
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    goto/16 :goto_a45

    .line 800
    :cond_9d5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioReligion()Z

    move-result v1

    if-nez v1, :cond_a38

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorBuildings()Z

    move-result v1

    if-eqz v1, :cond_9e6

    goto :goto_a38

    .line 805
    :cond_9e6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v1

    if-eqz v1, :cond_a45

    .line 806
    const/16 v1, 0x21

    if-ne v0, v1, :cond_a16

    .line 807
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    .line 809
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    .line 810
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_a45

    .line 812
    :cond_a16
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_a45

    .line 813
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    .line 815
    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    .line 816
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_a45

    .line 801
    :cond_a38
    :goto_a38
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_a40

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_a45

    .line 802
    :cond_a40
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 821
    :cond_a45
    :goto_a45
    return v8
.end method

.method public static final updateKeyExtraAction()V
    .registers 1

    .line 840
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceConnections()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 841
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_77

    .line 848
    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorLines()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 849
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_77

    .line 856
    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorWaves()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 857
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_77

    .line 864
    :cond_30
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorSeaProvinces()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 865
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_77

    .line 872
    :cond_40
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorArmyPosition()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 873
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_77

    .line 880
    :cond_50
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceNamePoints()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 881
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_77

    .line 888
    :cond_60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorPortPosition()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 889
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_77

    .line 897
    :cond_70
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$9;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$9;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    .line 905
    :goto_77
    return-void
.end method
