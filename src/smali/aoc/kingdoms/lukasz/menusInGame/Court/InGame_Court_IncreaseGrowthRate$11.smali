.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_GrowthRate;
.source "InGame_Court_IncreaseGrowthRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;Ljava/lang/String;IIIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I
    .param p9, "id"    # I

    .line 350
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_GrowthRate;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 9

    .line 353
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_f0

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "out":Z
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    const/16 v2, 0x64

    const-string v3, ": "

    const-string v4, "InsufficientGold"

    if-nez v1, :cond_6b

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v1, :cond_22

    goto :goto_6b

    .line 369
    :cond_22
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_23
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;->CLICK_X_TIMES:I

    if-ge v1, v5, :cond_b4

    .line 370
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince()Z

    move-result v5

    if-nez v5, :cond_60

    .line 371
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v4

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v5, v3, v2, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 372
    goto :goto_b4

    .line 375
    :cond_60
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_GrowthRate(I)V

    .line 376
    const/4 v0, 0x1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 357
    .end local v1    # "u":I
    :cond_6b
    :goto_6b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6c
    const/4 v5, 0x5

    if-ge v1, v5, :cond_b3

    .line 358
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince()Z

    move-result v5

    if-nez v5, :cond_a8

    .line 359
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v4

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v5, v3, v2, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    goto :goto_b3

    .line 363
    :cond_a8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_GrowthRate(I)V

    .line 364
    const/4 v0, 0x1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .end local v1    # "i":I
    :cond_b3
    :goto_b3
    nop

    .line 381
    :cond_b4
    :goto_b4
    if-eqz v0, :cond_f0

    .line 382
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;->getMenuPosX()I

    move-result v3

    add-int v4, v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate;->getMenuPosY()I

    move-result v3

    add-int v5, v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getHeight()I

    move-result v7

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;IIII)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 390
    .end local v0    # "out":Z
    :cond_f0
    return-void
.end method

.method public buildElementHover()V
    .registers 4

    .line 394
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->getCurrent()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverPopulationGrowth(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseGrowthRate$11;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 395
    return-void
.end method
