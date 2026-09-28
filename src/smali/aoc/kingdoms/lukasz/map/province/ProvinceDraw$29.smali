.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$29;
.super Ljava/lang/Object;
.source "ProvinceDraw.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 890
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x437f0000    # 255.0f

    if-ge v0, v1, :cond_6e

    .line 891
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getGeoRegion()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iR:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getGeoRegion()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iG:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getGeoRegion()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iB:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 892
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 895
    .end local v0    # "i":I
    :cond_6e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6f
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_d7

    .line 896
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getGeoRegion()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iR:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getGeoRegion()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iG:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getGeoRegion()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iB:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 897
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 899
    .end local v0    # "i":I
    :cond_d7
    return-void
.end method
