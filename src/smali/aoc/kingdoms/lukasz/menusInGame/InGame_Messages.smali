.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Messages.java"


# direct methods
.method public constructor <init>()V
    .registers 23

    .line 22
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 25
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v1, 0x0

    .line 26
    .local v1, "buttonX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v21, v0, 0x2

    .line 29
    .local v21, "buttonY":I
    :try_start_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_7e

    .line 30
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v12, v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    .line 31
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget v13, v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    .line 32
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->getImageID()I

    move-result v14

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    .line 33
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget v15, v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->expiresTurnID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    .line 34
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-wide v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->time:J

    const/16 v20, 0x1

    move-object v10, v2

    move-object/from16 v11, p0

    move-wide/from16 v16, v3

    move/from16 v18, v1

    move/from16 v19, v21

    invoke-direct/range {v10 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;Ljava/lang/String;IIIJIIZ)V

    .line 30
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_79} :catch_80

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 29
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 53
    .end local v0    # "i":I
    :cond_7e
    move v0, v1

    goto :goto_85

    .line 51
    :catch_80
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v0, v1

    .line 56
    .end local v1    # "buttonX":I
    .local v0, "buttonX":I
    :goto_85
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    sub-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    .line 58
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v6, v1, v2

    .line 56
    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v7, v9

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 3
    .param p1, "nMenuElementID"    # I

    .line 63
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    .line 65
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 66
    return-void
.end method
