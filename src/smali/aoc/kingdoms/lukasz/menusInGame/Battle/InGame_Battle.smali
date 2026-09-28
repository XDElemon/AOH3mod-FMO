.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Battle.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static HOVER_POSX:I

.field public static HOVER_POSY:I

.field public static TURN_ID:I

.field public static battleID:I

.field public static battlePosY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static enableAnimation:Z

.field public static iDayWidth:I

.field public static iProvinceID:I

.field public static key:Ljava/lang/String;

.field public static lTime:J

.field public static nTranslateX:I

.field public static nTranslateY:I

.field public static offsetAttY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static offsetDefY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sDay:Ljava/lang/String;


# instance fields
.field public bottomY:I

.field public regimentElementID:I

.field public topY:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 48
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSX:I

    .line 49
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSY:I

    .line 52
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    .line 54
    const-string v1, ""

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    .line 55
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    .line 59
    const/4 v2, 0x1

    sput-boolean v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    .line 68
    const/4 v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 69
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    .line 71
    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->sDay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 55

    .line 74
    move-object/from16 v14, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 57
    const/4 v15, 0x0

    .line 105
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    iput v15, v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    .line 65
    iput v15, v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    .line 66
    iput v15, v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    .line 77
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 78
    .local v16, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title630:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v17

    .line 80
    .local v17, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title630:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v12, v1, v2

    .line 81
    .local v12, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    .line 82
    .local v11, "menuMinHeight":I
    const/16 v18, 0xf0

    .line 84
    .local v18, "menuHeight":I
    const/16 v19, 0x0

    .line 85
    .local v19, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v20, v1, v18

    .line 87
    .local v20, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v1, 0x2

    .line 88
    .local v21, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v1, 0x3

    .line 90
    .local v22, "generalPadding":I
    const/4 v1, 0x0

    .line 91
    .local v1, "buttonX":I
    move/from16 v23, v21

    .line 93
    .local v23, "buttonY":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleID(Ljava/lang/String;)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 94
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    .line 96
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    if-ltz v2, :cond_f39

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    sub-int/2addr v3, v4

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDates_ByTurnID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    const-string v9, ""

    if-nez v3, :cond_a7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ArmyDeployment"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a8

    :cond_a7
    move-object v3, v9

    :goto_a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->sDay:Ljava/lang/String;

    .line 100
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->sDay:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 101
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iDayWidth:I

    .line 103
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e6

    .line 104
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v2, v3, :cond_e6

    .line 105
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 110
    .end local v2    # "i":I
    :cond_e6
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_ec
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_1f5

    .line 112
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1de

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1de

    .line 113
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-le v2, v3, :cond_192

    .line 114
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v5, v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    mul-float v6, v6, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f1

    .line 117
    :cond_192
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v5, v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    neg-float v4, v4

    mul-float v6, v6, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f1

    .line 122
    :cond_1de
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_1f1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_ec

    .line 127
    .end local v0    # "i":I
    :cond_1f5
    move/from16 v8, v22

    .line 129
    .end local v1    # "buttonX":I
    .local v8, "buttonX":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v8

    move/from16 v4, v23

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIZ)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v23, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v24, v0, v1

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v8

    move-object v15, v7

    move/from16 v7, v24

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v15, v8, v0

    .line 173
    .end local v8    # "buttonX":I
    .local v15, "buttonX":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    const-string v8, "NoGeneral"

    if-nez v0, :cond_2ce

    .line 174
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v15

    move/from16 v5, v23

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIZ)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v25, v15

    move-object v15, v13

    goto/16 :goto_38b

    .line 182
    :cond_2ce
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 183
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 184
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 185
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 187
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 188
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 189
    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v10, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    move/from16 v25, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 190
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    move/from16 v26, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 191
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    move-object/from16 v27, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 192
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v28

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v29, v6

    move v6, v15

    move-object v14, v7

    move/from16 v7, v23

    move-object/from16 v30, v8

    move/from16 v8, v29

    move-object/from16 v31, v9

    move/from16 v9, v25

    move/from16 v25, v15

    const/4 v15, 0x1

    .end local v15    # "buttonX":I
    .local v25, "buttonX":I
    move/from16 v32, v11

    .end local v11    # "menuMinHeight":I
    .local v32, "menuMinHeight":I
    move/from16 v11, v26

    move/from16 v33, v12

    .end local v12    # "menuWidth":I
    .local v33, "menuWidth":I
    move-object/from16 v12, v27

    move-object v15, v13

    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v13, v28

    invoke-direct/range {v0 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    .line 182
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_38b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v8, v25, v0

    .line 208
    .end local v25    # "buttonX":I
    .restart local v8    # "buttonX":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    move/from16 v5, v23

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    const/high16 v25, 0x42c80000    # 100.0f

    mul-float v1, v1, v25

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "%"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v23, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    .line 246
    .end local v23    # "buttonY":I
    .local v9, "buttonY":I
    move/from16 v8, v22

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 250
    .local v12, "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "jSize":I
    :goto_498
    if-ge v0, v1, :cond_4b2

    .line 251
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_498

    .line 254
    .end local v0    # "j":I
    .end local v1    # "jSize":I
    :cond_4b2
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Attackers"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ":"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/16 v6, 0x32

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v3, v12

    move v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;Ljava/util/List;IIII)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v0, v1

    .line 266
    .local v23, "nXExtra":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 267
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 268
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 269
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    add-int v38, v8, v23

    mul-int/lit8 v1, v8, 0x2

    move/from16 v10, v33

    .end local v33    # "menuWidth":I
    .local v10, "menuWidth":I
    sub-int v1, v10, v1

    sub-int v40, v1, v23

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v41, v1, v2

    const/16 v42, 0x0

    move-object/from16 v34, v0

    move/from16 v39, v9

    invoke-direct/range {v34 .. v42}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 266
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    move-object/from16 v7, p0

    iput v0, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    .line 275
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 276
    div-int/lit8 v0, v10, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    mul-int v1, v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 279
    .end local v8    # "buttonX":I
    .local v0, "buttonX":I
    const/4 v1, 0x0

    move v8, v0

    move v6, v1

    .end local v0    # "buttonX":I
    .local v6, "i":I
    .restart local v8    # "buttonX":I
    :goto_5d8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6ce

    .line 280
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6a1

    .line 281
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$8;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 282
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v29, v4

    move v4, v8

    move-object/from16 v43, v5

    move v5, v9

    move/from16 v31, v6

    .end local v6    # "i":I
    .local v31, "i":I
    move/from16 v7, v28

    move/from16 v44, v8

    .end local v8    # "buttonX":I
    .local v44, "buttonX":I
    move/from16 v8, v29

    move/from16 v45, v9

    .end local v9    # "buttonY":I
    .local v45, "buttonY":I
    move/from16 v9, v26

    move-object/from16 v26, v13

    move v13, v10

    .end local v10    # "menuWidth":I
    .local v13, "menuWidth":I
    move/from16 v10, v27

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    .line 281
    move-object/from16 v0, v43

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p0

    move/from16 v2, v44

    move/from16 v9, v45

    goto :goto_6b8

    .line 295
    .end local v13    # "menuWidth":I
    .end local v31    # "i":I
    .end local v44    # "buttonX":I
    .end local v45    # "buttonY":I
    .restart local v6    # "i":I
    .restart local v8    # "buttonX":I
    .restart local v9    # "buttonY":I
    .restart local v10    # "menuWidth":I
    :cond_6a1
    move/from16 v31, v6

    move/from16 v44, v8

    move/from16 v45, v9

    move-object/from16 v26, v13

    move v13, v10

    .end local v6    # "i":I
    .end local v8    # "buttonX":I
    .end local v9    # "buttonY":I
    .end local v10    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    .restart local v31    # "i":I
    .restart local v44    # "buttonX":I
    .restart local v45    # "buttonY":I
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$9;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    move-object/from16 v10, p0

    move/from16 v2, v44

    .end local v44    # "buttonX":I
    .end local v45    # "buttonY":I
    .local v2, "buttonX":I
    .restart local v9    # "buttonY":I
    invoke-direct {v0, v10, v1, v2, v9}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :goto_6b8
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int v8, v2, v0

    .line 279
    .end local v2    # "buttonX":I
    .restart local v8    # "buttonX":I
    add-int/lit8 v6, v31, 0x1

    move-object v7, v10

    move v10, v13

    move-object/from16 v13, v26

    .end local v31    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_5d8

    .end local v13    # "menuWidth":I
    .restart local v10    # "menuWidth":I
    :cond_6ce
    move/from16 v31, v6

    move v2, v8

    move-object/from16 v26, v13

    move v13, v10

    move-object v10, v7

    .line 306
    .end local v6    # "i":I
    .end local v8    # "buttonX":I
    .end local v10    # "menuWidth":I
    .restart local v2    # "buttonX":I
    .restart local v13    # "menuWidth":I
    div-int/lit8 v0, v13, 0x2

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

    const/4 v4, 0x1

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    .line 307
    .end local v2    # "buttonX":I
    .restart local v0    # "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v9, v1

    .line 309
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    .line 313
    const/4 v1, 0x0

    move v8, v0

    move v7, v1

    .end local v0    # "buttonX":I
    .local v7, "i":I
    .restart local v8    # "buttonX":I
    :goto_70a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_897

    .line 314
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_86b

    .line 315
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v0, :cond_800

    .line 316
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_793

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v27, v0

    goto :goto_795

    :cond_793
    const/16 v27, 0x0

    :goto_795
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 317
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move v4, v8

    move/from16 v31, v5

    move v5, v9

    move-object/from16 v46, v6

    move v6, v7

    move/from16 v47, v7

    .end local v7    # "i":I
    .local v47, "i":I
    move/from16 v7, v27

    move/from16 v27, v8

    .end local v8    # "buttonX":I
    .local v27, "buttonX":I
    move/from16 v8, v31

    move/from16 v31, v9

    .end local v9    # "buttonY":I
    .local v31, "buttonY":I
    move/from16 v9, v28

    move-object/from16 v28, v12

    move-object v12, v10

    .end local v12    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v28, "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v10, v29

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    .line 316
    move-object/from16 v0, v46

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v27

    move/from16 v2, v31

    move/from16 v9, v47

    goto/16 :goto_881

    .line 325
    .end local v27    # "buttonX":I
    .end local v28    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v31    # "buttonY":I
    .end local v47    # "i":I
    .restart local v7    # "i":I
    .restart local v8    # "buttonX":I
    .restart local v9    # "buttonY":I
    .restart local v12    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_800
    move/from16 v47, v7

    move/from16 v27, v8

    move/from16 v31, v9

    move-object/from16 v28, v12

    move-object v12, v10

    .end local v7    # "i":I
    .end local v8    # "buttonX":I
    .end local v9    # "buttonY":I
    .end local v12    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v27    # "buttonX":I
    .restart local v28    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v31    # "buttonY":I
    .restart local v47    # "i":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$11;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    move/from16 v9, v47

    .end local v47    # "i":I
    .local v9, "i":I
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

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

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_857

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_858

    :cond_857
    const/4 v7, 0x0

    :goto_858
    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v27

    move/from16 v5, v31

    move v6, v9

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v27

    move/from16 v2, v31

    goto :goto_881

    .line 334
    .end local v27    # "buttonX":I
    .end local v28    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v31    # "buttonY":I
    .restart local v7    # "i":I
    .restart local v8    # "buttonX":I
    .local v9, "buttonY":I
    .restart local v12    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_86b
    move/from16 v27, v8

    move/from16 v31, v9

    move-object/from16 v28, v12

    move v9, v7

    move-object v12, v10

    .end local v7    # "i":I
    .end local v8    # "buttonX":I
    .end local v12    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "i":I
    .restart local v27    # "buttonX":I
    .restart local v28    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v31    # "buttonY":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    move/from16 v3, v27

    move/from16 v2, v31

    .end local v27    # "buttonX":I
    .end local v31    # "buttonY":I
    .local v2, "buttonY":I
    .local v3, "buttonX":I
    invoke-direct {v0, v1, v3, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :goto_881
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int v8, v3, v0

    .line 313
    .end local v3    # "buttonX":I
    .restart local v8    # "buttonX":I
    add-int/lit8 v7, v9, 0x1

    move v9, v2

    move-object v10, v12

    move-object/from16 v12, v28

    .end local v9    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_70a

    .end local v2    # "buttonY":I
    .end local v28    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "buttonY":I
    .restart local v12    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_897
    move v3, v8

    move v2, v9

    move-object/from16 v28, v12

    move v9, v7

    move-object v12, v10

    .line 341
    .end local v7    # "i":I
    .end local v8    # "buttonX":I
    .end local v9    # "buttonY":I
    .end local v12    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "buttonY":I
    .restart local v3    # "buttonX":I
    .restart local v28    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    div-int/lit8 v0, v13, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    mul-int v1, v1, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, v5

    .line 342
    .end local v3    # "buttonX":I
    .restart local v0    # "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    add-int v10, v2, v1

    .line 346
    .end local v2    # "buttonY":I
    .local v10, "buttonY":I
    const/4 v1, 0x0

    move v9, v0

    move v8, v1

    .end local v0    # "buttonX":I
    .local v8, "i":I
    .local v9, "buttonX":I
    :goto_8d1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_a52

    .line 347
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a2c

    .line 348
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v0, :cond_9c4

    .line 349
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$12;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_95a

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v27, v0

    goto :goto_95c

    :cond_95a
    const/16 v27, 0x0

    :goto_95c
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 350
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v29, 0x0

    const/16 v31, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v9

    move v5, v10

    move/from16 v33, v6

    move v6, v8

    move-object/from16 v48, v7

    move/from16 v7, v27

    move/from16 v49, v8

    .end local v8    # "i":I
    .local v49, "i":I
    move/from16 v8, v33

    move/from16 v27, v9

    .end local v9    # "buttonX":I
    .restart local v27    # "buttonX":I
    move/from16 v9, v29

    move/from16 v29, v10

    .end local v10    # "buttonY":I
    .local v29, "buttonY":I
    move/from16 v10, v31

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    .line 349
    move-object/from16 v0, v48

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v27

    move/from16 v2, v29

    move/from16 v9, v49

    goto/16 :goto_a3f

    .line 363
    .end local v27    # "buttonX":I
    .end local v29    # "buttonY":I
    .end local v49    # "i":I
    .restart local v8    # "i":I
    .restart local v9    # "buttonX":I
    .restart local v10    # "buttonY":I
    :cond_9c4
    move/from16 v49, v8

    move/from16 v27, v9

    move/from16 v29, v10

    .end local v8    # "i":I
    .end local v9    # "buttonX":I
    .end local v10    # "buttonY":I
    .restart local v27    # "buttonX":I
    .restart local v29    # "buttonY":I
    .restart local v49    # "i":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$13;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    move/from16 v9, v49

    .end local v49    # "i":I
    .local v9, "i":I
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

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

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_a18

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_a19

    :cond_a18
    const/4 v7, 0x0

    :goto_a19
    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v27

    move/from16 v5, v29

    move v6, v9

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v27

    move/from16 v2, v29

    goto :goto_a3f

    .line 377
    .end local v27    # "buttonX":I
    .end local v29    # "buttonY":I
    .restart local v8    # "i":I
    .local v9, "buttonX":I
    .restart local v10    # "buttonY":I
    :cond_a2c
    move/from16 v27, v9

    move/from16 v29, v10

    move v9, v8

    .end local v8    # "i":I
    .end local v10    # "buttonY":I
    .local v9, "i":I
    .restart local v27    # "buttonX":I
    .restart local v29    # "buttonY":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    move/from16 v3, v27

    move/from16 v2, v29

    .end local v27    # "buttonX":I
    .end local v29    # "buttonY":I
    .restart local v2    # "buttonY":I
    .restart local v3    # "buttonX":I
    invoke-direct {v0, v1, v3, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :goto_a3f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 346
    .end local v3    # "buttonX":I
    .restart local v0    # "buttonX":I
    add-int/lit8 v8, v9, 0x1

    move v9, v0

    move v10, v2

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_8d1

    .end local v0    # "buttonX":I
    .end local v2    # "buttonY":I
    .local v9, "buttonX":I
    .restart local v10    # "buttonY":I
    :cond_a52
    move v3, v9

    move v2, v10

    move v9, v8

    .line 383
    .end local v8    # "i":I
    .end local v9    # "buttonX":I
    .end local v10    # "buttonY":I
    .restart local v2    # "buttonY":I
    .restart local v3    # "buttonX":I
    div-int/lit8 v0, v13, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    mul-int v1, v1, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, v5

    .line 384
    .end local v3    # "buttonX":I
    .restart local v0    # "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int v10, v2, v1

    .line 386
    .end local v2    # "buttonY":I
    .restart local v10    # "buttonY":I
    const/4 v1, 0x0

    move v9, v0

    move v8, v1

    .end local v0    # "buttonX":I
    .restart local v8    # "i":I
    .restart local v9    # "buttonX":I
    :goto_a85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_b71

    .line 387
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b49

    .line 388
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$14;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 389
    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v27, 0x1

    const/16 v29, 0x1

    const/16 v31, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v9

    move v5, v10

    move/from16 v33, v6

    move v6, v8

    move-object/from16 v50, v7

    move/from16 v7, v31

    move/from16 v31, v8

    .end local v8    # "i":I
    .local v31, "i":I
    move/from16 v8, v33

    move/from16 v51, v9

    .end local v9    # "buttonX":I
    .local v51, "buttonX":I
    move/from16 v9, v27

    move/from16 v33, v13

    move v13, v10

    .end local v10    # "buttonY":I
    .local v13, "buttonY":I
    .restart local v33    # "menuWidth":I
    move/from16 v10, v29

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    .line 388
    move-object/from16 v0, v50

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v51

    goto :goto_b5c

    .line 402
    .end local v31    # "i":I
    .end local v33    # "menuWidth":I
    .end local v51    # "buttonX":I
    .restart local v8    # "i":I
    .restart local v9    # "buttonX":I
    .restart local v10    # "buttonY":I
    .local v13, "menuWidth":I
    :cond_b49
    move/from16 v31, v8

    move/from16 v51, v9

    move/from16 v33, v13

    move v13, v10

    .end local v8    # "i":I
    .end local v9    # "buttonX":I
    .end local v10    # "buttonY":I
    .local v13, "buttonY":I
    .restart local v31    # "i":I
    .restart local v33    # "menuWidth":I
    .restart local v51    # "buttonX":I
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    move/from16 v2, v51

    .end local v51    # "buttonX":I
    .local v2, "buttonX":I
    invoke-direct {v0, v12, v1, v2, v13}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :goto_b5c
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int v9, v2, v0

    .line 386
    .end local v2    # "buttonX":I
    .restart local v9    # "buttonX":I
    add-int/lit8 v8, v31, 0x1

    move v10, v13

    move/from16 v13, v33

    .end local v31    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_a85

    .end local v33    # "menuWidth":I
    .restart local v10    # "buttonY":I
    .local v13, "menuWidth":I
    :cond_b71
    move/from16 v31, v8

    move v2, v9

    move/from16 v33, v13

    const/4 v1, 0x1

    move v13, v10

    .line 414
    .end local v8    # "i":I
    .end local v9    # "buttonX":I
    .end local v10    # "buttonY":I
    .restart local v2    # "buttonX":I
    .local v13, "buttonY":I
    .restart local v33    # "menuWidth":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int v10, v13, v0

    .line 418
    .end local v13    # "buttonY":I
    .restart local v10    # "buttonY":I
    move/from16 v8, v22

    .line 420
    .end local v2    # "buttonX":I
    .local v8, "buttonX":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 422
    .local v13, "tDefendingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "jSize":I
    :goto_ba7
    if-ge v0, v1, :cond_bc1

    .line 423
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba7

    .line 426
    .end local v0    # "j":I
    .end local v1    # "jSize":I
    :cond_bc1
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$16;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Defenders"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/16 v6, 0x32

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v13

    move v4, v8

    move v5, v10

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;Ljava/util/List;IIII)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v0, v1

    .line 443
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 444
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 445
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 446
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    add-int v38, v8, v23

    mul-int/lit8 v1, v8, 0x2

    sub-int v1, v33, v1

    sub-int v40, v1, v23

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v41, v1, v2

    const/16 v42, 0x1

    move-object/from16 v34, v0

    move/from16 v39, v10

    invoke-direct/range {v34 .. v42}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 443
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v0, v10, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    .line 451
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v27, v10, v0

    .line 453
    .end local v10    # "buttonY":I
    .local v27, "buttonY":I
    move/from16 v8, v22

    .line 455
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$17;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v8

    move/from16 v4, v27

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIZ)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$18;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v27, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v29, v8, v0

    .line 499
    .end local v8    # "buttonX":I
    .local v29, "buttonX":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v0, :cond_d84

    .line 500
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$19;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v4, v29

    move/from16 v5, v27

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIZ)V

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v35, v14

    move-object/from16 v53, v26

    move/from16 v52, v33

    move-object/from16 v26, v13

    goto/16 :goto_e36

    .line 508
    :cond_d84
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 509
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 510
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 511
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 513
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v8, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 514
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v9, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 515
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v10, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 516
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v7, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 517
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    .line 518
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v30

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v31, v6

    move/from16 v6, v29

    move/from16 v34, v7

    move/from16 v7, v27

    move-object/from16 v35, v14

    move-object v14, v11

    move/from16 v11, v34

    move-object/from16 v12, v31

    move-object/from16 v53, v26

    move/from16 v52, v33

    move-object/from16 v26, v13

    .end local v13    # "tDefendingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v33    # "menuWidth":I
    .local v26, "tDefendingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v52, "menuWidth":I
    move/from16 v13, v30

    invoke-direct/range {v0 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    .line 508
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :goto_e36
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v29, v29, v0

    .line 534
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$21;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v29

    move/from16 v5, v27

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$22;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    mul-float v1, v1, v25

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v27, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v29

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v1, v29, v0

    .line 570
    .end local v29    # "buttonX":I
    .local v1, "buttonX":I
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosX:I

    .line 571
    sput v27, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosY:I

    .line 572
    move/from16 v9, v52

    .end local v52    # "menuWidth":I
    .local v9, "menuWidth":I
    sub-int v12, v9, v1

    sub-int v12, v12, v22

    sput v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mWidth:I

    .line 574
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosX:I

    .line 575
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    .line 576
    sub-int v12, v9, v1

    sub-int v12, v12, v22

    sput v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mWidth:I

    .line 577
    .end local v23    # "nXExtra":I
    .end local v26    # "tDefendingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "tAttackingCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v10, p0

    move v11, v1

    move/from16 v23, v27

    goto :goto_f51

    .line 579
    .end local v9    # "menuWidth":I
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v27    # "buttonY":I
    .end local v32    # "menuMinHeight":I
    .restart local v11    # "menuMinHeight":I
    .local v12, "menuWidth":I
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v23, "buttonY":I
    :cond_f39
    move/from16 v32, v11

    move v9, v12

    move-object v15, v13

    .end local v11    # "menuMinHeight":I
    .end local v12    # "menuWidth":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v9    # "menuWidth":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v32    # "menuMinHeight":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v0, :cond_f4e

    .line 580
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$23;

    const-string v2, "rebuildInGame_ProvinceArmy"

    move-object/from16 v10, p0

    invoke-direct {v0, v10, v2}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_f50

    .line 579
    :cond_f4e
    move-object/from16 v10, p0

    .line 589
    :goto_f50
    move v11, v1

    .end local v1    # "buttonX":I
    .local v11, "buttonX":I
    :goto_f51
    const/4 v0, 0x0

    .line 591
    .end local v23    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move v12, v0

    .end local v0    # "buttonY":I
    .local v2, "iSize":I
    .local v12, "buttonY":I
    :goto_f58
    if-ge v1, v2, :cond_f90

    .line 592
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    if-ge v12, v0, :cond_f8d

    .line 593
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    move v12, v0

    .line 591
    :cond_f8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f58

    .line 597
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_f90
    move/from16 v13, v32

    .end local v32    # "menuMinHeight":I
    .local v13, "menuMinHeight":I
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 598
    .end local v18    # "menuHeight":I
    .local v14, "menuHeight":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v18, v0, v14

    .line 600
    .end local v20    # "menuY":I
    .local v18, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosY:I

    add-int v0, v0, v18

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosY:I

    .line 601
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    add-int v0, v0, v18

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    .line 604
    add-int v0, v19, v9

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSX:I

    .line 605
    sput v18, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSY:I

    .line 607
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v9, v14}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v20, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$24;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BattleOf"

    invoke-virtual {v0, v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 610
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getDefendersProvinceBonuses(I)I

    move-result v0

    if-eqz v0, :cond_ffd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Defense"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/Battle;->getDefendersProvinceBonuses(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1013

    :cond_ffd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Name:Ljava/lang/String;

    :goto_1013
    move-object v3, v0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title630:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;Ljava/lang/String;ZZIII)V

    .line 609
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v18

    move v4, v9

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 632
    return-void
.end method

.method public static getImageRegimentID(I)I
    .registers 2
    .param p0, "iLine"    # I

    .line 720
    packed-switch p0, :pswitch_data_c

    .line 726
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    return v0

    .line 724
    :pswitch_6
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    return v0

    .line 722
    :pswitch_9
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy1:I

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static getMiddleHeight()I
    .registers 1

    .line 731
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

    .line 743
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 744
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    .line 745
    return-void
.end method

.method public battleFull()V
    .registers 1

    .line 771
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 636
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6b

    .line 637
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 638
    .end local p2    # "iTranslateX":I
    .local v0, "iTranslateX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    sub-long/2addr v4, v7

    long-to-float v4, v4

    div-float/2addr v4, v3

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, p3, v1

    .line 640
    .end local p3    # "iTranslateY":I
    .local v1, "iTranslateY":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->BATTLE_SOUND_2:Z

    if-eqz v2, :cond_59

    .line 641
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE2:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getSoundsVolumeMaster()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_66

    .line 644
    :cond_59
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getSoundsVolumeMaster()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 648
    :goto_66
    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_6f

    .line 636
    .end local v0    # "iTranslateX":I
    .end local v1    # "iTranslateY":I
    .restart local p2    # "iTranslateX":I
    .restart local p3    # "iTranslateY":I
    :cond_6b
    move/from16 v16, p2

    move/from16 v17, p3

    .line 648
    .end local p2    # "iTranslateX":I
    .end local p3    # "iTranslateY":I
    .local v16, "iTranslateX":I
    .local v17, "iTranslateY":I
    :goto_6f
    sput v16, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateX:I

    .line 649
    sput v17, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateY:I

    .line 651
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v8, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v0

    add-int v9, v0, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v10, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v1

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->insideTop630:I

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->insideBot630:I

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 653
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->getBattleTerrain(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v1

    add-int v1, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v2, v2, v17

    invoke-virtual {v0, v15, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 655
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb33333    # 0.35f

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 656
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v9, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v0

    add-int v10, v0, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v11

    iget v12, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 657
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v1

    add-int v2, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v3, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    add-int/2addr v1, v3

    add-int v3, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v1

    iget v7, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    sub-int v7, v1, v7

    move-object/from16 v1, p1

    const/4 v8, 0x0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 658
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 659
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v9, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v0

    iget v1, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v10, v0, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v11

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 660
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v1

    add-int v2, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v3, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    add-int/2addr v1, v3

    add-int v3, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 661
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 663
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v2, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    add-int/2addr v1, v2

    add-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v2

    invoke-static {v15, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v2, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    add-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v2

    invoke-static {v15, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 666
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_1df

    .line 667
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->drawAnimation()V

    .line 670
    :cond_1df
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 672
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eq v0, v1, :cond_202

    .line 673
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    .line 675
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$25;

    const-string v1, "rebuildBattleView"

    invoke-direct {v0, v6, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 684
    :cond_202
    return-void
.end method

.method public final drawAnimation()V
    .registers 9

    .line 687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_eb

    .line 692
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v3, v4, :cond_33

    const/4 v3, -0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x1

    :goto_34
    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v4, v7

    if-le v3, v4, :cond_6e

    const/4 v5, 0x1

    :cond_6e
    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getCurrent()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_a5

    .line 696
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 699
    :cond_a5
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getCurrent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_e7

    .line 700
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 687
    :cond_e7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 707
    .end local v0    # "i":I
    :cond_eb
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 736
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 738
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBattle()V

    .line 739
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 712
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 713
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    .line 716
    :cond_a
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 717
    return-void
.end method

.method public updateAnimationStatus()V
    .registers 5

    .line 748
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    .line 750
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_2e

    .line 752
    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 753
    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .end local v0    # "i":I
    :cond_2e
    goto :goto_4b

    .line 757
    :cond_2f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_30
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_4b

    .line 758
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 762
    .end local v0    # "i":I
    :cond_4b
    :goto_4b
    return-void
.end method
