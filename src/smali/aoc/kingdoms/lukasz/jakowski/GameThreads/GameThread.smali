.class public Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;
.super Ljava/lang/Thread;
.source "GameThread.java"


# static fields
.field public static calculationsTime:J


# instance fields
.field public aiTask:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;",
            ">;"
        }
    .end annotation
.end field

.field public civsUpdateArmyMaintenance:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public civsUpdateLegacyPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public civsUpdateLoans:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public civsUpdateResearchPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public civsUpdateTotalIncomePerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public play:Z

.field public playMaxSpeed:I

.field public playSpeed:I

.field public playSpeedTIME:I

.field public running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 176
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->calculationsTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->running:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLegacyPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateResearchPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLoans:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateArmyMaintenance:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateTotalIncomePerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->aiTask:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playMaxSpeed:I

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    return-void
.end method

.method private final updateMoveUnits()V
    .registers 12

    .line 310
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_222

    if-ge v0, v1, :cond_221

    .line 312
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    :try_start_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_219

    if-ge v1, v2, :cond_218

    .line 314
    const/4 v2, 0x1

    :try_start_13
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v3

    .line 316
    .local v3, "moveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    if-nez v4, :cond_210

    .line 317
    const/4 v4, 0x0

    iput v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 318
    iget v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 319
    iget v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ArmyMovementSpeed:F

    add-float/2addr v7, v8

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL:F

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    iput v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 321
    iget v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9d

    .line 322
    iget v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 323
    iget-object v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    iput v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 326
    :cond_9d
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    .line 328
    iget v5, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_210

    .line 329
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    .line 331
    .local v5, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v5, :cond_1f8

    .line 332
    iput v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 333
    iput v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    .line 334
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v6

    iput v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 336
    iget v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v8, 0x2

    if-le v6, v8, :cond_d4

    const/4 v6, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v6, 0x0

    :goto_d5
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 338
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v9, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 341
    iget-object v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v10

    invoke-static {v6, v9, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->updateActiveArmy_MoveUnits(Ljava/lang/String;II)V

    .line 343
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v6, :cond_11b

    .line 345
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v9

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    .line 346
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v9

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    .line 349
    :cond_11b
    iget v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-gt v6, v8, :cond_16d

    .line 351
    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 353
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v4

    .line 355
    .local v4, "inProvinceID":I
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v6, :cond_150

    .line 356
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_133} :catch_211

    .line 357
    add-int/lit8 v1, v1, -0x1

    .line 360
    :try_start_135
    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-eqz v6, :cond_14f

    .line 361
    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_14a} :catch_14b

    goto :goto_14f

    .line 363
    :catch_14b
    move-exception v6

    .line 364
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_14c
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 365
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_14f
    :goto_14f
    goto :goto_168

    .line 368
    :cond_150
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v7

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    .line 369
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 370
    add-int/lit8 v1, v1, -0x1

    .line 373
    :goto_168
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 374
    .end local v4    # "inProvinceID":I
    goto/16 :goto_210

    .line 378
    :cond_16d
    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateToNextProvince(I)V

    .line 379
    iput v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 380
    iget v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v8, v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ArmyMovementSpeed:F

    add-float/2addr v8, v9

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    mul-float v6, v6, v8

    iget v8, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    add-float/2addr v6, v8

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 381
    iput v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_1ba} :catch_211

    .line 384
    :try_start_1ba
    iget v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1f7

    .line 385
    iget v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 386
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1f2} :catch_1f3

    goto :goto_1f7

    .line 388
    :catch_1f3
    move-exception v4

    .line 389
    .local v4, "exr":Ljava/lang/Exception;
    :try_start_1f4
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 390
    .end local v4    # "exr":Ljava/lang/Exception;
    :cond_1f7
    :goto_1f7
    goto :goto_210

    .line 394
    :cond_1f8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v6

    iget-object v7, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    .line 395
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_20e} :catch_211

    .line 396
    add-int/lit8 v1, v1, -0x1

    .line 402
    .end local v3    # "moveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .end local v5    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_210
    :goto_210
    goto :goto_215

    .line 400
    :catch_211
    move-exception v3

    .line 401
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_212
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_215} :catch_219

    .line 312
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_215
    add-int/2addr v1, v2

    goto/16 :goto_8

    .line 406
    .end local v1    # "j":I
    :cond_218
    goto :goto_21d

    .line 404
    :catch_219
    move-exception v1

    .line 405
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_21a
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_21d} :catch_222

    .line 310
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_21d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 410
    .end local v0    # "i":I
    :cond_221
    goto :goto_226

    .line 408
    :catch_222
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 411
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_226
    return-void
.end method

.method private final updateMoveUnits_Rebels()V
    .registers 11

    .line 415
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget v1, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_1b5

    if-ge v0, v1, :cond_1b4

    .line 417
    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    .line 419
    .local v2, "moveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    if-nez v3, :cond_1ac

    .line 420
    const/4 v3, 0x0

    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 421
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 422
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ArmyMovementSpeed:F

    add-float/2addr v6, v7

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 424
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_94

    .line 425
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 426
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 429
    :cond_94
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    .line 431
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1ac

    .line 432
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 434
    .local v4, "tArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v4, :cond_1a5

    .line 435
    iput v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 436
    iput v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    .line 437
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 439
    iget v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v7, 0x2

    if-le v5, v7, :cond_cb

    const/4 v5, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v5, 0x0

    :goto_cc
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 441
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v8, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy_MoveUnits(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy_MoveUnits(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V

    .line 443
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    iget-object v8, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->updateArmyPosition(Ljava/lang/String;I)V

    .line 445
    iget-object v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v8

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v9

    invoke-static {v5, v8, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->updateActiveArmy_MoveUnits(Ljava/lang/String;II)V

    .line 447
    iget v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-gt v5, v7, :cond_118

    .line 449
    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 450
    iput-boolean v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 452
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 454
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(I)V

    .line 455
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1ac

    .line 460
    :cond_118
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateToNextProvince(I)V

    .line 461
    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 462
    iget v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ArmyMovementSpeed:F

    add-float/2addr v7, v8

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL:F

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    mul-float v5, v5, v7

    iget v7, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    add-float/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 463
    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_167} :catch_1ad

    .line 466
    :try_start_167
    iget v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1a4

    .line 467
    iget v5, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 468
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_19f} :catch_1a0

    goto :goto_1a4

    .line 470
    :catch_1a0
    move-exception v3

    .line 471
    .local v3, "exr":Ljava/lang/Exception;
    :try_start_1a1
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 472
    .end local v3    # "exr":Ljava/lang/Exception;
    :cond_1a4
    :goto_1a4
    goto :goto_1ac

    .line 476
    :cond_1a5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(I)V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1aa} :catch_1ad

    .line 477
    add-int/lit8 v0, v0, -0x1

    .line 483
    .end local v2    # "moveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .end local v4    # "tArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_1ac
    :goto_1ac
    goto :goto_1b1

    .line 481
    :catch_1ad
    move-exception v2

    .line 482
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1ae
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b1} :catch_1b5

    .line 415
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1b1
    add-int/2addr v0, v1

    goto/16 :goto_1

    .line 487
    .end local v0    # "j":I
    :cond_1b4
    goto :goto_1b9

    .line 485
    :catch_1b5
    move-exception v0

    .line 486
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 488
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b9
    return-void
.end method

.method public static updateRelations()V
    .registers 2

    .line 887
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_RELATIONS_TO_NEUTRAL:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 888
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1c

    .line 889
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateRelations(I)V

    .line 887
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_RELATIONS_TO_NEUTRAL:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_23

    add-int/2addr v0, v1

    goto :goto_9

    .line 894
    .end local v0    # "i":I
    :cond_22
    goto :goto_27

    .line 892
    :catch_23
    move-exception v0

    .line 893
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 895
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_27
    return-void
.end method

.method public static updateRelations(I)V
    .registers 2
    .param p0, "civID"    # I

    .line 898
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRelations_ToNeutral(I)V

    .line 899
    return-void
.end method


# virtual methods
.method public final addAI_SimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .registers 3
    .param p1, "nSimpleTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 66
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->aiTask:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    return-void

    .line 70
    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->aiTask:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final addCivUpdateArmyMaintenance(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 663
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateArmyMaintenance:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 664
    return-void

    .line 667
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateArmyMaintenance:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 670
    goto :goto_1b

    .line 668
    :catch_17
    move-exception v0

    .line 669
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 671
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addCivUpdateLegacyPerMonth(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 997
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLegacyPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 998
    return-void

    .line 1001
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLegacyPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 1004
    goto :goto_1b

    .line 1002
    :catch_17
    move-exception v0

    .line 1003
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1005
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addCivUpdateLoans(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 692
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLoans:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 693
    return-void

    .line 696
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLoans:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 699
    goto :goto_1b

    .line 697
    :catch_17
    move-exception v0

    .line 698
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 700
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addCivUpdateResearchPerMonth(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 931
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateResearchPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 932
    return-void

    .line 935
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateResearchPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 938
    goto :goto_1b

    .line 936
    :catch_17
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 939
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public final addCivUpdateTotalIncomePerMonth(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 627
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateTotalIncomePerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz v0, :cond_d

    .line 628
    return-void

    .line 633
    :cond_d
    goto :goto_12

    .line 630
    :catch_e
    move-exception v0

    .line 632
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 635
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_12
    const/4 v0, 0x1

    if-ge p1, v0, :cond_16

    .line 636
    return-void

    .line 640
    :cond_16
    :try_start_16
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateTotalIncomePerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    .line 643
    goto :goto_24

    .line 641
    :catch_20
    move-exception v0

    .line 642
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 644
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method public final autoSaveData()V
    .registers 3

    .line 186
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_STATS_DAYS:I

    rem-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 187
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$4;

    const-string v1, "saveStats"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$4;-><init>(Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 194
    :cond_14
    return-void
.end method

.method public checkGameOver()V
    .registers 3

    .line 171
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-nez v0, :cond_19

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_19

    .line 172
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->GAME_LOST:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 174
    :cond_19
    return-void
.end method

.method public clearData()V
    .registers 2

    .line 76
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLegacyPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 77
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateResearchPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 78
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLoans:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 79
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateArmyMaintenance:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 80
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateTotalIncomePerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 81
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->aiTask:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 82
    return-void
.end method

.method public final getPlaySpeed()I
    .registers 2

    .line 93
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    packed-switch v0, :pswitch_data_36

    .line 107
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_2c

    .line 108
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameSpeed:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;->GAME_SPEED_SPECTATOR_MODE:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    goto :goto_32

    .line 104
    :pswitch_10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameSpeed:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;->GAME_SPEED_4:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    .line 105
    goto :goto_32

    .line 101
    :pswitch_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameSpeed:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;->GAME_SPEED_3:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    .line 102
    goto :goto_32

    .line 98
    :pswitch_1e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameSpeed:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;->GAME_SPEED_2:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    .line 99
    goto :goto_32

    .line 95
    :pswitch_25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameSpeed:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;->GAME_SPEED_1:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    .line 96
    goto :goto_32

    .line 111
    :cond_2c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameSpeed:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;->GAME_SPEED_5:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    .line 116
    :goto_32
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    return v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method

.method public final removeCivUpdateLoans(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 704
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLoans:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 707
    goto :goto_e

    .line 705
    :catch_a
    move-exception v0

    .line 706
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 708
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public final returnOccupiedProvinces_NotAtWar()V
    .registers 4

    .line 1266
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_RETURN_OCCUPIED_PROVINCES_NOT_AT_WAR:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_44

    .line 1267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 1268
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1269
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-ltz v1, :cond_41

    .line 1270
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1271
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince_Peace()V

    .line 1267
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1277
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method public run()V
    .registers 9

    .line 197
    nop

    :goto_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->running:Z

    if-eqz v0, :cond_147

    .line 199
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->calculationsTime:J

    .line 201
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_128

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_144

    if-nez v0, :cond_128

    .line 203
    :try_start_1b
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_123

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-eq v0, v1, :cond_123

    .line 204
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    const-string v2, "AIRDBG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nT h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hpt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateMoveUnits()V

    .line 207
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateMoveUnits_Rebels()V

    .line 209
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateArmyMorale_Reinforce()V

    .line 211
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateRecruitArmy()V

    .line 212
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSieges()V

    .line 213
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateBattles()V

    .line 215
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->checkGameOver()V

    .line 217
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_123

    .line 218
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    rem-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    .line 220
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const-string v2, "AIRDBG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nD t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->tr:I

    .line 223
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->autoSaveData()V

    .line 225
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAge_TurnDays(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->nextDays(I)V

    .line 227
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateMinimap()V

    .line 229
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateNewMonth()V

    .line 230
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateNewYear()V

    .line 232
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateAutoAssimilation()V

    .line 233
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updatePopulation()V

    .line 235
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updatePriceChanges()V

    .line 237
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateLoans()V

    .line 239
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateResearchPerMonth()V

    .line 240
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateLegacyPerMonth()V

    .line 241
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateArmyMaintenance()V

    .line 242
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateTotalIncomePerMonth()V

    .line 244
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateGold_Manpower_Legacy_Diplomacy()V

    .line 246
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateResearch()V

    .line 248
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateAI_SimpleTask()V

    .line 250
    invoke-static {}, Laoc/kingdoms/lukasz/map/CoalitionManager;->updateCreateCoalition()V

    .line 252
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->updateAll()V

    .line 254
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->update()V

    .line 256
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateAggressiveExpansion()V

    .line 257
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateWarWeariness()V

    .line 259
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateWars_Peace()V

    .line 260
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateWars_WhitePeace()V

    .line 262
    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/LibertyDesireManager;->updateLibertyDesire()V

    .line 264
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateCivilizationBonuses()V

    .line 267
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateCivs_Laws()V

    .line 269
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateRelations()V

    .line 271
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->returnOccupiedProvinces_NotAtWar()V

    .line 273
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->autosave()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_123} :catch_124

    .line 278
    :cond_123
    goto :goto_128

    .line 276
    :catch_124
    move-exception v0

    .line 277
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_125
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_144

    .line 282
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_128
    :goto_128
    :try_start_128
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameSpeed:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameSpeed;->MIN_THREAD_SLEEP:I

    int-to-long v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->getPlaySpeed()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->calculationsTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_141
    .catch Ljava/lang/InterruptedException; {:try_start_128 .. :try_end_141} :catch_142
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_141} :catch_144

    .line 285
    goto :goto_145

    .line 283
    :catch_142
    move-exception v0

    goto :goto_145

    .line 286
    :catch_144
    move-exception v0

    .line 288
    :goto_145
    goto/16 :goto_1

    .line 290
    :cond_147
    return-void
.end method

.method public final updateAI_SimpleTask()V
    .registers 3

    .line 53
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->aiTask:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_1e

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 55
    :try_start_a
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->aiTask:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->update()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    .line 58
    goto :goto_1a

    .line 56
    :catch_16
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_17
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1e

    .line 53
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 62
    .end local v0    # "i":I
    :cond_1d
    goto :goto_22

    .line 60
    :catch_1e
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method public final updateAggressiveExpansion()V
    .registers 4

    .line 1167
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->GAME_UPDATE_AE_DECAY_TURNS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 1168
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_21

    .line 1169
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->decayAggressiveExpansion()V

    .line 1167
    :cond_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->GAME_UPDATE_AE_DECAY_TURNS:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_28

    add-int/2addr v0, v1

    goto :goto_7

    .line 1174
    .end local v0    # "i":I
    :cond_27
    goto :goto_2c

    .line 1172
    :catch_28
    move-exception v0

    .line 1173
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1175
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateArmyMaintenance()V
    .registers 4

    .line 675
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateArmyMaintenance:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 676
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateArmyMaintenance:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 678
    .local v1, "nCivID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyMaintenance()V

    .line 679
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyRegimentSize()I

    .line 681
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2b

    .line 675
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 685
    .end local v0    # "i":I
    .end local v1    # "nCivID":I
    :cond_2a
    goto :goto_2f

    .line 683
    :catch_2b
    move-exception v0

    .line 684
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 686
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method public final updateArmyMorale_Reinforce()V
    .registers 3

    .line 1237
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_ARMIES_MORALE_REINFORCE_STEPS:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_2c

    if-ge v0, v1, :cond_2b

    .line 1239
    :try_start_f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_20

    .line 1240
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMorale_Reinforce()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    .line 1244
    :cond_20
    goto :goto_25

    .line 1242
    :catch_21
    move-exception v1

    .line 1243
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_22
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1237
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_25
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_ARMIES_MORALE_REINFORCE_STEPS:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2c

    add-int/2addr v0, v1

    goto :goto_9

    .line 1248
    .end local v0    # "i":I
    :cond_2b
    goto :goto_30

    .line 1246
    :catch_2c
    move-exception v0

    .line 1247
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1249
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method public final updateAutoAssimilation()V
    .registers 3

    .line 1211
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_UPDATE_STEPS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1212
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1213
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->autoAssimilate()V

    .line 1211
    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_UPDATE_STEPS:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_25

    add-int/2addr v0, v1

    goto :goto_7

    .line 1218
    .end local v0    # "i":I
    :cond_24
    goto :goto_29

    .line 1216
    :catch_25
    move-exception v0

    .line 1217
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1219
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method public final updateBattles()V
    .registers 5

    .line 561
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_9a

    .line 563
    :try_start_a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateBattle()V

    .line 565
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Battle;->endOfBattle()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 566
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateBattle_Summary(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_92

    .line 569
    :try_start_28
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateIsUnderSiege()V

    .line 570
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_42} :catch_43

    .line 573
    goto :goto_47

    .line 571
    :catch_43
    move-exception v2

    .line 572
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_44
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 575
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_47
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    .line 577
    .local v2, "inProvinceID":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->removeBattle(I)V

    .line 579
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleEnd;->battleEnded(I)V

    .line 580
    .end local v2    # "inProvinceID":I
    goto :goto_91

    .line 581
    :cond_58
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Battle;->endOfBattle_NoAttacks()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 582
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateBattle_Summary(Z)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6d} :catch_92

    .line 585
    :try_start_6d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateIsUnderSiege()V

    .line 586
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_87} :catch_88

    .line 589
    goto :goto_8c

    .line 587
    :catch_88
    move-exception v2

    .line 588
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_89
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 591
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_8c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->removeBattle(I)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_91} :catch_92

    .line 595
    :cond_91
    :goto_91
    goto :goto_96

    .line 593
    :catch_92
    move-exception v2

    .line 594
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 561
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_96
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 597
    .end local v0    # "i":I
    :cond_9a
    return-void
.end method

.method public final updateCivilizationBonuses()V
    .registers 3

    .line 1255
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_CIV_BONUSES:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1256
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationBonuses_Temporary()V

    .line 1255
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_CIV_BONUSES:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1d

    add-int/2addr v0, v1

    goto :goto_9

    .line 1260
    .end local v0    # "i":I
    :cond_1c
    goto :goto_21

    .line 1258
    :catch_1d
    move-exception v0

    .line 1259
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1261
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public final updateCivs_Advantages()V
    .registers 1

    .line 855
    return-void
.end method

.method public final updateCivs_Laws()V
    .registers 3

    .line 861
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_LAWS:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 863
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_22

    .line 864
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1c

    .line 865
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Laws/AI_Laws;->adoptNewLaws(I)V

    .line 863
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_LAWS:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 869
    :cond_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2d

    .line 870
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_LAWS:I

    add-int/2addr v0, v1

    .line 873
    :cond_2d
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 874
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_40

    .line 875
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Laws/AI_Laws;->adoptNewLaws(I)V

    .line 873
    :cond_40
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_LAWS:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_47

    add-int/2addr v0, v1

    goto :goto_2d

    .line 880
    .end local v0    # "i":I
    :cond_46
    goto :goto_4b

    .line 878
    :catch_47
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 881
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public final updateCivs_UpgradeUnits()V
    .registers 3

    .line 905
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UPGRADE_UNITS:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 907
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_22

    .line 908
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1c

    .line 909
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->upgradeAllArmies(I)I

    .line 907
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UPGRADE_UNITS:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 913
    :cond_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2d

    .line 914
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UPGRADE_UNITS:I

    add-int/2addr v0, v1

    .line 917
    :cond_2d
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 918
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_40

    .line 919
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->upgradeAllArmies(I)I

    .line 917
    :cond_40
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UPGRADE_UNITS:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_47

    add-int/2addr v0, v1

    goto :goto_2d

    .line 924
    .end local v0    # "i":I
    :cond_46
    goto :goto_4b

    .line 922
    :catch_47
    move-exception v0

    .line 923
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 925
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public final updateDiplomacyPoints()V
    .registers 8

    .line 1113
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 1114
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_3c

    .line 1115
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MIN:I

    int-to-float v2, v2

    .line 1117
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1116
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_40

    .line 1113
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1122
    .end local v0    # "i":I
    :cond_3f
    goto :goto_44

    .line 1120
    :catch_40
    move-exception v0

    .line 1121
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1123
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public final updateDiplomacyPoints_2()V
    .registers 7

    .line 1127
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_49

    .line 1128
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MIN:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 1130
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1129
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    .line 1134
    :cond_49
    goto :goto_4e

    .line 1132
    :catch_4a
    move-exception v0

    .line 1133
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1137
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4e
    :try_start_4e
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1139
    .local v0, "i":I
    :goto_55
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_91

    .line 1140
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_8d

    .line 1141
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MIN:I

    int-to-float v2, v2

    .line 1143
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1142
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 1139
    :cond_8d
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    goto :goto_55

    .line 1147
    :cond_91
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_9a

    .line 1148
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    .line 1151
    :cond_9a
    :goto_9a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_d6

    .line 1152
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_d2

    .line 1153
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MIN:I

    int-to-float v2, v2

    .line 1155
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1154
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 1151
    :cond_d2
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_d4} :catch_d7

    add-int/2addr v0, v1

    goto :goto_9a

    .line 1160
    .end local v0    # "i":I
    :cond_d6
    goto :goto_db

    .line 1158
    :catch_d7
    move-exception v0

    .line 1159
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1161
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_db
    return-void
.end method

.method public final updateGold()V
    .registers 5

    .line 725
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_3a

    if-ge v0, v1, :cond_39

    .line 727
    :try_start_7
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_31

    .line 728
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v2, v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_32

    .line 732
    :cond_31
    goto :goto_36

    .line 730
    :catch_32
    move-exception v1

    .line 731
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_33
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_3a

    .line 725
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 736
    .end local v0    # "i":I
    :cond_39
    goto :goto_3e

    .line 734
    :catch_3a
    move-exception v0

    .line 735
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 737
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public final updateGold_2()V
    .registers 5

    .line 741
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_3e

    .line 742
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 746
    :cond_3e
    goto :goto_43

    .line 744
    :catch_3f
    move-exception v0

    .line 745
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 749
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_43
    :try_start_43
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 751
    .local v0, "i":I
    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_7b

    .line 752
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_77

    .line 753
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v2, v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 751
    :cond_77
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    goto :goto_4a

    .line 757
    :cond_7b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_84

    .line 758
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    .line 761
    :cond_84
    :goto_84
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_b5

    .line 762
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_b1

    .line 763
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v2, v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 761
    :cond_b1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_b3} :catch_b6

    add-int/2addr v0, v1

    goto :goto_84

    .line 768
    .end local v0    # "i":I
    :cond_b5
    goto :goto_ba

    .line 766
    :catch_b6
    move-exception v0

    .line 767
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 769
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ba
    return-void
.end method

.method public final updateGold_Manpower_Legacy_Diplomacy()V
    .registers 8

    .line 773
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 775
    .local v0, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_52

    .line 776
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 778
    iget-wide v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    iget-wide v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_53

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    :try_start_2a
    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 780
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 782
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MIN:I

    int-to-float v1, v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iget v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 784
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 783
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_52} :catch_53

    .line 788
    .end local v0    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_52
    goto :goto_57

    .line 786
    :catch_53
    move-exception v0

    .line 787
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 791
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_57
    :try_start_57
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 793
    .local v0, "i":I
    :goto_5e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_a6

    .line 794
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 796
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_a2

    .line 797
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v2, v3

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 798
    iget-wide v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    iget-wide v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 799
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 801
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MIN:I

    int-to-float v2, v2

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 803
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 802
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 793
    .end local v1    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_a2
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    goto :goto_5e

    .line 807
    :cond_a6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_af

    .line 808
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    .line 811
    :cond_af
    :goto_af
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_f7

    .line 812
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 814
    .restart local v1    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_f3

    .line 815
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v2, v3

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 816
    iget-wide v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    iget-wide v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 817
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 819
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MIN:I

    int-to-float v2, v2

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 821
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 820
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 811
    .end local v1    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_f3
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_f5} :catch_f8

    add-int/2addr v0, v1

    goto :goto_af

    .line 826
    .end local v0    # "i":I
    :cond_f7
    goto :goto_fc

    .line 824
    :catch_f8
    move-exception v0

    .line 825
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 827
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_fc
    return-void
.end method

.method public final updateLegacy()V
    .registers 5

    .line 1021
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1022
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_23

    .line 1023
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_27

    .line 1021
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1028
    .end local v0    # "i":I
    :cond_26
    goto :goto_2b

    .line 1026
    :catch_27
    move-exception v0

    .line 1027
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1029
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public final updateLegacyPerMonth()V
    .registers 3

    .line 1009
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLegacyPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 1010
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLegacyPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_21

    .line 1009
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1014
    .end local v0    # "i":I
    :cond_20
    goto :goto_25

    .line 1012
    :catch_21
    move-exception v0

    .line 1013
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1015
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public final updateLegacy_2()V
    .registers 4

    .line 1033
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_28

    .line 1034
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 1038
    :cond_28
    goto :goto_2d

    .line 1036
    :catch_29
    move-exception v0

    .line 1037
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1041
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d
    :try_start_2d
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1043
    .local v0, "i":I
    :goto_34
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_57

    .line 1044
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_53

    .line 1045
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 1043
    :cond_53
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    goto :goto_34

    .line 1049
    :cond_57
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_60

    .line 1050
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    .line 1053
    :cond_60
    :goto_60
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 1054
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_7f

    .line 1055
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 1053
    :cond_7f
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_81} :catch_84

    add-int/2addr v0, v1

    goto :goto_60

    .line 1060
    .end local v0    # "i":I
    :cond_83
    goto :goto_88

    .line 1058
    :catch_84
    move-exception v0

    .line 1059
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1061
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_88
    return-void
.end method

.method public final updateLoans()V
    .registers 4

    .line 712
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateLoans:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 713
    .local v1, "civID":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLoans()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 714
    .end local v1    # "civID":Ljava/lang/Integer;
    goto :goto_6

    .line 717
    :cond_1e
    goto :goto_23

    .line 715
    :catch_1f
    move-exception v0

    .line 716
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 718
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final updateManpower()V
    .registers 9

    .line 1067
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1068
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_2c

    .line 1069
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_30

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    :try_start_29
    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_30

    .line 1067
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    .end local v0    # "i":I
    :cond_2f
    goto :goto_34

    .line 1072
    :catch_30
    move-exception v0

    .line 1073
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1075
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_34
    return-void
.end method

.method public final updateManpower_2()V
    .registers 8

    .line 1079
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_35

    .line 1080
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-wide v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-wide v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_36

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    :try_start_32
    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    .line 1084
    :cond_35
    goto :goto_3a

    .line 1082
    :catch_36
    move-exception v0

    .line 1083
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1087
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3a
    :try_start_3a
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1089
    .local v0, "i":I
    :goto_41
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_69

    .line 1090
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_65

    .line 1091
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 1089
    :cond_65
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    goto :goto_41

    .line 1095
    :cond_69
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_72

    .line 1096
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I

    add-int/2addr v0, v1

    .line 1099
    :cond_72
    :goto_72
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_9a

    .line 1100
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_96

    .line 1101
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 1099
    :cond_96
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS_INT:I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_98} :catch_9b

    add-int/2addr v0, v1

    goto :goto_72

    .line 1106
    .end local v0    # "i":I
    :cond_9a
    goto :goto_9f

    .line 1104
    :catch_9b
    move-exception v0

    .line 1105
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1107
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9f
    return-void
.end method

.method public updateMinimap()V
    .registers 3

    .line 179
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_MINIMAP:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 180
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    .line 182
    :cond_e
    return-void
.end method

.method public final updateNewMonth()V
    .registers 4

    .line 122
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    rem-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_28

    .line 124
    :try_start_6
    invoke-static {}, Laoc/kingdoms/lukasz/map/war/WarManager;->updateWars_TickingWarScore()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 127
    goto :goto_e

    .line 125
    :catch_a
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$1;

    const-string v2, "buildCivilizationRanking"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$1;-><init>(Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 140
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;->updateData()V

    .line 141
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;->updateData()V

    .line 143
    :cond_28
    return-void
.end method

.method public final updateNewYear()V
    .registers 4

    .line 146
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    rem-int/lit16 v0, v0, 0x16d

    if-nez v0, :cond_1e

    .line 147
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$2;

    const-string v2, "buildProsperity_AverageEconomy"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$2;-><init>(Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$3;

    const-string v2, "updateWorldResourcesProduced_NewYear"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread$3;-><init>(Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 166
    :cond_1e
    return-void
.end method

.method public final updatePopulation()V
    .registers 3

    .line 1223
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_POPULATION_STEPS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1224
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1225
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updatePopulationGrowth()V

    .line 1223
    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_POPULATION_STEPS:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_25

    add-int/2addr v0, v1

    goto :goto_7

    .line 1230
    .end local v0    # "i":I
    :cond_24
    goto :goto_29

    .line 1228
    :catch_25
    move-exception v0

    .line 1229
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1231
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method public final updateRecruitArmy()V
    .registers 5

    .line 296
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 297
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRecruitSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_11
    if-ltz v1, :cond_1e

    .line 298
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRecruitArmy(II)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_22

    .line 297
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 296
    .end local v1    # "j":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    :cond_21
    goto :goto_26

    .line 301
    :catch_22
    move-exception v0

    .line 302
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 304
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method public final updateResearch()V
    .registers 7

    .line 955
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_b9

    .line 956
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_b5

    .line 957
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v1

    if-ltz v1, :cond_35

    .line 958
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addResearchProgress(IF)V

    goto/16 :goto_b5

    .line 961
    :cond_35
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_SelectTechnology;->selectTechnology(I)V

    .line 963
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v1

    if-ltz v1, :cond_5b

    .line 964
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addResearchProgress(IF)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_ba

    goto :goto_b5

    .line 968
    :cond_5b
    :try_start_5b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAlternativeTechResearch()I

    move-result v1

    if-ltz v1, :cond_7e

    .line 969
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAlternativeTechResearch()I

    move-result v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addResearchProgress(IF)V

    goto :goto_b0

    .line 972
    :cond_7e
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7f
    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v1, v2, :cond_b0

    .line 973
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAvailableToResearch(I)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 974
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAlternativeTechResearch(I)V

    .line 976
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAlternativeTechResearch()I

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->UPDATE_NUM_OF_DAYS:F

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addResearchProgress(IF)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_ac} :catch_b1

    .line 977
    goto :goto_b0

    .line 972
    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 983
    .end local v1    # "j":I
    :cond_b0
    :goto_b0
    goto :goto_b5

    .line 981
    :catch_b1
    move-exception v1

    .line 982
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_b2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_ba

    .line 955
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_b5
    :goto_b5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 990
    .end local v0    # "i":I
    :cond_b9
    goto :goto_be

    .line 988
    :catch_ba
    move-exception v0

    .line 989
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 991
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_be
    return-void
.end method

.method public final updateResearchPerMonth()V
    .registers 3

    .line 943
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateResearchPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 944
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateResearchPerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_21

    .line 943
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 948
    .end local v0    # "i":I
    :cond_20
    goto :goto_25

    .line 946
    :catch_21
    move-exception v0

    .line 947
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 949
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public final updateSieges()V
    .registers 2

    .line 552
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->updateSieges()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 555
    goto :goto_8

    .line 553
    :catch_4
    move-exception v0

    .line 554
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 556
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    return-void
.end method

.method public final updateSpeed(I)V
    .registers 12
    .param p1, "speed"    # I

    .line 493
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playMaxSpeed:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    .line 495
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopDate;->ANIMATION_TIME:J

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 500
    .local v7, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Speed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playMaxSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_IMPORTANT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v1, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 505
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/Toast;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/util/List;IIII)V

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    .line 506
    return-void
.end method

.method public final updateSpeedMinus()V
    .registers 11

    .line 509
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    .line 511
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    if-ge v0, v2, :cond_12

    .line 512
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    .line 515
    :cond_12
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopDate;->ANIMATION_TIME:J

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 520
    .local v7, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Speed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playMaxSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_IMPORTANT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v1, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 525
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/Toast;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/util/List;IIII)V

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    .line 526
    return-void
.end method

.method public final updateSpeedPlus()V
    .registers 11

    .line 529
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    .line 531
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playMaxSpeed:I

    if-le v0, v1, :cond_1a

    .line 532
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playMaxSpeed:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    .line 535
    :cond_1a
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopDate;->ANIMATION_TIME:J

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 540
    .local v7, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Speed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playMaxSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_IMPORTANT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v1, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 545
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/Toast;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/util/List;IIII)V

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    .line 546
    return-void
.end method

.method public final updateTotalIncomePerMonth()V
    .registers 4

    .line 648
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateTotalIncomePerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_27

    .line 649
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->civsUpdateTotalIncomePerMonth:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 651
    .local v1, "nCivID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    .line 652
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_28

    .line 648
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 656
    .end local v0    # "i":I
    .end local v1    # "nCivID":I
    :cond_27
    goto :goto_2c

    .line 654
    :catch_28
    move-exception v0

    .line 655
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 657
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateWarWeariness()V
    .registers 6

    .line 1179
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->GAME_UPDATE_WAR_WEARINESS_TICK_TURNS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_8f

    .line 1180
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_88

    .line 1181
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1182
    const/4 v1, 0x0

    .line 1183
    .local v1, "isAttacker":Z
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "a":I
    :goto_2e
    if-ltz v2, :cond_63

    .line 1184
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1185
    const/4 v1, 0x1

    .line 1186
    goto :goto_63

    .line 1183
    :cond_60
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 1190
    .end local v2    # "a":I
    :cond_63
    :goto_63
    if-eqz v1, :cond_71

    .line 1191
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WAR_WEARINESS_PER_TICK_AT_WAR:F

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    goto :goto_7c

    .line 1194
    :cond_71
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WAR_WEARINESS_PER_TICK_AT_WAR_DEFENDER:F

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    .line 1196
    .end local v1    # "isAttacker":Z
    :goto_7c
    goto :goto_88

    .line 1198
    :cond_7d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WAR_WEARINESS_PER_TICK_AT_PEACE:F

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    .line 1179
    :cond_88
    :goto_88
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->GAME_UPDATE_WAR_WEARINESS_TICK_TURNS:I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_90

    add-int/2addr v0, v1

    goto/16 :goto_7

    .line 1204
    .end local v0    # "i":I
    :cond_8f
    goto :goto_94

    .line 1202
    :catch_90
    move-exception v0

    .line 1203
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1205
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_94
    return-void
.end method

.method public final updateWars_Peace()V
    .registers 3

    .line 615
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->GAME_UPDATE_WAR_AI_PEACE:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 616
    invoke-static {}, Laoc/kingdoms/lukasz/map/war/WarManager;->updateWars_Peace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 620
    :cond_c
    goto :goto_11

    .line 618
    :catch_d
    move-exception v0

    .line 619
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 621
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public final updateWars_WhitePeace()V
    .registers 3

    .line 603
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->GAME_UPDATE_WAR_AUTO_WHITE_PEACE:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 604
    invoke-static {}, Laoc/kingdoms/lukasz/map/war/WarManager;->updateWars_WhitePeace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 608
    :cond_c
    goto :goto_11

    .line 606
    :catch_d
    move-exception v0

    .line 607
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 609
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11
    return-void
.end method
