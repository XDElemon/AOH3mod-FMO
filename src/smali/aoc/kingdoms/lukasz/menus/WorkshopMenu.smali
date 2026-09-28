.class public Laoc/kingdoms/lukasz/menus/WorkshopMenu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "WorkshopMenu.java"


# static fields
.field public static lMods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->lMods:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    .line 37
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v1, 0x2

    .line 41
    .local v13, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    .line 43
    .local v14, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v15, v1, 0xa

    .line 44
    .local v15, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v16, v1, 0xa

    .line 46
    .local v16, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x2

    .line 47
    .local v17, "buttonYPadding":I
    move/from16 v1, v17

    .line 49
    .local v1, "buttonY":I
    sget-object v2, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->lMods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 51
    new-instance v11, Laoc/kingdoms/lukasz/menus/WorkshopMenu$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Back"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v3, v13, 0x2

    sub-int v9, v2, v3

    const/4 v10, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, v11

    move-object/from16 v3, p0

    move v7, v13

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menus/WorkshopMenu$1;-><init>(Laoc/kingdoms/lukasz/menus/WorkshopMenu;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v17

    add-int/2addr v1, v3

    .line 62
    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-string v4, "mods/"

    if-eqz v3, :cond_66

    .line 63
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v12, v3

    .local v3, "files":[Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_71

    .line 65
    .end local v3    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_66
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    move-object v12, v3

    .line 68
    .local v12, "files":[Lcom/badlogic/gdx/files/FileHandle;
    :goto_71
    array-length v3, v12

    :goto_72
    if-ge v2, v3, :cond_82

    aget-object v4, v12, v2

    .line 69
    .local v4, "file":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v5, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->lMods:Ljava/util/List;

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 73
    :cond_82
    const/4 v2, 0x0

    move/from16 v18, v1

    move v1, v2

    .local v1, "i":I
    .local v18, "buttonY":I
    :goto_86
    sget-object v2, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->lMods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f9

    .line 74
    sget-object v2, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->lMods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "GameCivs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 75
    move-object/from16 v19, v12

    move/from16 v20, v13

    goto :goto_f2

    .line 78
    :cond_a3
    new-instance v11, Laoc/kingdoms/lukasz/menus/WorkshopMenu$2;

    sget-object v2, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->lMods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v3, v13, 0x2

    sub-int v8, v2, v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int v10, v2, v3

    const/16 v19, 0x1

    move-object v2, v11

    move-object/from16 v3, p0

    move v6, v13

    move/from16 v7, v18

    move/from16 v20, v13

    move-object v13, v11

    .end local v13    # "paddingLeft":I
    .local v20, "paddingLeft":I
    move/from16 v11, v19

    move-object/from16 v19, v12

    .end local v12    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .local v19, "files":[Lcom/badlogic/gdx/files/FileHandle;
    move v12, v1

    invoke-direct/range {v2 .. v12}, Laoc/kingdoms/lukasz/menus/WorkshopMenu$2;-><init>(Laoc/kingdoms/lukasz/menus/WorkshopMenu;Ljava/lang/String;IIIIIIZI)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v17

    add-int v18, v18, v2

    .line 73
    :goto_f2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, v19

    move/from16 v13, v20

    goto :goto_86

    .line 119
    .end local v1    # "i":I
    .end local v19    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v20    # "paddingLeft":I
    .restart local v12    # "files":[Lcom/badlogic/gdx/files/FileHandle;
    .restart local v13    # "paddingLeft":I
    :cond_f9
    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v4, ""

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v3, v2

    move v6, v14

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v14, v16

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v14

    sub-int v1, v1, v16

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v1, v3

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move v3, v15

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 120
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 124
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 125
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 126
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 127
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 131
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 133
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/WorkshopMenu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "SubmitYourModsToTheSteamWorkshop"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 134
    return-void
.end method
