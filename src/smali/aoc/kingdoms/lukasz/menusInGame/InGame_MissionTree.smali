.class public Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_MissionTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;
    }
.end annotation


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;


# instance fields
.field public iLinesSize:I

.field public iMapPosY:I

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 30

    .line 46
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 41
    const/4 v10, 0x0

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->iMapPosY:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    .line 44
    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->iLinesSize:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 49
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    .line 50
    .local v12, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x4

    .line 52
    .local v13, "paddingTop":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->titleTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    .line 54
    .local v14, "titleHeight":I
    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 56
    .local v15, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v0, v1

    .line 57
    .local v16, "menuX":I
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

    add-int v17, v0, v1

    .line 59
    .local v17, "menuY":I
    move v8, v13

    .line 60
    .local v8, "buttonY":I
    move/from16 v18, v12

    .line 62
    .local v18, "buttonX":I
    const/4 v7, 0x0

    .line 64
    .local v7, "centerToPosX":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    const/16 v6, 0x64

    if-lez v0, :cond_29e

    .line 65
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_63
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    if-ge v5, v0, :cond_291

    .line 66
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->haveUnlockedMission_Civ(II)Z

    move-result v26

    .line 67
    .local v26, "missionUnlocked":Z
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission_Civ(II)Z

    move-result v27

    .line 69
    .local v27, "missionCanBeUnlocked":Z
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTreeCiv;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->ImageID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v2, v6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 70
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v2, v2, v3

    add-int/lit8 v22, v2, 0x64

    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v2, v2, 0xf

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 71
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v2, v2, v3

    add-int/lit8 v23, v2, 0xf

    move-object/from16 v19, v0

    move/from16 v20, v5

    move/from16 v21, v1

    move/from16 v24, v26

    move/from16 v25, v27

    invoke-direct/range {v19 .. v25}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTreeCiv;-><init>(IIIIZZ)V

    .line 69
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission:I

    if-ltz v0, :cond_1b3

    .line 74
    iget-object v4, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v1, v6

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 75
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission:I

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v1, v1, v2

    add-int v10, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 76
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v20, 0x64

    add-int/lit8 v0, v0, 0x64

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/lit8 v1, v1, 0x64

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 78
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v1, v1, v2

    add-int v21, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 79
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v22, v0, v1

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v5

    move/from16 v23, v8

    move-object v8, v3

    .end local v8    # "buttonY":I
    .local v23, "buttonY":I
    move v3, v10

    move-object v10, v4

    move v4, v6

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    move/from16 v5, v21

    move/from16 v21, v12

    move/from16 v20, v15

    const/16 v15, 0x64

    move v12, v6

    .end local v6    # "i":I
    .end local v15    # "menuWidth":I
    .local v12, "i":I
    .local v20, "menuWidth":I
    .local v21, "paddingLeft":I
    move/from16 v6, v22

    move/from16 v28, v7

    .end local v7    # "centerToPosX":I
    .local v28, "centerToPosX":I
    move/from16 v7, v26

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;IIIIIZ)V

    .line 74
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1be

    .line 73
    .end local v20    # "menuWidth":I
    .end local v21    # "paddingLeft":I
    .end local v23    # "buttonY":I
    .end local v28    # "centerToPosX":I
    .restart local v5    # "i":I
    .restart local v7    # "centerToPosX":I
    .restart local v8    # "buttonY":I
    .local v12, "paddingLeft":I
    .restart local v15    # "menuWidth":I
    :cond_1b3
    move/from16 v28, v7

    move/from16 v23, v8

    move/from16 v21, v12

    move/from16 v20, v15

    const/16 v15, 0x64

    move v12, v5

    .line 83
    .end local v5    # "i":I
    .end local v7    # "centerToPosX":I
    .end local v8    # "buttonY":I
    .end local v15    # "menuWidth":I
    .local v12, "i":I
    .restart local v20    # "menuWidth":I
    .restart local v21    # "paddingLeft":I
    .restart local v23    # "buttonY":I
    .restart local v28    # "centerToPosX":I
    :goto_1be
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission2:I

    if-ltz v0, :cond_282

    .line 84
    iget-object v8, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v1, v15

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 85
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission2:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v1, v1, v2

    add-int v3, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 86
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission2:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v1, v15

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 88
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v1, v1, v2

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 89
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v6, v0, v1

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v7, v26

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;IIIIIZ)V

    .line 84
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v26    # "missionUnlocked":Z
    .end local v27    # "missionCanBeUnlocked":Z
    :cond_282
    add-int/lit8 v5, v12, 0x1

    move/from16 v15, v20

    move/from16 v12, v21

    move/from16 v8, v23

    move/from16 v7, v28

    const/16 v6, 0x64

    const/4 v10, 0x0

    .end local v12    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_63

    .end local v20    # "menuWidth":I
    .end local v21    # "paddingLeft":I
    .end local v23    # "buttonY":I
    .end local v28    # "centerToPosX":I
    .restart local v7    # "centerToPosX":I
    .restart local v8    # "buttonY":I
    .local v12, "paddingLeft":I
    .restart local v15    # "menuWidth":I
    :cond_291
    move/from16 v28, v7

    move/from16 v23, v8

    move/from16 v21, v12

    move/from16 v20, v15

    const/16 v15, 0x64

    move v12, v5

    .end local v5    # "i":I
    .end local v7    # "centerToPosX":I
    .end local v8    # "buttonY":I
    .end local v12    # "paddingLeft":I
    .end local v15    # "menuWidth":I
    .restart local v20    # "menuWidth":I
    .restart local v21    # "paddingLeft":I
    .restart local v23    # "buttonY":I
    .restart local v28    # "centerToPosX":I
    goto/16 :goto_420

    .line 95
    .end local v20    # "menuWidth":I
    .end local v21    # "paddingLeft":I
    .end local v23    # "buttonY":I
    .end local v28    # "centerToPosX":I
    .restart local v7    # "centerToPosX":I
    .restart local v8    # "buttonY":I
    .restart local v12    # "paddingLeft":I
    .restart local v15    # "menuWidth":I
    :cond_29e
    move/from16 v28, v7

    move/from16 v23, v8

    move/from16 v21, v12

    move/from16 v20, v15

    const/16 v15, 0x64

    .end local v7    # "centerToPosX":I
    .end local v8    # "buttonY":I
    .end local v12    # "paddingLeft":I
    .end local v15    # "menuWidth":I
    .restart local v20    # "menuWidth":I
    .restart local v21    # "paddingLeft":I
    .restart local v23    # "buttonY":I
    .restart local v28    # "centerToPosX":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_2aa
    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionsSize:I

    if-ge v8, v0, :cond_420

    .line 96
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v8}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->haveUnlockedMission(II)Z

    move-result v10

    .line 97
    .local v10, "missionUnlocked":Z
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v8}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission(II)Z

    move-result v12

    .line 99
    .local v12, "missionCanBeUnlocked":Z
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->ImageID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v1, v15

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 100
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v1, v1, v2

    add-int/lit8 v4, v1, 0x64

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 101
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int/lit8 v5, v1, 0xf

    move-object v1, v0

    move v2, v8

    move v6, v10

    move v7, v12

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMissionTree;-><init>(IIIIZZ)V

    .line 99
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission:I

    if-ltz v0, :cond_389

    .line 104
    iget-object v7, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v1, v15

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 105
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v1, v1, v2

    add-int v3, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 106
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v1, v15

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 108
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v1, v1, v2

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 109
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v22, v0, v1

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v8

    move-object v15, v6

    move/from16 v6, v22

    move/from16 v22, v12

    move-object v12, v7

    .end local v12    # "missionCanBeUnlocked":Z
    .local v22, "missionCanBeUnlocked":Z
    move v7, v10

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;IIIIIZ)V

    .line 104
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38b

    .line 103
    .end local v22    # "missionCanBeUnlocked":Z
    .restart local v12    # "missionCanBeUnlocked":Z
    :cond_389
    move/from16 v22, v12

    .line 113
    .end local v12    # "missionCanBeUnlocked":Z
    .restart local v22    # "missionCanBeUnlocked":Z
    :goto_38b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission2:I

    if-ltz v0, :cond_41a

    .line 114
    iget-object v12, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 115
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission2:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v2, v2, v1

    add-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 116
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission2:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 118
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeColumn:I

    mul-int v2, v2, v1

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    .line 119
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->TreeRow:I

    mul-int v1, v1, v2

    add-int v6, v0, v1

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v8

    move v7, v10

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;IIIIIZ)V

    .line 114
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v10    # "missionUnlocked":Z
    .end local v22    # "missionCanBeUnlocked":Z
    :cond_41a
    add-int/lit8 v8, v8, 0x1

    const/16 v15, 0x64

    goto/16 :goto_2aa

    .line 125
    .end local v8    # "i":I
    :cond_420
    :goto_420
    const/4 v0, 0x0

    .line 127
    .end local v23    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_426
    if-ge v1, v2, :cond_45e

    .line 128
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_45b

    .line 129
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    move v0, v3

    .line 127
    :cond_45b
    add-int/lit8 v1, v1, 0x1

    goto :goto_426

    .line 133
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_45e
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v17

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 135
    .local v10, "tMenuHeight":I
    const/4 v1, 0x0

    .line 136
    .local v1, "tMaxX":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_471
    if-ge v2, v3, :cond_4a3

    .line 137
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v4

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, v1, :cond_4a0

    .line 138
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v4

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 136
    :cond_4a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_471

    .line 142
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_4a3
    const/16 v2, 0x64

    add-int/lit8 v12, v1, 0x64

    .line 144
    .end local v1    # "tMaxX":I
    .local v12, "tMaxX":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v12, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    int-to-float v1, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionHeight:I

    add-int/lit8 v2, v2, 0xf

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->TECH_TREE_NUM_OF_ROWS:I

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    mul-int/lit8 v3, v13, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v15, v1

    .line 148
    .end local v0    # "buttonY":I
    .local v15, "buttonY":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Missions"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v14

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;Ljava/lang/String;IZZ)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v10, 0x2

    sub-int v3, v0, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v4, v20

    move v5, v10

    move-object v6, v11

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->iMapPosY:I

    .line 161
    iget-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->iLinesSize:I

    .line 163
    move/from16 v0, v28

    .end local v28    # "centerToPosX":I
    .local v0, "centerToPosX":I
    if-eqz v0, :cond_547

    .line 164
    neg-int v1, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->setMenuPosX(I)V

    .line 166
    :cond_547
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 370
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 371
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    .line 372
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 26
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 170
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 171
    .local v0, "fA":F
    sget-wide v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lTime:J

    const-wide/16 v16, 0x3c

    add-long v1, v1, v16

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const/high16 v18, 0x42700000    # 60.0f

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1f

    .line 172
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float v0, v1, v18

    move/from16 v19, v0

    goto :goto_21

    .line 171
    :cond_1f
    move/from16 v19, v0

    .line 180
    .end local v0    # "fA":F
    .local v19, "fA":F
    :goto_21
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f19999a    # 0.6f

    mul-float v4, v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 181
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    .line 182
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v10, v0, p3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v12, v0, 0x2

    .line 181
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 185
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 186
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v5, v1, 0x2

    .line 185
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 189
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    .line 191
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v5, v1, 0x2

    .line 190
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 194
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    .line 195
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v10, v0, p3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v12, v0, 0x2

    .line 194
    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 198
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 200
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lTime:J

    add-long v0, v0, v16

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f8

    .line 201
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float v2, v2, v18

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move/from16 v16, v0

    .end local p3    # "iTranslateY":I
    .local v0, "iTranslateY":I
    goto :goto_fa

    .line 200
    .end local v0    # "iTranslateY":I
    .restart local p3    # "iTranslateY":I
    :cond_f8
    move/from16 v16, p3

    .line 204
    .end local p3    # "iTranslateY":I
    .local v16, "iTranslateY":I
    :goto_fa
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 205
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v0, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 209
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v2

    add-int v2, v2, v16

    sub-int/2addr v1, v2

    .line 210
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v3

    neg-int v3, v3

    .line 208
    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 212
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 213
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getMenuPosX()I

    move-result v0

    neg-int v13, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getMenuPosY()I

    move-result v0

    neg-int v14, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 214
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 223
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct {v0, v14, v14, v14, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 225
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 227
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 228
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 230
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v16

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 232
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v16

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 235
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 236
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 238
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 240
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 241
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 243
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 244
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x1

    move v13, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move v14, v1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 246
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 247
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    move-object/from16 v1, p1

    const/high16 v14, 0x3f800000    # 1.0f

    move v4, v7

    const/4 v13, 0x1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 249
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v0, v12, v12, v12, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 250
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 251
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v8, p1

    const/high16 v5, 0x3f000000    # 0.5f

    move v11, v0

    const/4 v4, 0x0

    move v12, v1

    const/4 v1, 0x1

    move v13, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 253
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 254
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v3

    add-int v3, v3, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosY()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v7, v8

    add-int v7, v7, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getWidth()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    const/4 v10, 0x1

    move-object/from16 v1, p1

    const/high16 v11, 0x3f800000    # 1.0f

    move v2, v3

    move v3, v7

    const/4 v7, 0x0

    move v4, v8

    const/high16 v8, 0x3f000000    # 0.5f

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 255
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_323
    iget v1, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->iLinesSize:I

    if-ge v0, v1, :cond_412

    .line 260
    iget-object v1, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    const/4 v1, 0x0

    .local v1, "j":I
    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "jSize":I
    :goto_344
    if-ge v1, v2, :cond_3af

    .line 263
    iget-object v3, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getPosX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getMenuPosX()I

    move-result v5

    add-int/2addr v4, v5

    add-int v4, v4, p2

    iget-object v5, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 264
    iget-object v3, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->getMenuPosY()I

    move-result v4

    add-int v4, v4, v16

    iget-object v5, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_344

    .line 271
    .end local v1    # "j":I
    .end local v2    # "jSize":I
    :cond_3af
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 272
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v2, v3, v4, v10}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 275
    iget-object v1, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->unlocked:Z

    if-eqz v1, :cond_3ee

    .line 276
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3eaaaaab

    const v4, 0x3e48c8c9

    const v5, 0x3ec8c8c9

    invoke-direct {v2, v5, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    goto :goto_3fb

    .line 278
    :cond_3ee
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3ea0a0a1

    invoke-direct {v2, v3, v3, v3, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 280
    :goto_3fb
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    sget-object v3, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v2, v11, v3, v10}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_323

    .line 283
    .end local v0    # "i":I
    :cond_412
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 284
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 287
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 364
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 365
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_TechnologyTree()V

    .line 366
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 291
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 292
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lTime:J

    .line 293
    return-void
.end method
