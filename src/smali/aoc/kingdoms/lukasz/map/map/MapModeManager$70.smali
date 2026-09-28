.class Laoc/kingdoms/lukasz/map/map/MapModeManager$70;
.super Ljava/lang/Object;
.source "MapModeManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapModeManager;

    .line 1633
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$70;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 1636
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float v0, v0, v1

    .line 1638
    .local v0, "fProvinceAlpha":F
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const/high16 v3, 0x42c80000    # 100.0f

    if-ge v1, v2, :cond_36

    .line 1641
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getLoot()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getProvinceLootColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1642
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1645
    .end local v1    # "i":I
    :cond_36
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_37
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_5f

    .line 1646
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getLoot()F

    move-result v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getProvinceLootColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1647
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1645
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1650
    .end local v1    # "i":I
    :cond_5f
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1651
    return-void
.end method
