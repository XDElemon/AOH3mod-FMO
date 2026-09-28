.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;
.source "InGame_Budget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I

    .line 1627
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 20

    .line 1662
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .local v1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    .local v2, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    iget-object v3, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceMaintenance()F

    move-result v3

    .line 1666
    .local v3, "fGold":F
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ProvinceMaintenance"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ": "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-"

    const-string v15, ""

    const/16 v16, 0x0

    cmpl-float v6, v3, v16

    if-lez v6, :cond_46

    move-object v6, v14

    goto :goto_47

    :cond_46
    move-object v6, v15

    :goto_47
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v11, 0x64

    invoke-static {v3, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v12

    move/from16 v18, v3

    const/16 v3, 0x64

    .end local v3    # "fGold":F
    .local v18, "fGold":F
    move-object/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1667
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1670
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1671
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1672
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1674
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    .local v4, "tProvinces":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_94
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_cf

    .line 1677
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget-object v7, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceMaintenance()F

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;IF)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 1680
    .end local v5    # "i":I
    :cond_cf
    const/4 v5, 0x0

    .line 1682
    .local v5, "tAdded":I
    :goto_d0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1b4

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tAdded":I
    .local v6, "tAdded":I
    const/16 v7, 0xa

    if-ge v5, v7, :cond_1b3

    .line 1683
    const/4 v5, 0x0

    .line 1685
    .local v5, "bestID":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_e3
    if-lez v7, :cond_fd

    .line 1686
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v8, v8, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_fa

    .line 1687
    move v5, v7

    .line 1685
    :cond_fa
    add-int/lit8 v7, v7, -0x1

    goto :goto_e3

    .line 1691
    .end local v7    # "i":I
    :cond_fd
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    cmpl-float v7, v7, v16

    if-nez v7, :cond_10b

    .line 1692
    goto/16 :goto_1b3

    .line 1695
    :cond_10b
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->iProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_172

    move-object v9, v14

    goto :goto_173

    :cond_172
    move-object v9, v15

    :goto_173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    invoke-static {v9, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1700
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1702
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1703
    .end local v5    # "bestID":I
    move v5, v6

    goto/16 :goto_d0

    .line 1705
    :cond_1b3
    :goto_1b3
    move v5, v6

    .end local v6    # "tAdded":I
    .local v5, "tAdded":I
    :cond_1b4
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1706
    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 7

    .line 1630
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->lastValue:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceMaintenance()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_aa

    .line 1631
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceMaintenance()F

    move-result v0

    .line 1633
    .local v0, "fVal":F
    const/high16 v1, 0x447a0000    # 1000.0f

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5a

    .line 1634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v5, v0, v4

    if-lez v5, :cond_33

    goto :goto_34

    :cond_33
    move-object v2, v3

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->setText(Ljava/lang/String;)V

    goto :goto_7a

    .line 1637
    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v5, v0, v4

    if-lez v5, :cond_64

    goto :goto_65

    :cond_64
    move-object v2, v3

    :goto_65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->setText(Ljava/lang/String;)V

    .line 1640
    :goto_7a
    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->lastValue:F

    .line 1642
    cmpl-float v1, v0, v4

    if-nez v1, :cond_8d

    .line 1643
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 1644
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 1645
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_aa

    .line 1646
    :cond_8d
    cmpl-float v1, v0, v4

    if-lez v1, :cond_9e

    .line 1647
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 1648
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 1649
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_aa

    .line 1651
    :cond_9e
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 1652
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 1653
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    .line 1657
    .end local v0    # "fVal":F
    :cond_aa
    :goto_aa
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
