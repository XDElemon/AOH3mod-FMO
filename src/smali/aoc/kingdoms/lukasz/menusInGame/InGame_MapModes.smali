.class public Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_MapModes.java"


# static fields
.field public static maxWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->maxWidth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .line 40
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v9, v1, v2

    .line 44
    .local v9, "nY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 46
    .local v1, "nX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->mapModesCivs:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    .line 47
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    .line 48
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    .line 49
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    .line 50
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->mapModesTerrain:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    .line 51
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    .line 54
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    array-length v3, v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v3, :cond_1df

    .line 55
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-nez v3, :cond_4d

    .line 56
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$1;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesCivs:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 82
    :cond_4d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-ne v3, v6, :cond_61

    .line 83
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$2;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesTerrain:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 109
    :cond_61
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-ne v3, v5, :cond_75

    .line 110
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$3;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesGoods:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 136
    :cond_75
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8a

    .line 137
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$4;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 170
    :cond_8a
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-ne v3, v4, :cond_9e

    .line 171
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$5;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 205
    :cond_9e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b3

    .line 206
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$6;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 240
    :cond_b3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c8

    .line 241
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$7;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 267
    :cond_c8
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_dd

    .line 268
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$8;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->government:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 294
    :cond_dd
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_f3

    .line 295
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$9;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesReligion:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 321
    :cond_f3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x9

    if-ne v3, v4, :cond_109

    .line 322
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$10;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->revolutionRisk:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 348
    :cond_109
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_11f

    .line 349
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$11;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesInfrastructure:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 375
    :cond_11f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xb

    if-ne v3, v4, :cond_135

    .line 376
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$12;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->fort:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 409
    :cond_135
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_14b

    .line 410
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$13;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c8

    .line 443
    :cond_14b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_160

    .line 444
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$14;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c8

    .line 470
    :cond_160
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xe

    if-ne v3, v4, :cond_175

    .line 471
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$15;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c8

    .line 497
    :cond_175
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xf

    if-ne v3, v4, :cond_18a

    .line 498
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$16;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->war:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c8

    .line 544
    :cond_18a
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_19f

    .line 545
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$17;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c8

    .line 572
    :cond_19f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1b4

    .line 573
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$18;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defensivePact:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c8

    .line 599
    :cond_1b4
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1c8

    .line 600
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$19;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->nonAggression:I

    invoke-direct {v3, p0, v4, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_1c8
    :goto_1c8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2f

    .line 629
    .end local v2    # "a":I
    :cond_1df
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->ENABLE_PROVINCE_INCOME_MAP_MODE:Z

    if-eqz v2, :cond_204

    .line 630
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$20;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    invoke-direct {v2, p0, v3, v1, v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v10, v1

    goto :goto_205

    .line 629
    :cond_204
    move v10, v1

    .line 671
    .end local v1    # "nX":I
    .local v10, "nX":I
    :goto_205
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    .line 673
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->arrowUpDown:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->arrowUpDown:I

    .line 674
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v1, v2

    .line 671
    const/4 v2, 0x0

    const/16 v4, 0x96

    const/4 v8, 0x1

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 676
    const/4 v1, 0x0

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->drawScrollPositionAlways:Z

    .line 677
    return-void
.end method

.method public static actionDevastation()V
    .registers 2

    .line 769
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 771
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    if-ne v0, v1, :cond_22

    .line 772
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 773
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 775
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 777
    :cond_22
    return-void
.end method

.method public static actionGoods()V
    .registers 2

    .line 725
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 727
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    if-ne v0, v1, :cond_22

    .line 728
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 729
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 731
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 733
    :cond_22
    return-void
.end method

.method public static actionGovernment()V
    .registers 2

    .line 714
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 716
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    if-ne v0, v1, :cond_22

    .line 717
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 718
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 720
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 722
    :cond_22
    return-void
.end method

.method public static actionInfrastructure()V
    .registers 2

    .line 747
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 749
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_22

    .line 750
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 751
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 753
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 755
    :cond_22
    return-void
.end method

.method public static actionLoot()V
    .registers 2

    .line 758
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 760
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    if-ne v0, v1, :cond_22

    .line 761
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 762
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 764
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 766
    :cond_22
    return-void
.end method

.method public static actionReligion()V
    .registers 2

    .line 703
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 705
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    if-ne v0, v1, :cond_22

    .line 706
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 707
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 709
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 711
    :cond_22
    return-void
.end method

.method public static actionUnrest()V
    .registers 2

    .line 736
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 738
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    if-ne v0, v1, :cond_22

    .line 739
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    .line 740
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 742
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    .line 744
    :cond_22
    return-void
.end method

.method public static updateMaxWidth(I)V
    .registers 3
    .param p0, "imgID"    # I

    .line 35
    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->maxWidth:I

    if-le v0, v1, :cond_16

    .line 36
    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->maxWidth:I

    .line 38
    :cond_16
    return-void
.end method


# virtual methods
.method public getMenuPosY()I
    .registers 3

    .line 681
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 686
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisible()Z
    .registers 2

    .line 699
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 691
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 693
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGame()V

    .line 694
    return-void
.end method
