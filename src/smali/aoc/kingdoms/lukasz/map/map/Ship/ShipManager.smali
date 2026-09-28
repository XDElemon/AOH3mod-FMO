.class public Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;
.super Ljava/lang/Object;
.source "ShipManager.java"


# static fields
.field public static limitOfShipsAtSea:I

.field public static shipImg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field public static shipLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;",
            ">;"
        }
    .end annotation
.end field

.field public static shipLinesSize:I

.field public static ships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/Ship/Ship2;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsAtSea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsAtSeaSize:I

.field public static shipsInPort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsInPortSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    .line 30
    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->limitOfShipsAtSea:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    .line 33
    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    .line 36
    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addShipAtSea()V
    .registers 3

    .line 47
    sget v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    if-lez v0, :cond_45

    .line 48
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 50
    .local v0, "tID":I
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    .line 52
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    .line 56
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    .line 58
    .end local v0    # "tID":I
    :cond_45
    return-void
.end method

.method public static final addShipLine(Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;)V
    .registers 2
    .param p0, "nShipLine"    # Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    .line 296
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    .line 298
    return-void
.end method

.method public static final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 98
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    if-lez v0, :cond_a6

    .line 99
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_15

    .line 100
    :cond_12
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->update()V

    .line 103
    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->SHIP_GROUP:I

    .line 105
    .local v0, "ageGroup":I
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 107
    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2c
    if-ltz v1, :cond_a6

    .line 108
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v2, :cond_3a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v2, :cond_51

    .line 109
    :cond_3a
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->update()V

    .line 113
    :cond_51
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    if-eqz v2, :cond_8c

    .line 114
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 117
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    .line 118
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    goto :goto_a3

    .line 121
    :cond_8c
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_a7

    .line 107
    :goto_a3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 127
    .end local v0    # "ageGroup":I
    .end local v1    # "i":I
    :cond_a6
    goto :goto_ab

    .line 125
    :catch_a7
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ab
    return-void
.end method

.method public static final drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 64
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    if-lez v0, :cond_a6

    .line 65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_15

    .line 66
    :cond_12
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->update()V

    .line 70
    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->SHIP_GROUP:I

    .line 72
    .local v0, "ageGroup":I
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 74
    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2c
    if-ltz v1, :cond_a6

    .line 75
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v2, :cond_3a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v2, :cond_51

    .line 76
    :cond_3a
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->update()V

    .line 79
    :cond_51
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    if-eqz v2, :cond_8c

    .line 80
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    .line 84
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    goto :goto_a3

    .line 87
    :cond_8c
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_a7

    .line 74
    :goto_a3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 93
    .end local v0    # "ageGroup":I
    .end local v1    # "i":I
    :cond_a6
    goto :goto_ab

    .line 91
    :catch_a7
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ab
    return-void
.end method

.method public static final loadShipLines()V
    .registers 12

    .line 134
    const-string v0, ";"

    const-string v1, "Lines_Sea.txt"

    const-string v2, "data/"

    const-string v3, "map/"

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 136
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5e} :catch_b3

    .line 141
    .local v3, "allLines":[Ljava/lang/String;
    :try_start_5e
    array-length v4, v3

    if-lez v4, :cond_ad

    .line 142
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_6c
    array-length v5, v3

    if-ge v4, v5, :cond_ad

    .line 143
    aget-object v5, v3, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "lineX":[Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "lineY":[Ljava/lang/String;
    new-instance v7, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;-><init>()V

    .line 148
    .local v7, "nShipLine":Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_83
    array-length v9, v5

    if-ge v8, v9, :cond_a4

    .line 149
    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v9, v9, v10

    aget-object v10, v6, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v10, v10, v11

    invoke-virtual {v7, v9, v10}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->addNewPoint_Just(II)V

    .line 148
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 152
    .end local v8    # "j":I
    :cond_a4
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->buildData()V

    .line 154
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->addShipLine(Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_aa} :catch_ae

    .line 142
    .end local v5    # "lineX":[Ljava/lang/String;
    .end local v6    # "lineY":[Ljava/lang/String;
    .end local v7    # "nShipLine":Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;
    add-int/lit8 v4, v4, 0x2

    goto :goto_6c

    .line 159
    .end local v4    # "i":I
    :cond_ad
    goto :goto_b2

    .line 157
    :catch_ae
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_af
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b3

    .line 163
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "allLines":[Ljava/lang/String;
    :cond_b2
    :goto_b2
    goto :goto_b7

    .line 161
    :catch_b3
    move-exception v0

    .line 162
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 166
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b7
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b8
    :try_start_b8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_AGES:I

    if-ge v0, v1, :cond_109

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "tImages":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/textures/Image;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c4
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_IMAGES:I

    if-ge v2, v3, :cond_100

    .line 170
    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gfx/map/ship_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 173
    .end local v2    # "i":I
    :cond_100
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_105} :catch_10a

    .line 166
    nop

    .end local v1    # "tImages":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/textures/Image;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 177
    .end local v0    # "a":I
    :cond_109
    goto :goto_10e

    .line 175
    :catch_10a
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_10e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10f
    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v0, v1, :cond_129

    .line 180
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_10f

    .line 184
    .end local v0    # "i":I
    :cond_129
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    .line 186
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->updateLimitOfShipsAtSea()V

    .line 187
    return-void
.end method

.method public static final loadShipLines_Provinces()V
    .registers 6

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v0, v0, 0x2

    .line 192
    .local v0, "paddingCheck":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v1, v2, :cond_3a0

    .line 193
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_39c

    .line 194
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-gt v3, v4, :cond_c5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-lt v3, v4, :cond_c5

    .line 195
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-gt v3, v4, :cond_c5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-lt v3, v4, :cond_c5

    .line 197
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 198
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    .line 199
    goto/16 :goto_39c

    .line 203
    :cond_c5
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_17a

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_17a

    .line 204
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-gt v3, v4, :cond_17a

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-lt v3, v4, :cond_17a

    .line 206
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 207
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    .line 208
    goto/16 :goto_39c

    .line 212
    :cond_17a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_22f

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_22f

    .line 213
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-gt v3, v4, :cond_22f

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-lt v3, v4, :cond_22f

    .line 215
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sub-int/2addr v3, v0

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_22f

    .line 216
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    .line 217
    goto/16 :goto_39c

    .line 222
    :cond_22f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-gt v3, v4, :cond_2e4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-lt v3, v4, :cond_2e4

    .line 223
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_2e4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_2e4

    .line 225
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_2e4

    .line 226
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    .line 227
    goto/16 :goto_39c

    .line 231
    :cond_2e4
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-gt v3, v4, :cond_398

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-lt v3, v4, :cond_398

    .line 232
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_398

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_398

    .line 234
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_398

    .line 235
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    .line 236
    goto :goto_39c

    .line 193
    :cond_398
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 192
    .end local v2    # "j":I
    :cond_39c
    :goto_39c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 242
    .end local v1    # "i":I
    :cond_3a0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a1
    sget v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v1, v2, :cond_8a1

    .line 243
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3a6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_89d

    .line 244
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-gt v3, v4, :cond_4a6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-lt v3, v4, :cond_4a6

    .line 245
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-gt v3, v4, :cond_4a6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-lt v3, v4, :cond_4a6

    .line 247
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_4a6

    .line 248
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    .line 249
    goto/16 :goto_89d

    .line 253
    :cond_4a6
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5a3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_5a3

    .line 254
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-gt v3, v4, :cond_5a3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-lt v3, v4, :cond_5a3

    .line 256
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_5a3

    .line 257
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    .line 258
    goto/16 :goto_89d

    .line 262
    :cond_5a3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_6a0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_6a0

    .line 263
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-gt v3, v4, :cond_6a0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    if-lt v3, v4, :cond_6a0

    .line 265
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sub-int/2addr v3, v0

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_6a0

    .line 266
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    .line 267
    goto/16 :goto_89d

    .line 272
    :cond_6a0
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-gt v3, v4, :cond_79d

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-lt v3, v4, :cond_79d

    .line 273
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_79d

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    add-int/2addr v4, v0

    if-lt v3, v4, :cond_79d

    .line 275
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_79d

    .line 276
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    .line 277
    goto/16 :goto_89d

    .line 281
    :cond_79d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-gt v3, v4, :cond_899

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    if-lt v3, v4, :cond_899

    .line 282
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v3, v4, :cond_899

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_899

    .line 284
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v3

    if-eqz v3, :cond_899

    .line 285
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v2, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    .line 286
    goto :goto_89d

    .line 243
    :cond_899
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a6

    .line 242
    .end local v2    # "j":I
    :cond_89d
    :goto_89d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3a1

    .line 291
    .end local v1    # "i":I
    :cond_8a1
    return-void
.end method

.method public static final update()V
    .registers 2

    .line 41
    sget v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->limitOfShipsAtSea:I

    if-ge v0, v1, :cond_9

    .line 42
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->addShipAtSea()V

    .line 44
    :cond_9
    return-void
.end method

.method public static final updateLimitOfShipsAtSea()V
    .registers 3

    .line 301
    sget v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->limitOfShipsAtSea:I

    .line 302
    return-void
.end method
