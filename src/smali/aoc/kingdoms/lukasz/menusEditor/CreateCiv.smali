.class public Laoc/kingdoms/lukasz/menusEditor/CreateCiv;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "CreateCiv.java"


# static fields
.field public static goBackTo:Laoc/kingdoms/lukasz/menu/View;

.field public static nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

.field public static saveFlag:Z


# instance fields
.field private sCivName:Ljava/lang/String;

.field private final sCivTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    .line 45
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->EDITOR:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->saveFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 20

    .line 49
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 42
    const-string v0, "Civilization TAG"

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->sCivTAG:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->sCivName:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 52
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v1, 0x2

    .line 53
    .local v11, "paddingLeft":I
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 55
    .local v12, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v13, v1, 0xa

    .line 56
    .local v13, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v14, v1, 0xa

    .line 58
    .local v14, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v1, 0x2

    .line 59
    .local v15, "buttonYPadding":I
    move v1, v15

    .line 61
    .local v1, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v2, 0x4

    .line 63
    .local v16, "textPosX":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->sCivName:Ljava/lang/String;

    .line 65
    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Name:Ljava/lang/String;

    if-nez v2, :cond_3e

    .line 66
    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iput-object v0, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Name:Ljava/lang/String;

    .line 69
    :cond_3e
    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    if-nez v2, :cond_5d

    .line 70
    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    .line 73
    :cond_5d
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    .line 77
    add-int/lit8 v0, v15, 0x2c

    add-int v17, v1, v0

    .line 79
    .end local v1    # "buttonY":I
    .local v17, "buttonY":I
    new-instance v8, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$1;

    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    const/16 v18, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v16

    move v5, v11

    move/from16 v6, v17

    move-object v9, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$1;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 122
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$2;

    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Name:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    const/4 v8, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$2;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 145
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "CustomizeFlag"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$3;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 163
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    const/4 v2, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$4;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 194
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$5;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$5;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 220
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$6;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$6;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 247
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$7;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$7;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 267
    new-instance v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$8;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v1, v11, 0x2

    sub-int v7, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$8;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v17, v17, v0

    .line 280
    new-instance v7, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, ""

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, v7

    move v4, v12

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v3, v12, v14

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v12

    sub-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v13

    move-object v6, v10

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 281
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    .line 38
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->sCivName:Ljava/lang/String;

    return-object v0
.end method

.method private final saveCivsList()V
    .registers 12

    .line 358
    const-string v0, ";"

    const-string v1, "game/Civilizations.txt"

    const/4 v2, 0x0

    :try_start_5
    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 359
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_22

    .line 361
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1c
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 364
    .restart local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_22
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "tempTags":Ljava/lang/String;
    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_51

    .line 367
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 368
    .local v5, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 369
    .end local v5    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_8e

    .line 371
    :cond_51
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "tempTagsSplited":[Ljava/lang/String;
    const/4 v6, 0x1

    .line 375
    .local v6, "tAdd":Z
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v5

    .local v8, "iSize":I
    :goto_58
    if-ge v7, v8, :cond_6b

    .line 376
    aget-object v9, v5, v7

    sget-object v10, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 377
    const/4 v6, 0x0

    .line 378
    goto :goto_6b

    .line 375
    :cond_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 382
    .end local v7    # "i":I
    .end local v8    # "iSize":I
    :cond_6b
    :goto_6b
    if-eqz v6, :cond_8f

    .line 383
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 384
    .local v7, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 385
    .end local v7    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    nop

    .line 394
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "tempTags":Ljava/lang/String;
    .end local v5    # "tempTagsSplited":[Ljava/lang/String;
    .end local v6    # "tAdd":Z
    :goto_8e
    goto :goto_b0

    .line 387
    .restart local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v4    # "tempTags":Ljava/lang/String;
    .restart local v5    # "tempTagsSplited":[Ljava/lang/String;
    .restart local v6    # "tAdd":Z
    :cond_8f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->onBackPressed()V
    :try_end_92
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_92} :catch_93

    .line 388
    return-void

    .line 391
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "tempTags":Ljava/lang/String;
    .end local v5    # "tempTagsSplited":[Ljava/lang/String;
    .end local v6    # "tAdd":Z
    :catch_93
    move-exception v3

    .line 392
    .local v3, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 393
    .local v1, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 395
    .end local v1    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_b0
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 4
    .param p1, "nMenuElementID"    # I

    .line 318
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    .line 319
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->hideColorPicker()V

    .line 322
    :cond_18
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivReligion()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    .line 323
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivReligion()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 326
    :cond_31
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x3

    if-eq p1, v0, :cond_49

    .line 327
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 330
    :cond_49
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    .line 331
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 287
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 288
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 289
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 291
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x22

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosY()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 292
    return-void
.end method

.method public drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 296
    sget-boolean v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->saveFlag:Z

    if-eqz v0, :cond_11

    .line 297
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->saveFlagTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 298
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_14

    .line 301
    :cond_11
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 303
    :goto_14
    return-void
.end method

.method public final save()V
    .registers 7

    .line 336
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 337
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setTypeName(Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setUsePrototypes(Z)V

    .line 339
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->setIgnoreUnknownFields(Z)V

    .line 340
    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 342
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    const-string v3, ".json"

    if-eqz v2, :cond_47

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mods/GameCivs/game/civilizations/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 344
    .local v2, "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 345
    .end local v2    # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_71

    .line 347
    :cond_47
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game/civilizations/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 348
    .restart local v2    # "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 351
    .end local v2    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_71
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->saveCivsList()V

    .line 352
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 309
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 311
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CreateNewCivilization"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 312
    return-void
.end method
