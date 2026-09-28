.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMapGeoRegionsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList;Ljava/lang/String;IIIIIZZ)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z
    .param p9, "checkBox"    # Z

    .line 36
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 39
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;->currentGeoRegionID:I

    .line 40
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getCurrent()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iR:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getCurrent()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iG:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;->lGeographicalRegions:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/GeographicalRegions$GeographicalRegion;->iB:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 50
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 54
    return-void
.end method

.method public getCheckboxState()Z
    .registers 3

    .line 44
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegionsList$1;->getCurrent()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;->currentGeoRegionID:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
