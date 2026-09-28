.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$6;
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

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 271
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    .line 273
    .local v0, "fAlpha":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const/high16 v3, 0x437f0000    # 255.0f

    if-ge v1, v2, :cond_33

    .line 274
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-direct {v2, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 275
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 278
    .end local v1    # "i":I
    :cond_33
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_34
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_60

    .line 279
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sget-object v6, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-direct {v2, v4, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 280
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 282
    .end local v1    # "i":I
    :cond_60
    return-void
.end method
