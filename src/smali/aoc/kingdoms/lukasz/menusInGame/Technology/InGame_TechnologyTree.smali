.class public Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;
    }
.end annotation


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static centerToTechID:I

.field public static lTime:J

.field public static sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;


# instance fields
.field public iLinesSize:I

.field public iMapPosY:I

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    .line 45
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 26

    .line 47
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 40
    const/4 v10, 0x0

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iMapPosY:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    .line 43
    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 50
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    .line 51
    .local v12, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x4

    .line 53
    .local v13, "paddingTop":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->titleTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    .line 55
    .local v14, "titleHeight":I
    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 57
    .local v15, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v0, v1

    .line 58
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

    .line 60
    .local v17, "menuY":I
    move v8, v13

    .line 61
    .local v8, "buttonY":I
    move/from16 v18, v12

    .line 63
    .local v18, "buttonX":I
    const/4 v0, 0x0

    .line 65
    .local v0, "centerToPosX":I
    const/4 v1, 0x0

    move v7, v0

    move v6, v1

    .end local v0    # "centerToPosX":I
    .local v6, "i":I
    .local v7, "centerToPosX":I
    :goto_56
    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    const/16 v5, 0x64

    if-ge v6, v0, :cond_23a

    .line 66
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6, v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTechBG(II)I

    move-result v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v0, v5

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 67
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int v0, v0, v2

    add-int/lit8 v3, v0, 0x64

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v0, v0, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 68
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int v0, v0, v2

    add-int/lit8 v19, v0, 0xf

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    .line 69
    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->getTechIsInQueue(I)I

    move-result v20

    const/16 v21, 0x1

    move-object v0, v4

    move v2, v6

    move-object v10, v4

    move/from16 v4, v19

    move/from16 v19, v8

    const/16 v8, 0x64

    .end local v8    # "buttonY":I
    .local v19, "buttonY":I
    move/from16 v5, v21

    move v8, v6

    .end local v6    # "i":I
    .local v8, "i":I
    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;-><init>(IIIIZI)V

    .line 66
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    if-ltz v0, :cond_c7

    .line 72
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    if-ne v8, v0, :cond_eb

    .line 73
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    .end local v7    # "centerToPosX":I
    .restart local v0    # "centerToPosX":I
    goto :goto_ec

    .line 77
    .end local v0    # "centerToPosX":I
    .restart local v7    # "centerToPosX":I
    :cond_c7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 78
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    .end local v7    # "centerToPosX":I
    .restart local v0    # "centerToPosX":I
    goto :goto_ec

    .line 82
    .end local v0    # "centerToPosX":I
    .restart local v7    # "centerToPosX":I
    :cond_eb
    move v10, v7

    .end local v7    # "centerToPosX":I
    .local v10, "centerToPosX":I
    :goto_ec
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v0, :cond_191

    .line 83
    iget-object v7, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 84
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int v2, v2, v1

    add-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 85
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int v1, v1, v2

    add-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 87
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int v2, v2, v1

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 88
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int v1, v1, v2

    add-int v20, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 89
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v22

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v23, v10

    move-object v10, v6

    .end local v10    # "centerToPosX":I
    .local v23, "centerToPosX":I
    move/from16 v6, v20

    move/from16 v20, v12

    move-object v12, v7

    .end local v12    # "paddingLeft":I
    .local v20, "paddingLeft":I
    move/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;IIIIIZ)V

    .line 83
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_195

    .line 82
    .end local v20    # "paddingLeft":I
    .end local v23    # "centerToPosX":I
    .restart local v10    # "centerToPosX":I
    .restart local v12    # "paddingLeft":I
    :cond_191
    move/from16 v23, v10

    move/from16 v20, v12

    .line 92
    .end local v10    # "centerToPosX":I
    .end local v12    # "paddingLeft":I
    .restart local v20    # "paddingLeft":I
    .restart local v23    # "centerToPosX":I
    :goto_195
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v0, :cond_22f

    .line 93
    iget-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 94
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int v2, v2, v1

    add-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 95
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int v1, v1, v2

    add-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 97
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int v2, v2, v1

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    .line 98
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int v1, v1, v2

    add-int v6, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 99
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v7

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;IIIIIZ)V

    .line 93
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_22f
    add-int/lit8 v6, v8, 0x1

    move/from16 v8, v19

    move/from16 v12, v20

    move/from16 v7, v23

    const/4 v10, 0x0

    .end local v8    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_56

    .end local v19    # "buttonY":I
    .end local v20    # "paddingLeft":I
    .end local v23    # "centerToPosX":I
    .restart local v7    # "centerToPosX":I
    .local v8, "buttonY":I
    .restart local v12    # "paddingLeft":I
    :cond_23a
    move/from16 v19, v8

    move/from16 v20, v12

    move v8, v6

    .line 103
    .end local v6    # "i":I
    .end local v8    # "buttonY":I
    .end local v12    # "paddingLeft":I
    .restart local v19    # "buttonY":I
    .restart local v20    # "paddingLeft":I
    const/4 v0, 0x0

    .line 105
    .end local v19    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_245
    if-ge v1, v2, :cond_27d

    .line 106
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

    if-ge v0, v3, :cond_27a

    .line 107
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

    .line 105
    :cond_27a
    add-int/lit8 v1, v1, 0x1

    goto :goto_245

    .line 111
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_27d
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v17

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 113
    .local v10, "tMenuHeight":I
    const/4 v1, 0x0

    .line 114
    .local v1, "tMaxX":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_290
    if-ge v2, v3, :cond_2c2

    .line 115
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

    if-le v4, v1, :cond_2bf

    .line 116
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

    .line 114
    :cond_2bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_290

    .line 120
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_2c2
    const/16 v8, 0x64

    add-int/lit8 v12, v1, 0x64

    .line 122
    .end local v1    # "tMaxX":I
    .local v12, "tMaxX":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v12, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    int-to-float v1, v0

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

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

    float-to-int v6, v1

    .line 130
    .end local v0    # "buttonY":I
    .local v6, "buttonY":I
    new-instance v19, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "TechnologyTree"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v3, v14

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;IZZ)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v10, 0x2

    sub-int v3, v0, v1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v4, v15

    move v5, v10

    move/from16 v19, v6

    .end local v6    # "buttonY":I
    .restart local v19    # "buttonY":I
    move-object v6, v11

    move/from16 v24, v7

    .end local v7    # "centerToPosX":I
    .local v24, "centerToPosX":I
    move/from16 v7, v21

    move/from16 v21, v10

    const/16 v10, 0x64

    .end local v10    # "tMenuHeight":I
    .local v21, "tMenuHeight":I
    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 137
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iMapPosY:I

    .line 138
    iget-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I

    .line 140
    move/from16 v0, v24

    .end local v24    # "centerToPosX":I
    .local v0, "centerToPosX":I
    if-eqz v0, :cond_350

    .line 141
    neg-int v1, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->setMenuPosX(I)V

    .line 143
    :cond_350
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 348
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 349
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    .line 350
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 26
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 147
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 148
    .local v0, "fA":F
    sget-wide v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    const-wide/16 v16, 0x3c

    add-long v1, v1, v16

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const/high16 v18, 0x42700000    # 60.0f

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1f

    .line 149
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float v0, v1, v18

    move/from16 v19, v0

    goto :goto_21

    .line 148
    :cond_1f
    move/from16 v19, v0

    .line 157
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

    .line 158
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    .line 159
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

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

    .line 158
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 162
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 163
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v5, v1, 0x2

    .line 162
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 166
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

    .line 167
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    .line 168
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

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

    .line 167
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 171
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    .line 172
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v10, v0, p3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v12, v0, 0x2

    .line 171
    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 175
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 177
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    add-long v0, v0, v16

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f8

    .line 178
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

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

    .line 177
    .end local v0    # "iTranslateY":I
    .restart local p3    # "iTranslateY":I
    :cond_f8
    move/from16 v16, p3

    .line 181
    .end local p3    # "iTranslateY":I
    .local v16, "iTranslateY":I
    :goto_fa
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 182
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v0, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 186
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v2

    add-int v2, v2, v16

    sub-int/2addr v1, v2

    .line 187
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v3

    neg-int v3, v3

    .line 185
    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 189
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 190
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I

    move-result v0

    neg-int v13, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosY()I

    move-result v0

    neg-int v14, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 191
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 193
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    const v14, 0x3e19999a    # 0.15f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v13, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1bd

    .line 194
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v12, v12, v12, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 196
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v2

    add-int v2, v2, v16

    invoke-virtual {v0, v15, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2_TechTree(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 197
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_222

    .line 200
    :cond_1bd
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v12, v12, v12, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 202
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 204
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 205
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 207
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

    .line 209
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

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 212
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 213
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 216
    :goto_222
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 218
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 219
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 221
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 222
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v0

    sub-int/2addr v0, v13

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v8, p1

    const/high16 v5, 0x3f800000    # 1.0f

    move v12, v0

    const/4 v4, 0x1

    move v13, v1

    const v3, 0x3e19999a    # 0.15f

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 224
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 225
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    add-int v7, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    move-object/from16 v1, p1

    const v14, 0x3e19999a    # 0.15f

    move v3, v7

    const/4 v13, 0x1

    move v4, v8

    const/high16 v12, 0x3f800000    # 1.0f

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 227
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v0, v11, v11, v11, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 228
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 229
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v8, p1

    const/high16 v5, 0x3f000000    # 0.5f

    move v10, v0

    const/4 v0, 0x0

    move v11, v1

    const/high16 v1, 0x3f800000    # 1.0f

    move v12, v2

    const/4 v2, 0x1

    move v13, v3

    const v3, 0x3e19999a    # 0.15f

    move v14, v4

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 231
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 232
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v4

    add-int v4, v4, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v7, v8

    add-int v7, v7, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    const/4 v10, 0x0

    move-object v0, v3

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    const/4 v12, 0x1

    move v2, v4

    move v3, v7

    move v4, v8

    const/high16 v7, 0x3f000000    # 0.5f

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 233
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_361
    iget v1, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I

    if-ge v0, v1, :cond_450

    .line 238
    iget-object v1, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    const/4 v1, 0x0

    .local v1, "j":I
    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "jSize":I
    :goto_382
    if-ge v1, v2, :cond_3ed

    .line 241
    iget-object v3, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v3}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I

    move-result v5

    add-int/2addr v4, v5

    add-int v4, v4, p2

    iget-object v5, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 242
    iget-object v3, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v3}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosY()I

    move-result v4

    add-int v4, v4, v16

    iget-object v5, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_382

    .line 249
    .end local v1    # "j":I
    .end local v2    # "jSize":I
    :cond_3ed
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v10, v10, v10, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 250
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v2, v3, v4, v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 253
    iget-object v1, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->researched:Z

    if-eqz v1, :cond_42c

    .line 254
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3eaaaaab

    const v4, 0x3e48c8c9

    const v5, 0x3ec8c8c9

    invoke-direct {v2, v5, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    goto :goto_439

    .line 256
    :cond_42c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3ea0a0a1

    invoke-direct {v2, v3, v3, v3, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 258
    :goto_439
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;
    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    sget-object v3, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v2, v11, v3, v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_361

    .line 261
    .end local v0    # "i":I
    :cond_450
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 262
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 265
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 342
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 343
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_TechnologyTree()V

    .line 344
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 269
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 270
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    .line 271
    return-void
.end method
