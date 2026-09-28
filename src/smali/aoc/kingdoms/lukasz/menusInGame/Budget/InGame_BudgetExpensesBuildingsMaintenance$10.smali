.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;
.source "InGame_BudgetExpensesBuildingsMaintenance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "id"    # I

    .line 407
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 8

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->id:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBuildingsMaintenance()F

    move-result v2

    .line 440
    .local v2, "fGold":F
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "BuildingsMaintenance"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_48

    const-string v5, "-"

    goto :goto_4a

    :cond_48
    const-string v5, ""

    :goto_4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle;-><init>(III)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 446
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 447
    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 5

    .line 410
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->lastValue:F

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBuildingsMaintenance()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6e

    .line 411
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBuildingsMaintenance()F

    move-result v0

    .line 412
    .local v0, "fVal":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_27

    const-string v3, "-"

    goto :goto_29

    :cond_27
    const-string v3, ""

    :goto_29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->setText(Ljava/lang/String;)V

    .line 413
    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->lastValue:F

    .line 415
    cmpl-float v1, v0, v2

    if-nez v1, :cond_51

    .line 416
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 417
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 418
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6e

    .line 420
    :cond_51
    cmpl-float v1, v0, v2

    if-lez v1, :cond_62

    .line 421
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 422
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 423
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6e

    .line 425
    :cond_62
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 426
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 427
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$10;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    .line 431
    .end local v0    # "fVal":F
    :cond_6e
    :goto_6e
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
