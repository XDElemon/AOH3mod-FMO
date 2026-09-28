.class public Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;
.super Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
.source "MoveUnits_BiggestCities_Siege.java"


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I

    .line 11
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;-><init>(III)V

    .line 12
    return-void
.end method


# virtual methods
.method public buildMoveUnitsLine(Z)V
    .registers 9
    .param p1, "updateAnimation"    # Z

    .line 16
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->buildAnimation(Z)V

    .line 18
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    mul-int/lit8 v0, v0, 0xf

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    .line 19
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 20
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 22
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    if-ge v1, v2, :cond_4d

    .line 23
    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    .line 24
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    .line 25
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v0, v2

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 28
    .end local v1    # "i":I
    :cond_4d
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    .line 29
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->getShiftPosXY()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    .line 30
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->getShiftPosXY()I

    move-result v5

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v3

    .line 32
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    add-int/lit8 v5, v5, -0x1

    .line 33
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iRouteSize:I

    add-int/lit8 v6, v6, -0x1

    .line 34
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, v0, v1

    .line 36
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, v0, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 38
    .local v1, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c6
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    if-ge v2, v3, :cond_e5

    .line 39
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v4, v3, v2

    .line 40
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v2

    int-to-float v4, v2

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Siege;->iPrecision:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_c6

    .line 42
    .end local v2    # "j":I
    :cond_e5
    return-void
.end method
