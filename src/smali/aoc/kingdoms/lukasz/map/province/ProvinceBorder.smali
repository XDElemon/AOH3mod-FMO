.class public Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;,
        Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;
    }
.end annotation


# static fields
.field public static final PROVINCE_BORDER_INTERVAL:F = 425.0f

.field public static drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

.field public static drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

.field public static mapCordsPosY:I

.field public static pathProvinceBorderExtraWidth:F

.field public static pathProvinceBorderExtraWidth2:F


# instance fields
.field public animationTime:J

.field private civilizationBorder:Z

.field public drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

.field private iLineWidth:I

.field private iProvinceBorderLineSize:I

.field public isLocked:Z

.field public lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nPath:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private pathLastPointX:I

.field private pathLastPointY:I

.field private provinceBorderLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;",
            ">;"
        }
    .end annotation
.end field

.field private wastelandBorder:Z

.field public withProvinceID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 504
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    .line 505
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    .line 506
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 13
    .param p1, "nWithProvinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p2, "nPointsX":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "nPointsY":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    .line 38
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    .line 39
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    .line 60
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    .line 62
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 63
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointX:I

    .line 64
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointY:I

    .line 67
    :cond_64
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "iSize":I
    :goto_6b
    if-ge v0, v1, :cond_be

    .line 68
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    .line 69
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v4, v4, v5

    .line 70
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v5, v5, v6

    add-int/lit8 v6, v0, 0x1

    .line 71
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    add-int/lit8 v7, v0, 0x1

    .line 72
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;-><init>(IIII)V

    .line 68
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 75
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_be
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "iSize":I
    :goto_c3
    if-ge v0, v1, :cond_de

    .line 76
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 80
    .end local v0    # "i":I
    .end local v1    # "iSize":I
    :cond_de
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    .line 82
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_e7
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_ff

    .line 83
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 87
    .end local v0    # "i":I
    :cond_ff
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_100
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_12c

    .line 88
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    .line 90
    .end local v0    # "i":I
    :cond_12c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointX:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static final updateDrawCivBorder()V
    .registers 2

    .line 436
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-nez v0, :cond_15

    .line 437
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$21;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$21;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    .line 444
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$22;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$22;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    goto :goto_54

    .line 451
    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 452
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$23;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$23;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    .line 459
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$24;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$24;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    goto :goto_54

    .line 467
    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->ENABLE_DOUBLE_BORDER:Z

    if-eqz v0, :cond_46

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DOUBLE_BORDER:Z

    if-eqz v0, :cond_46

    .line 468
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$25;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$25;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    .line 475
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$26;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$26;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    goto :goto_54

    .line 483
    :cond_46
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$27;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$27;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    .line 491
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$28;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$28;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    .line 500
    :goto_54
    return-void
.end method


# virtual methods
.method public final drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "offsetX"    # I
    .param p3, "nTranslateProvincePosX"    # I

    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_37

    .line 583
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    .line 585
    .local v9, "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->imgLine_32:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 587
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    .line 582
    .end local v9    # "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 589
    .end local v0    # "i":I
    :cond_37
    return-void
.end method

.method protected final drawDashedBorder_Percentage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I
    .param p3, "fPercent"    # F

    .line 592
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 594
    .local v0, "lineWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    move v10, v2

    .local v10, "currentWidth":I
    :goto_9
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v1, v2, :cond_41

    if-gt v10, v0, :cond_41

    .line 595
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    .line 597
    .local v11, "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->imgLine_32:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v3

    add-int v4, p2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v8

    move-object v3, p1

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 599
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v2

    add-int/2addr v10, v2

    .line 594
    .end local v11    # "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 601
    .end local v1    # "i":I
    .end local v10    # "currentWidth":I
    :cond_41
    return-void
.end method

.method public final drawInnerBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 579
    return-void
.end method

.method public final drawInnerBorder_Shape(I)V
    .registers 2
    .param p1, "nTranslateProvincePosX"    # I

    .line 575
    return-void
.end method

.method public final drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I

    .line 553
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_30

    .line 554
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    .line 556
    .local v1, "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v3

    add-int v4, p2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v8

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 553
    .end local v1    # "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method protected final drawStraightBorder_Percentage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I
    .param p3, "fPercent"    # F

    .line 561
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 563
    .local v0, "lineWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    move v10, v2

    .local v10, "currentWidth":I
    :goto_9
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v1, v2, :cond_41

    if-gt v10, v0, :cond_41

    .line 564
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    .line 566
    .local v11, "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v3

    add-int v4, p2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v8

    move-object v3, p1

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    .line 568
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v2

    add-int/2addr v10, v2

    .line 563
    .end local v11    # "borderLine":Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 570
    .end local v1    # "i":I
    .end local v10    # "currentWidth":I
    :cond_41
    return-void
.end method

.method public final drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 13
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F

    .line 522
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT2:Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    int-to-float v7, p1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v1

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;->drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V

    .line 523
    return-void
.end method

.method public final drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 15
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F
    .param p4, "nColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "nColor2"    # Lcom/badlogic/gdx/graphics/Color;

    .line 510
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    int-to-float v7, p1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v1

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;->drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V

    .line 511
    return-void
.end method

.method public final drawStraightBorder_Shape2(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 13
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F

    .line 530
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 531
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    sget v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    int-to-float v7, p1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v0

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    .line 532
    return-void
.end method

.method public final drawStraightBorder_Shape2(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;)V
    .registers 20
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F
    .param p4, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 514
    move-object v0, p0

    move-object/from16 v1, p4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 515
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v9, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    move/from16 v2, p1

    int-to-float v13, v2

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v14, v3

    const/4 v12, 0x1

    move/from16 v10, p3

    move-object/from16 v11, p2

    invoke-virtual/range {v8 .. v14}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    .line 517
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {v3, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 518
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-virtual {v3, v4, v5, v7, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 519
    return-void
.end method

.method public final drawStraightBorder_ShapeWar(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 13
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F

    .line 526
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT2:Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    int-to-float v7, p1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v1

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;->drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V

    .line 527
    return-void
.end method

.method public final drawStraightBorder_Shape_ActiveProvince(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 15
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F

    .line 548
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 549
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    sget v6, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    int-to-float v9, p1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v10, v0

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v10}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    .line 550
    return-void
.end method

.method public final drawStraightBorder_Shape_Sea(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 17
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F

    .line 538
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 539
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    move-object v0, p0

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    move v1, p1

    int-to-float v11, v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v12, v2

    const/4 v10, 0x1

    move/from16 v8, p3

    move-object v9, p2

    invoke-virtual/range {v6 .. v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    .line 540
    return-void
.end method

.method public final drawStraightBorder_Shape_Sea(ILspace/earlygrey/shapedrawer/JoinType;FF)V
    .registers 18
    .param p1, "nTranslateProvincePosX"    # I
    .param p2, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p3, "lineWidth"    # F
    .param p4, "fPercentage"    # F

    .line 543
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 544
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    move-object v0, p0

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    move v1, p1

    int-to-float v11, v1

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v12, v2

    const/4 v10, 0x1

    move/from16 v8, p3

    move-object v9, p2

    invoke-virtual/range {v6 .. v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    .line 545
    return-void
.end method

.method public final getIsCivilizationBorder()Z
    .registers 2

    .line 614
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    return v0
.end method

.method public final getIsWastelandBorder()Z
    .registers 2

    .line 610
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    return v0
.end method

.method public final getWithProvinceID()I
    .registers 2

    .line 606
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    return v0
.end method

.method public final setIsCivilizationBorder(ZI)V
    .registers 3
    .param p1, "civilizationBorder"    # Z
    .param p2, "iProvinceID"    # I

    .line 618
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    .line 620
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 621
    return-void
.end method

.method public final setIsCivilizationBorder_Just(ZI)V
    .registers 3
    .param p1, "civilizationBorder"    # Z
    .param p2, "iProvinceID"    # I

    .line 624
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    .line 625
    return-void
.end method

.method protected final setIsWastelandBorder(ZI)V
    .registers 3
    .param p1, "wastelandBorder"    # Z
    .param p2, "iProvinceID"    # I

    .line 628
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    .line 630
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    .line 631
    return-void
.end method

.method public final updateDrawProvinceBorder(I)V
    .registers 5
    .param p1, "nProvinceID"    # I

    .line 119
    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    if-eqz v0, :cond_5

    .line 120
    return-void

    .line 123
    :cond_5
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5b

    .line 124
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    if-eqz v0, :cond_52

    .line 125
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_32

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-ne v0, v1, :cond_29

    .line 127
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$1;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 136
    :cond_29
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$2;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 149
    :cond_32
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_49

    .line 150
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$3;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 158
    :cond_49
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$4;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 167
    :cond_52
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$5;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 176
    :cond_5b
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    if-eqz v0, :cond_d8

    .line 177
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_b8

    .line 178
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-ne v0, v1, :cond_7a

    .line 179
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$6;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 188
    :cond_7a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->ENABLE_WAR_BORDER:Z

    if-eqz v0, :cond_af

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-nez v0, :cond_a6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 189
    :cond_a6
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$7;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 197
    :cond_af
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$8;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$8;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 206
    :cond_b8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cf

    .line 207
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$9;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$9;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 215
    :cond_cf
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$10;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$10;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 224
    :cond_d8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_eb

    .line 225
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$11;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$11;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 233
    :cond_eb
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_141

    .line 234
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    .line 236
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_11b

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_112

    goto :goto_11b

    .line 276
    :cond_112
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_189

    .line 237
    :cond_11b
    :goto_11b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_139

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_139

    .line 238
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_189

    .line 267
    :cond_139
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$13;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$13;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_189

    .line 304
    :cond_141
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    .line 306
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_164

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_15c

    goto :goto_164

    .line 340
    :cond_15c
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_189

    .line 307
    :cond_164
    :goto_164
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_182

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_182

    .line 308
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_189

    .line 331
    :cond_182
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$16;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$16;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;
    :try_end_189
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_189} :catch_18a

    .line 368
    :goto_189
    goto :goto_18e

    .line 366
    :catch_18a
    move-exception v0

    .line 367
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 369
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_18e
    return-void
.end method

.method public final updateDrawProvinceBorder_ActiveCivilizationBorder()V
    .registers 2

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    .line 405
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$19;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$19;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    .line 412
    return-void
.end method

.method public final updateDrawProvinceBorder_ActiveProvince()V
    .registers 2

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    .line 374
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    .line 400
    return-void
.end method

.method public final updateDrawProvinceBorder_RelationUp()V
    .registers 2

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    .line 417
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$20;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$20;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    .line 424
    return-void
.end method
