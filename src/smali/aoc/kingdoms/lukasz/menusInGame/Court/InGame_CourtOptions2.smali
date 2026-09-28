.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CourtOptions2.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static HEIGHT:I

.field public static TEXT_ANIMATION_TIME:I

.field public static TEXT_TIME:J

.field public static buttonW_Draw:I

.field public static idAirForce:I

.field public static idCores:I

.field public static idCourt:I

.field public static idExploitEconomy:I

.field public static idProvinces:I

.field public static idReligion:I

.field public static isOptionHovered:Z

.field public static menuH:I

.field public static textMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->menuH:I

    .line 43
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    .line 45
    const/16 v1, -0x4d

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idProvinces:I

    .line 46
    const/16 v1, -0x9

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCourt:I

    .line 47
    const/16 v1, -0x5e

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idExploitEconomy:I

    .line 48
    const/16 v1, -0x15

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCores:I

    .line 49
    const/16 v1, -0x18

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idReligion:I

    const/16 v1, -0x6a

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idAirForce:I

    .line 63
    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    .line 64
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_TIME:J

    .line 67
    const/16 v0, 0xa5

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_ANIMATION_TIME:I

    .line 69
    const/16 v0, 0x64

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 25

    .line 76
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 79
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 81
    .local v18, "paddingLeft":I
    const/16 v19, 0x0

    .line 82
    .local v19, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int v20, v0, v1

    .line 84
    .local v20, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v0, 0x2

    .line 85
    .local v21, "buttonYPadding":I
    const/4 v13, 0x0

    .line 86
    .local v13, "buttonX":I
    const/4 v10, 0x0

    .line 88
    .local v10, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    .line 89
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v22, v0, v1

    .line 90
    .local v22, "buttonW":I
    move/from16 v23, v22

    .line 92
    .local v23, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_3c

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    goto :goto_3e

    :cond_3c
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    :goto_3e
    move v7, v0

    .line 94
    .local v7, "buttonH":I
    const/4 v8, 0x0

    .line 165
    .local v8, "tID":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Missions"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    add-int/lit8 v16, v8, 0x1

    .end local v8    # "tID":I
    .local v16, "tID":I
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v11

    move-object/from16 v1, p0

    move v4, v13

    move v5, v10

    move/from16 v6, v22

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v10, v0

    .line 218
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v0, v13, v10, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v10

    .line 221
    .end local v10    # "buttonY":I
    .local v0, "buttonY":I
    sput v16, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iGovernmentID:I

    .line 222
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$2;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Government"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->government:I

    add-int/lit8 v2, v16, 0x1

    .end local v16    # "tID":I
    .local v2, "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move-object/from16 v9, p0

    move v12, v13

    move v3, v13

    .end local v13    # "buttonX":I
    .local v3, "buttonX":I
    move v13, v0

    move-object v4, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v4, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v14, v22

    move-object v5, v15

    move v15, v7

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v6}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->SIDEBAR_ZOOM_SCALE_BUTTONS:Z

    if-eqz v1, :cond_198

    .line 271
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Scale"

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " +"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->plus:I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "tID":I
    .local v6, "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move-object/from16 v9, p0

    move v12, v3

    move v13, v0

    move/from16 v14, v22

    move-object v5, v15

    move v15, v7

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " -"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->minus:I

    add-int/lit8 v2, v6, 0x1

    .end local v6    # "tID":I
    .restart local v2    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v6

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v5}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v16, v2

    goto :goto_19a

    .line 270
    :cond_198
    move/from16 v16, v2

    .line 318
    .end local v2    # "tID":I
    .restart local v16    # "tID":I
    :goto_19a
    sput v16, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    .line 319
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$5;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Laws"

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->law:I

    add-int/lit8 v2, v16, 0x1

    .end local v16    # "tID":I
    .restart local v2    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move-object/from16 v9, p0

    move v12, v3

    move v13, v0

    move/from16 v14, v22

    move v15, v7

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v5}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    sput v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    .line 434
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$6;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Buildings"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->build:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tID":I
    .local v5, "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$7;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "TaxEfficiency"

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "tID":I
    .restart local v2    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 538
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v5}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 542
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$8;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Economy"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tID":I
    .restart local v5    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 594
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 598
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$9;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Infrastructure"

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "tID":I
    .restart local v2    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 648
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v5}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$10;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "GrowthRate"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tID":I
    .restart local v5    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 708
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$11;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Manpower"

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "tID":I
    .restart local v2    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v5}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 772
    sput v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idAirForce:I

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$18;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AirForce"

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I

    add-int/lit8 v5, v2, 0x1

    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v12, v3

    move v13, v0

    move/from16 v14, v22

    move v15, v7

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    move v2, v5

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCores:I

    .line 773
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$12;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Cores"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->core:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tID":I
    .restart local v5    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    sput v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idReligion:I

    .line 836
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$13;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Religion"

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "tID":I
    .restart local v2    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 895
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v3, v0, v5}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 899
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$14;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Sandbox"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->sandbox:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tID":I
    .restart local v5    # "tID":I
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v8, v1

    move v13, v0

    move/from16 v16, v2

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 933
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$15;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object/from16 v6, p0

    invoke-direct {v1, v6, v3, v0, v2}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;III)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 942
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    .line 943
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_4ba
    if-ltz v2, :cond_4d9

    .line 944
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    if-le v8, v9, :cond_4d6

    .line 945
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v8

    sput v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    .line 943
    :cond_4d6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4ba

    .line 948
    .end local v2    # "i":I
    :cond_4d9
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v2, v8

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    .line 953
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v20

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v2, v8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 955
    .local v2, "menuHeight":I
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    add-int v8, v23, v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int v12, v8, v9

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    xor-int/lit8 v15, v8, 0x1

    const/16 v16, 0x0

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v10, v19

    move/from16 v11, v20

    move v13, v2

    move-object v14, v4

    invoke-virtual/range {v8 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 957
    iput-boolean v1, v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->drawScrollPositionAlways:Z

    .line 958
    iput-boolean v1, v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->drawScrollPositionAlways2:Z

    .line 960
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    .line 962
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_514
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElementsSize()I

    move-result v8

    if-ge v1, v8, :cond_54b

    .line 963
    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v8

    if-eqz v8, :cond_548

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    if-le v8, v9, :cond_548

    .line 964
    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v8

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sput v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    .line 962
    :cond_548
    add-int/lit8 v1, v1, 0x1

    goto :goto_514

    .line 968
    .end local v1    # "i":I
    :cond_54b
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getPosY()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarPadding:I

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    .line 971
    return-void
.end method

.method public static final actionBuildings(I)V
    .registers 6
    .param p0, "id"    # I

    .line 1106
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p0, v0, :cond_19

    .line 1107
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1108
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1110
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Buildings2()V

    .line 1111
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1113
    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    goto :goto_34

    .line 1115
    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v4, :cond_34

    .line 1116
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1117
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1119
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Buildings2()V

    .line 1120
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1122
    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 1124
    :cond_34
    :goto_34
    return-void
.end method

.method public static final actionCores(I)V
    .registers 3
    .param p0, "id"    # I

    .line 1139
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_2b

    .line 1140
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1141
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1143
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Core()V

    .line 1144
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1146
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 1148
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-eq v0, v1, :cond_2b

    .line 1149
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 1152
    :cond_2b
    return-void
.end method

.method public static final actionCourt(I)V
    .registers 6
    .param p0, "id"    # I

    .line 1069
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_23

    .line 1070
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 1072
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1073
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1075
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Court()V

    .line 1076
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1078
    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    goto :goto_3c

    .line 1080
    :cond_23
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-ne p0, v0, :cond_2b

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inCourt:Z

    if-nez v0, :cond_3c

    .line 1081
    :cond_2b
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1082
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1084
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Court()V

    .line 1085
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1087
    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 1089
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static final actionLaws(I)V
    .registers 3
    .param p0, "id"    # I

    .line 1127
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_18

    .line 1128
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1129
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1131
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_LawsCourt()V

    .line 1132
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1134
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 1136
    :cond_18
    return-void
.end method

.method public static actionMissions()V
    .registers 3

    .line 1171
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1172
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto :goto_1f

    .line 1175
    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_MissionTree(ZZ)V

    .line 1177
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$17;

    const-string v1, "setOrderOfMenu_TechnologyTree"

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$17;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1184
    :goto_1f
    return-void
.end method

.method public static final actionProvinces(I)V
    .registers 3
    .param p0, "id"    # I

    .line 1092
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_1c

    .line 1093
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1094
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1096
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->sSearch:Ljava/lang/String;

    .line 1098
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtProvinces()V

    .line 1099
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1101
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 1103
    :cond_1c
    return-void
.end method

.method public static final actionReligion(I)V
    .registers 3
    .param p0, "id"    # I

    .line 1155
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_2b

    .line 1156
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    .line 1157
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    .line 1159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Religion()V

    .line 1160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1162
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 1164
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-eq v0, v1, :cond_2b

    .line 1165
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 1168
    :cond_2b
    return-void
.end method

.method public static disableAllViews()V
    .registers 2

    .line 1024
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-ne v0, v1, :cond_15

    .line 1025
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_b6

    .line 1027
    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_2a

    .line 1028
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_b6

    .line 1030
    :cond_2a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-ne v0, v1, :cond_3f

    .line 1031
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_b6

    .line 1033
    :cond_3f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-ne v0, v1, :cond_53

    .line 1034
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_b6

    .line 1036
    :cond_53
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-ne v0, v1, :cond_67

    .line 1037
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_b6

    .line 1039
    :cond_67
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-ne v0, v1, :cond_7b

    .line 1040
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_b6

    .line 1042
    :cond_7b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-ne v0, v1, :cond_8f

    .line 1043
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_b6

    .line 1045
    :cond_8f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v0, v1, :cond_a3

    .line 1046
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_b6

    .line 1048
    :cond_a3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_b6

    .line 1049
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 1052
    :cond_b6
    :goto_b6
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    .line 1053
    return-void
.end method

.method public static final getMenuWidth()I
    .registers 2

    .line 52
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarInnerWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getOtherMenuPosX()I
    .registers 2

    .line 56
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getOtherMenuPosX_2()I
    .registers 2

    .line 60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v0

    :goto_c
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 1018
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 1020
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1021
    return-void
.end method

.method public actionElement(I)V
    .registers 4
    .param p1, "nMenuElementID"    # I

    .line 1057
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_f

    .line 1058
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    goto :goto_2a

    .line 1060
    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getCurrent()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-ne v0, v1, :cond_2a

    .line 1061
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 1062
    return-void

    .line 1065
    :cond_2a
    :goto_2a
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    .line 1066
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 975
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    .line 977
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 978
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 979
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    .line 981
    sget-boolean v1, Laoc/kingdoms/lukasz/menu/MenuManager;->orderOfMenuInGame:Z

    if-nez v1, :cond_31

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v1

    if-nez v1, :cond_31

    .line 982
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$16;

    const-string v2, "setOrderOfMenu_InGame"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_31

    .line 977
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 993
    .end local v0    # "i":I
    :cond_31
    :goto_31
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    if-nez v0, :cond_39

    .line 994
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_TIME:J

    .line 998
    :cond_39
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    if-eqz v0, :cond_5f

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5f

    .line 999
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 1003
    :cond_5f
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1006
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 1007
    return-void
.end method

.method public getPosX()I
    .registers 3

    .line 73
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 1011
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 1013
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 1014
    return-void
.end method
