.class public Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "GameCivsAlphabet.java"


# instance fields
.field private lCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private nSearch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 23

    .line 24
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    .line 22
    const-string v0, ""

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->nSearch:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 27
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    const/4 v11, 0x0

    .line 29
    .local v11, "nPosX":I
    new-instance v12, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$1;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$1;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 37
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_5b

    .line 38
    new-instance v12, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$2;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$2;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 55
    :cond_5b
    new-instance v12, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$3;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$3;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_71
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-nez v0, :cond_a7

    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a7

    .line 72
    new-instance v12, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$4;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$4;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 80
    :cond_a7
    new-instance v12, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$5;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$5;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_bd
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 90
    const-string v0, "game/Civilizations.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 91
    .local v8, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, "tempT":Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "tagsSPLITED":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v13

    .local v1, "iSize":I
    :goto_e0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_126

    .line 95
    const/4 v3, 0x1

    .line 97
    .local v3, "addChar":Z
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_e5
    iget-object v5, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10c

    .line 98
    iget-object v5, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v7, v13, v0

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_109

    .line 99
    const/4 v3, 0x0

    .line 100
    goto :goto_10c

    .line 97
    :cond_109
    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    .line 104
    .end local v4    # "a":I
    :cond_10c
    :goto_10c
    if-eqz v3, :cond_123

    .line 105
    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v6, v13, v0

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v3    # "addChar":Z
    :cond_123
    add-int/lit8 v0, v0, 0x1

    goto :goto_e0

    .line 109
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_126
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_127
    iget-object v1, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_17d

    .line 110
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_133
    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_17a

    .line 111
    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    if-le v3, v4, :cond_177

    .line 112
    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 113
    .local v3, "temp":C
    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    iget-object v5, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-interface {v4, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v3    # "temp":C
    :cond_177
    add-int/lit8 v1, v1, 0x1

    goto :goto_133

    .line 109
    .end local v1    # "j":I
    :cond_17a
    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    .line 119
    .end local v0    # "i":I
    :cond_17d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_17e
    iget-object v1, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22d

    .line 120
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "]"

    const-string v4, "["

    if-lez v1, :cond_1e8

    iget-object v1, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_1e8

    .line 121
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v21, 0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x0

    move-object v14, v1

    move/from16 v18, v11

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v11, v1

    goto :goto_229

    .line 125
    :cond_1e8
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v21, 0x1

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    move-object v14, v1

    move/from16 v18, v11

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v11, v1

    .line 119
    :goto_229
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17e

    .line 131
    .end local v0    # "i":I
    :cond_22d
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v6, v10

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 132
    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .registers 6
    .param p1, "nMenuElementID"    # I

    .line 136
    const-string v0, ""

    packed-switch p1, :pswitch_data_c6

    .line 161
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a1

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a1

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c5

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-eq v1, v2, :cond_c5

    goto :goto_a1

    .line 153
    :pswitch_35
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4b

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_56

    .line 154
    :cond_4b
    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    .line 155
    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    .line 156
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 158
    :cond_56
    return-void

    .line 149
    :pswitch_57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_GAMECIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    .line 150
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorGameCivs()V

    .line 151
    return-void

    .line 138
    :pswitch_66
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    .line 139
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iput-object v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    .line 140
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    .line 141
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    .line 142
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    .line 143
    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iput-object v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Wiki:Ljava/lang/String;

    .line 145
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    .line 146
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 147
    return-void

    .line 162
    :cond_a1
    :goto_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    .line 163
    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    .line 164
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 166
    :cond_c5
    return-void

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_66
        :pswitch_57
        :pswitch_35
    .end packed-switch
.end method
