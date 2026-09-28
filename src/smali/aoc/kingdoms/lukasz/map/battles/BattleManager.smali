.class public Laoc/kingdoms/lukasz/map/battles/BattleManager;
.super Ljava/lang/Object;
.source "BattleManager.java"


# static fields
.field private static ANIMATION_TIME:J = 0x0L

.field private static final ANIMATION_TIMER:J = 0x6eL

.field public static BATTLE_IMG_ID:I = 0x0

.field public static final BUTTON_PADDING:I = 0x1

.field public static FILL_ORDER:[I

.field private static imgStepID:I

.field private static reversedAnimation:Z


# instance fields
.field public iBattleSize:I

.field public lBattle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/Battle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 176
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    .line 223
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->ANIMATION_TIME:J

    .line 225
    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    .line 226
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->reversedAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    .line 26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_32

    .line 29
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 28
    add-int/lit8 v0, v0, 0x2

    move v1, v4

    goto :goto_1b

    .line 32
    .end local v0    # "i":I
    .end local v4    # "j":I
    :cond_32
    const/4 v0, 0x1

    .restart local v0    # "i":I
    const/4 v1, 0x1

    .restart local v1    # "j":I
    :goto_34
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_4b

    .line 33
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .restart local v4    # "j":I
    sub-int/2addr v3, v1

    aput v3, v2, v0

    .line 32
    add-int/lit8 v0, v0, 0x2

    move v1, v4

    goto :goto_34

    .line 35
    .end local v0    # "i":I
    .end local v4    # "j":I
    :cond_4b
    return-void
.end method

.method private final drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fAlpha"    # F

    .line 195
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->updateBattleIcon()V

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_18

    .line 199
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_19

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 203
    .end local v0    # "i":I
    :cond_18
    goto :goto_1d

    .line 201
    :catch_19
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 206
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1d
    :try_start_1d
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_41

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_40

    .line 208
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 209
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 207
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .end local v0    # "i":I
    :cond_40
    goto :goto_50

    .line 214
    :cond_41
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_42
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_50

    .line 215
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4d} :catch_51

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 220
    .end local v0    # "i":I
    :cond_50
    :goto_50
    goto :goto_52

    .line 218
    :catch_51
    move-exception v0

    .line 221
    :goto_52
    return-void
.end method

.method public static getBattleWidth(I)I
    .registers 4
    .param p0, "iCivID"    # I

    .line 276
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_BATTLE_WIDTH:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private final updateBattleIcon()V
    .registers 6

    .line 229
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x6e

    sub-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->ANIMATION_TIME:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_56

    .line 230
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->ANIMATION_TIME:J

    .line 232
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->reversedAnimation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 233
    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    sub-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    .line 235
    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    if-gtz v0, :cond_31

    .line 236
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    .line 237
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->reversedAnimation:Z

    goto :goto_31

    .line 241
    :cond_23
    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    .line 243
    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_31

    .line 244
    sput v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    .line 245
    sput-boolean v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->reversedAnimation:Z

    .line 250
    :cond_31
    :goto_31
    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    rem-int/lit8 v0, v0, 0x8

    packed-switch v0, :pswitch_data_58

    .line 267
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    goto :goto_56

    .line 264
    :pswitch_3d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon1:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    .line 265
    goto :goto_56

    .line 261
    :pswitch_42
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon2:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    .line 262
    goto :goto_56

    .line 258
    :pswitch_47
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon3:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    .line 259
    goto :goto_56

    .line 255
    :pswitch_4c
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon4:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    .line 256
    goto :goto_56

    .line 252
    :pswitch_51
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon5:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    .line 253
    nop

    .line 271
    :cond_56
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
    .end packed-switch
.end method


# virtual methods
.method public final addBattle(Laoc/kingdoms/lukasz/map/battles/Battle;)V
    .registers 8
    .param p1, "nBattle"    # Laoc/kingdoms/lukasz/map/battles/Battle;

    .line 46
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    .line 49
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_RANDOM:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 50
    .local v0, "rand":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 52
    .local v1, "numOfUnits":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS:I

    add-int/2addr v4, v0

    mul-int v3, v3, v4

    if-gt v1, v3, :cond_58

    .line 53
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    goto/16 :goto_101

    .line 55
    :cond_58
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_2:I

    add-int/2addr v4, v0

    mul-int v3, v3, v4

    if-gt v1, v3, :cond_76

    .line 56
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    goto/16 :goto_101

    .line 59
    :cond_76
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MOVE_ARMIES_RANDOM_CHANCE:I

    const/4 v5, 0x5

    if-ge v3, v4, :cond_96

    .line 60
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v2, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_101

    .line 62
    :cond_96
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_3:I

    add-int/2addr v4, v0

    mul-int v3, v3, v4

    if-gt v1, v3, :cond_b7

    .line 63
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    const/4 v4, 0x3

    invoke-static {v3, v2, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_101

    .line 65
    :cond_b7
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_4:I

    add-int/2addr v4, v0

    mul-int v3, v3, v4

    if-gt v1, v3, :cond_d8

    .line 66
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    const/4 v4, 0x4

    invoke-static {v3, v2, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_101

    .line 68
    :cond_d8
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_5:I

    add-int/2addr v4, v0

    mul-int v3, v3, v4

    if-gt v1, v3, :cond_f8

    .line 69
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v3, v2, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_101

    .line 72
    :cond_f8
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    const/4 v4, 0x6

    invoke-static {v3, v2, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_101} :catch_102

    .line 77
    .end local v0    # "rand":I
    .end local v1    # "numOfUnits":I
    :goto_101
    goto :goto_106

    .line 75
    :catch_102
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_106
    return-void
.end method

.method public clearData()V
    .registers 2

    .line 353
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    .line 355
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 181
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 182
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 185
    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1e

    .line 186
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 188
    :cond_1e
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_33

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_33

    .line 189
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 192
    :cond_33
    :goto_33
    return-void
.end method

.method public getArmyBattleKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "iProvinceID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 317
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_22

    .line 318
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v1, p1, :cond_1f

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->isInBattle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 319
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_23

    return-object v1

    .line 317
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 324
    .end local v0    # "i":I
    :cond_22
    goto :goto_27

    .line 322
    :catch_23
    move-exception v0

    .line 323
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_27
    const-string v0, ""

    return-object v0
.end method

.method public getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;
    .registers 3
    .param p1, "i"    # I

    .line 159
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    return-object v0
.end method

.method public getBattle(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/Battle;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_21

    .line 164
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 165
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    return-object v1

    .line 163
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBattleID(ILjava/lang/String;)I
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_25

    .line 150
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v1, p1, :cond_22

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 151
    return v0

    .line 149
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method public getBattleID(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_19

    .line 140
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 141
    return v0

    .line 139
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "i":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public getBattleSize()I
    .registers 2

    .line 173
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    return v0
.end method

.method public final getJakowskiLine()V
    .registers 1

    .line 281
    return-void
.end method

.method public isArmyInBattle(ILjava/lang/String;)Z
    .registers 6
    .param p1, "iProvinceID"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 301
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1c

    .line 302
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v2, p1, :cond_19

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->isInBattle(Ljava/lang/String;)Z

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_1d

    if-eqz v2, :cond_19

    .line 303
    return v1

    .line 301
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 308
    .end local v0    # "i":I
    :cond_1c
    goto :goto_21

    .line 306
    :catch_1d
    move-exception v0

    .line 307
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 310
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public isBattleInProvince(I)Z
    .registers 5
    .param p1, "iProvinceID"    # I

    .line 287
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_12

    .line 288
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_13

    if-ne v2, p1, :cond_f

    .line 289
    return v1

    .line 287
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 294
    .end local v0    # "i":I
    :cond_12
    goto :goto_17

    .line 292
    :catch_13
    move-exception v0

    .line 293
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 296
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public final joinBattle(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;I)V
    .registers 8
    .param p1, "iProvinceID"    # I
    .param p2, "nArmyDivision"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .param p3, "iAgainstCivID"    # I

    if-eqz p2, :cond_e

    iget-object v1, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 115
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    :try_start_f
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_ef

    .line 116
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v1, p1, :cond_eb

    .line 117
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v1, p3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 118
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V

    goto/16 :goto_eb

    .line 120
    :cond_52
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v1, p3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 121
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V

    goto :goto_eb

    .line 123
    :cond_84
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 124
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V

    goto :goto_eb

    .line 126
    :cond_b8
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 127
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_eb} :catch_f0

    .line 115
    :cond_eb
    :goto_eb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 133
    .end local v0    # "i":I
    :cond_ef
    goto :goto_f4

    .line 131
    :catch_f0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_f4
    return-void

    :cond_f5
    iget-object v1, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgSbSkip(Ljava/lang/String;)V

    return-void
.end method

.method public final removeBattle(I)V
    .registers 4
    .param p1, "id"    # I

    .line 82
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAllArmiesNotInBattle(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 85
    goto :goto_1c

    .line 83
    :catch_18
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAllArmiesNotInBattle(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_34

    .line 91
    goto :goto_38

    .line 89
    :catch_34
    move-exception v0

    .line 90
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_38
    :try_start_38
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->removeCivsInBattle(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4f} :catch_50

    .line 97
    goto :goto_54

    .line 95
    :catch_50
    move-exception v0

    .line 96
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_54
    :try_start_54
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->removeCivsInBattle(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6b} :catch_6c

    .line 103
    goto :goto_70

    .line 101
    :catch_6c
    move-exception v0

    .line 102
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 106
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_70
    :try_start_70
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7d} :catch_7e

    .line 110
    goto :goto_82

    .line 108
    :catch_7e
    move-exception v0

    .line 109
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_82
    return-void
.end method

.method public stopAllBattles_PeaceTreaty(Ljava/lang/String;)V
    .registers 6
    .param p1, "warKey"    # Ljava/lang/String;

    .line 333
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_5b

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_5a

    .line 335
    :try_start_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 336
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateBattle_Summary(Z)V

    .line 338
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 339
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_55} :catch_56

    .line 343
    :cond_55
    goto :goto_57

    .line 341
    :catch_56
    move-exception v1

    .line 333
    :goto_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 347
    .end local v0    # "i":I
    :cond_5a
    goto :goto_5f

    .line 345
    :catch_5b
    move-exception v0

    .line 346
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 348
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method
