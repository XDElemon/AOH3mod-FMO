.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;
.super Ljava/lang/Object;
.source "CivilizationRegion.java"


# instance fields
.field public centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

.field public drawMatrix4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field protected drawName:Z

.field private fAngle:F

.field private fAngle_Low:F

.field private fontScale:F

.field private fontScale2:F

.field public iAveragePointPosX:I

.field public iAveragePointPosY:I

.field private iCharMaxHeight:I

.field private iCharMaxWidth:I

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

.field private iProvincesSize:I

.field private iRegionID:I

.field protected lCoastlineProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private numOfTries:I

.field private shortestLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private triedToUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    .line 34
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    .line 36
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    .line 37
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    .line 40
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    .line 43
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    .line 45
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    .line 46
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    .line 202
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "iRegionID"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    .line 34
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    .line 36
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    .line 37
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    .line 40
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    .line 43
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    .line 45
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    .line 46
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    .line 202
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    .line 61
    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iRegionID:I

    .line 62
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->addProvince(I)V

    .line 63
    return-void
.end method

.method private final buildAveragePoint()V
    .registers 15

    .line 568
    const-wide/16 v0, 0x0

    .line 569
    .local v0, "lAverageX":J
    const-wide/16 v2, 0x0

    .line 571
    .local v2, "lAverageY":J
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    .line 572
    .local v4, "tempMinX":I
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v5

    .line 573
    .local v5, "tempMaxX":I
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v7

    .line 574
    .local v7, "tempMinY":I
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v8

    .line 576
    .local v8, "tempMaxY":I
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v9

    if-ge v9, v4, :cond_c8

    .line 577
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    .line 580
    :cond_c8
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v9

    if-le v9, v5, :cond_10a

    .line 581
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v5

    .line 584
    :cond_10a
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v9

    if-ge v9, v7, :cond_14c

    .line 585
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v7

    .line 588
    :cond_14c
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v9

    if-le v9, v8, :cond_18e

    .line 589
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v8

    .line 592
    :cond_18e
    const/4 v9, 0x0

    .line 594
    .local v9, "tSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_190
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvincesSize()I

    move-result v12

    if-ge v10, v12, :cond_270

    .line 595
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-lt v12, v4, :cond_1e2

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-gt v12, v5, :cond_1e2

    .line 596
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-lt v12, v7, :cond_26c

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-gt v12, v8, :cond_26c

    .line 597
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-long v12, v12

    add-long/2addr v0, v12

    .line 598
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    int-to-long v12, v12

    add-long/2addr v2, v12

    .line 599
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_26c

    .line 602
    :cond_1e2
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v12

    if-le v12, v4, :cond_1fe

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v12

    if-le v12, v5, :cond_21a

    .line 603
    :cond_1fe
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v12

    if-le v12, v4, :cond_26c

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v12

    if-gt v12, v5, :cond_26c

    .line 605
    :cond_21a
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v12

    if-lt v12, v7, :cond_236

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v12

    if-le v12, v8, :cond_252

    .line 606
    :cond_236
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v12

    if-lt v12, v7, :cond_26c

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v12

    if-gt v12, v8, :cond_26c

    .line 608
    :cond_252
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-long v12, v12

    add-long/2addr v0, v12

    .line 609
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    int-to-long v12, v12

    add-long/2addr v2, v12

    .line 610
    add-int/lit8 v9, v9, 0x1

    .line 594
    :cond_26c
    :goto_26c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_190

    .line 615
    .end local v10    # "i":I
    :cond_270
    if-nez v9, :cond_273

    .line 616
    const/4 v9, 0x1

    .line 619
    :cond_273
    int-to-long v12, v9

    div-long v12, v0, v12

    long-to-int v10, v12

    iput v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    .line 620
    int-to-long v12, v9

    div-long v12, v2, v12

    long-to-int v10, v12

    iput v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    .line 622
    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v12, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v10

    iget-object v12, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v13, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v12

    add-int/2addr v10, v12

    div-int/lit8 v10, v10, 0x2

    .line 623
    .local v10, "tAveX":I
    iget-object v12, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v13, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v6

    iget-object v12, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v13, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v11

    add-int/2addr v6, v11

    div-int/lit8 v6, v6, 0x2

    .line 625
    .local v6, "tAveY":I
    int-to-float v11, v10

    iget v12, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    sub-int v12, v10, v12

    int-to-float v12, v12

    const v13, 0x3f19999a    # 0.6f

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    .line 626
    int-to-float v11, v6

    iget v12, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    sub-int v12, v6, v12

    int-to-float v12, v12

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    .line 627
    return-void
.end method

.method private final buildMinMaxBounds()V
    .registers 4

    .line 411
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    .line 412
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    .line 413
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    .line 414
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    .line 416
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_5a
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v0, v1, :cond_11a

    .line 417
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    if-ge v1, v2, :cond_8c

    .line 418
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    .line 421
    :cond_8c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    if-le v1, v2, :cond_ba

    .line 422
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    .line 425
    :cond_ba
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    if-ge v1, v2, :cond_e8

    .line 426
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    .line 429
    :cond_e8
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    if-le v1, v2, :cond_116

    .line 430
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_116} :catch_11b

    .line 416
    :cond_116
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5a

    .line 435
    .end local v0    # "i":I
    :cond_11a
    goto :goto_11f

    .line 433
    :catch_11b
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 436
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11f
    return-void
.end method

.method private final canDrawTextProperly(II)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .registers 28
    .param p1, "fromProvinceID"    # I
    .param p2, "toProvinceID"    # I

    .line 439
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildAveragePoint()V

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 443
    .local v2, "tempPoints":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    .line 444
    .local v3, "tX":I
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    .line 446
    .local v4, "tX2":I
    sub-int v0, v4, v3

    int-to-float v0, v0

    const v5, 0x3e19999a    # 0.15f

    mul-float v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v6, -0x1

    if-le v3, v4, :cond_29

    const/4 v8, -0x1

    goto :goto_2a

    :cond_29
    const/4 v8, 0x1

    :goto_2a
    mul-int v0, v0, v8

    add-int v8, v3, v0

    .line 447
    .local v8, "extra10X":I
    sub-int v0, v4, v3

    int-to-float v0, v0

    mul-float v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-le v4, v3, :cond_3c

    const/4 v9, -0x1

    goto :goto_3d

    :cond_3c
    const/4 v9, 0x1

    :goto_3d
    mul-int v0, v0, v9

    add-int v9, v4, v0

    .line 449
    .local v9, "extra10X2":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    .line 450
    .local v10, "tY":I
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v11, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    .line 452
    .local v11, "tY2":I
    sub-int v0, v11, v10

    int-to-float v0, v0

    mul-float v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-le v10, v11, :cond_5b

    const/4 v12, -0x1

    goto :goto_5c

    :cond_5b
    const/4 v12, 0x1

    :goto_5c
    mul-int v0, v0, v12

    add-int v12, v10, v0

    .line 453
    .local v12, "extra10Y":I
    sub-int v0, v11, v10

    int-to-float v0, v0

    mul-float v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-le v11, v10, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v6, 0x1

    :goto_6e
    mul-int v0, v0, v6

    add-int v5, v11, v0

    .line 455
    .local v5, "extra10Y2":I
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v0

    mul-int/lit8 v6, v0, 0xa

    .line 456
    .local v6, "iPrecision":I
    new-array v13, v6, [Lcom/badlogic/gdx/math/Vector2;

    .line 458
    .local v13, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v0, 0x5

    new-array v14, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 459
    .local v14, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v15, v8

    int-to-float v7, v12

    invoke-direct {v0, v15, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x0

    aput-object v0, v14, v7

    .line 460
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v15, v8

    int-to-float v7, v12

    invoke-direct {v0, v15, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x1

    aput-object v0, v14, v7

    .line 461
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    int-to-float v7, v7

    iget v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    int-to-float v15, v15

    invoke-direct {v0, v7, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x2

    aput-object v0, v14, v7

    .line 462
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v7, v9

    int-to-float v15, v5

    invoke-direct {v0, v7, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x3

    aput-object v0, v14, v7

    .line 463
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v7, v9

    int-to-float v15, v5

    invoke-direct {v0, v7, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v7, 0x4

    aput-object v0, v14, v7

    .line 465
    new-instance v0, Lcom/badlogic/gdx/math/CatmullRomSpline;

    const/4 v7, 0x0

    invoke-direct {v0, v14, v7}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move-object v7, v0

    .line 467
    .local v7, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c7
    if-ge v0, v6, :cond_e7

    .line 468
    new-instance v15, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v15}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v15, v13, v0

    .line 469
    aget-object v15, v13, v0

    move/from16 v16, v3

    .end local v3    # "tX":I
    .local v16, "tX":I
    int-to-float v3, v0

    move/from16 v17, v4

    .end local v4    # "tX2":I
    .local v17, "tX2":I
    int-to-float v4, v6

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v4, v4, v18

    div-float/2addr v3, v4

    invoke-virtual {v7, v15, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 467
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_c7

    .end local v16    # "tX":I
    .end local v17    # "tX2":I
    .restart local v3    # "tX":I
    .restart local v4    # "tX2":I
    :cond_e7
    move/from16 v16, v3

    move/from16 v17, v4

    .line 472
    .end local v0    # "i":I
    .end local v3    # "tX":I
    .end local v4    # "tX2":I
    .restart local v16    # "tX":I
    .restart local v17    # "tX2":I
    const/4 v0, 0x0

    .line 474
    .local v0, "tempPrecisionWidth":F
    const/4 v3, 0x0

    move/from16 v24, v3

    move v3, v0

    move/from16 v0, v24

    .local v0, "i":I
    .local v3, "tempPrecisionWidth":F
    :goto_f2
    add-int/lit8 v4, v6, -0x1

    if-ge v0, v4, :cond_11e

    .line 475
    aget-object v4, v13, v0

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v4, v4

    aget-object v15, v13, v0

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v15, v15

    add-int/lit8 v18, v0, 0x1

    move/from16 v19, v5

    .end local v5    # "extra10Y2":I
    .local v19, "extra10Y2":I
    aget-object v5, v13, v18

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    add-int/lit8 v18, v0, 0x1

    move-object/from16 v20, v7

    .end local v7    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .local v20, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    aget-object v7, v13, v18

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v7, v7

    invoke-static {v4, v15, v5, v7}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v4

    add-float/2addr v3, v4

    .line 474
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v19

    move-object/from16 v7, v20

    goto :goto_f2

    .end local v19    # "extra10Y2":I
    .end local v20    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v5    # "extra10Y2":I
    .restart local v7    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_11e
    move/from16 v19, v5

    move-object/from16 v20, v7

    .line 478
    .end local v0    # "i":I
    .end local v5    # "extra10Y2":I
    .end local v7    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v19    # "extra10Y2":I
    .restart local v20    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/4 v4, 0x0

    aget-object v5, v13, v4

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v7, v13, v4

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    invoke-direct {v0, v5, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    const/4 v4, 0x0

    .line 483
    .local v4, "acceptableWidth":F
    :try_start_136
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v0
    :try_end_146
    .catch Ljava/lang/ArithmeticException; {:try_start_136 .. :try_end_146} :catch_14c

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float v4, v3, v0

    .line 488
    goto :goto_150

    .line 484
    :catch_14c
    move-exception v0

    .line 486
    .local v0, "ex":Ljava/lang/ArithmeticException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 491
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    :goto_150
    const/4 v0, 0x0

    .line 493
    .local v0, "currentPointsWidth":F
    const/4 v5, 0x1

    .local v5, "i":I
    const/4 v7, 0x0

    .local v7, "startPrecision":I
    :goto_153
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v15

    if-ge v5, v15, :cond_1c1

    .line 495
    :goto_165
    add-int/lit8 v15, v6, -0x1

    if-ge v7, v15, :cond_1b2

    .line 496
    aget-object v15, v13, v7

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v15, v15

    move/from16 v18, v3

    .end local v3    # "tempPrecisionWidth":F
    .local v18, "tempPrecisionWidth":F
    aget-object v3, v13, v7

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v3, v3

    add-int/lit8 v21, v7, 0x1

    move/from16 v22, v6

    .end local v6    # "iPrecision":I
    .local v22, "iPrecision":I
    aget-object v6, v13, v21

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v6, v6

    add-int/lit8 v21, v7, 0x1

    move/from16 v23, v8

    .end local v8    # "extra10X":I
    .local v23, "extra10X":I
    aget-object v8, v13, v21

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v8, v8

    invoke-static {v15, v3, v6, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v3

    .line 498
    .local v3, "tempPrecisionWidth2":F
    add-float v6, v0, v3

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_1a8

    .line 499
    new-instance v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v8, v13, v7

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v15, v13, v7

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v15, v15

    invoke-direct {v6, v8, v15}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    add-float v6, v0, v3

    sub-float v0, v4, v6

    .line 502
    goto :goto_1b8

    .line 504
    :cond_1a8
    add-float/2addr v0, v3

    .line 495
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v18

    move/from16 v6, v22

    move/from16 v8, v23

    goto :goto_165

    .end local v18    # "tempPrecisionWidth":F
    .end local v22    # "iPrecision":I
    .end local v23    # "extra10X":I
    .local v3, "tempPrecisionWidth":F
    .restart local v6    # "iPrecision":I
    .restart local v8    # "extra10X":I
    :cond_1b2
    move/from16 v18, v3

    move/from16 v22, v6

    move/from16 v23, v8

    .line 493
    .end local v3    # "tempPrecisionWidth":F
    .end local v6    # "iPrecision":I
    .end local v8    # "extra10X":I
    .restart local v18    # "tempPrecisionWidth":F
    .restart local v22    # "iPrecision":I
    .restart local v23    # "extra10X":I
    :goto_1b8
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    move/from16 v6, v22

    move/from16 v8, v23

    goto :goto_153

    .end local v18    # "tempPrecisionWidth":F
    .end local v22    # "iPrecision":I
    .end local v23    # "extra10X":I
    .restart local v3    # "tempPrecisionWidth":F
    .restart local v6    # "iPrecision":I
    .restart local v8    # "extra10X":I
    :cond_1c1
    move/from16 v18, v3

    move/from16 v22, v6

    move/from16 v23, v8

    .line 509
    .end local v3    # "tempPrecisionWidth":F
    .end local v5    # "i":I
    .end local v6    # "iPrecision":I
    .end local v7    # "startPrecision":I
    .end local v8    # "extra10X":I
    .restart local v18    # "tempPrecisionWidth":F
    .restart local v22    # "iPrecision":I
    .restart local v23    # "extra10X":I
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    array-length v5, v13

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v5, v13, v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    array-length v7, v13

    sub-int/2addr v7, v6

    aget-object v7, v13, v7

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v7, v7

    invoke-direct {v3, v5, v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .local v3, "i":I
    :goto_1e3
    if-ltz v3, :cond_21b

    .line 512
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v5

    .line 514
    .local v5, "nNewChosenProvinceID":I
    if-ltz v5, :cond_218

    .line 516
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-eq v6, v7, :cond_218

    .line 517
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v6

    .line 511
    .end local v5    # "nNewChosenProvinceID":I
    :cond_218
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e3

    .line 521
    .end local v3    # "i":I
    :cond_21b
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildScaleOfText(I)F

    move-result v3

    float-to-int v3, v3

    .line 523
    .local v3, "tTextH":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_227
    if-ltz v5, :cond_3d1

    .line 524
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    add-int/2addr v6, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v7

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 526
    .local v6, "nNewChosenProvinceID":I
    if-ltz v6, :cond_25d

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_25d

    .line 527
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 530
    :cond_25d
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 531
    if-ltz v6, :cond_291

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_291

    .line 532
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 535
    :cond_291
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 536
    if-ltz v6, :cond_2c5

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_2c5

    .line 537
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 540
    :cond_2c5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 541
    if-ltz v6, :cond_2f9

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_2f9

    .line 542
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 545
    :cond_2f9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 546
    if-ltz v6, :cond_32e

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_32e

    .line 547
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 549
    :cond_32e
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 550
    if-ltz v6, :cond_363

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_363

    .line 551
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 554
    :cond_363
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 555
    if-ltz v6, :cond_398

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_398

    .line 556
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 558
    :cond_398
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v6

    .line 559
    if-ltz v6, :cond_3cd

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_3cd

    .line 560
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object v7

    .line 523
    .end local v6    # "nNewChosenProvinceID":I
    :cond_3cd
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_227

    .line 564
    .end local v5    # "i":I
    :cond_3d1
    const/4 v5, 0x0

    return-object v5
.end method

.method public static getLineWidth(IIII)I
    .registers 10
    .param p0, "fromPosX"    # I
    .param p1, "fromPosY"    # I
    .param p2, "toPosX"    # I
    .param p3, "toPosY"    # I

    .line 947
    sub-int v0, p0, p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int v4, p1, p3

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getLineWidth2(IIII)F
    .registers 10
    .param p0, "fromPosX"    # I
    .param p1, "fromPosY"    # I
    .param p2, "toPosX"    # I
    .param p3, "toPosY"    # I

    .line 951
    sub-int v0, p0, p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int v4, p1, p3

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getLineWidth3(FFFF)F
    .registers 10
    .param p0, "fromPosX"    # F
    .param p1, "fromPosY"    # F
    .param p2, "toPosX"    # F
    .param p3, "toPosY"    # F

    .line 955
    sub-float v0, p0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v4, p1, p3

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getLinesAngle(IIII)F
    .registers 8
    .param p0, "fromPosX"    # I
    .param p1, "fromPosY"    # I
    .param p2, "toPosX"    # I
    .param p3, "toPosY"    # I

    .line 931
    sub-int v0, p1, p3

    int-to-double v0, v0

    neg-int v2, p0

    add-int/2addr v2, p2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static getLinesAngle2(FFFF)F
    .registers 8
    .param p0, "fromPosX"    # F
    .param p1, "fromPosY"    # F
    .param p2, "toPosX"    # F
    .param p3, "toPosY"    # F

    .line 935
    sub-float v0, p1, p3

    float-to-double v0, v0

    neg-float v2, p0

    add-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final addProvince(I)V
    .registers 5
    .param p1, "nProvinceID"    # I

    .line 136
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 140
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_39

    .line 141
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_3c

    .line 139
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 146
    .end local v0    # "i":I
    :cond_3c
    :goto_3c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iRegionID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 147
    return-void
.end method

.method public final addProvince_Just(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 150
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    .line 152
    return-void
.end method

.method public final buildDrawData(I)V
    .registers 33
    .param p1, "nFontID"    # I

    .line 715
    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    .line 716
    :try_start_5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 718
    const/4 v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    .line 719
    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_6bf

    .line 722
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    const/4 v5, 0x0

    :try_start_1d
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v6

    if-ge v4, v6, :cond_99

    .line 723
    new-instance v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 725
    .local v6, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameCharacter(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 727
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    iget v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_88

    .line 728
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v7, v7

    iput v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    .line 731
    :cond_88
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    iget v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_96

    .line 732
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v7, v7

    iput v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I
    :try_end_96
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_96} :catch_c3
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_96} :catch_a0
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_96} :catch_9a
    .catchall {:try_start_1d .. :try_end_96} :catchall_6bf

    .line 722
    .end local v6    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :cond_96
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .end local v4    # "i":I
    :cond_99
    goto :goto_c8

    .line 745
    :catch_9a
    move-exception v0

    move-object v4, v0

    .line 746
    .local v4, "ex":Ljava/lang/IllegalStateException;
    :try_start_9c
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_c9

    .line 737
    .end local v4    # "ex":Ljava/lang/IllegalStateException;
    :catch_a0
    move-exception v0

    move-object v4, v0

    .line 738
    .local v4, "ex":Ljava/lang/NullPointerException;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_6bf

    .line 741
    :try_start_a5
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_c0} :catch_c1
    .catchall {:try_start_a5 .. :try_end_c0} :catchall_6bf

    .line 744
    goto :goto_c8

    .line 742
    :catch_c1
    move-exception v0

    goto :goto_c8

    .line 735
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_c3
    move-exception v0

    move-object v4, v0

    .line 736
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_c5
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 747
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_c8
    nop

    .line 748
    :goto_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_6bf

    .line 750
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v4, v6

    int-to-double v6, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    neg-int v4, v4

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v4, v8

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double v6, v6, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v10

    double-to-float v4, v6

    iput v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    .line 752
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v4, v6

    int-to-double v6, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    neg-int v4, v4

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    iget-object v13, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v4, v12

    int-to-double v12, v4

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double v6, v6, v8

    div-double/2addr v6, v10

    double-to-float v4, v6

    iput v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    .line 754
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 755
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 756
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v4, "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :try_start_1bf
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 760
    .local v6, "fromProvinceID":I
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 762
    .local v7, "toProvinceID":I
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    .line 763
    .local v8, "tX":I
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    .line 765
    .local v9, "tX2":I
    sub-int v10, v9, v8

    int-to-float v10, v10

    const v11, 0x3e19999a    # 0.15f

    mul-float v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    if-le v8, v9, :cond_20c

    const/4 v13, -0x1

    goto :goto_20d

    :cond_20c
    const/4 v13, 0x1

    :goto_20d
    mul-int v10, v10, v13

    add-int/2addr v10, v8

    .line 766
    .local v10, "extra10X":I
    sub-int v13, v9, v8

    int-to-float v13, v13

    mul-float v13, v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v13, v13

    if-le v9, v8, :cond_21e

    const/4 v14, -0x1

    goto :goto_21f

    :cond_21e
    const/4 v14, 0x1

    :goto_21f
    mul-int v13, v13, v14

    add-int/2addr v13, v9

    .line 768
    .local v13, "extra10X2":I
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    .line 769
    .local v14, "tY":I
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    .line 771
    .local v15, "tY2":I
    sub-int v12, v15, v14

    int-to-float v12, v12

    mul-float v12, v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v12, v12

    if-le v14, v15, :cond_23d

    const/16 v17, -0x1

    goto :goto_23f

    :cond_23d
    const/16 v17, 0x1

    :goto_23f
    mul-int v12, v12, v17

    add-int/2addr v12, v14

    .line 772
    .local v12, "extra10Y":I
    sub-int v3, v15, v14

    int-to-float v3, v3

    mul-float v3, v3, v11

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    if-le v15, v14, :cond_251

    const/16 v16, -0x1

    goto :goto_253

    :cond_251
    const/16 v16, 0x1

    :goto_253
    mul-int v3, v3, v16

    add-int/2addr v3, v15

    .line 774
    .local v3, "extra10Y2":I
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v11

    const/4 v5, 0x3

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    mul-int/lit8 v11, v11, 0x64

    .line 775
    .local v11, "iPrecision":I
    new-array v5, v11, [Lcom/badlogic/gdx/math/Vector2;

    .line 777
    .local v5, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector2;

    .line 778
    .local v2, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    move/from16 v19, v7

    .end local v7    # "toProvinceID":I
    .local v19, "toProvinceID":I
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v20, v8

    .end local v8    # "tX":I
    .local v20, "tX":I
    int-to-float v8, v10

    move/from16 v21, v9

    .end local v9    # "tX2":I
    .local v21, "tX2":I
    int-to-float v9, v12

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x0

    aput-object v7, v2, v8

    .line 779
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v10

    int-to-float v9, v12

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x1

    aput-object v7, v2, v8

    .line 780
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    int-to-float v8, v8

    iget v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x2

    aput-object v7, v2, v8

    .line 781
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v9, v13

    int-to-float v8, v3

    invoke-direct {v7, v9, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x3

    aput-object v7, v2, v8

    .line 782
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v13

    int-to-float v9, v3

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v8, 0x4

    aput-object v7, v2, v8

    .line 784
    new-instance v7, Lcom/badlogic/gdx/math/CatmullRomSpline;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 786
    .local v7, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2b5
    if-ge v8, v11, :cond_2d5

    .line 787
    new-instance v18, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct/range {v18 .. v18}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v18, v5, v8

    .line 788
    aget-object v9, v5, v8

    move-object/from16 v22, v2

    .end local v2    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .local v22, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    int-to-float v2, v8

    move/from16 v23, v3

    .end local v3    # "extra10Y2":I
    .local v23, "extra10Y2":I
    int-to-float v3, v11

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v3, v3, v18

    div-float/2addr v2, v3

    invoke-virtual {v7, v9, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 786
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v22

    move/from16 v3, v23

    goto :goto_2b5

    .end local v22    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v23    # "extra10Y2":I
    .restart local v2    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v3    # "extra10Y2":I
    :cond_2d5
    move-object/from16 v22, v2

    move/from16 v23, v3

    .line 791
    .end local v2    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v3    # "extra10Y2":I
    .end local v8    # "i":I
    .restart local v22    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v23    # "extra10Y2":I
    const/4 v2, 0x0

    .line 793
    .local v2, "tempPrecissionWidth":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2db
    add-int/lit8 v8, v11, -0x1

    if-ge v3, v8, :cond_307

    .line 794
    aget-object v8, v5, v3

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v9, v5, v3

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    add-int/lit8 v24, v3, 0x1

    move-object/from16 v25, v7

    .end local v7    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .local v25, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    aget-object v7, v5, v24

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v7, v7

    add-int/lit8 v24, v3, 0x1

    move/from16 v26, v10

    .end local v10    # "extra10X":I
    .local v26, "extra10X":I
    aget-object v10, v5, v24

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    invoke-static {v8, v9, v7, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v7

    add-float/2addr v2, v7

    .line 793
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v25

    move/from16 v10, v26

    goto :goto_2db

    .end local v25    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v26    # "extra10X":I
    .restart local v7    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v10    # "extra10X":I
    :cond_307
    move-object/from16 v25, v7

    move/from16 v26, v10

    .line 797
    .end local v3    # "i":I
    .end local v7    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v10    # "extra10X":I
    .restart local v25    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v26    # "extra10X":I
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/4 v8, 0x0

    aget-object v9, v5, v8

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v9, v9

    aget-object v10, v5, v8

    iget v8, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v8, v8

    invoke-direct {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_320} :catch_695

    .line 799
    const/4 v3, 0x0

    .line 802
    .local v3, "acceptableWidth":F
    :try_start_321
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v7
    :try_end_331
    .catch Ljava/lang/ArithmeticException; {:try_start_321 .. :try_end_331} :catch_337
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_331} :catch_695

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v3, v2, v7

    .line 807
    goto :goto_33c

    .line 803
    :catch_337
    move-exception v0

    move-object v7, v0

    .line 805
    .local v7, "ex":Ljava/lang/ArithmeticException;
    :try_start_339
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 809
    .end local v7    # "ex":Ljava/lang/ArithmeticException;
    :goto_33c
    const/4 v7, 0x0

    .line 811
    .local v7, "currentPointsWidth":F
    const/4 v8, 0x1

    .restart local v8    # "i":I
    const/4 v9, 0x0

    .local v9, "startPrecision":I
    :goto_33f
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v10

    if-ge v8, v10, :cond_3b7

    .line 812
    :goto_351
    add-int/lit8 v10, v11, -0x1

    if-ge v9, v10, :cond_3a4

    .line 813
    aget-object v10, v5, v9

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v10, v10

    move/from16 v24, v2

    .end local v2    # "tempPrecissionWidth":F
    .local v24, "tempPrecissionWidth":F
    aget-object v2, v5, v9

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    add-int/lit8 v27, v9, 0x1

    move/from16 v28, v11

    .end local v11    # "iPrecision":I
    .local v28, "iPrecision":I
    aget-object v11, v5, v27

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v11, v11

    add-int/lit8 v27, v9, 0x1

    move/from16 v29, v12

    .end local v12    # "extra10Y":I
    .local v29, "extra10Y":I
    aget-object v12, v5, v27

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v12, v12

    invoke-static {v10, v2, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v2

    .line 815
    .local v2, "tempPrecisionWidth":F
    add-float v10, v7, v2

    cmpl-float v10, v10, v3

    if-ltz v10, :cond_398

    .line 816
    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v12, v5, v9

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v12, v12

    move/from16 v27, v13

    .end local v13    # "extra10X2":I
    .local v27, "extra10X2":I
    aget-object v13, v5, v9

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    add-float v10, v7, v2

    sub-float v7, v3, v10

    .line 819
    goto :goto_3ac

    .line 821
    .end local v27    # "extra10X2":I
    .restart local v13    # "extra10X2":I
    :cond_398
    move/from16 v27, v13

    .end local v13    # "extra10X2":I
    .restart local v27    # "extra10X2":I
    add-float/2addr v7, v2

    .line 812
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v24

    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_351

    .end local v24    # "tempPrecissionWidth":F
    .end local v27    # "extra10X2":I
    .end local v28    # "iPrecision":I
    .end local v29    # "extra10Y":I
    .local v2, "tempPrecissionWidth":F
    .restart local v11    # "iPrecision":I
    .restart local v12    # "extra10Y":I
    .restart local v13    # "extra10X2":I
    :cond_3a4
    move/from16 v24, v2

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v27, v13

    .line 811
    .end local v2    # "tempPrecissionWidth":F
    .end local v11    # "iPrecision":I
    .end local v12    # "extra10Y":I
    .end local v13    # "extra10X2":I
    .restart local v24    # "tempPrecissionWidth":F
    .restart local v27    # "extra10X2":I
    .restart local v28    # "iPrecision":I
    .restart local v29    # "extra10Y":I
    :goto_3ac
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v24

    move/from16 v13, v27

    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_33f

    .end local v24    # "tempPrecissionWidth":F
    .end local v27    # "extra10X2":I
    .end local v28    # "iPrecision":I
    .end local v29    # "extra10Y":I
    .restart local v2    # "tempPrecissionWidth":F
    .restart local v11    # "iPrecision":I
    .restart local v12    # "extra10Y":I
    .restart local v13    # "extra10X2":I
    :cond_3b7
    move/from16 v24, v2

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v27, v13

    .line 826
    .end local v2    # "tempPrecissionWidth":F
    .end local v8    # "i":I
    .end local v9    # "startPrecision":I
    .end local v11    # "iPrecision":I
    .end local v12    # "extra10Y":I
    .end local v13    # "extra10X2":I
    .restart local v24    # "tempPrecissionWidth":F
    .restart local v27    # "extra10X2":I
    .restart local v28    # "iPrecision":I
    .restart local v29    # "extra10Y":I
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    array-length v9, v5

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v9, v5, v9

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v9, v9

    array-length v11, v5

    sub-int/2addr v11, v10

    aget-object v10, v5, v11

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d8
    .catch Ljava/lang/Exception; {:try_start_339 .. :try_end_3d8} :catch_695

    .line 829
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d9
    :try_start_3d9
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v8
    :try_end_3e9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3d9 .. :try_end_3e9} :catch_639
    .catch Ljava/lang/NullPointerException; {:try_start_3d9 .. :try_end_3e9} :catch_610
    .catch Ljava/lang/IllegalStateException; {:try_start_3d9 .. :try_end_3e9} :catch_608
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_3e9} :catch_695

    if-ge v2, v8, :cond_605

    .line 830
    const/4 v8, 0x0

    .line 833
    .local v8, "tempPointsAngle":F
    :try_start_3ec
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9
    :try_end_3f0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3ec .. :try_end_3f0} :catch_557
    .catch Ljava/lang/NullPointerException; {:try_start_3ec .. :try_end_3f0} :catch_48e
    .catch Ljava/lang/IllegalStateException; {:try_start_3ec .. :try_end_3f0} :catch_488
    .catch Ljava/lang/Exception; {:try_start_3ec .. :try_end_3f0} :catch_695

    :try_start_3f0
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v2, v9, :cond_43a

    .line 834
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v12, v2, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v11

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v13, v2, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v9

    move v8, v9

    goto :goto_477

    .line 838
    :cond_43a
    add-int/lit8 v9, v2, -0x1

    if-ltz v9, :cond_477

    .line 839
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v11, v2, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v11

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v9

    move v8, v9

    .line 843
    :cond_477
    :goto_477
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f0 .. :try_end_47e} :catch_482
    .catch Ljava/lang/NullPointerException; {:try_start_3f0 .. :try_end_47e} :catch_48e
    .catch Ljava/lang/IllegalStateException; {:try_start_3f0 .. :try_end_47e} :catch_488
    .catch Ljava/lang/Exception; {:try_start_3f0 .. :try_end_47e} :catch_695

    .line 884
    move/from16 v30, v3

    goto/16 :goto_5fc

    .line 844
    :catch_482
    move-exception v0

    move/from16 v30, v3

    move-object v3, v0

    goto/16 :goto_55b

    .line 902
    .end local v2    # "i":I
    .end local v8    # "tempPointsAngle":F
    :catch_488
    move-exception v0

    move-object v2, v0

    move/from16 v30, v3

    goto/16 :goto_60c

    .line 860
    .restart local v2    # "i":I
    .restart local v8    # "tempPointsAngle":F
    :catch_48e
    move-exception v0

    move-object v9, v0

    .line 863
    .local v9, "ex":Ljava/lang/NullPointerException;
    if-nez v2, :cond_4e6

    .line 865
    :try_start_492
    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v11

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v13, v2, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v12

    iget-object v13, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;
    :try_end_4ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_492 .. :try_end_4ba} :catch_4d7
    .catch Ljava/lang/NullPointerException; {:try_start_492 .. :try_end_4ba} :catch_610
    .catch Ljava/lang/IllegalStateException; {:try_start_492 .. :try_end_4ba} :catch_608
    .catch Ljava/lang/Exception; {:try_start_492 .. :try_end_4ba} :catch_695

    move/from16 v30, v3

    .end local v3    # "acceptableWidth":F
    .local v30, "acceptableWidth":F
    add-int/lit8 v3, v2, 0x1

    :try_start_4be
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    invoke-static {v10, v11, v12, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4be .. :try_end_4d3} :catch_4d4
    .catch Ljava/lang/NullPointerException; {:try_start_4be .. :try_end_4d3} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_4be .. :try_end_4d3} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_4be .. :try_end_4d3} :catch_695

    .line 868
    goto :goto_533

    .line 866
    :catch_4d4
    move-exception v0

    move-object v3, v0

    goto :goto_4db

    .end local v30    # "acceptableWidth":F
    .restart local v3    # "acceptableWidth":F
    :catch_4d7
    move-exception v0

    move/from16 v30, v3

    move-object v3, v0

    .line 867
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v30    # "acceptableWidth":F
    :goto_4db
    :try_start_4db
    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4db .. :try_end_4e4} :catch_602
    .catch Ljava/lang/NullPointerException; {:try_start_4db .. :try_end_4e4} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_4db .. :try_end_4e4} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_4db .. :try_end_4e4} :catch_695

    .line 868
    nop

    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_533

    .line 871
    .end local v30    # "acceptableWidth":F
    .local v3, "acceptableWidth":F
    :cond_4e6
    move/from16 v30, v3

    .end local v3    # "acceptableWidth":F
    .restart local v30    # "acceptableWidth":F
    :try_start_4e8
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v11, v2, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v11

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v12

    invoke-static {v3, v10, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_527
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e8 .. :try_end_527} :catch_528
    .catch Ljava/lang/NullPointerException; {:try_start_4e8 .. :try_end_527} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_4e8 .. :try_end_527} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_4e8 .. :try_end_527} :catch_695

    .line 874
    goto :goto_533

    .line 872
    :catch_528
    move-exception v0

    move-object v3, v0

    .line 873
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_52a
    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_533
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_52a .. :try_end_533} :catch_602
    .catch Ljava/lang/NullPointerException; {:try_start_52a .. :try_end_533} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_52a .. :try_end_533} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_52a .. :try_end_533} :catch_695

    .line 878
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_533
    :try_start_533
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_550
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_533 .. :try_end_550} :catch_554
    .catch Ljava/lang/NullPointerException; {:try_start_533 .. :try_end_550} :catch_551
    .catch Ljava/lang/IllegalStateException; {:try_start_533 .. :try_end_550} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_533 .. :try_end_550} :catch_695

    goto :goto_555

    .line 881
    :catch_551
    move-exception v0

    goto/16 :goto_5fc

    .line 879
    :catch_554
    move-exception v0

    .line 883
    :goto_555
    goto/16 :goto_5fc

    .line 844
    .end local v9    # "ex":Ljava/lang/NullPointerException;
    .end local v30    # "acceptableWidth":F
    .local v3, "acceptableWidth":F
    :catch_557
    move-exception v0

    move/from16 v30, v3

    move-object v3, v0

    .line 847
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v30    # "acceptableWidth":F
    :goto_55b
    if-nez v2, :cond_5aa

    .line 849
    :try_start_55d
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v12, v2, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v11

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v13, v2, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55d .. :try_end_59c} :catch_59d
    .catch Ljava/lang/NullPointerException; {:try_start_55d .. :try_end_59c} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_55d .. :try_end_59c} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_55d .. :try_end_59c} :catch_695

    .line 852
    goto :goto_5fb

    .line 850
    :catch_59d
    move-exception v0

    move-object v9, v0

    .line 851
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_59f
    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_59f .. :try_end_5a8} :catch_602
    .catch Ljava/lang/NullPointerException; {:try_start_59f .. :try_end_5a8} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_59f .. :try_end_5a8} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_59f .. :try_end_5a8} :catch_695

    .line 852
    nop

    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_5fb

    .line 855
    :cond_5aa
    :try_start_5aa
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v11, v2, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v11

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5aa .. :try_end_5e9} :catch_5f0
    .catch Ljava/lang/NullPointerException; {:try_start_5aa .. :try_end_5e9} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_5aa .. :try_end_5e9} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_5aa .. :try_end_5e9} :catch_695

    .line 858
    goto :goto_5fb

    .line 902
    .end local v2    # "i":I
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "tempPointsAngle":F
    :catch_5ea
    move-exception v0

    move-object v2, v0

    goto :goto_60c

    .line 890
    :catch_5ed
    move-exception v0

    move-object v2, v0

    goto :goto_614

    .line 856
    .restart local v2    # "i":I
    .restart local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v8    # "tempPointsAngle":F
    :catch_5f0
    move-exception v0

    move-object v9, v0

    .line 857
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_5f2
    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5fb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5f2 .. :try_end_5fb} :catch_602
    .catch Ljava/lang/NullPointerException; {:try_start_5f2 .. :try_end_5fb} :catch_5ed
    .catch Ljava/lang/IllegalStateException; {:try_start_5f2 .. :try_end_5fb} :catch_5ea
    .catch Ljava/lang/Exception; {:try_start_5f2 .. :try_end_5fb} :catch_695

    .line 884
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5fb
    nop

    .line 829
    .end local v8    # "tempPointsAngle":F
    :goto_5fc
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v30

    goto/16 :goto_3d9

    .line 886
    .end local v2    # "i":I
    :catch_602
    move-exception v0

    move-object v2, v0

    goto :goto_63d

    .line 829
    .end local v30    # "acceptableWidth":F
    .restart local v2    # "i":I
    .local v3, "acceptableWidth":F
    :cond_605
    move/from16 v30, v3

    .end local v2    # "i":I
    .end local v3    # "acceptableWidth":F
    .restart local v30    # "acceptableWidth":F
    goto :goto_640

    .line 902
    .end local v30    # "acceptableWidth":F
    .restart local v3    # "acceptableWidth":F
    :catch_608
    move-exception v0

    move/from16 v30, v3

    move-object v2, v0

    .line 904
    .end local v3    # "acceptableWidth":F
    .local v2, "ex":Ljava/lang/IllegalStateException;
    .restart local v30    # "acceptableWidth":F
    :goto_60c
    :try_start_60c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_641

    .line 890
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    .end local v30    # "acceptableWidth":F
    .restart local v3    # "acceptableWidth":F
    :catch_610
    move-exception v0

    move/from16 v30, v3

    move-object v2, v0

    .line 892
    .end local v3    # "acceptableWidth":F
    .local v2, "ex":Ljava/lang/NullPointerException;
    .restart local v30    # "acceptableWidth":F
    :goto_614
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_617
    .catch Ljava/lang/Exception; {:try_start_60c .. :try_end_617} :catch_695

    .line 896
    :try_start_617
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_634
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_617 .. :try_end_634} :catch_637
    .catch Ljava/lang/NullPointerException; {:try_start_617 .. :try_end_634} :catch_635
    .catch Ljava/lang/Exception; {:try_start_617 .. :try_end_634} :catch_695

    goto :goto_638

    .line 899
    :catch_635
    move-exception v0

    goto :goto_640

    .line 897
    :catch_637
    move-exception v0

    .line 901
    :goto_638
    goto :goto_640

    .line 886
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    .end local v30    # "acceptableWidth":F
    .restart local v3    # "acceptableWidth":F
    :catch_639
    move-exception v0

    move/from16 v30, v3

    move-object v2, v0

    .line 888
    .end local v3    # "acceptableWidth":F
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v30    # "acceptableWidth":F
    :goto_63d
    :try_start_63d
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 906
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_640
    nop

    .line 908
    :goto_641
    const/4 v2, 0x0

    .line 910
    .local v2, "tempAngle":F
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "iSize":I
    :goto_647
    if-ge v3, v8, :cond_657

    .line 911
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v2, v9

    .line 910
    add-int/lit8 v3, v3, 0x1

    goto :goto_647

    .line 914
    .end local v3    # "i":I
    .end local v8    # "iSize":I
    :cond_657
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 916
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getCharMaxWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v9, v10, v9

    div-float/2addr v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v9, v11, v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getCharMaxHeight()I

    move-result v9

    const/4 v11, 0x2

    div-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float v11, v10, v11

    div-float/2addr v11, v10

    mul-float v9, v9, v11

    float-to-int v9, v9

    invoke-direct {v3, v8, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    iput-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    :try_end_694
    .catch Ljava/lang/Exception; {:try_start_63d .. :try_end_694} :catch_695

    .line 919
    .end local v2    # "tempAngle":F
    .end local v5    # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .end local v6    # "fromProvinceID":I
    .end local v7    # "currentPointsWidth":F
    .end local v14    # "tY":I
    .end local v15    # "tY2":I
    .end local v19    # "toProvinceID":I
    .end local v20    # "tX":I
    .end local v21    # "tX2":I
    .end local v22    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v23    # "extra10Y2":I
    .end local v24    # "tempPrecissionWidth":F
    .end local v25    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v26    # "extra10X":I
    .end local v27    # "extra10X2":I
    .end local v28    # "iPrecision":I
    .end local v29    # "extra10Y":I
    .end local v30    # "acceptableWidth":F
    goto :goto_69a

    .line 917
    :catch_695
    move-exception v0

    move-object v2, v0

    .line 918
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 921
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_69a
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_69f
    if-ge v2, v3, :cond_6be

    .line 922
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_69f

    .line 924
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_6be
    return-void

    .line 748
    .end local v4    # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catchall_6bf
    move-exception v0

    move-object v2, v0

    :try_start_6c1
    monitor-exit p0
    :try_end_6c2
    .catchall {:try_start_6c1 .. :try_end_6c2} :catchall_6bf

    goto :goto_6c4

    :goto_6c3
    throw v2

    :goto_6c4
    goto :goto_6c3
.end method

.method public final buildRegionPath()Z
    .registers 23

    .line 221
    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    .line 223
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildMinMaxBounds()V

    .line 225
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 226
    return v2

    .line 227
    :cond_12
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_524

    .line 228
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PROVINCES_IN_GAME:Z

    if-nez v0, :cond_21

    .line 229
    return v2

    .line 232
    :cond_21
    const/4 v0, -0x1

    .line 233
    .local v0, "startID":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    iget v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v4, v5, :cond_3b

    .line 234
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 235
    nop

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 238
    :cond_39
    move v0, v4

    .line 239
    nop

    .line 243
    .end local v4    # "i":I
    :cond_3b
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3f

    .line 244
    return v2

    .line 247
    :cond_3f
    move v4, v0

    .line 248
    .local v4, "fromProvinceID_LEFTRIGHT":I
    move v5, v0

    .line 250
    .local v5, "toProvinceID_LEFTRIGHT":I
    move v6, v0

    .line 251
    .local v6, "fromProvinceID_RIGHTLEFT":I
    move v7, v0

    .line 253
    .local v7, "toProvinceID_RIGHTLEFT":I
    move v8, v0

    .line 254
    .local v8, "fromProvinceID_BOTTOM":I
    move v9, v0

    .line 256
    .local v9, "toProvinceID_TOP":I
    move v10, v0

    .line 257
    .local v10, "fromProvinceID_LR":I
    move v11, v0

    .line 259
    .local v11, "toProvinceID_LR":I
    iget v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iget-object v13, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 260
    .local v2, "leftBottomDistance":I
    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v12

    sub-int/2addr v3, v12

    int-to-double v12, v3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iget-object v14, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v14

    sub-int/2addr v3, v14

    int-to-double v14, v3

    move/from16 v18, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .end local v2    # "leftBottomDistance":I
    .local v18, "leftBottomDistance":I
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 262
    .local v2, "rightTopDistance":I
    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v12

    sub-int/2addr v3, v12

    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    iget-object v14, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v14

    sub-int/2addr v3, v14

    int-to-double v14, v3

    move/from16 v19, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .end local v2    # "rightTopDistance":I
    .local v19, "rightTopDistance":I
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 263
    .local v2, "rightBottomDistance":I
    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v12

    sub-int/2addr v3, v12

    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iget-object v14, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v14

    sub-int/2addr v3, v14

    int-to-double v14, v3

    move/from16 v20, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .end local v2    # "rightBottomDistance":I
    .local v20, "rightBottomDistance":I
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 265
    .local v2, "leftTopDistance":I
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v3, v0, 0x1

    move v12, v9

    move v13, v10

    move v14, v11

    move v9, v6

    move v10, v7

    move v11, v8

    move v6, v3

    move v7, v4

    move v8, v5

    move/from16 v3, v19

    move/from16 v4, v20

    move v5, v2

    move/from16 v2, v18

    .end local v18    # "leftBottomDistance":I
    .end local v19    # "rightTopDistance":I
    .end local v20    # "rightBottomDistance":I
    .local v2, "leftBottomDistance":I
    .local v3, "rightTopDistance":I
    .local v4, "rightBottomDistance":I
    .local v5, "leftTopDistance":I
    .local v6, "i":I
    .local v7, "fromProvinceID_LEFTRIGHT":I
    .local v8, "toProvinceID_LEFTRIGHT":I
    .local v9, "fromProvinceID_RIGHTLEFT":I
    .local v10, "toProvinceID_RIGHTLEFT":I
    .local v11, "fromProvinceID_BOTTOM":I
    .local v12, "toProvinceID_TOP":I
    .local v13, "fromProvinceID_LR":I
    .local v14, "toProvinceID_LR":I
    :goto_16d
    iget v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v6, v15, :cond_273

    .line 268
    iget-object v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_183

    .line 269
    move/from16 v16, v0

    goto/16 :goto_26d

    .line 272
    :cond_183
    iget-object v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    .line 273
    .local v15, "toPosX":I
    move/from16 v16, v0

    .end local v0    # "startID":I
    .local v16, "startID":I
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    .line 275
    .local v0, "toPosY":I
    move/from16 v17, v9

    .end local v9    # "fromProvinceID_RIGHTLEFT":I
    .local v17, "fromProvinceID_RIGHTLEFT":I
    iget v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    move/from16 v18, v10

    .end local v10    # "toProvinceID_RIGHTLEFT":I
    .local v18, "toProvinceID_RIGHTLEFT":I
    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    invoke-static {v9, v10, v15, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v9

    .line 277
    .local v9, "tempDistance":I
    if-ge v9, v2, :cond_1b9

    .line 278
    move v2, v9

    .line 279
    move v7, v6

    .line 282
    :cond_1b9
    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    move/from16 v19, v2

    .end local v2    # "leftBottomDistance":I
    .local v19, "leftBottomDistance":I
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    invoke-static {v10, v2, v15, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v2

    .line 284
    .end local v9    # "tempDistance":I
    .local v2, "tempDistance":I
    if-ge v2, v3, :cond_1c7

    .line 285
    move v3, v2

    .line 286
    move v8, v6

    .line 290
    :cond_1c7
    iget v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    invoke-static {v9, v10, v15, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v9

    move v2, v9

    .line 292
    if-ge v2, v4, :cond_1d5

    .line 293
    move v4, v2

    .line 294
    move v9, v6

    .end local v17    # "fromProvinceID_RIGHTLEFT":I
    .local v9, "fromProvinceID_RIGHTLEFT":I
    goto :goto_1d7

    .line 292
    .end local v9    # "fromProvinceID_RIGHTLEFT":I
    .restart local v17    # "fromProvinceID_RIGHTLEFT":I
    :cond_1d5
    move/from16 v9, v17

    .line 297
    .end local v17    # "fromProvinceID_RIGHTLEFT":I
    .restart local v9    # "fromProvinceID_RIGHTLEFT":I
    :goto_1d7
    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    move/from16 v20, v2

    .end local v2    # "tempDistance":I
    .local v20, "tempDistance":I
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    invoke-static {v10, v2, v15, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v2

    .line 299
    .end local v20    # "tempDistance":I
    .restart local v2    # "tempDistance":I
    if-ge v2, v5, :cond_1e6

    .line 300
    move v5, v2

    .line 301
    move v10, v6

    .end local v18    # "toProvinceID_RIGHTLEFT":I
    .restart local v10    # "toProvinceID_RIGHTLEFT":I
    goto :goto_1e8

    .line 299
    .end local v10    # "toProvinceID_RIGHTLEFT":I
    .restart local v18    # "toProvinceID_RIGHTLEFT":I
    :cond_1e6
    move/from16 v10, v18

    .line 305
    .end local v18    # "toProvinceID_RIGHTLEFT":I
    .restart local v10    # "toProvinceID_RIGHTLEFT":I
    :goto_1e8
    move/from16 v17, v2

    .end local v2    # "tempDistance":I
    .local v17, "tempDistance":I
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-ge v2, v0, :cond_1ff

    .line 306
    move v11, v6

    .line 309
    :cond_1ff
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-le v2, v0, :cond_214

    .line 310
    move v12, v6

    .line 313
    :cond_214
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-le v2, v15, :cond_23a

    .line 314
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    move/from16 v20, v3

    .end local v3    # "rightTopDistance":I
    .local v20, "rightTopDistance":I
    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    move/from16 v21, v4

    .end local v4    # "rightBottomDistance":I
    .local v21, "rightBottomDistance":I
    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_23e

    .line 315
    move v13, v6

    goto :goto_23e

    .line 313
    .end local v20    # "rightTopDistance":I
    .end local v21    # "rightBottomDistance":I
    .restart local v3    # "rightTopDistance":I
    .restart local v4    # "rightBottomDistance":I
    :cond_23a
    move/from16 v20, v3

    move/from16 v21, v4

    .line 319
    .end local v3    # "rightTopDistance":I
    .end local v4    # "rightBottomDistance":I
    .restart local v20    # "rightTopDistance":I
    .restart local v21    # "rightBottomDistance":I
    :cond_23e
    :goto_23e
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-ge v2, v15, :cond_267

    .line 320
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_267

    .line 321
    move v2, v6

    move v14, v2

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    .end local v14    # "toProvinceID_LR":I
    .local v2, "toProvinceID_LR":I
    goto :goto_26d

    .line 267
    .end local v0    # "toPosY":I
    .end local v2    # "toProvinceID_LR":I
    .end local v15    # "toPosX":I
    .end local v17    # "tempDistance":I
    .restart local v14    # "toProvinceID_LR":I
    :cond_267
    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    .end local v19    # "leftBottomDistance":I
    .end local v20    # "rightTopDistance":I
    .end local v21    # "rightBottomDistance":I
    .local v2, "leftBottomDistance":I
    .restart local v3    # "rightTopDistance":I
    .restart local v4    # "rightBottomDistance":I
    :goto_26d
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    goto/16 :goto_16d

    .end local v16    # "startID":I
    .local v0, "startID":I
    :cond_273
    move/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v10

    .line 326
    .end local v0    # "startID":I
    .end local v6    # "i":I
    .end local v9    # "fromProvinceID_RIGHTLEFT":I
    .end local v10    # "toProvinceID_RIGHTLEFT":I
    .restart local v16    # "startID":I
    .local v17, "fromProvinceID_RIGHTLEFT":I
    .restart local v18    # "toProvinceID_RIGHTLEFT":I
    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    move/from16 v6, v17

    move/from16 v10, v18

    .end local v17    # "fromProvinceID_RIGHTLEFT":I
    .end local v18    # "toProvinceID_RIGHTLEFT":I
    .local v6, "fromProvinceID_RIGHTLEFT":I
    .restart local v10    # "toProvinceID_RIGHTLEFT":I
    invoke-virtual {v1, v6, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v9

    if-le v0, v9, :cond_2f4

    .line 327
    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v9

    if-le v0, v9, :cond_2c3

    .line 328
    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v13, v14}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v9

    if-le v0, v9, :cond_2af

    .line 329
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35d

    .line 332
    :cond_2af
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35d

    .line 336
    :cond_2c3
    invoke-virtual {v1, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v13, v14}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v9

    if-le v0, v9, :cond_2e1

    .line 337
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35d

    .line 340
    :cond_2e1
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35d

    .line 346
    :cond_2f4
    invoke-virtual {v1, v6, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v9

    if-le v0, v9, :cond_32e

    .line 347
    invoke-virtual {v1, v6, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v13, v14}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v9

    if-le v0, v9, :cond_31b

    .line 348
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35d

    .line 351
    :cond_31b
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35d

    .line 355
    :cond_32e
    invoke-virtual {v1, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v13, v14}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v9

    if-le v0, v9, :cond_34b

    .line 356
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35d

    .line 359
    :cond_34b
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :goto_35d
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    move/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "leftBottomDistance":I
    .local v17, "leftBottomDistance":I
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v2

    if-le v0, v2, :cond_3c9

    .line 366
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 367
    .local v0, "tempS":I
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v15, 0x1

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-interface {v2, v15, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x1

    invoke-interface {v2, v15, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v0    # "tempS":I
    :cond_3c9
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_512

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v9, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_3e9

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_518

    .line 378
    :cond_3e9
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v15, 0x1

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->canDrawTextProperly(II)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    .line 380
    .local v0, "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    if-eqz v0, :cond_503

    .line 381
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v9

    iget-object v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    move/from16 v18, v3

    .end local v3    # "rightTopDistance":I
    .local v18, "rightTopDistance":I
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "rightBottomDistance":I
    .local v19, "rightBottomDistance":I
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "leftTopDistance":I
    .local v20, "leftTopDistance":I
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {v2, v9, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v2

    .line 382
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v15, 0x1

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v15, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    move-object/from16 v21, v0

    const/4 v0, 0x1

    .end local v0    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .local v21, "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {v3, v4, v5, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v0

    if-ge v2, v0, :cond_4d7

    .line 384
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4ed

    .line 386
    :cond_4d7
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 389
    :goto_4ed
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 391
    iget v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_501

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildRegionPath()Z

    move-result v2

    goto :goto_502

    :cond_501
    const/4 v2, 0x0

    :goto_502
    return v2

    .line 395
    .end local v18    # "rightTopDistance":I
    .end local v19    # "rightBottomDistance":I
    .end local v20    # "leftTopDistance":I
    .end local v21    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .restart local v0    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .restart local v3    # "rightTopDistance":I
    .restart local v4    # "rightBottomDistance":I
    .restart local v5    # "leftTopDistance":I
    :cond_503
    move-object/from16 v21, v0

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v0    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .end local v3    # "rightTopDistance":I
    .end local v4    # "rightBottomDistance":I
    .end local v5    # "leftTopDistance":I
    .restart local v18    # "rightTopDistance":I
    .restart local v19    # "rightBottomDistance":I
    .restart local v20    # "leftTopDistance":I
    .restart local v21    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    const/4 v0, 0x0

    .line 396
    .end local v21    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .restart local v0    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_524

    .line 372
    .end local v0    # "tD":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .end local v18    # "rightTopDistance":I
    .end local v19    # "rightBottomDistance":I
    .end local v20    # "leftTopDistance":I
    .restart local v3    # "rightTopDistance":I
    .restart local v4    # "rightBottomDistance":I
    .restart local v5    # "leftTopDistance":I
    :cond_512
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    .line 373
    .end local v3    # "rightTopDistance":I
    .end local v4    # "rightBottomDistance":I
    .end local v5    # "leftTopDistance":I
    .restart local v18    # "rightTopDistance":I
    .restart local v19    # "rightBottomDistance":I
    .restart local v20    # "leftTopDistance":I
    :goto_518
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 374
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    const/4 v2, 0x0

    return v2

    .line 400
    .end local v6    # "fromProvinceID_RIGHTLEFT":I
    .end local v7    # "fromProvinceID_LEFTRIGHT":I
    .end local v8    # "toProvinceID_LEFTRIGHT":I
    .end local v10    # "toProvinceID_RIGHTLEFT":I
    .end local v11    # "fromProvinceID_BOTTOM":I
    .end local v12    # "toProvinceID_TOP":I
    .end local v13    # "fromProvinceID_LR":I
    .end local v14    # "toProvinceID_LR":I
    .end local v16    # "startID":I
    .end local v17    # "leftBottomDistance":I
    .end local v18    # "rightTopDistance":I
    .end local v19    # "rightBottomDistance":I
    .end local v20    # "leftTopDistance":I
    :cond_524
    :goto_524
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->updateDrawRegionName()V
    :try_end_527
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_527} :catch_529

    .line 402
    const/4 v0, 0x1

    return v0

    .line 403
    :catch_529
    move-exception v0

    .line 404
    .local v0, "ex":Ljava/lang/StackOverflowError;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 405
    const/4 v2, 0x0

    return v2
.end method

.method public final buildRegionPath_TriedToUse()V
    .registers 5

    .line 205
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_17

    .line 207
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 210
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_18
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v0, v1, :cond_3f

    .line 211
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 212
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 216
    .end local v0    # "i":I
    :cond_3f
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    .line 217
    return-void
.end method

.method protected final buildScaleOfText(I)F
    .registers 15
    .param p1, "nFontID"    # I

    .line 630
    const/high16 v0, 0x3f800000    # 1.0f

    .line 633
    .local v0, "outTextH":F
    const v1, 0x38d1b717    # 1.0E-4f

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_1d7

    .line 634
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 636
    .local v4, "iDistance":F
    const v5, 0x3f733333    # 0.95f

    mul-float v4, v4, v5

    .line 638
    new-instance v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 640
    .local v5, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    monitor-enter p0
    :try_end_a6
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_a6} :catch_1d8

    .line 641
    :try_start_a6
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 642
    const/4 v6, 0x0

    .line 644
    .local v6, "tempNumOfIterations":I
    iget v7, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F
    :try_end_da
    .catchall {:try_start_a6 .. :try_end_da} :catchall_1d4

    .line 648
    .local v7, "tempScale":F
    :goto_da
    :try_start_da
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    const v9, 0x3d4ccccd    # 0.05f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_133

    .line 649
    add-float/2addr v7, v9

    .line 650
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 652
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v5, v8, v10}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 654
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    move v0, v8

    .line 656
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v8, v4, v8

    if-gez v8, :cond_181

    .line 657
    sub-float v8, v7, v9

    iput v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    .line 658
    goto/16 :goto_1cb

    .line 662
    :cond_133
    sub-float/2addr v7, v9

    .line 663
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 665
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v5, v8, v10}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 667
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    move v0, v8

    .line 669
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_181

    .line 670
    add-float/2addr v9, v7

    iput v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F
    :try_end_180
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_da .. :try_end_180} :catch_1c8
    .catch Ljava/lang/NullPointerException; {:try_start_da .. :try_end_180} :catch_1a4
    .catch Ljava/lang/IllegalStateException; {:try_start_da .. :try_end_180} :catch_19d
    .catchall {:try_start_da .. :try_end_180} :catchall_1d4

    .line 671
    goto :goto_1cb

    .line 675
    :cond_181
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "tempNumOfIterations":I
    .local v8, "tempNumOfIterations":I
    const/16 v9, 0x3e7

    if-le v6, v9, :cond_19a

    .line 676
    :try_start_187
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F
    :try_end_189
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_187 .. :try_end_189} :catch_195
    .catch Ljava/lang/NullPointerException; {:try_start_187 .. :try_end_189} :catch_190
    .catch Ljava/lang/IllegalStateException; {:try_start_187 .. :try_end_189} :catch_18b
    .catchall {:try_start_187 .. :try_end_189} :catchall_1d4

    .line 677
    move v6, v8

    goto :goto_1cb

    .line 691
    :catch_18b
    move-exception v6

    move v12, v8

    move-object v8, v6

    move v6, v12

    goto :goto_19e

    .line 682
    :catch_190
    move-exception v6

    move v12, v8

    move-object v8, v6

    move v6, v12

    goto :goto_1a5

    .line 680
    :catch_195
    move-exception v6

    move v12, v8

    move-object v8, v6

    move v6, v12

    goto :goto_1c9

    .line 675
    :cond_19a
    move v6, v8

    goto/16 :goto_da

    .line 691
    .end local v8    # "tempNumOfIterations":I
    .restart local v6    # "tempNumOfIterations":I
    :catch_19d
    move-exception v8

    .line 692
    .local v8, "ex":Ljava/lang/IllegalStateException;
    :goto_19e
    :try_start_19e
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    .line 693
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1cc

    .line 682
    .end local v8    # "ex":Ljava/lang/IllegalStateException;
    :catch_1a4
    move-exception v8

    .line 683
    .local v8, "ex":Ljava/lang/NullPointerException;
    :goto_1a5
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    .line 684
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1aa
    .catchall {:try_start_19e .. :try_end_1aa} :catchall_1d4

    .line 687
    :try_start_1aa
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c5} :catch_1c6
    .catchall {:try_start_1aa .. :try_end_1c5} :catchall_1d4

    .line 690
    goto :goto_1cb

    .line 688
    :catch_1c6
    move-exception v9

    goto :goto_1cb

    .line 680
    .end local v8    # "ex":Ljava/lang/NullPointerException;
    :catch_1c8
    move-exception v8

    .line 681
    .local v8, "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_1c9
    :try_start_1c9
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    .line 694
    .end local v8    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_1cb
    nop

    .line 695
    .end local v6    # "tempNumOfIterations":I
    .end local v7    # "tempScale":F
    :goto_1cc
    monitor-exit p0
    :try_end_1cd
    .catchall {:try_start_1c9 .. :try_end_1cd} :catchall_1d4

    .line 697
    :try_start_1cd
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildAveragePoint()V

    .line 698
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildDrawData(I)V
    :try_end_1d3
    .catch Ljava/lang/NullPointerException; {:try_start_1cd .. :try_end_1d3} :catch_1d8

    goto :goto_1d7

    .line 695
    :catchall_1d4
    move-exception v6

    :try_start_1d5
    monitor-exit p0
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    .end local v0    # "outTextH":F
    .end local p1    # "nFontID":I
    :try_start_1d6
    throw v6
    :try_end_1d7
    .catch Ljava/lang/NullPointerException; {:try_start_1d6 .. :try_end_1d7} :catch_1d8

    .line 707
    .end local v4    # "iDistance":F
    .end local v5    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .restart local v0    # "outTextH":F
    .restart local p1    # "nFontID":I
    :cond_1d7
    :goto_1d7
    goto :goto_1f8

    .line 700
    :catch_1d8
    move-exception v4

    .line 701
    .local v4, "exr":Ljava/lang/NullPointerException;
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    .line 703
    :try_start_1db
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1f6} :catch_1f7

    .line 706
    goto :goto_1f8

    .line 704
    :catch_1f7
    move-exception v1

    .line 709
    .end local v4    # "exr":Ljava/lang/NullPointerException;
    :goto_1f8
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    const/high16 v2, 0x3f600000    # 0.875f

    mul-float v1, v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    .line 711
    return v0
.end method

.method protected final containsProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v0, v1, :cond_18

    .line 191
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 192
    const/4 v1, 0x1

    return v1

    .line 190
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final drawCivRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 68
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6c

    .line 69
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getShortestPath()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "shortestPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_6c

    .line 72
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v3

    invoke-virtual {p0, p1, v2, v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v3

    invoke-virtual {p0, p1, v2, v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName_SecondSideOfMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_6c

    .line 77
    :cond_57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v3

    invoke-virtual {p0, p1, v2, v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 81
    .end local v0    # "shortestPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6c
    :goto_6c
    return-void
.end method

.method public final drawCivRegion_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 84
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_53

    .line 85
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getShortestPath()Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "shortestPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_53

    .line 88
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    invoke-virtual {p0, p1, v2, v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_53

    .line 92
    :cond_40
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    invoke-virtual {p0, p1, v2, v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 96
    .end local v0    # "shortestPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_53
    :goto_53
    return-void
.end method

.method public final declared-synchronized drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nFontID"    # I
    .param p3, "fromProvinceID"    # I
    .param p4, "fontScale"    # F

    monitor-enter p0

    .line 102
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 105
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameCharacter(I)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 106
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    sub-int v5, v1, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 107
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    sub-int v6, v1, v2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/badlogic/gdx/math/Matrix4;

    .line 105
    move-object v2, p1

    move v3, p2

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_7c

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 109
    .end local v0    # "i":I
    .end local p0    # "this":Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;
    :cond_7a
    monitor-exit p0

    return-void

    .line 101
    .end local p1    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p2    # "nFontID":I
    .end local p3    # "fromProvinceID":I
    .end local p4    # "fontScale":F
    :catchall_7c
    move-exception p1

    monitor-exit p0

    goto :goto_80

    :goto_7f
    throw p1

    :goto_80
    goto :goto_7f
.end method

.method public final declared-synchronized drawCivilizationName_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nFontID"    # I
    .param p3, "fromProvinceID"    # I
    .param p4, "fontScale"    # F

    monitor-enter p0

    .line 126
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 128
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 129
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    sub-int v4, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 130
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    sub-int v5, v0, v1

    iget v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    .line 128
    move-object v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IIF)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 131
    monitor-exit p0

    return-void

    .line 125
    .end local p0    # "this":Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;
    .end local p1    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p2    # "nFontID":I
    .end local p3    # "fromProvinceID":I
    .end local p4    # "fontScale":F
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized drawCivilizationName_SecondSideOfMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nFontID"    # I
    .param p3, "fromProvinceID"    # I
    .param p4, "fontScale"    # F

    monitor-enter p0

    .line 112
    :try_start_1
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    if-lez v0, :cond_8b

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 116
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameCharacter(I)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 117
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    sub-int v5, v1, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 118
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    sub-int v6, v1, v2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/badlogic/gdx/math/Matrix4;

    .line 116
    move-object v2, p1

    move v3, p2

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_88
    .catchall {:try_start_1 .. :try_end_88} :catchall_8d

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 121
    .end local v0    # "i":I
    .end local p0    # "this":Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;
    :cond_8b
    monitor-exit p0

    return-void

    .line 111
    .end local p1    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p2    # "nFontID":I
    .end local p3    # "fromProvinceID":I
    .end local p4    # "fontScale":F
    :catchall_8d
    move-exception p1

    monitor-exit p0

    goto :goto_91

    :goto_90
    throw p1

    :goto_91
    goto :goto_90
.end method

.method public final getAngle()F
    .registers 2

    .line 978
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    return v0
.end method

.method public final getCharMaxHeight()I
    .registers 2

    .line 986
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I

    return v0
.end method

.method public final getCharMaxWidth()I
    .registers 2

    .line 982
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    return v0
.end method

.method public final getFontScale()F
    .registers 2

    .line 974
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    return v0
.end method

.method protected getLineWidth(II)I
    .registers 7
    .param p1, "fromCenterPosProvinceID"    # I
    .param p2, "toCenterPosProvinceID"    # I

    .line 939
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    .line 940
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    .line 941
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    .line 942
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    .line 943
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    .line 939
    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v0

    return v0
.end method

.method public final getProvince(I)I
    .registers 3
    .param p1, "i"    # I

    .line 962
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProvincesSize()I
    .registers 2

    .line 966
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    return v0
.end method

.method public final getShortestPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 970
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    return-object v0
.end method

.method public final removeProvince(I)V
    .registers 5
    .param p1, "i"    # I

    .line 174
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 176
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_15
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 177
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_31

    .line 178
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 179
    goto :goto_34

    .line 176
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 183
    .end local v0    # "j":I
    :cond_34
    :goto_34
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    .line 185
    return-void
.end method

.method public final removeProvinceID(I)V
    .registers 5
    .param p1, "nProvinceID"    # I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v0, v1, :cond_4c

    .line 156
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_49

    .line 157
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    .line 160
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_21
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 161
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3d

    .line 162
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    goto :goto_40

    .line 160
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 167
    .end local v1    # "j":I
    :cond_40
    :goto_40
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 168
    goto :goto_4c

    .line 155
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "i":I
    :cond_4c
    :goto_4c
    return-void
.end method

.method protected final updateDrawRegionName()V
    .registers 2

    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    .line 928
    return-void
.end method
