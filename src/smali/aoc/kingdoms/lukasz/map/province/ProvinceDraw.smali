.class public Laoc/kingdoms/lukasz/map/province/ProvinceDraw;
.super Ljava/lang/Object;
.source "ProvinceDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;,
        Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;,
        Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;
    }
.end annotation


# static fields
.field public static FRAME_ID:I = 0x0

.field public static final PROVINCE_ALPHA_TERRAIN:F = 0.55f

.field public static PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

.field public static afFadeOn:Z

.field public static afR2:I

.field public static afSelProv:I

.field public static afSig:I

.field public static biggestCitiesLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;",
            ">;"
        }
    .end annotation
.end field

.field public static diplomacyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;",
            ">;"
        }
    .end annotation
.end field

.field public static drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

.field public static drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

.field public static drawProvincesCiv_HoveredFlagID:I

.field public static iBiggestCitiesLinesSize:I

.field public static iDiplomacyLinesSize:I

.field public static iProvinceDotsSize:I

.field public static iSiegeLinesSize:I

.field public static joinType:Lspace/earlygrey/shapedrawer/JoinType;

.field public static joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

.field public static lineWidth:F

.field public static oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

.field public static progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBar2:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;

.field public static provinceDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;",
            ">;"
        }
    .end annotation
.end field

.field public static siegeLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 71
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v2, 0x3e20a0a1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const v4, 0x3efafafb

    const v5, 0x3f25a5a6

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb4b4b5

    const v4, 0x3f4dcdce

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar2:Lcom/badlogic/gdx/graphics/Color;

    .line 1256
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 1489
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f48c8c9

    const v6, 0x3f52d2d3

    invoke-direct {v1, v6, v6, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    .line 1490
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f66e6e7

    invoke-direct {v1, v5, v5, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 1492
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f6dedee

    const v6, 0x3f20a0a1

    const v7, 0x3f169697

    invoke-direct {v1, v5, v6, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    .line 1493
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3e48c8c9

    invoke-direct {v1, v6, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    .line 1494
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3edcdcdd

    const v8, 0x3f048485

    const v9, 0x3f3ebebf

    invoke-direct {v1, v8, v9, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 1495
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    invoke-direct {v1, v8, v5, v8, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    .line 1497
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f6bebec

    invoke-direct {v1, v8, v6, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    .line 1498
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v8, v8, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    .line 1499
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f73f3f4

    const v10, 0x3f5fdfe0

    const v11, 0x3e5cdcdd

    invoke-direct {v1, v11, v4, v10, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    .line 1500
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v4, v4, v8, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

    .line 1501
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e70f0f1

    invoke-direct {v1, v9, v4, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

    .line 1502
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3ef0f0f1

    invoke-direct {v1, v7, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

    .line 1503
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3db0b0b1

    const v4, 0x3f0a8a8b

    invoke-direct {v1, v2, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    .line 1504
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e74f4f5

    const v4, 0x3f3fbfc0

    const v6, 0x3f008081

    invoke-direct {v1, v6, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    .line 1505
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

    .line 2329
    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2330
    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2332
    sput v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2502
    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$34;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$34;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    .line 2543
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    .line 2671
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    .line 2672
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    .line 2741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    .line 2742
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2882
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    .line 2883
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I

    .line 2977
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    .line 2978
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V
    .registers 5
    .param p0, "iProvinceA"    # I
    .param p1, "iProvinceB"    # I
    .param p2, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 2887
    if-ltz p0, :cond_73

    if-gez p1, :cond_5

    goto :goto_73

    .line 2891
    :cond_5
    :try_start_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6d

    .line 2892
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2d
    if-ltz v0, :cond_4f

    .line 2893
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->getFromProvinceID()I

    move-result v1

    if-ne v1, p0, :cond_4c

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->getToProvinceLastID()I

    move-result v1

    if-ne v1, p1, :cond_4c

    .line 2894
    return-void

    .line 2892
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 2898
    .end local v0    # "i":I
    :cond_4f
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$39;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-direct {v0, v1, p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$39;-><init>(IIILcom/badlogic/gdx/graphics/Color;)V

    .line 2914
    .local v0, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iRouteSize:I

    if-lez v1, :cond_65

    .line 2915
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2918
    :cond_65
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6d} :catch_6e

    .line 2922
    .end local v0    # "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    :cond_6d
    goto :goto_72

    .line 2920
    :catch_6e
    move-exception v0

    .line 2921
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2923
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_72
    return-void

    .line 2888
    :cond_73
    :goto_73
    return-void
.end method

.method public static final addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V
    .registers 5
    .param p0, "iProvinceA"    # I
    .param p1, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 2982
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 2983
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->iProvinceID:I

    if-ne v1, p0, :cond_28

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->fPerc:F

    const v2, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_28

    .line 2984
    return-void

    .line 2982
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2988
    .end local v0    # "i":I
    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    invoke-direct {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;-><init>(ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2989
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 2992
    goto :goto_42

    .line 2990
    :catch_3e
    move-exception v0

    .line 2991
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2993
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method public static final addProvinceDot_Economy(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 2998
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_ECONOMY:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 2999
    return-void
.end method

.method public static final addProvinceDot_GrowthRate(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 3010
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3011
    return-void
.end method

.method public static final addProvinceDot_Infrastructure(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 3014
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3015
    return-void
.end method

.method public static final addProvinceDot_Manpower(I)V
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 3006
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3007
    return-void
.end method

.method public static final addProvinceDot_TaxEfficiency(I)V
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 3002
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot(ILcom/badlogic/gdx/graphics/Color;)V

    .line 3003
    return-void
.end method

.method public static afdHit(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "afd:hit"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static afdIn()V
    .registers 2

    const-string v0, "afd:in"

    const-string v1, "1"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static afpDone()V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on=1 r2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afR2:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sel="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afSelProv:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "afp:on"

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static afpProbe(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ahp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "afp:st"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static airFadeFBOForce()V
    .registers 3

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afSelProv:I

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afSig:I

    if-eq v0, v2, :cond_19

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afSig:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCES:Z

    if-eqz v1, :cond_19

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesTexture()V

    :cond_19
    return-void
.end method

.method public static airFadePrepare()V
    .registers 12

    const-string v0, "afp:enter"

    const-string v1, "e"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afSelProv:I

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    move v3, v2

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afpProbe(II)V

    if-eqz v2, :cond_97

    if-ltz v1, :cond_97

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_97

    const-string v8, "airhq_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v2

    if-eqz v2, :cond_87

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v3, :cond_8f

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivRange()F

    move-result v10

    const/high16 v11, 0x0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_48

    move v2, v10

    goto :goto_70

    :cond_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_48

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5a
    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v3, :cond_5a

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->combatRadius:F

    cmpl-float v5, v3, v2

    if-lez v5, :cond_5a

    move v2, v3

    goto :goto_5a

    :cond_70
    :goto_70
    mul-float v2, v2, v2

    float-to-int v2, v2

    sput v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afR2:I

    const/4 v2, 0x1

    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afpDone()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airFadeFBOForce()V

    return-void

    :cond_7f
    const-string v0, "afp:afm0"

    const-string v1, "x"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :cond_87
    const-string v0, "afp:nh"

    const-string v1, "x"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :cond_8f
    const-string v0, "afp:na"

    const-string v1, "x"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :cond_97
    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afpProbe(II)V

    const-string v0, "afp:offm"

    const-string v1, "modesel"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a1
    const/4 v2, 0x0

    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    const/4 v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afSelProv:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airFadeFBOForce()V

    return-void
.end method

.method public static airReachFilter(I)Z
    .registers 8
    .param p0, "provID"    # I

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afSelProv:I

    if-gez v1, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    if-ne v1, p0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afR2:I

    if-lez v2, :cond_40

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v5

    sub-int v4, v4, v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    sub-int v5, v5, v6

    mul-int v4, v4, v4

    mul-int v5, v5, v5

    add-int/2addr v5, v4

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afR2:I

    if-gt v5, v2, :cond_47

    invoke-static {p0, v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->arfProbe(III)V

    const/4 v0, 0x1

    return v0

    :cond_40
    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {p0, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->arfProbe(III)V

    const/4 v0, 0x0

    return v0

    :cond_47
    invoke-static {p0, v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->arfProbe(III)V

    const/4 v0, 0x0

    return v0
.end method

.method public static arfProbe(III)V
    .registers 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "p="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " d2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " r2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-gt p1, p2, :cond_22

    const-string v0, " HIT"

    goto :goto_24

    :cond_22
    const-string v0, " NO"

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "arf:chk"

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final buildBiggestCitiesLines(I)V
    .registers 6
    .param p0, "iCivID"    # I

    .line 2747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    .local v0, "lCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2750
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$37;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildBiggestCitiesLines"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$37;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 2760
    return-void
.end method

.method public static final buildBiggestCitiesLines(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2763
    .local p0, "iCivID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2764
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2766
    const/4 v0, 0x0

    .local v0, "k":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "kSize":I
    :goto_d
    if-ge v0, v1, :cond_158

    .line 2767
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_154

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    if-ltz v2, :cond_154

    .line 2768
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_MAX:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_MIN:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_VIEW_BIGGEST_CITIES_LINES_PERC_OF_PROVINCES:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2770
    .local v2, "numOfLines":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2772
    .local v4, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7f
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_d5

    .line 2773
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v7

    if-eq v6, v7, :cond_d2

    .line 2774
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2772
    :cond_d2
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 2778
    .end local v5    # "i":I
    :cond_d5
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d6
    if-ge v5, v2, :cond_151

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_151

    .line 2779
    const/4 v6, 0x0

    .line 2781
    .local v6, "bestID":I
    const/4 v7, 0x1

    .local v7, "j":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "jSize":I
    :goto_e4
    if-ge v7, v8, :cond_110

    .line 2782
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v10

    if-ge v9, v10, :cond_10d

    .line 2783
    move v6, v7

    .line 2781
    :cond_10d
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 2788
    .end local v7    # "j":I
    .end local v8    # "jSize":I
    :cond_110
    :try_start_110
    new-instance v7, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;-><init>(III)V

    .line 2790
    .local v7, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    iget v8, v7, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iRouteSize:I

    if-lez v8, :cond_145

    .line 2791
    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_144} :catch_148

    goto :goto_147

    .line 2793
    :cond_145
    add-int/lit8 v5, v5, -0x1

    .line 2797
    .end local v7    # "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    :goto_147
    goto :goto_14c

    .line 2795
    :catch_148
    move-exception v7

    .line 2796
    .local v7, "ex":Ljava/lang/Exception;
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2798
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_14c
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2778
    .end local v6    # "bestID":I
    add-int/2addr v5, v3

    goto :goto_d6

    .line 2802
    .end local v5    # "i":I
    :cond_151
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2766
    .end local v2    # "numOfLines":I
    .end local v4    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_154
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 2806
    .end local v0    # "k":I
    .end local v1    # "kSize":I
    :cond_158
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2807
    return-void
.end method

.method public static final buildBiggestCitiesLines_Province(II)V
    .registers 4
    .param p0, "iProvinceA"    # I
    .param p1, "iProvinceB"    # I

    .line 2810
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2811
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2813
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$38;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-direct {v0, v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$38;-><init>(III)V

    .line 2829
    .local v0, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->iRouteSize:I

    if-lez v1, :cond_1e

    .line 2830
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2833
    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2834
    return-void
.end method

.method public static final buildSiegeLines(I)V
    .registers 6
    .param p0, "provinceID"    # I

    .line 2675
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->clearSiegeLines()V

    .line 2677
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 2679
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 2680
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_40

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    if-nez v2, :cond_40

    .line 2681
    new-instance v2, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v2, v3, p0, v4}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;-><init>(III)V

    .line 2683
    .local v2, "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2679
    .end local v2    # "nLine":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2687
    .end local v1    # "i":I
    :cond_43
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    .line 2688
    return-void
.end method

.method public static final clearBiggestCities()V
    .registers 1

    .line 2876
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2877
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    .line 2878
    return-void
.end method

.method public static final clearDiplomacyLines()V
    .registers 1

    .line 2971
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2972
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I

    .line 2973
    return-void
.end method

.method public static final clearProvinceDots()V
    .registers 1

    .line 3055
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3056
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I

    .line 3057
    return-void
.end method

.method public static final clearSiegeLines()V
    .registers 1

    .line 2735
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2736
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    .line 2737
    return-void
.end method

.method public static final drawBiggestCitiesLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2837
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I

    if-lez v0, :cond_52

    .line 2838
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_52

    .line 2840
    :try_start_10
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2842
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_16
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_42

    if-ge v0, v1, :cond_2a

    .line 2844
    :try_start_1a
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->update()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_26

    .line 2847
    goto :goto_27

    .line 2845
    :catch_26
    move-exception v1

    .line 2842
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 2851
    .end local v0    # "j":I
    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2b
    :try_start_2b
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iBiggestCitiesLinesSize:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_40

    if-ge v0, v1, :cond_3f

    .line 2853
    :try_start_2f
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->biggestCitiesLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b

    .line 2856
    goto :goto_3c

    .line 2854
    :catch_3b
    move-exception v1

    .line 2851
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2860
    .end local v0    # "j":I
    :cond_3f
    goto :goto_41

    .line 2858
    :catch_40
    move-exception v0

    .line 2863
    :goto_41
    goto :goto_43

    .line 2861
    :catch_42
    move-exception v0

    .line 2866
    :goto_43
    :try_start_43
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2867
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4d} :catch_4e

    .line 2870
    goto :goto_52

    .line 2868
    :catch_4e
    move-exception v0

    .line 2869
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2873
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public static final drawBuildingsInConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 21
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1094
    move-object/from16 v7, p0

    :try_start_2
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x84c0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_270

    .line 1095
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_f
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_4c8

    if-ge v12, v0, :cond_26e

    .line 1097
    :try_start_13
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 1099
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_268

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v1, :cond_268

    .line 1100
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    move v13, v1

    .line 1102
    .local v13, "extraY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v14, v1

    .line 1103
    .local v14, "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v15, v1

    .line 1104
    .local v15, "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v6, v1

    .line 1106
    .local v6, "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1108
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v3

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1109
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1111
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1112
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1113
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    mul-int v4, v4, v13

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1111
    invoke-virtual {v1, v7, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1116
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1118
    nop

    .line 1119
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1120
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int v3, v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1118
    invoke-virtual {v14, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1122
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v16, v1

    .line 1123
    .local v16, "tCenterX":I
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v17, v1

    .line 1125
    .local v17, "tCenterY":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1126
    nop

    .line 1127
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, v16, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1128
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int v3, v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v17, v2

    .line 1126
    invoke-virtual {v6, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1130
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1131
    nop

    .line 1132
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v3, v16, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1133
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    mul-int v2, v2, v13

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v4, v17, v1

    .line 1134
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    sub-float v2, v8, v2

    mul-float v1, v1, v2

    float-to-int v5, v1

    .line 1135
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v18

    .line 1131
    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v19, v6

    .end local v6    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    .local v19, "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1137
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1139
    nop

    .line 1140
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1141
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int v3, v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1139
    invoke-virtual {v15, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_268} :catch_269

    .line 1146
    .end local v0    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v13    # "extraY":I
    .end local v14    # "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v15    # "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v16    # "tCenterX":I
    .end local v17    # "tCenterY":I
    .end local v19    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    :cond_268
    goto :goto_26a

    .line 1144
    :catch_269
    move-exception v0

    .line 1095
    :goto_26a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f

    .end local v12    # "i":I
    :cond_26e
    goto/16 :goto_4c7

    .line 1150
    :cond_270
    const/4 v0, 0x0

    move v12, v0

    .restart local v12    # "i":I
    :goto_272
    :try_start_272
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_274} :catch_4c8

    if-ge v12, v0, :cond_4c7

    .line 1152
    :try_start_276
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 1154
    .restart local v0    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v1, :cond_4c1

    .line 1155
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_288

    const/4 v1, 0x1

    goto :goto_289

    :cond_288
    const/4 v1, 0x0

    :goto_289
    move v13, v1

    .line 1156
    .restart local v13    # "extraY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v14, v1

    .line 1157
    .restart local v14    # "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v15, v1

    .line 1158
    .restart local v15    # "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    move-object v6, v1

    .line 1160
    .restart local v6    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1162
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v3

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1163
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v9}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1165
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1166
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1167
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    mul-int v4, v4, v13

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1165
    invoke-virtual {v1, v7, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1170
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1172
    nop

    .line 1173
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1174
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int v3, v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1172
    invoke-virtual {v14, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1176
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v16, v1

    .line 1177
    .restart local v16    # "tCenterX":I
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move/from16 v17, v1

    .line 1179
    .restart local v17    # "tCenterY":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1180
    nop

    .line 1181
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, v16, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1182
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int v3, v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v17, v2

    .line 1180
    invoke-virtual {v6, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1184
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1185
    nop

    .line 1186
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v3, v16, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1187
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    mul-int v2, v2, v13

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v4, v17, v1

    .line 1188
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    sub-float v2, v8, v2

    mul-float v1, v1, v2

    float-to-int v5, v1

    .line 1189
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v18

    .line 1185
    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v19, v6

    .end local v6    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    .restart local v19    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1191
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1193
    nop

    .line 1194
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1195
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int v3, v3, v13

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1193
    invoke-virtual {v15, v7, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_4c1
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_4c1} :catch_4c2

    .line 1200
    .end local v0    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v13    # "extraY":I
    .end local v14    # "unitsFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v15    # "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    .end local v16    # "tCenterX":I
    .end local v17    # "tCenterY":I
    .end local v19    # "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    :cond_4c1
    goto :goto_4c3

    .line 1198
    :catch_4c2
    move-exception v0

    .line 1150
    :goto_4c3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_272

    .line 1205
    .end local v12    # "i":I
    :cond_4c7
    :goto_4c7
    goto :goto_4c9

    .line 1203
    :catch_4c8
    move-exception v0

    .line 1206
    :goto_4c9
    return-void
.end method

.method public static final drawDiplomacyLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2926
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I

    if-lez v0, :cond_6e

    .line 2929
    :try_start_4
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2930
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 2932
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_60

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_12
    if-ltz v0, :cond_2c

    .line 2934
    :try_start_14
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->update()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    .line 2938
    goto :goto_29

    .line 2935
    :catch_20
    move-exception v1

    .line 2936
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_21
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2937
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_60

    .line 2932
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2942
    .end local v0    # "j":I
    :cond_2c
    :try_start_2c
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2e} :catch_5b

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "j":I
    :goto_30
    if-ltz v0, :cond_52

    .line 2944
    :try_start_32
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2945
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_45} :catch_46

    .line 2950
    :cond_45
    goto :goto_4f

    .line 2947
    :catch_46
    move-exception v1

    .line 2948
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_47
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2949
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2942
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 2953
    .end local v0    # "j":I
    :cond_52
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->diplomacyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iDiplomacyLinesSize:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_5b

    .line 2956
    goto :goto_5f

    .line 2954
    :catch_5b
    move-exception v0

    .line 2955
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    .line 2959
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5f
    goto :goto_64

    .line 2957
    :catch_60
    move-exception v0

    .line 2958
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2962
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_6a

    .line 2965
    goto :goto_6e

    .line 2963
    :catch_6a
    move-exception v0

    .line 2964
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2968
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    return-void
.end method

.method public static final drawMoveUnits_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2583
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2585
    const/4 v0, 0x0

    .line 2588
    .local v0, "drawn":Z
    :try_start_6
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    const/16 v2, 0x3840

    if-lt v1, v2, :cond_16

    .line 2589
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->FRAME_ID:I

    .line 2590
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawMoveUnits_Just_CheckArmies()V

    .line 2593
    :cond_16
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 2594
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v2

    if-lez v2, :cond_42

    .line 2595
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_11c

    if-ge v2, v3, :cond_42

    .line 2597
    :try_start_32
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->update()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e

    .line 2600
    goto :goto_3f

    .line 2598
    :catch_3e
    move-exception v3

    .line 2595
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2593
    .end local v2    # "j":I
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2605
    .end local v1    # "i":I
    :cond_45
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_46
    :try_start_46
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_11c

    if-ge v1, v2, :cond_5e

    .line 2607
    :try_start_4c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->update()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_5a

    .line 2610
    goto :goto_5b

    .line 2608
    :catch_5a
    move-exception v2

    .line 2605
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 2616
    .end local v1    # "j":I
    :cond_5e
    :try_start_5e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2617
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2619
    .local v3, "civID":I
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v4, v5, :cond_b2

    .line 2620
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_97
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v5
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9f} :catch_11a

    if-ge v4, v5, :cond_b2

    .line 2622
    :try_start_a1
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ac} :catch_ae

    .line 2623
    const/4 v0, 0x1

    .line 2626
    goto :goto_af

    .line 2624
    :catch_ae
    move-exception v5

    .line 2620
    :goto_af
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 2629
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    .end local v4    # "j":I
    :cond_b2
    goto :goto_72

    .line 2631
    .end local v3    # "civID":I
    :cond_b3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b4
    :try_start_b4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v1, v2, :cond_f5

    .line 2632
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    .line 2634
    .local v2, "civID":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_d7
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v4
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_df} :catch_11a

    if-ge v3, v4, :cond_f2

    .line 2636
    :try_start_e1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ec} :catch_ee

    .line 2637
    const/4 v0, 0x1

    .line 2640
    goto :goto_ef

    .line 2638
    :catch_ee
    move-exception v4

    .line 2634
    :goto_ef
    add-int/lit8 v3, v3, 0x1

    goto :goto_d7

    .line 2631
    .end local v3    # "j":I
    :cond_f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 2644
    .end local v1    # "i":I
    .end local v2    # "civID":I
    :cond_f5
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_f6
    :try_start_f6
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v2
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_102} :catch_11a

    if-ge v1, v2, :cond_119

    .line 2646
    :try_start_104
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_113} :catch_115

    .line 2647
    const/4 v0, 0x1

    .line 2650
    goto :goto_116

    .line 2648
    :catch_115
    move-exception v2

    .line 2644
    :goto_116
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 2654
    .end local v1    # "j":I
    :cond_119
    goto :goto_11b

    .line 2652
    :catch_11a
    move-exception v1

    .line 2657
    :goto_11b
    goto :goto_11d

    .line 2655
    :catch_11c
    move-exception v1

    .line 2659
    :goto_11d
    if-eqz v0, :cond_12e

    .line 2661
    :try_start_11f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2662
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_129} :catch_12a

    .line 2665
    goto :goto_12e

    .line 2663
    :catch_12a
    move-exception v1

    .line 2664
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2667
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_12e
    :goto_12e
    return-void
.end method

.method public static final drawMoveUnits_Just_CheckArmies()V
    .registers 6

    .line 2549
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2550
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2552
    .local v2, "civID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_6e

    .line 2553
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_42
    if-ltz v3, :cond_6e

    .line 2554
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    if-nez v4, :cond_6b

    .line 2555
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 2553
    :cond_6b
    add-int/lit8 v3, v3, -0x1

    goto :goto_42

    .line 2559
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;>;"
    .end local v3    # "j":I
    :cond_6e
    goto :goto_14

    .line 2561
    .end local v2    # "civID":I
    :cond_6f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_70
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v0, v1, :cond_cb

    .line 2562
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    .line 2564
    .local v1, "civID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_9c
    if-ltz v2, :cond_c8

    .line 2565
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-nez v3, :cond_c5

    .line 2566
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 2564
    :cond_c5
    add-int/lit8 v2, v2, -0x1

    goto :goto_9c

    .line 2561
    .end local v2    # "j":I
    :cond_c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 2571
    .end local v0    # "i":I
    .end local v1    # "civID":I
    :cond_cb
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_d9
    if-ltz v0, :cond_116

    .line 2572
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    if-nez v1, :cond_113

    .line 2573
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 2574
    const-string v1, "REMOVED"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_113} :catch_117

    .line 2571
    :cond_113
    add-int/lit8 v0, v0, -0x1

    goto :goto_d9

    .line 2579
    .end local v0    # "j":I
    :cond_116
    goto :goto_11b

    .line 2577
    :catch_117
    move-exception v0

    .line 2578
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2580
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11b
    return-void
.end method

.method public static final drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2265
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_78

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    if-lez v0, :cond_78

    .line 2266
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2268
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 2270
    .local v0, "fProvinceAlpha":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_45

    .line 2271
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    if-ne v2, v3, :cond_42

    .line 2272
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2273
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2270
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2277
    .end local v1    # "i":I
    :cond_45
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_46
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_73

    .line 2278
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    if-ne v2, v3, :cond_70

    .line 2279
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2280
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2277
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 2284
    .end local v1    # "i":I
    :cond_73
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2287
    .end local v0    # "fProvinceAlpha":F
    :cond_78
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_88

    .line 2288
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_8f

    .line 2291
    :cond_88
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    if-eqz v0, :cond_8f

    .line 2292
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2295
    :cond_8f
    :goto_8f
    return-void
.end method

.method private static final drawOccupiedProvinces_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2299
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_OCCUPIED_ALPHA_EXTRA:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    mul-float v0, v0, v1

    .line 2301
    .local v0, "fAlpha":F
    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_78

    .line 2302
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    mul-float v2, v2, v3

    const v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    const-string v3, "u_time"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 2304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_52

    .line 2305
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 2306
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2304
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 2310
    .end local v1    # "i":I
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_53
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_73

    .line 2311
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2312
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 2310
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 2316
    .end local v1    # "i":I
    :cond_73
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2318
    :cond_78
    return-void
.end method

.method public static final drawProvinceDots_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 3020
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I

    if-lez v0, :cond_57

    .line 3021
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_57

    .line 3023
    :try_start_10
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 3024
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_49

    .line 3027
    :try_start_1a
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_44

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_1e
    if-ltz v0, :cond_3b

    .line 3029
    :try_start_20
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationDot;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3030
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_34

    .line 3034
    :cond_33
    goto :goto_38

    .line 3032
    :catch_34
    move-exception v1

    .line 3033
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_35
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3027
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 3037
    .end local v0    # "j":I
    :cond_3b
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->provinceDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iProvinceDotsSize:I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_43} :catch_44

    .line 3040
    goto :goto_48

    .line 3038
    :catch_44
    move-exception v0

    .line 3039
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_45
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 3043
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_48
    goto :goto_4d

    .line 3041
    :catch_49
    move-exception v0

    .line 3042
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3046
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4d
    :try_start_4d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_53

    .line 3049
    goto :goto_57

    .line 3047
    :catch_53
    move-exception v0

    .line 3048
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3052
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return-void
.end method

.method public static final drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-string v0, "um:dp1"

    const-string v1, "e"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :try_start_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 177
    goto :goto_f

    .line 175
    :catch_b
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 185
    :try_start_14
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateAlpha()V

    .line 186
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airFadePrepare()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_22

    .line 189
    goto :goto_26

    .line 187
    :catch_22
    move-exception v0

    .line 188
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 195
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 196
    return-void
.end method

.method public static final drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "scale"    # F
    .param p4, "nAlpha"    # I

    .line 2455
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airFadePrepare()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 2456
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 2457
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    sget-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    if-eqz v1, :cond_2b

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airReachFilter(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    :cond_2b
    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_53

    .line 2459
    :cond_2f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_53

    .line 2460
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    sget-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    if-eqz v1, :cond_50

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airReachFilter(I)Z

    move-result v1

    if-eqz v1, :cond_50

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    :cond_50
    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 2455
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2464
    .end local v0    # "i":I
    :cond_56
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2465
    return-void
.end method

.method public static final drawProvincesBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2371
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-lez v0, :cond_87

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_87

    .line 2372
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 2374
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesBorder_Prepare()V

    .line 2377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    :try_start_1d
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_33

    .line 2378
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V

    .line 2377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2381
    .end local v0    # "i":I
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_34
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_4a

    .line 2382
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V

    .line 2381
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 2385
    .end local v0    # "i":I
    :cond_4a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4b
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_61

    .line 2386
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V

    .line 2385
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 2389
    .end local v0    # "i":I
    :cond_61
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_62
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_78

    .line 2390
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_75} :catch_79

    .line 2389
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 2394
    .end local v0    # "i":I
    :cond_78
    goto :goto_7d

    .line 2392
    :catch_79
    move-exception v0

    .line 2393
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2396
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2397
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2399
    :cond_87
    return-void
.end method

.method public static final drawProvincesBorder_Prepare()V
    .registers 5

    .line 2335
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2337
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_21

    .line 2338
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2341
    :cond_21
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    add-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->lineWidth:F

    .line 2343
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    .line 2344
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->MAX_BORDER_WIDTH:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->MIN_BORDER_WIDTH:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->MAX_BORDER_WIDTH:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    add-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    .line 2345
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->BORDER_WIDTH_DIVIDE:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    add-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    .line 2348
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_NONE_NONE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7e

    .line 2349
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2350
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2352
    :cond_7e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_NONE_POINTY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_95

    .line 2353
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->NONE:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2354
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2356
    :cond_95
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_POINTY_POINTY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_ac

    .line 2357
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2358
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2360
    :cond_ac
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->SCALE_POINTY_SMOOTH:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c3

    .line 2361
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->POINTY:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2362
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    goto :goto_cb

    .line 2365
    :cond_c3
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2366
    sget-object v0, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    .line 2368
    :goto_cb
    return-void
.end method

.method protected static final drawProvincesInMapEditor_Connections(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2404
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_20

    .line 2406
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2405
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2409
    .end local v0    # "i":I
    :cond_20
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2411
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2c
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_95

    .line 2412
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_31
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v3

    if-ge v1, v3, :cond_61

    .line 2413
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pix2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2412
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 2416
    .end local v1    # "j":I
    :cond_61
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_62
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySeaSize()I

    move-result v3

    if-ge v1, v3, :cond_92

    .line 2417
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2416
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 2411
    .end local v1    # "j":I
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 2421
    .end local v0    # "i":I
    :cond_95
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_96
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_109

    .line 2422
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_9b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySeaSize()I

    move-result v3

    if-ge v1, v3, :cond_cb

    .line 2423
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2422
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 2426
    .end local v1    # "j":I
    :cond_cb
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2428
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_d6
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySeaSize()I

    move-result v3

    if-ge v1, v3, :cond_106

    .line 2429
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 2428
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 2421
    .end local v1    # "j":I
    :cond_106
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 2432
    .end local v0    # "i":I
    :cond_109
    return-void
.end method

.method private static final drawProvincesInMapEditor_Connections_Line(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nImageID"    # I
    .param p2, "fromProvinceID"    # I
    .param p3, "toProvinceID"    # I

    .line 2435
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2436
    return-void

    .line 2439
    :cond_b
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v1, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v2, v3

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2440
    .local v0, "iWidth":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double v1, v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 2442
    .local v1, "fAngle":F
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    .line 2443
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    add-int/2addr v4, v3

    .line 2444
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    add-int/2addr v5, v3

    .line 2447
    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    .line 2442
    const/4 v9, 0x0

    move-object v3, p0

    move v6, v0

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 2449
    return-void
.end method

.method public static final drawProvinces_Alliances(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1740
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1741
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 1743
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1745
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a4

    .line 1746
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_a0

    .line 1747
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_52

    .line 1748
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_95

    .line 1750
    :cond_52
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_81

    .line 1751
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_95

    .line 1754
    :cond_81
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1757
    :goto_95
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1745
    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 1761
    .end local v2    # "i":I
    :cond_a4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a5
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_130

    .line 1762
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_12c

    .line 1763
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_de

    .line 1764
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_121

    .line 1766
    :cond_de
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10d

    .line 1767
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_121

    .line 1770
    :cond_10d
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1773
    :goto_121
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1761
    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a5

    .line 1777
    .end local v2    # "i":I
    :cond_130
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1778
    return-void
.end method

.method public static final drawProvinces_Colonize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1904
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1905
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 1907
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1909
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e2

    .line 1910
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_85

    .line 1911
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_82

    .line 1912
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_63

    .line 1913
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_77

    .line 1916
    :cond_63
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1919
    :goto_77
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1910
    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1923
    .end local v2    # "i":I
    :cond_85
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_86
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_e0

    .line 1924
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_dd

    .line 1925
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_be

    .line 1926
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_d2

    .line 1929
    :cond_be
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1932
    :goto_d2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1923
    :cond_dd
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .end local v2    # "i":I
    :cond_e0
    goto/16 :goto_198

    .line 1937
    :cond_e2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e3
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_13d

    .line 1938
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_13a

    .line 1939
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_11b

    .line 1940
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_12f

    .line 1943
    :cond_11b
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1946
    :goto_12f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1937
    :cond_13a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    .line 1950
    .end local v2    # "i":I
    :cond_13d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13e
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_198

    .line 1951
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_195

    .line 1952
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_176

    .line 1953
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_18a

    .line 1956
    :cond_176
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1959
    :goto_18a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1950
    :cond_195
    add-int/lit8 v2, v2, 0x1

    goto :goto_13e

    .line 1965
    .end local v2    # "i":I
    :cond_198
    :goto_198
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1966
    return-void
.end method

.method public static final drawProvinces_CurrentWars(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1699
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1700
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 1702
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1704
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a2

    .line 1705
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9e

    .line 1706
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_52

    .line 1707
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_93

    .line 1709
    :cond_52
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 1710
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_93

    .line 1713
    :cond_7f
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1716
    :goto_93
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1704
    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 1720
    .end local v2    # "i":I
    :cond_a2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a3
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_12c

    .line 1721
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_128

    .line 1722
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_dc

    .line 1723
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11d

    .line 1725
    :cond_dc
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 1726
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11d

    .line 1729
    :cond_109
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1732
    :goto_11d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1720
    :cond_128
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a3

    .line 1736
    .end local v2    # "i":I
    :cond_12c
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1737
    return-void
.end method

.method public static final drawProvinces_DeclareWar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1646
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1647
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 1649
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1651
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_ed

    .line 1652
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_e9

    .line 1653
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_53

    .line 1654
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_de

    .line 1656
    :cond_53
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->iCivID:I

    if-ne v3, v4, :cond_78

    .line 1657
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_de

    .line 1659
    :cond_78
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_a1

    .line 1660
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_de

    .line 1662
    :cond_a1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_ca

    .line 1663
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_de

    .line 1666
    :cond_ca
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1669
    :goto_de
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1651
    :cond_e9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 1673
    .end local v2    # "i":I
    :cond_ed
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ee
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_1c2

    .line 1674
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_1be

    .line 1675
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_128

    .line 1676
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_1b3

    .line 1678
    :cond_128
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->iCivID:I

    if-ne v3, v4, :cond_14d

    .line 1679
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1b3

    .line 1681
    :cond_14d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_176

    .line 1682
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1b3

    .line 1684
    :cond_176
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_19f

    .line 1685
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1b3

    .line 1688
    :cond_19f
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1691
    :goto_1b3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1673
    :cond_1be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_ee

    .line 1695
    .end local v2    # "i":I
    :cond_1c2
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1696
    return-void
.end method

.method public static final drawProvinces_DefensivePacts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1781
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1782
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 1784
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1786
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a4

    .line 1787
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_a0

    .line 1788
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_52

    .line 1789
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_95

    .line 1791
    :cond_52
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_81

    .line 1792
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_95

    .line 1795
    :cond_81
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1798
    :goto_95
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1786
    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 1802
    .end local v2    # "i":I
    :cond_a4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a5
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_130

    .line 1803
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_12c

    .line 1804
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_de

    .line 1805
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_121

    .line 1807
    :cond_de
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10d

    .line 1808
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_121

    .line 1811
    :cond_10d
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1814
    :goto_121
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1802
    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a5

    .line 1818
    .end local v2    # "i":I
    :cond_130
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1819
    return-void
.end method

.method public static final drawProvinces_Diplomacy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1510
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1512
    .local v0, "fProvinceAlpha2":F
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    if-eqz v1, :cond_64

    .line 1513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_37

    .line 1514
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v2, v3, :cond_34

    .line 1515
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1513
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1519
    .end local v1    # "i":I
    :cond_37
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_38
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_62

    .line 1520
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v2, v3, :cond_5f

    .line 1521
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1519
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .end local v1    # "i":I
    :cond_62
    goto/16 :goto_120

    .line 1526
    :cond_64
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1528
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_68
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_c2

    .line 1529
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_bf

    .line 1530
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v6, v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1531
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1528
    :cond_bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1535
    .end local v1    # "i":I
    :cond_c2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c3
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_11d

    .line 1536
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_11a

    .line 1537
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v6, v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1538
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1535
    :cond_11a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c3

    .line 1542
    .end local v1    # "i":I
    :cond_11d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1544
    :goto_120
    return-void
.end method

.method public static final drawProvinces_DiplomacyRelations(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1579
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1580
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    .line 1582
    .local v1, "fProvinceAlpha2":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1584
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 1586
    .local v2, "nActiveCivID":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const/high16 v5, 0x40400000    # 3.0f

    if-ge v3, v4, :cond_dc

    .line 1587
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_d8

    .line 1588
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v2, :cond_51

    .line 1589
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_cd

    .line 1591
    :cond_51
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1592
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_cd

    .line 1597
    :cond_78
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    float-to-int v4, v4

    .line 1599
    .local v4, "tempRelation":I
    if-nez v4, :cond_a8

    .line 1600
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    div-float v5, v1, v5

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_cd

    .line 1602
    :cond_a8
    if-lez v4, :cond_bb

    .line 1603
    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    float-to-int v7, v7

    invoke-static {v5, v6, v4, v7, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_cd

    .line 1606
    :cond_bb
    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v7, v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v8, v8

    float-to-int v8, v8

    invoke-static {v5, v6, v7, v8, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1610
    .end local v4    # "tempRelation":I
    :goto_cd
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1586
    :cond_d8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    .line 1614
    .end local v3    # "i":I
    :cond_dc
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_dd
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v3, v4, :cond_1a1

    .line 1615
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_19d

    .line 1616
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v2, :cond_116

    .line 1617
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_192

    .line 1619
    :cond_116
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 1620
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v6, v7, v8, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_192

    .line 1625
    :cond_13d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    float-to-int v4, v4

    .line 1627
    .restart local v4    # "tempRelation":I
    if-nez v4, :cond_16d

    .line 1628
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    div-float v10, v1, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_192

    .line 1630
    :cond_16d
    if-lez v4, :cond_180

    .line 1631
    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    float-to-int v8, v8

    invoke-static {v6, v7, v4, v8, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_192

    .line 1634
    :cond_180
    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v8, v4

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v9, v9

    float-to-int v9, v9

    invoke-static {v6, v7, v8, v9, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1638
    .end local v4    # "tempRelation":I
    :goto_192
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1614
    :cond_19d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_dd

    .line 1642
    .end local v3    # "i":I
    :cond_1a1
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1643
    return-void
.end method

.method public static final drawProvinces_Diplomacy_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1547
    sget v0, Laoc/kingdoms/lukasz/menu/Colors;->PROVINCE_ALPHA_POPULATION:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1548
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    .line 1550
    .local v1, "fProvinceAlpha2":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1552
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_ae

    .line 1553
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_aa

    .line 1554
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v3, v4, :cond_65

    .line 1555
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9f

    .line 1557
    :cond_65
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1559
    :goto_9f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1552
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 1563
    .end local v2    # "i":I
    :cond_ae
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_af
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_147

    .line 1564
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_143

    .line 1565
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v3, v4, :cond_fe

    .line 1566
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_138

    .line 1568
    :cond_fe
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1571
    :goto_138
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1563
    :cond_143
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_af

    .line 1575
    .end local v2    # "i":I
    :cond_147
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1576
    return-void
.end method

.method public static final drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "scale"    # F
    .param p4, "nAlpha"    # I

    .line 2482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 2483
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 2484
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->draw_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_48

    .line 2486
    :cond_1e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_48

    .line 2487
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getMetProvince(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2488
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    sget-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    if-eqz v1, :cond_45

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airReachFilter(I)Z

    move-result v1

    if-eqz v1, :cond_45

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    :cond_45
    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 2482
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2493
    .end local v0    # "i":I
    :cond_4b
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2494
    return-void
.end method

.method public static final drawProvinces_FormCiv(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1969
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1970
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    .line 1972
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1975
    :try_start_18
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;->formCivID:I

    if-ltz v2, :cond_14e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;->formCivID:I

    if-le v2, v3, :cond_14e

    .line 1976
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_bb

    .line 1977
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_b7

    .line 1978
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->drawInMapMode:Z

    if-eqz v3, :cond_7a

    .line 1979
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_65

    .line 1980
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_ac

    .line 1983
    :cond_65
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_ac

    .line 1986
    :cond_7a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_98

    .line 1987
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_ac

    .line 1990
    :cond_98
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1993
    :goto_ac
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1976
    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_29

    .line 1997
    .end local v2    # "i":I
    :cond_bb
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_bc
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_14e

    .line 1998
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_14a

    .line 1999
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->drawInMapMode:Z

    if-eqz v3, :cond_10d

    .line 2000
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_f8

    .line 2001
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_13f

    .line 2004
    :cond_f8
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_13f

    .line 2007
    :cond_10d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_12b

    .line 2008
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_13f

    .line 2011
    :cond_12b
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2014
    :goto_13f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_14a} :catch_14f

    .line 1997
    :cond_14a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_bc

    .line 2020
    .end local v2    # "i":I
    :cond_14e
    goto :goto_153

    .line 2018
    :catch_14f
    move-exception v2

    .line 2019
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2022
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_153
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2023
    return-void
.end method

.method public static final drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "scale"    # F
    .param p4, "nAlpha"    # I

    .line 2468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 2469
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 2470
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    sget-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->afFadeOn:Z

    if-eqz v1, :cond_28

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->airReachFilter(I)Z

    move-result v1

    if-eqz v1, :cond_28

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    :cond_28
    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 2468
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2477
    .end local v0    # "i":I
    :cond_2e
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2478
    return-void
.end method

.method public static final drawProvinces_NonAggressionPacts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1822
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1823
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 1825
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1827
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a4

    .line 1828
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_a0

    .line 1829
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_52

    .line 1830
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_95

    .line 1832
    :cond_52
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_81

    .line 1833
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_95

    .line 1836
    :cond_81
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1839
    :goto_95
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1827
    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 1843
    .end local v2    # "i":I
    :cond_a4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a5
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_130

    .line 1844
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_12c

    .line 1845
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_de

    .line 1846
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_121

    .line 1848
    :cond_de
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10d

    .line 1849
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_NON_AGGRESSION_PACT:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_121

    .line 1852
    :cond_10d
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1855
    :goto_121
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1843
    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a5

    .line 1859
    .end local v2    # "i":I
    :cond_130
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1860
    return-void
.end method

.method public static final drawProvinces_Nuke(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1863
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1864
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 1866
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1868
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a3

    .line 1869
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9f

    .line 1870
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_52

    .line 1871
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_94

    .line 1873
    :cond_52
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 1874
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_94

    .line 1877
    :cond_80
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1880
    :goto_94
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1868
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 1884
    .end local v2    # "i":I
    :cond_a3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a4
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_12e

    .line 1885
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_12a

    .line 1886
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_dd

    .line 1887
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11f

    .line 1889
    :cond_dd
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 1890
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11f

    .line 1893
    :cond_10b
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1896
    :goto_11f
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1884
    :cond_12a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a4

    .line 1900
    .end local v2    # "i":I
    :cond_12e
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1901
    return-void
.end method

.method public static final drawProvinces_Peace(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2116
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 2117
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 2119
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_c2

    .line 2122
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_be

    .line 2123
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_9f

    .line 2124
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_6b

    .line 2125
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b3

    .line 2128
    :cond_6b
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_87

    .line 2129
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b3

    .line 2132
    :cond_87
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_b3

    .line 2137
    :cond_9f
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2140
    :goto_b3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2121
    :cond_be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 2144
    .end local v2    # "i":I
    :cond_c2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c3
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_16c

    .line 2145
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_168

    .line 2146
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_149

    .line 2147
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_115

    .line 2148
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_15d

    .line 2151
    :cond_115
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_131

    .line 2152
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_15d

    .line 2155
    :cond_131
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_15d

    .line 2160
    :cond_149
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2163
    :goto_15d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2144
    :cond_168
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c3

    .line 2168
    .end local v2    # "i":I
    :cond_16c
    :try_start_16c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_178
    if-ltz v2, :cond_1c2

    .line 2169
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 2170
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2171
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_1bf} :catch_1c3

    .line 2168
    :cond_1bf
    add-int/lit8 v2, v2, -0x1

    goto :goto_178

    .line 2176
    .end local v2    # "i":I
    :cond_1c2
    goto :goto_1c7

    .line 2174
    :catch_1c3
    move-exception v2

    .line 2175
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2179
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1c7
    return-void
.end method

.method public static final drawProvinces_ReleaseVassal(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2182
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 2183
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 2185
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2187
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_93

    .line 2188
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_90

    .line 2189
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_71

    .line 2190
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_59

    .line 2191
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_85

    .line 2194
    :cond_59
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_85

    .line 2198
    :cond_71
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2201
    :goto_85
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2187
    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2205
    .end local v2    # "i":I
    :cond_93
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_94
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_10e

    .line 2206
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_10b

    .line 2207
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_ec

    .line 2208
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-eqz v3, :cond_d4

    .line 2209
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_100

    .line 2212
    :cond_d4
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_100

    .line 2216
    :cond_ec
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2219
    :goto_100
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2205
    :cond_10b
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 2224
    .end local v2    # "i":I
    :cond_10e
    return-void
.end method

.method public static final drawProvinces_Settings(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 202
    .local v0, "time":J
    :try_start_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 205
    goto :goto_c

    .line 203
    :catch_8
    move-exception v2

    .line 204
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 207
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_c
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_1b

    .line 208
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    .line 209
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 212
    :cond_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 215
    :try_start_20
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateAlpha()V

    .line 216
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    invoke-interface {v2, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    .line 219
    goto :goto_2f

    .line 217
    :catch_2b
    move-exception v2

    .line 218
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 221
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 223
    sget-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    if-eqz v2, :cond_3f

    .line 224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    .line 226
    :cond_3f
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 227
    return-void
.end method

.method public static final drawProvinces_SpecialAlliance_View(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2026
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 2027
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 2029
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2031
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a0

    .line 2032
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9c

    .line 2033
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_7d

    .line 2034
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_68

    .line 2035
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_91

    .line 2038
    :cond_68
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_91

    .line 2042
    :cond_7d
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2045
    :goto_91
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2031
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 2049
    .end local v2    # "i":I
    :cond_a0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a1
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_128

    .line 2050
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_124

    .line 2051
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_105

    .line 2052
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_f0

    .line 2053
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_YELLOW:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_119

    .line 2056
    :cond_f0
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_119

    .line 2060
    :cond_105
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2063
    :goto_119
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2049
    :cond_124
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a1

    .line 2067
    .end local v2    # "i":I
    :cond_128
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2068
    return-void
.end method

.method public static final drawProvinces_Standard(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1261
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1264
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1266
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1269
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    .line 1272
    goto :goto_15

    .line 1270
    :catch_11
    move-exception v0

    .line 1271
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1274
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_15
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1275
    return-void
.end method

.method public static final drawProvinces_StandardFog2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1239
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    .line 1241
    .local v0, "fProvinceAlpha":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_25

    .line 1242
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1243
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1241
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1247
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_26
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_46

    .line 1248
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_43

    .line 1249
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1247
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1254
    .end local v1    # "i":I
    :cond_46
    return-void
.end method

.method public static final drawProvinces_Standard_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1278
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1281
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1284
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    .line 1289
    goto :goto_e

    .line 1287
    :catch_a
    move-exception v0

    .line 1288
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1291
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1292
    return-void
.end method

.method public static final drawProvinces_Standard_FBO_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1312
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1315
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1318
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    .line 1323
    goto :goto_e

    .line 1321
    :catch_a
    move-exception v0

    .line 1322
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1325
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1326
    return-void
.end method

.method public static final drawProvinces_Standard_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1295
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1298
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1300
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1303
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_11

    .line 1306
    goto :goto_15

    .line 1304
    :catch_11
    move-exception v0

    .line 1305
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1308
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_15
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1309
    return-void
.end method

.method public static final drawProvinces_Standard_InvasionArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1347
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_e1

    .line 1349
    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_8
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-lez v2, :cond_94

    .line 1350
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-direct {v2, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1352
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v2, v3, :cond_94

    .line 1353
    const/4 v3, 0x0

    .local v3, "j":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "jSize":I
    :goto_47
    if-ge v3, v4, :cond_91

    .line 1354
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 1355
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8e} :catch_95

    .line 1353
    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 1352
    .end local v3    # "j":I
    .end local v4    # "jSize":I
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1362
    .end local v2    # "i":I
    :cond_94
    goto :goto_99

    .line 1360
    :catch_95
    move-exception v2

    .line 1361
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1365
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_99
    :try_start_99
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-direct {v2, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_ac
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    if-ge v0, v1, :cond_dc

    .line 1368
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 1369
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_d9} :catch_dd

    .line 1367
    :cond_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 1374
    .end local v0    # "i":I
    :cond_dc
    goto :goto_e1

    .line 1372
    :catch_dd
    move-exception v0

    .line 1373
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1376
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_e1
    :goto_e1
    return-void
.end method

.method public static final drawProvinces_Standard_LandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fProvinceAlpha"    # F

    .line 1385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_21

    .line 1386
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 1387
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1385
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1391
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_42

    .line 1392
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 1393
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1391
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1396
    .end local v0    # "i":I
    :cond_42
    return-void
.end method

.method public static final drawProvinces_Standard_LandProvinces_FBO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1433
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_28

    .line 1434
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    if-ne v0, v1, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->lastPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    if-ne v0, v1, :cond_1a

    goto/16 :goto_95

    .line 1438
    :cond_1a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesTexture()V

    .line 1439
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesFBO()V

    .line 1441
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_95

    .line 1445
    :cond_28
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->updateFBO()V

    .line 1447
    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->FBO_NUM_TO_GENERATE_PB:I

    if-lt v0, v1, :cond_8e

    .line 1448
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboNumToGenerate_PB:I

    .line 1450
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1452
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesFBO()V

    .line 1453
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->disposeProvincesTexture()V

    .line 1455
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 1457
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    .line 1459
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 1460
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1462
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1464
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 1465
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 1467
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboProvince_PBG:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    .line 1469
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboPosX:I

    .line 1470
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->fboPosY:I

    .line 1472
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 1474
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->textureProvince_PBG:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_95

    .line 1479
    :cond_8e
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getLandProvinces_Alpha()F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    .line 1484
    :goto_95
    goto :goto_9a

    .line 1482
    :catch_96
    move-exception v0

    .line 1483
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1485
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9a
    return-void
.end method

.method public static final drawProvinces_Standard_LandProvinces_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fProvinceAlpha"    # F

    .line 1399
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_53

    .line 1400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_2f

    .line 1401
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 1402
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1400
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1406
    .end local v0    # "i":I
    :cond_2f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_30
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_52

    .line 1407
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 1408
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1406
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .end local v0    # "i":I
    :cond_52
    goto :goto_56

    .line 1413
    :cond_53
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard_LandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 1415
    :goto_56
    return-void
.end method

.method public static final drawProvinces_Standard_RegroupArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1332
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_46

    .line 1333
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->fAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v0, v1, :cond_46

    .line 1336
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1337
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_47

    .line 1335
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1343
    .end local v0    # "i":I
    :cond_46
    goto :goto_4b

    .line 1341
    :catch_47
    move-exception v0

    .line 1342
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1344
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public static final drawProvinces_WarView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2071
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 2072
    .local v0, "fProvinceAlpha":F
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    .line 2074
    .local v1, "fProvinceAlphaGray":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2076
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_a0

    .line 2077
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_9c

    .line 2078
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_7d

    .line 2079
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_68

    .line 2080
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_91

    .line 2083
    :cond_68
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_91

    .line 2087
    :cond_7d
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2090
    :goto_91
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2076
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    .line 2094
    .end local v2    # "i":I
    :cond_a0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a1
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_128

    .line 2095
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_124

    .line 2096
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_105

    .line 2097
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-eqz v3, :cond_f0

    .line 2098
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_119

    .line 2101
    :cond_f0
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_119

    .line 2105
    :cond_105
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2108
    :goto_119
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2094
    :cond_124
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a1

    .line 2112
    .end local v2    # "i":I
    :cond_128
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2113
    return-void
.end method

.method public static final drawRecruitingArmyPlayer(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 20
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 984
    move-object/from16 v6, p0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    .line 985
    .local v7, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    .line 986
    .local v8, "progressBarFrame":Laoc/kingdoms/lukasz/textures/Image;
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    .line 987
    .local v9, "progressBarFrameMask":Laoc/kingdoms/lukasz/textures/Image;
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    .line 989
    .local v10, "unitsFrameMap":Laoc/kingdoms/lukasz/textures/Image;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_1e
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRecruitSize()I

    move-result v0

    if-ge v11, v0, :cond_2a5

    .line 990
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_26
    iget-object v0, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_2a1

    const/4 v13, 0x1

    if-ge v12, v13, :cond_2a1

    .line 991
    iget-object v0, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 993
    .local v14, "armyRecruit":Laoc/kingdoms/lukasz/map/army/ArmyRecruit;
    iget v0, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    .line 995
    .local v15, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 996
    iget v0, v15, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v0, :cond_58

    const/4 v0, 0x1

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    .line 999
    .local v0, "extraY":I
    :goto_59
    iget-object v1, v15, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_62

    .line 1000
    add-int/lit8 v0, v0, 0x1

    move/from16 v16, v0

    goto :goto_64

    .line 999
    :cond_62
    move/from16 v16, v0

    .line 1003
    .end local v0    # "extraY":I
    .local v16, "extraY":I
    :goto_64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1005
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v2, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1006
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1008
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 1009
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    iget v2, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1010
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v4, v12, v16

    add-int/2addr v4, v13

    mul-int v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-int/lit8 v3, v12, 0x1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1008
    invoke-virtual {v0, v6, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1013
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1015
    nop

    .line 1016
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    iget v1, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1017
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1015
    invoke-virtual {v10, v6, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1019
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v17, v0, 0x2

    .line 1020
    .local v17, "tCenterX":I
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v18, v0, 0x2

    .line 1022
    .local v18, "tCenterY":I
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1023
    nop

    .line 1024
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    iget v1, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int v0, v17, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1025
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, v18, v1

    .line 1023
    invoke-virtual {v9, v6, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1027
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1028
    nop

    .line 1029
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    iget v1, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int v2, v17, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1030
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget v1, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-int/lit8 v1, v12, 0x1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    add-int v3, v18, v0

    .line 1031
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RecruitmentTime:I

    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RecruitmentTime:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v4, v0

    .line 1032
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 1028
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1034
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1036
    nop

    .line 1037
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    iget v1, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1038
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v12, v16

    add-int/2addr v3, v13

    mul-int v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1036
    invoke-virtual {v8, v6, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 990
    .end local v14    # "armyRecruit":Laoc/kingdoms/lukasz/map/army/ArmyRecruit;
    .end local v15    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v16    # "extraY":I
    .end local v17    # "tCenterX":I
    .end local v18    # "tCenterY":I
    :cond_29d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_26

    .line 989
    .end local v12    # "j":I
    :cond_2a1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1e

    .line 1042
    .end local v11    # "i":I
    :cond_2a5
    return-void
.end method

.method public static drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 3062
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 3063
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 3066
    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1e

    .line 3067
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 3069
    :cond_1e
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_33

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_33

    .line 3070
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 3073
    :cond_33
    :goto_33
    return-void
.end method

.method public static final drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 6
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F

    .line 3077
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-lez v0, :cond_97

    .line 3078
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    .line 3079
    .local v0, "iW":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    .line 3081
    .local v1, "iH":I
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 3083
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-ge v2, v3, :cond_97

    .line 3084
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 3085
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, p1, v3, v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FIII)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_98

    .line 3083
    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 3091
    .end local v0    # "iW":I
    .end local v1    # "iH":I
    .end local v2    # "i":I
    :cond_97
    goto :goto_9c

    .line 3089
    :catch_98
    move-exception v0

    .line 3090
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3093
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 3094
    return-void
.end method

.method private static final drawReligionConversion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FIII)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F
    .param p2, "provinceID"    # I
    .param p3, "iW"    # I
    .param p4, "iH"    # I

    .line 3098
    :try_start_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v0

    goto :goto_1e

    :cond_18
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    :goto_1e
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v0, v2

    .line 3099
    .local v0, "iPosX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_4b

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v1

    goto :goto_51

    :cond_4b
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    :goto_51
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 3101
    .local v1, "iPosY":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    move-object v4, p0

    move v5, v0

    move v6, v1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    .line 3104
    .end local v0    # "iPosX":I
    .end local v1    # "iPosY":I
    goto :goto_8a

    .line 3102
    :catch_86
    move-exception v0

    .line 3103
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3105
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8a
    return-void
.end method

.method public static final drawSiegeLines_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 2691
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I

    if-lez v0, :cond_52

    .line 2692
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_52

    .line 2694
    :try_start_10
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2701
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_16
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_42

    if-ge v0, v1, :cond_2a

    .line 2703
    :try_start_1a
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->update()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_26

    .line 2706
    goto :goto_27

    .line 2704
    :catch_26
    move-exception v1

    .line 2701
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 2710
    .end local v0    # "j":I
    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2b
    :try_start_2b
    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->iSiegeLinesSize:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_40

    if-ge v0, v1, :cond_3f

    .line 2712
    :try_start_2f
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->siegeLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b

    .line 2715
    goto :goto_3c

    .line 2713
    :catch_3b
    move-exception v1

    .line 2710
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2719
    .end local v0    # "j":I
    :cond_3f
    goto :goto_41

    .line 2717
    :catch_40
    move-exception v0

    .line 2722
    :goto_41
    goto :goto_43

    .line 2720
    :catch_42
    move-exception v0

    .line 2725
    :goto_43
    :try_start_43
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 2726
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4d} :catch_4e

    .line 2729
    goto :goto_52

    .line 2727
    :catch_4e
    move-exception v0

    .line 2728
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2732
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public static final drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_2a

    .line 2228
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getWastelandColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2229
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 2227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2231
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method public static final drawWondersConstruction(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1046
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_318

    .line 1047
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_314

    .line 1048
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1050
    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonderImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v2, v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ImageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 1051
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 1053
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1054
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1055
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1053
    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1057
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 1058
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 1060
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    .line 1061
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1062
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1060
    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1064
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1065
    .local v1, "tCenterX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1067
    .local v2, "tCenterY":I
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1068
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    .line 1069
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1070
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    mul-float v5, v5, v6

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v2

    .line 1068
    invoke-virtual {v3, p0, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1072
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1073
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    .line 1074
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v6, v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1075
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v3, v3, v5

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v7, v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    .line 1076
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v5, v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v5

    mul-float v3, v3, v8

    float-to-int v8, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    .line 1077
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v9

    .line 1073
    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1079
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1081
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    .line 1082
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 1083
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    mul-float v5, v5, v6

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 1081
    invoke-virtual {v3, p0, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_314
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_314} :catch_319

    .line 1046
    .end local v1    # "tCenterX":I
    .end local v2    # "tCenterY":I
    :cond_314
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1089
    .end local v0    # "i":I
    :cond_318
    goto :goto_31a

    .line 1087
    :catch_319
    move-exception v0

    .line 1090
    :goto_31a
    return-void
.end method

.method public static final getLandProvinces_Alpha()F
    .registers 2

    .line 1381
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getProvinceAlpha()F
    .registers 5

    .line 2234
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2f

    .line 2235
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_IN:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 2237
    :cond_2f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3e

    .line 2238
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    return v0

    .line 2241
    :cond_3e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Scale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_76

    .line 2243
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sub-float v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_OUT:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v3, v3, v4

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    sub-float v3, v1, v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2246
    :cond_76
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    sub-float v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_OUT:F

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    sub-float v3, v1, v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static final getProvinceAlpha(F)F
    .registers 5
    .param p0, "fAlpha"    # F

    .line 2252
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2b

    .line 2253
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_IN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v0, v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    mul-float v1, v1, p0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 2255
    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    .line 2256
    return p0

    .line 2259
    :cond_36
    sub-float v0, v1, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->PROVINCE_ALPHA_ZOOM_OUT:F

    mul-float v0, v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    mul-float v0, v0, v2

    add-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static final getWastelandColor(IF)Lcom/badlogic/gdx/graphics/Color;
    .registers 8
    .param p0, "wastelandLevel"    # I
    .param p1, "fAlpha"    # F

    .line 2321
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 2322
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const v2, 0x3cab367a    # 0.0209f

    int-to-float v3, p0

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 2323
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const v3, 0x3c902de0    # 0.0176f

    int-to-float v4, p0

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    .line 2324
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c727bb3    # 0.0148f

    int-to-float v5, p0

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 2321
    return-object v0
.end method

.method public static updateDrawExtraDetails()V
    .registers 2

    .line 82
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-ne v0, v1, :cond_12

    .line 83
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    goto :goto_19

    .line 148
    :cond_12
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawExtraDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;

    .line 166
    :goto_19
    return-void
.end method

.method public static final updateDrawMoveUnits()V
    .registers 1

    .line 2508
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2509
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$35;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$35;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    goto :goto_17

    .line 2534
    :cond_10
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$36;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$36;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    .line 2541
    :goto_17
    return-void
.end method

.method public static final updateDrawProvinces()V
    .registers 2

    .line 230
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_21d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_21d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_21d

    .line 238
    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 239
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapMode;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapMode;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 241
    :cond_36
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceConnections()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 242
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 249
    :cond_47
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorGameCivsEdit()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 250
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 267
    :cond_58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorCreateCiv()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 268
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 285
    :cond_69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorGrowthRate()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 286
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 303
    :cond_7a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditor_CreateAllianceEdit()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 304
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 335
    :cond_8b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInPrintMap()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 336
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$9;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$9;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 353
    :cond_9c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorEconomy()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 354
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$10;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$10;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 371
    :cond_ad
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorLines()Z

    move-result v0

    if-nez v0, :cond_215

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorWaves()Z

    move-result v0

    if-eqz v0, :cond_bf

    goto/16 :goto_215

    .line 379
    :cond_bf
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorAlliances()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 380
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$12;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$12;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 413
    :cond_d0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorVassals()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 414
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$13;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$13;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 447
    :cond_e1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorTruces()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 448
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$14;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$14;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 481
    :cond_f2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorGuarantee()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 482
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$15;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$15;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 513
    :cond_103
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorMilitaryAccess()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 514
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$16;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$16;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 545
    :cond_114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorNonAggression()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 546
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$17;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$17;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 577
    :cond_125
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorDefensive()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 578
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$18;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$18;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 609
    :cond_136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorRelations()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 610
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$19;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$19;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 679
    :cond_147
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorTerrain()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 680
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$20;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$20;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 697
    :cond_158
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorTechnologiesCivs()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 698
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$21;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$21;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 726
    :cond_169
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorFormableCiv()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 727
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$22;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$22;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 751
    :cond_17a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorSelectProvinces()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 752
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$23;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$23;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 773
    :cond_18b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCores()Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 774
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$24;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$24;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 795
    :cond_19c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioReligion()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 796
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$25;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$25;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto/16 :goto_224

    .line 816
    :cond_1ad
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorBuildings()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 817
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$26;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$26;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 848
    :cond_1bd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorResource()Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 849
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$27;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$27;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 870
    :cond_1cd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorContinents()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 871
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$28;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$28;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 886
    :cond_1dd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorGeoRegions()Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 887
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$29;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$29;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 902
    :cond_1ed
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorOptimizationRegions()Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 903
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$30;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$30;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 933
    :cond_1fd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorSeaProvinces()Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 934
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$31;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$31;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 974
    :cond_20d
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$32;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$32;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 372
    :cond_215
    :goto_215
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$11;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$11;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    goto :goto_224

    .line 231
    :cond_21d
    :goto_21d
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    .line 981
    :goto_224
    return-void
.end method

.method public static final updateDrawProvinces_Standard()V
    .registers 1

    .line 1211
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$33;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$33;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;

    .line 1236
    return-void
.end method
