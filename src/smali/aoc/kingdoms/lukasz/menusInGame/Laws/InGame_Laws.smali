.class public Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Laws.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static lawID:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lTime:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 28
    .param p1, "nLawID"    # I

    .line 32
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sput p1, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    .line 37
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v10, v1, v2

    .line 38
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    .line 40
    .local v11, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    .line 42
    .local v12, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v1, v2

    .line 43
    .local v13, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v14, v1, v2

    .line 45
    .local v14, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    .line 46
    .local v1, "buttonY":I
    move v15, v10

    .line 48
    .local v15, "buttonX":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_35f

    .line 49
    move v3, v1

    .line 51
    .local v3, "tempY":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, ".d"

    if-ne v4, v2, :cond_ff

    .line 52
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/button/Button_Law3_Green;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v7, :cond_b0

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v5, v5, v2

    goto :goto_cf

    :cond_b0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_cf
    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v10, v5

    mul-int/lit8 v5, v10, 0x2

    sub-int v5, v12, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v21, v5, v6

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v22, v5, v2

    sget v23, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object/from16 v16, v4

    move/from16 v20, v1

    move/from16 v24, v2

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law3_Green;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f5

    .line 54
    :cond_ff
    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v4, v4, v2

    if-ltz v4, :cond_1b1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v6, v6, v2

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-nez v4, :cond_1b1

    .line 55
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$1;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v7, :cond_160

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v5, v5, v2

    goto :goto_17f

    :cond_160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_17f
    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v20, v10, v5

    mul-int/lit8 v5, v10, 0x2

    sub-int v5, v12, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v22, v5, v6

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v23, v5, v2

    sget v24, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object/from16 v16, v4

    move-object/from16 v17, p0

    move/from16 v21, v1

    move/from16 v25, v2

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f5

    .line 69
    :cond_1b1
    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    if-eqz v4, :cond_271

    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v4, v4, v2

    if-ltz v4, :cond_271

    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v4, v4, v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v6

    if-eq v4, v6, :cond_271

    .line 70
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v7, :cond_220

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v5, v5, v2

    goto :goto_23f

    :cond_220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_23f
    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v20, v10, v5

    mul-int/lit8 v5, v10, 0x2

    sub-int v5, v12, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v22, v5, v6

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v23, v5, v2

    sget v24, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object/from16 v16, v4

    move-object/from16 v17, p0

    move/from16 v21, v1

    move/from16 v25, v2

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f5

    .line 78
    :cond_271
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    if-eqz v7, :cond_2a6

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->LawDesc:[Ljava/lang/String;

    aget-object v5, v5, v2

    goto :goto_2c5

    :cond_2a6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2c5
    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v20, v10, v5

    mul-int/lit8 v5, v10, 0x2

    sub-int v5, v12, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v22, v5, v6

    sget-object v5, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    aget v23, v5, v2

    sget v24, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    move-object/from16 v16, v4

    move-object/from16 v17, p0

    move/from16 v21, v1

    move/from16 v25, v2

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_2f5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 87
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v10

    invoke-static {v4, v2, v5, v12}, Laoc/kingdoms/lukasz/map/LawsManager;->getLawBonuses(IIII)Ljava/util/List;

    move-result-object v4

    .line 89
    .local v4, "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_35b

    .line 90
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_319
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_348

    .line 91
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 92
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_319

    .line 97
    .end local v5    # "a":I
    :cond_348
    sub-int v3, v1, v3

    .line 98
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v6, v1, v3

    mul-int/lit8 v7, v10, 0x2

    sub-int v7, v12, v7

    invoke-direct {v5, v10, v6, v7, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    .line 48
    .end local v3    # "tempY":I
    .end local v4    # "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :cond_35b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_51

    .line 105
    .end local v2    # "i":I
    :cond_35f
    const/4 v1, 0x0

    .line 107
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v9, v1

    .end local v1    # "buttonY":I
    .local v3, "iSize":I
    .local v9, "buttonY":I
    :goto_366
    if-ge v2, v3, :cond_3a2

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    if-ge v9, v1, :cond_39f

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    move v9, v1

    .line 107
    :cond_39f
    add-int/lit8 v2, v2, 0x1

    goto :goto_366

    .line 113
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_3a2
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v2, v14, 0x2

    sub-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 115
    .local v8, "tMenuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v12, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$4;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lawID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Law"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v20, 0x1

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v3, v12, 0x2

    sub-int v3, v1, v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move v4, v14

    move v5, v12

    move v6, v8

    move-object v7, v0

    move/from16 v18, v8

    .end local v8    # "tMenuHeight":I
    .local v18, "tMenuHeight":I
    move/from16 v8, v16

    move/from16 v16, v9

    .end local v9    # "buttonY":I
    .local v16, "buttonY":I
    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 129
    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->drawScrollPositionAlways:Z

    .line 130
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 134
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 135
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 138
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 139
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 140
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 142
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 143
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 147
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 148
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;->lTime:J

    .line 149
    return-void
.end method
